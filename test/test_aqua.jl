using Aqua: Aqua
using ITensorGLMakie: ITensorGLMakie
using Test: @testset

@testset "Code quality (Aqua.jl)" begin
    Aqua.test_all(ITensorGLMakie)
end
