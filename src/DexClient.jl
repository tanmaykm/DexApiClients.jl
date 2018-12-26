module DexClient

using gRPC
using Sockets

import Base: show, close

include("api.jl")
using .api

const DEFAULT_DEX_GRPC_PORT = 5557

struct DexBlockingClient
    controller::gRPCController
    client::gRPCClient
    dex_stub::DexBlockingStub

    DexBlockingClient(port::Integer = DEFAULT_DEX_GRPC_PORT) = DexBlockingClient(ip"127.0.0.1", port)
    function DexBlockingClient(ip::IPv4, port::Integer)
        controller = gRPCController()
        client = gRPCClient(ip, port)
        dex_blocking_stub = stub(client, DexBlockingStub)
        new(controller, client, dex_blocking_stub)
    end
end

show(io::IO, dex::DexBlockingClient) = print("Dex(", dex.client.sock, ")")
close(dex::DexBlockingClient) = close(dex.client)

for fn in (:CreateClient, :UpdateClient, :DeleteClient, :CreatePassword, :UpdatePassword, :DeletePassword, :ListPasswords, :GetVersion, :ListRefresh, :RevokeRefresh)
    @eval begin
        import .api: $fn
        $fn(dex::DexBlockingClient, args...) = $fn(dex.dex_stub, dex.controller, args...)
    end
end

export DexBlockingClient

end # module
