using ITensorGLMakie
using Documenter

DocMeta.setdocmeta!(
  ITensorGLMakie, :DocTestSetup, :(using ITensorGLMakie); recursive=true
)

makedocs(;
  modules=[ITensorGLMakie],
  authors="ITensor developers",
  sitename="ITensorGLMakie.jl",
  format=Documenter.HTML(;
    canonical="https://ITensor.github.io/ITensorGLMakie.jl",
    edit_link="main",
    assets=String[],
  ),
  pages=["Home" => "index.md"],
)

deploydocs(; repo="github.com/ITensor/ITensorGLMakie.jl", devbranch="main")
