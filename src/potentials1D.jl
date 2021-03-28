"""
`SymmetricDoubleWell` - The classic symmetric doublewell potential.

### Fields
* `x` - Position x
"""
function SymmetricDoubleWell(x)
    return (x^2 -1)^2;
end

"""
`AsymmetricDoubleWell` - An asymmetric double well potential requires |δ|< 1 for
multiple minima.

### Fields
* `x` - Position x
### Optional Fields
* `δ = 0.5` - Asymmetry parameter
"""
function AsymmetricDoubleWell(x; δ = 0.5)
    return x^4 - 1.5 * x^2 - δ * x;
end

"""
`FatSkinnyDoubleWell10` - The fat-skinny double well of degree 10. This introduces
entropic effects in dimension 1.

### Fields
* `x` - Position x
"""
function FatSkinnyDoubleWell10(x)
    return ((8-5*x)^8 * (2+5*x)^2)/(2^26);
end

