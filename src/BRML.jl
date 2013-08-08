module BRML

using Debug
using PyCall
using MATLAB

include("matlab.jl")
include("types.jl")
include("general.jl")
include("general_matlab.jl")

export
    # general.jl
    argmin, argmax, logsumexp, betaXGreaterBetaY, avgSigmaGauss, cap,
    condexp

    # general_matlab.jl
    bar3z, chi2test, condp, stateCount

end # module