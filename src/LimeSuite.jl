module LimeSuite

using CEnum

wrap(base) = joinpath("wrapper", base * ".jl")

# all type definitions
include(wrap("common"))

# all type definitions that are not automatically generated by Clang.jl
include(wrap("manual_common"))

# wrappers for LimeSuite headers
include(wrap("libLimeSuite_api"))

end # module
