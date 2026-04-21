using Documenter: Documenter, DocMeta, deploydocs, makedocs
using ITensorFormatter: ITensorFormatter
using ITensorGLMakie: ITensorGLMakie

DocMeta.setdocmeta!(
    ITensorGLMakie, :DocTestSetup, :(using ITensorGLMakie); recursive = true
)

ITensorFormatter.make_index!(pkgdir(ITensorGLMakie))

makedocs(;
    modules = [ITensorGLMakie],
    authors = "ITensor developers <support@itensor.org> and contributors",
    sitename = "ITensorGLMakie.jl",
    format = Documenter.HTML(;
        canonical = "https://itensor.github.io/ITensorGLMakie.jl",
        edit_link = "main",
        assets = ["assets/favicon.ico", "assets/extras.css"]
    ),
    pages = ["Home" => "index.md", "Reference" => "reference.md"]
)

deploydocs(;
    repo = "github.com/ITensor/ITensorGLMakie.jl", devbranch = "main",
    push_preview = true
)
