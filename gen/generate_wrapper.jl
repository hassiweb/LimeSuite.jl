using Clang
using Clang.LibClang.LLVM_jll

const LIB_INCLUDE = joinpath("/usr/include/lime/")
const LIB_HEADERS = [joinpath(LIB_INCLUDE, header) for header in readdir(LIB_INCLUDE) if endswith(header, ".h")]

const ctx = Clang.DefaultContext()

Clang.parse_headers!(ctx, LIB_HEADERS,
    includes=[Clang.CLANG_INCLUDE],
)

ctx.libname = "libLimeSuite"
ctx.options["is_function_strictly_typed"] = true
ctx.options["is_struct_mutable"] = true

const api_file = joinpath(@__DIR__, "../src/wrapper", "$(ctx.libname)_api.jl")
api_stream = open(api_file, "w")

for trans_unit in ctx.trans_units
    root_cursor = getcursor(trans_unit)
    push!(ctx.cursor_stack, root_cursor)
    header = spelling(root_cursor)
    @info "wrapping header: $header ..."
    # loop over all of the child cursors and wrap them, if appropriate.
    ctx.children = children(root_cursor)
    for (i, child) in enumerate(ctx.children)
        child_name = name(child)
        child_header = filename(child)
        ctx.children_index = i
        # choose which cursor to wrap
        startswith(child_name, "__") && continue  # skip compiler definitions
        child_name in keys(ctx.common_buffer) && continue  # already wrapped
        child_header != header && continue  # skip if cursor filename is not in the headers to be wrapped

        wrap!(ctx, child)
    end
    @info "writing $(api_file)"
    println(api_stream, "# Julia wrapper for header: $(basename(header))")
    println(api_stream, "# Automatically generated using Clang.jl\n")
    print_buffer(api_stream, ctx.api_buffer)
    empty!(ctx.api_buffer)  # clean up api_buffer for the next header
end
close(api_stream)

# write "common" definitions: types, typealiases, etc.
common_file = joinpath(@__DIR__, "../src/wrapper/", "common.jl")
open(common_file, "w") do f
    println(f, "# Automatically generated using Clang.jl\n")
    print_buffer(f, dump_to_buffer(ctx.common_buffer))
end

# uncomment the following code to generate dependency and template files
# copydeps(dirname(api_file))
# print_template(joinpath(dirname(api_file), "LibTemplate.jl"))