using Clang

const HEADER_BASE = "/usr/include/lime"
# const header_file = joinpath(HEADER_BASE, "LimeSuite.h")
# const LIB_HEADERS = [header_file]
const all_headers = readdir(joinpath(HEADER_BASE, "."))
const LIB_HEADERS = vcat(
    [joinpath(HEADER_BASE, header) for header in all_headers]
)

context = Clang.init(
    headers=LIB_HEADERS,
    common_file="commons.jl",
    output_dir="../src/wrapper",
    clang_includes=vcat(HEADER_BASE, LLVM_INCLUDE),
    clang_args=["-I", HEADER_BASE],
    clang_diagnostics=true,
    header_wrapped=(header, cursorname) -> header == cursorname,
    header_library=header_name -> "libLimeSuite"
)
Clang.run(context)