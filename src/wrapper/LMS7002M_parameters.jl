# Julia wrapper for header: LMS7002M_parameters.h
# Automatically generated using Clang.jl


function LMS7ParameterCompare(a, b)
    ccall((:LMS7ParameterCompare, libLimeSuite), Cint, (LMS7Parameter, LMS7Parameter), a, b)
end
