# DexApiClients

[![Build Status](https://travis-ci.org/tanmaykm/DexApiClients.jl.svg?branch=master)](https://travis-ci.org/tanmaykm/DexApiClients.jl)
[![Coverage Status](https://coveralls.io/repos/tanmaykm/DexApiClients.jl/badge.svg?branch=master&service=github)](https://coveralls.io/github/tanmaykm/DexApiClients.jl?branch=master)

Julia client for [DexIDP (CoreOS) Dex](https://github.com/dexidp/dex)

Example usage:

```julia
julia> using DexApiClients, DexApiClients.api, gRPCClient

julia> dex = DexBlockingClient("http://127.0.0.1:5557");

julia> out, status = GetVersion(dex, VersionReq());

julia> gRPCCheck(status);

julia> println("API Version: $(out.api)")
API Version: 2
```