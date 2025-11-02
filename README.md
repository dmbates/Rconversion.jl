# Rconversion

[![Build Status](https://github.com/dmbates/Rconversion.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/dmbates/Rconversion.jl/actions/workflows/CI.yml?query=branch%3Amain)

## Conversion of R objects to Julia objects and vice-versa

Most of the code in this package is from [RCall.jl](https://github.com/JuliaInterop/RCall.jl).

The plan is for the conversion code to be isolated in this package, which will be included by `RCall.jl`.
It can also be included by packages that will be compiled to shared (or 'dynamic') libraries to be loaded into an R session.