module DexClient

using gRPC

import Base: show, close

include("api_pb.jl")

const DEFAULT_DEX_GRPC_PORT = 5557

immutable DexBlockingClient
    controller::gRPCController
    client::gRPCClient
    dex_stub::DexBlockingStub

    DexBlockingClient(port::Integer = DEFAULT_DEX_GRPC_PORT, debug::Bool=false) = DexBlockingClient(ip"127.0.0.1", port, debug)
    function DexBlockingClient(ip::IPv4, port::Integer, debug::Bool=false)
        controller = gRPCController(debug)
        client = gRPCClient(ip, port)
        dex_blocking_stub = stub(client, DexBlockingStub)
        new(controller, client, dex_blocking_stub)
    end
end

show(io::IO, dex::DexBlockingClient) = print("Dex(", dex.client.sock, ")")
close(dex::DexBlockingClient) = close(dex.client)

for fn in (:CreateClient, :DeleteClient, :CreatePassword, :UpdatePassword, :DeletePassword, :ListPasswords, :GetVersion)
    @eval begin
        $fn(dex::DexBlockingClient, args...) = $fn(dex.dex_stub, dex.controller, args...)
    end
end

export DexBlockingClient

end # module
