# TestLandscapes.jl
Julia implementations of basic potential energy landscapes for testing sampling,
optimization, etc.

Currently, these landscapes are in dimensions one and two, but they allow for
exploration of multiple minima, along with energetic and entropic bottlenecks.

These codes do **not** include derivatives.  These can be obtained using ForwardDiff,
https://github.com/JuliaDiff/ForwardDiff.jl

`StaticArrays` is required by some of the potentials.  This  substantially improves performance.

# References
These landscapes are motivated by the following publications:
* *Illustration of transition path theory on a collection of simple examples*, Metzner, Schütte, and Vanden-Eijnden, J. Chem. Phys., 125, 084110, 2006.
* *Free Energy Computations*, Lelièvre, Rousset, and Stoltz, Imperial College Press, 2006.
* *Role of Ito’s lemma in sampling pinned diffusion paths in the continuous-time limit*, Malsom and Pinski, Phys. Rev. E, 94, 042131, 2016.
* *Nonlinear reaction coordinate analysis in the reweighted path ensemble*, Lechner, Rogal, Juraszek, Ensing, and Bolhuis, J. Chem. Phys., 133, 174110, 2010.
