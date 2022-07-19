push!(LOAD_PATH, "../src/")
using TestLandscapes
# using Pkg; Pkg.add("Documenter")
using Documenter
makedocs(
    sitename="TestLandscapes.jl",
    modules=[TestLandscapes],
    pages=[
        "Home" => "index.md"
    ])
deploydocs(;
    repo="github.com/gideonsimpson/TestLandscapes.jl"
)