module TestLandscapes

using StaticArrays

# 1D potentials
include("potentials1D.jl")
export SymmetricDoubleWell, AsymmetricDoubleWell, FatSkinnyDoubleWell10

# 2D potentials
include("potentials2D.jl")
export EntropicSwitch, SymmetricTwoChannel, Muller, Rosenbrock, Zpotential, EntropicBox

end