# TestLandscapes.jl

[![](https://img.shields.io/badge/docs-stable-blue.svg)](https://gideonsimpson.github.io/TestLandscapes.jl/stable)

Julia implementations of basic potential energy landscapes for testing sampling,
optimization, etc.

This package can be added with the command:
```
(@v1.XYZ) pkg> add TestLandscapes

```

Currently, these landscapes are in dimensions one and two, but they allow for
exploration of multiple minima, along with energetic and entropic bottlenecks.

These codes do __not__ include derivatives, gradients or Hessians.  These can be
obtained using [ForwardDiff](https://github.com/JuliaDiff/ForwardDiff.jl),
[Zygote](https://github.com/FluxML/Zygote.jl), or some other automatic
differentiation tool.


# Acknowledgements
This work was supported in part by the US National Science Foundation Grants
DMS-1818716 and DMS-2111278.

# References
These landscapes are motivated by the following publications:
* _An Automatic Method for Finding the Greatest or Least Value of a Function_, Rosenbrock, The Computer Journal, 3(3), 175-184, 1960.
* _Reaction Paths on Multidimensional Energy Hypersurfaces_, Müller, Angew. Chem. 19(1),1-13, 1980.
* _Illustration of transition path theory on a collection of simple examples_, Metzner, Schütte, and Vanden-Eijnden, J. Chem. Phys., 125, 084110, 2006.
* _Free Energy Computations_, Lelièvre, Rousset, and Stoltz, Imperial College Press, 2006.
* _Role of Ito’s lemma in sampling pinned diffusion paths in the continuous-time limit_, Malsom and Pinski, Phys. Rev. E, 94, 042131, 2016.
* _Nonlinear reaction coordinate analysis in the reweighted path ensemble_, Lechner, Rogal, Juraszek, Ensing, and Bolhuis, J. Chem. Phys., 133, 174110, 2010.
* _Weighted ensemble: Recent mathematical developments_, Aristoff,  Copperman, Simpson, Webber, and Zuckerman, J. Chem. Phys., 158, 014108 2023.
