using DexApiClients
using Test

include("testdex.jl")
@testset "Dex" begin
    test_all()
end
