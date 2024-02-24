using Test
using TestLandscapes

@testset "1D Landscapes" begin
    @test SymmetricDoubleWell(0.1) ≈ 0.9801;
    @test AsymmetricDoubleWell(0.1) ≈ -0.0649;
    @test FatSkinnyDoubleWell10(0.1) ≈ 0.9323741778644035;
end

@testset "2D Landscapes" begin
    @test EntropicSwitch([0.1, 0.1]) ≈ -1.120099912380462;
    @test SymmetricTwoChannel([0.1, 0.1]) ≈ 2.2805666666666666
    @test Muller([0.1, 0.1]) ≈ -66.43610865591577
    @test Rosenbrock([0.1, 0.1]) ≈ 1.62
    @test Zpotential([0.1, 0.1]) ≈ 2.9672875708509054
    @test EntropicBox([0.1, 0.1]) ≈ 0.4818091901085161
end
