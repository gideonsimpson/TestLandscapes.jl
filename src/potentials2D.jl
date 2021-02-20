"""
EntropicSwitch - Entropically switching potential with three local minima.  It
is symmetric about x=0
"""
function EntropicSwitch(x)
    return (3 * exp(-x[1]^2 - (x[2]-1/3)^2)
     - 3 * exp(-x[1]^2 - (x[2]-5/3)^2)
     - 5 * exp(-(x[1]-1)^2 - x[2]^2)
     - 5 * exp(-(x[1]+1)^2 - x[2]^2)
     + 1/5 * x[1]^4 + 1/5 * (x[2]-1/3)^4);
end

"""
SymmetricTwoChannel - Double well potential in 2D with two, symmetric channels
joining them.
"""
function SymmetricTwoChannel(x)
    return 1/6 * (4 * (1-x[1]^2-x[2]^2)^2 + 2 *(x[1]^2-2)^2
    + ((x[1]+x[2])^2 - 1 )^2+ ((x[1]-x[2])^2 - 1 )^2);
end

"""
Muller - The Muller potential with three distinct minima and highy asymmetric.
"""
function Muller(x)

    aa = @SVector [-1, -1, -6.5, 0.7];
    bb = @SVector [0., 0., 11., 0.6];
    cc = @SVector [-10., -10., -6.5, 0.7];
    AA = @SVector [-200., -100., -170., 15.];
    XX = @SVector [1., 0., -0.5, -1.];
    YY = @SVector [0., 0.5, 1.5, 1.];

    return ( AA[1]*exp(aa[1]*(x[1]-XX[1])^2+bb[1]*(x[1]-XX[1])*(x[2]-YY[1])+cc[1]*(x[2]-YY[1])^2)
                 +AA[2]*exp(aa[2]*(x[1]-XX[2])^2+bb[2]*(x[1]-XX[2])*(x[2]-YY[2])+cc[2]*(x[2]-YY[2])^2)
                 +AA[3]*exp(aa[3]*(x[1]-XX[3])^2+bb[3]*(x[1]-XX[3])*(x[2]-YY[3])+cc[3]*(x[2]-YY[3])^2)
                 +AA[4]*exp(aa[4]*(x[1]-XX[4])^2+bb[4]*(x[1]-XX[4])*(x[2]-YY[4])+cc[4]*(x[2]-YY[4])^2));


end

"""
Rosenbrock - Banana shaped Rosenbrock potentials with global minimum is located
at (a,a²).
"""
function Rosenbrock(x; a=1.0, b=100.0)
    return (a-x[1])^2 + b * (x[2]-x[1]^2)^2

end

"""
Zpotential - Z shaped potential.
"""
function Zpotential(x)
    return (x[1]^4 + x[2]^4)/20480 -
    3 * exp(-0.01 * (x[1]+5)^2 -0.2 * (x[2]+5)^2) -
    3 * exp(-0.01 * (x[1]-5)^2 -0.2 * (x[2]-5)^2) +
    5 * exp(-0.2 * (x[1]+3*(x[2]-3))^2)/(1+exp(-x[1]-3)) +
    5 * exp(-0.2 * (x[1]+3*(x[2]+3))^2)/(1+exp(x[1]-3)) +
    3 * exp(-0.01 *(x[1]^2 + x[2]^2))
end

