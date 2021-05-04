module DexApiClients
using gRPCClient

include("api.jl")
using .api

import Base: show

# begin service: api.Dex

export DexBlockingClient, DexClient

struct DexBlockingClient
    controller::gRPCController
    channel::gRPCChannel
    stub::DexBlockingStub

    function DexBlockingClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = DexBlockingStub(channel)
        new(controller, channel, stub)
    end
end

struct DexClient
    controller::gRPCController
    channel::gRPCChannel
    stub::DexStub

    function DexClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = DexStub(channel)
        new(controller, channel, stub)
    end
end

show(io::IO, client::DexBlockingClient) = print(io, "DexBlockingClient(", client.channel.baseurl, ")")
show(io::IO, client::DexClient) = print(io, "DexClient(", client.channel.baseurl, ")")

import .api: CreateClient
"""
    CreateClient

- input: api.CreateClientReq
- output: api.CreateClientResp
"""
CreateClient(client::DexBlockingClient, inp::api.CreateClientReq) = CreateClient(client.stub, client.controller, inp)
CreateClient(client::DexClient, inp::api.CreateClientReq, done::Function) = CreateClient(client.stub, client.controller, inp, done)

import .api: UpdateClient
"""
    UpdateClient

- input: api.UpdateClientReq
- output: api.UpdateClientResp
"""
UpdateClient(client::DexBlockingClient, inp::api.UpdateClientReq) = UpdateClient(client.stub, client.controller, inp)
UpdateClient(client::DexClient, inp::api.UpdateClientReq, done::Function) = UpdateClient(client.stub, client.controller, inp, done)

import .api: DeleteClient
"""
    DeleteClient

- input: api.DeleteClientReq
- output: api.DeleteClientResp
"""
DeleteClient(client::DexBlockingClient, inp::api.DeleteClientReq) = DeleteClient(client.stub, client.controller, inp)
DeleteClient(client::DexClient, inp::api.DeleteClientReq, done::Function) = DeleteClient(client.stub, client.controller, inp, done)

import .api: CreatePassword
"""
    CreatePassword

- input: api.CreatePasswordReq
- output: api.CreatePasswordResp
"""
CreatePassword(client::DexBlockingClient, inp::api.CreatePasswordReq) = CreatePassword(client.stub, client.controller, inp)
CreatePassword(client::DexClient, inp::api.CreatePasswordReq, done::Function) = CreatePassword(client.stub, client.controller, inp, done)

import .api: UpdatePassword
"""
    UpdatePassword

- input: api.UpdatePasswordReq
- output: api.UpdatePasswordResp
"""
UpdatePassword(client::DexBlockingClient, inp::api.UpdatePasswordReq) = UpdatePassword(client.stub, client.controller, inp)
UpdatePassword(client::DexClient, inp::api.UpdatePasswordReq, done::Function) = UpdatePassword(client.stub, client.controller, inp, done)

import .api: DeletePassword
"""
    DeletePassword

- input: api.DeletePasswordReq
- output: api.DeletePasswordResp
"""
DeletePassword(client::DexBlockingClient, inp::api.DeletePasswordReq) = DeletePassword(client.stub, client.controller, inp)
DeletePassword(client::DexClient, inp::api.DeletePasswordReq, done::Function) = DeletePassword(client.stub, client.controller, inp, done)

import .api: ListPasswords
"""
    ListPasswords

- input: api.ListPasswordReq
- output: api.ListPasswordResp
"""
ListPasswords(client::DexBlockingClient, inp::api.ListPasswordReq) = ListPasswords(client.stub, client.controller, inp)
ListPasswords(client::DexClient, inp::api.ListPasswordReq, done::Function) = ListPasswords(client.stub, client.controller, inp, done)

import .api: GetVersion
"""
    GetVersion

- input: api.VersionReq
- output: api.VersionResp
"""
GetVersion(client::DexBlockingClient, inp::api.VersionReq) = GetVersion(client.stub, client.controller, inp)
GetVersion(client::DexClient, inp::api.VersionReq, done::Function) = GetVersion(client.stub, client.controller, inp, done)

import .api: ListRefresh
"""
    ListRefresh

- input: api.ListRefreshReq
- output: api.ListRefreshResp
"""
ListRefresh(client::DexBlockingClient, inp::api.ListRefreshReq) = ListRefresh(client.stub, client.controller, inp)
ListRefresh(client::DexClient, inp::api.ListRefreshReq, done::Function) = ListRefresh(client.stub, client.controller, inp, done)

import .api: RevokeRefresh
"""
    RevokeRefresh

- input: api.RevokeRefreshReq
- output: api.RevokeRefreshResp
"""
RevokeRefresh(client::DexBlockingClient, inp::api.RevokeRefreshReq) = RevokeRefresh(client.stub, client.controller, inp)
RevokeRefresh(client::DexClient, inp::api.RevokeRefreshReq, done::Function) = RevokeRefresh(client.stub, client.controller, inp, done)

import .api: VerifyPassword
"""
    VerifyPassword

- input: api.VerifyPasswordReq
- output: api.VerifyPasswordResp
"""
VerifyPassword(client::DexBlockingClient, inp::api.VerifyPasswordReq) = VerifyPassword(client.stub, client.controller, inp)
VerifyPassword(client::DexClient, inp::api.VerifyPasswordReq, done::Function) = VerifyPassword(client.stub, client.controller, inp, done)

# end service: api.Dex

end # module DexApiClients
