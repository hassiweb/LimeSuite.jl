module LimeSuite

import Libdl

# Load in `deps.jl`, complaining if it does not exist
# const depsjl_path = joinpath(@__DIR__, "..", "deps", "deps.jl")
# if !isfile(depsjl_path)
#     error("LimeSuite was not build properly. Please run Pkg.build(\"LimeSuite\").")
# end
# include(depsjl_path)


# Module initialization function
# function __init__()
#     check_deps()
# end

# include(joinpath(@__DIR__, "..", "gen", "libXXX_common.jl"))
# include(joinpath(@__DIR__, "..", "gen", "libXXX_api.jl"))

# export everything
#foreach(names(@__MODULE__, all=true)) do s
#    if startswith(string(s), "SOME_PREFIX")
#        @eval export $s
#    end
#end

wrap(base) = joinpath("wrapper", base * ".jl")

using CEnum

include(wrap("ctypes"))
export Ctm, Ctime_t, Cclock_t

# all type definitions
include(wrap("commons"))

# all type definitions that are not generated automatically by Clang.jl
include(wrap("manual_commons"))

# wrappers for LimeSuite headers
include(wrap("LimeSuite"))

end # module
