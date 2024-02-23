push!(LOAD_PATH, "../src/")
using TestLandscapes
using Documenter
makedocs(
    sitename="TestLandscapes.jl",
    modules=[TestLandscapes],
    pages=[
        "Home" => "index.md",
        "Landscapes" => Any["landscapes/landscapes1.md",
            "landscapes/landscapes2.md",
        ]
    ])
deploydocs(;
    repo="github.com/gideonsimpson/TestLandscapes.jl"
)