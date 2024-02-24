# 1D Landscapes

```@docs
SymmetricDoubleWell(x)
```

```@example
using Plots
using TestLandscapes

x = LinRange(-1.5, 1.5, 100)
plot(x, SymmetricDoubleWell.(x), label="Symmetric Doublewell")
xlabel!("x")
```

```@docs
AsymmetricDoubleWell(x)
```
This is an asymetric doublewell potential, and the degree of asymmetry can be controlled through the `δ` argument (default is `0.5`).
```@example
using Plots
using TestLandscapes

x = LinRange(-1.5, 1.5, 100)
plot(x, AsymmetricDoubleWell.(x), label="Asymmetric Doublewell, Default")
plot!(x, AsymmetricDoubleWell.(x, δ=-0.5), label="Asymmetric Doublewell, δ =-0.5")
xlabel!("x")
```


```@docs
FatSkinnyDoubleWell10(x)
```
This is a one dimensional problem that introduces, for a diffusion, an entropic bottleneck in the right well.  The energy barrier is still of unit height.  From Malsom and Pinski (2016).
```@example
using Plots
using TestLandscapes

x = LinRange(-.55, 2.6, 100)
plot(x, FatSkinnyDoubleWell10.(x), label="Fat Skinny Doublewell")
xlabel!("x")
```