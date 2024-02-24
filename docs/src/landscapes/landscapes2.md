# 2D Landscapes

```@docs
EntropicSwitch(x)
```
This is the _entropic switch_ or, alternatively, the _three well_ potential.  It
has the feature that, for a diffusion, the preferred pathway from the lower left
well to the lower right well is sensitive to the temperature.  From Metzner et
al. (2006).

```@example
using Plots
using TestLandscapes

xx = LinRange(-2, 2, 100)
yy = LinRange(-1.0, 2.0, 100)
contourf(xx, yy, [EntropicSwitch([x_, y_]) for y_ in yy, x_ in xx], cbar=false)
xlabel!("x")
ylabel!("y")
```

```@docs
SymmetricTwoChannel(x)
```
From Lelièvre et al. (2006).

```@example
using Plots
using TestLandscapes

xx = LinRange(-1.1, 1.1, 100)
yy = LinRange(-1.0, 1.0, 100)
contourf(xx, yy, [SymmetricTwoChannel([x_, y_]) for y_ in yy, x_ in xx], cbar=false)
xlabel!("x")
ylabel!("y")
```

```@docs
Muller(x)
```
This is the Muller, sometimes Muller-Brown, potential, which is regularly used
as a test problem for sampling, optimization, and related computations.  From Müller (1980).
```@example
using Plots
using TestLandscapes

xx = LinRange(-1.5, 1., 100)
yy = LinRange(-0.5, 2.0, 100)
contourf(xx, yy, [Muller([x_, y_]) for y_ in yy, x_ in xx], cbar=false,levels=-150:10:120)
xlabel!("x")
ylabel!("y")
```

```@docs
Rosenbrock(x)
```
The banana shaped Rosenbrock energy landscape, originally appearing in Rosenbrock (1960).

```@example
using Plots
using TestLandscapes

xx = LinRange(-1, 1, 100)
yy = LinRange(-1, 1, 100)
contourf(xx, yy, [Rosenbrock([x_, y_]) for y_ in yy, x_ in xx],levels=[0:10:40|>collect; 50:50:500|>collect],  cbar=false)
xlabel!("x")
ylabel!("y")
```


```@docs
Zpotential(x)
```
This a Z shaped potential that requires backtracking to transition between the two minima.  This potential appeared in Lechner et al. (2010).

```@example
using Plots
using TestLandscapes

xx = LinRange(-15, 15, 200);yy = LinRange(-15, 15, 200);contourf(xx, yy, [Zpotential([x_, y_]) for y_ in yy, x_ in xx], cbar=false)
xlabel!("x")
ylabel!("y")
```

```@docs
EntropicBox(x)
```
This is the potential appearing in Αristoff et al. (2023).
```@example
using Plots
using TestLandscapes

xx = LinRange(0, 1, 100)
yy = LinRange(0, 1, 100)
contourf(xx, yy, [EntropicBox([x_, y_]) for y_ in yy, x_ in xx],cbar=false)
xlabel!("x")
ylabel!("y")
```
