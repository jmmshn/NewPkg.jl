using NewPkg
using Documenter

DocMeta.setdocmeta!(NewPkg, :DocTestSetup, :(using NewPkg); recursive=true)

makedocs(;
    modules=[NewPkg],
    authors="jmmshn",
    repo="https://github.com/jmmshn/NewPkg.jl/blob/{commit}{path}#{line}",
    sitename="NewPkg.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://jmmshn.github.io/NewPkg.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/jmmshn/NewPkg.jl",
    devbranch="main",
)
