module TestPotentials1D
# a module of simple potentials for testing optimization and sampling methods

"""
SymmetricDoubleWell - The classic symmetric doublewell potential.
"""
function SymmetricDoubleWell(x)
    return (x^2 -1)^2;
end

"""
ASymmetricDoubleWell - An asymmetric double well potential requires |δ|< 1 for
multiple minima.
"""
function ASymmetricDoubleWell(x;δ=0.5)
    return x^4 - 1.5 * x^2 - δ * x;
end

"""
FatSkinnyDoubleWell10 - The fat-skinny double well of degree 10. This introduces
entropic effects in dimension 1.
"""
function FatSkinnyDoubleWell10(x)
    return ((8-5*x)^8 * (2+5*x)^2)/(2^26);
end

end # end module
