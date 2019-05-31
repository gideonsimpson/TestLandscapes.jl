module TestPotentials2D
# a module of simple potentials for testing optimization and sampling methods in
# 2D

# Entropic Switching potential has three local
# minima and is symmetric about x = 0
function EntropicSwitch(x)
    return (3 * exp(-x[1]^2 - (x[2]-1/3)^2)
     - 3 * exp(-x[1]^2 - (x[2]-5/3)^2)
     - 5 * exp(-(x[1]-1)^2 - x[2]^2)
     - 5 * exp(-(x[1]+1)^2 - x[2]^2)
     + 1/5 * x[1]^4 + 1/5 * (x[2]-1/3)^4);
end

# Double well potential in 2D with two, symmetric channels joining them
function SymmetricTwoChannel(x)
    return 1/6 * (4 * (1-x[1]^2-x[2]^2)^2 + 2 *(x[1]^2-2)^2
    + ((x[1]+x[2])^2 - 1 )^2+ ((x[1]-x[2])^2 - 1 )^2);
end

# Mueller potential
# Three distinct minima and highy asymmetric
function Mueller(x)

    aa = Float64[-1, -1, -6.5, 0.7];
    bb = Float64[0., 0., 11., 0.6];
    cc = Float64[-10., -10., -6.5, 0.7];
    AA = Float64[-200., -100., -170., 15.];
    XX = Float64[1., 0., -0.5, -1.];
    YY = Float64[0., 0.5, 1.5, 1.];

    return ( AA[1]*exp(aa[1]*(x[1]-XX[1])^2+bb[1]*(x[1]-XX[1])*(x[2]-YY[1])+cc[1]*(x[2]-YY[1])^2)
                 +AA[2]*exp(aa[2]*(x[1]-XX[2])^2+bb[2]*(x[1]-XX[2])*(x[2]-YY[2])+cc[2]*(x[2]-YY[2])^2)
                 +AA[3]*exp(aa[3]*(x[1]-XX[3])^2+bb[3]*(x[1]-XX[3])*(x[2]-YY[3])+cc[3]*(x[2]-YY[3])^2)
                 +AA[4]*exp(aa[4]*(x[1]-XX[4])^2+bb[4]*(x[1]-XX[4])*(x[2]-YY[4])+cc[4]*(x[2]-YY[4])^2));


end

# Banana shaped Rosenbrock potentials with global minimum is located at (a,a²)
function Rosenbrock(x; a=1.0, b=100.0)
    return (a-x[1])^2 + b * (x[2]-x[1]^2)^2

end


end # module
