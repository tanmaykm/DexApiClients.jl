# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct Client <: ProtoType
    id::AbstractString
    secret::AbstractString
    redirect_uris::Base.Vector{AbstractString}
    trusted_peers::Base.Vector{AbstractString}
    public::Bool
    name::AbstractString
    logo_url::AbstractString
    Client(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Client

mutable struct CreateClientReq <: ProtoType
    client::Client
    CreateClientReq(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct CreateClientReq

mutable struct CreateClientResp <: ProtoType
    already_exists::Bool
    client::Client
    CreateClientResp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct CreateClientResp

mutable struct DeleteClientReq <: ProtoType
    id::AbstractString
    DeleteClientReq(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct DeleteClientReq

mutable struct DeleteClientResp <: ProtoType
    not_found::Bool
    DeleteClientResp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct DeleteClientResp

mutable struct UpdateClientReq <: ProtoType
    id::AbstractString
    redirect_uris::Base.Vector{AbstractString}
    trusted_peers::Base.Vector{AbstractString}
    name::AbstractString
    logo_url::AbstractString
    UpdateClientReq(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct UpdateClientReq

mutable struct UpdateClientResp <: ProtoType
    not_found::Bool
    UpdateClientResp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct UpdateClientResp

mutable struct Password <: ProtoType
    email::AbstractString
    hash::Array{UInt8,1}
    username::AbstractString
    user_id::AbstractString
    Password(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct Password

mutable struct CreatePasswordReq <: ProtoType
    password::Password
    CreatePasswordReq(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct CreatePasswordReq

mutable struct CreatePasswordResp <: ProtoType
    already_exists::Bool
    CreatePasswordResp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct CreatePasswordResp

mutable struct UpdatePasswordReq <: ProtoType
    email::AbstractString
    new_hash::Array{UInt8,1}
    new_username::AbstractString
    UpdatePasswordReq(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct UpdatePasswordReq

mutable struct UpdatePasswordResp <: ProtoType
    not_found::Bool
    UpdatePasswordResp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct UpdatePasswordResp

mutable struct DeletePasswordReq <: ProtoType
    email::AbstractString
    DeletePasswordReq(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct DeletePasswordReq

mutable struct DeletePasswordResp <: ProtoType
    not_found::Bool
    DeletePasswordResp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct DeletePasswordResp

mutable struct ListPasswordReq <: ProtoType
    ListPasswordReq(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ListPasswordReq

mutable struct ListPasswordResp <: ProtoType
    passwords::Base.Vector{Password}
    ListPasswordResp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ListPasswordResp

mutable struct VersionReq <: ProtoType
    VersionReq(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct VersionReq

mutable struct VersionResp <: ProtoType
    server::AbstractString
    api::Int32
    VersionResp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct VersionResp

mutable struct RefreshTokenRef <: ProtoType
    id::AbstractString
    client_id::AbstractString
    created_at::Int64
    last_used::Int64
    RefreshTokenRef(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct RefreshTokenRef
const __fnum_RefreshTokenRef = Int[1,2,5,6]
meta(t::Type{RefreshTokenRef}) = meta(t, ProtoBuf.DEF_REQ, __fnum_RefreshTokenRef, ProtoBuf.DEF_VAL, true, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES, ProtoBuf.DEF_FIELD_TYPES)

mutable struct ListRefreshReq <: ProtoType
    user_id::AbstractString
    ListRefreshReq(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ListRefreshReq

mutable struct ListRefreshResp <: ProtoType
    refresh_tokens::Base.Vector{RefreshTokenRef}
    ListRefreshResp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct ListRefreshResp

mutable struct RevokeRefreshReq <: ProtoType
    user_id::AbstractString
    client_id::AbstractString
    RevokeRefreshReq(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct RevokeRefreshReq

mutable struct RevokeRefreshResp <: ProtoType
    not_found::Bool
    RevokeRefreshResp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #mutable struct RevokeRefreshResp

# service methods for Dex
const _Dex_methods = MethodDescriptor[
        MethodDescriptor("CreateClient", 1, api.CreateClientReq, api.CreateClientResp),
        MethodDescriptor("UpdateClient", 2, api.UpdateClientReq, api.UpdateClientResp),
        MethodDescriptor("DeleteClient", 3, api.DeleteClientReq, api.DeleteClientResp),
        MethodDescriptor("CreatePassword", 4, api.CreatePasswordReq, api.CreatePasswordResp),
        MethodDescriptor("UpdatePassword", 5, api.UpdatePasswordReq, api.UpdatePasswordResp),
        MethodDescriptor("DeletePassword", 6, api.DeletePasswordReq, api.DeletePasswordResp),
        MethodDescriptor("ListPasswords", 7, api.ListPasswordReq, api.ListPasswordResp),
        MethodDescriptor("GetVersion", 8, api.VersionReq, api.VersionResp),
        MethodDescriptor("ListRefresh", 9, api.ListRefreshReq, api.ListRefreshResp),
        MethodDescriptor("RevokeRefresh", 10, api.RevokeRefreshReq, api.RevokeRefreshResp)
    ] # const _Dex_methods
const _Dex_desc = ServiceDescriptor("api.Dex", 1, _Dex_methods)

Dex(impl::Module) = ProtoService(_Dex_desc, impl)

mutable struct DexStub <: AbstractProtoServiceStub{false}
    impl::ProtoServiceStub
    DexStub(channel::ProtoRpcChannel) = new(ProtoServiceStub(_Dex_desc, channel))
end # mutable struct DexStub

mutable struct DexBlockingStub <: AbstractProtoServiceStub{true}
    impl::ProtoServiceBlockingStub
    DexBlockingStub(channel::ProtoRpcChannel) = new(ProtoServiceBlockingStub(_Dex_desc, channel))
end # mutable struct DexBlockingStub

CreateClient(stub::DexStub, controller::ProtoRpcController, inp::api.CreateClientReq, done::Function) = call_method(stub.impl, _Dex_methods[1], controller, inp, done)
CreateClient(stub::DexBlockingStub, controller::ProtoRpcController, inp::api.CreateClientReq) = call_method(stub.impl, _Dex_methods[1], controller, inp)

UpdateClient(stub::DexStub, controller::ProtoRpcController, inp::api.UpdateClientReq, done::Function) = call_method(stub.impl, _Dex_methods[2], controller, inp, done)
UpdateClient(stub::DexBlockingStub, controller::ProtoRpcController, inp::api.UpdateClientReq) = call_method(stub.impl, _Dex_methods[2], controller, inp)

DeleteClient(stub::DexStub, controller::ProtoRpcController, inp::api.DeleteClientReq, done::Function) = call_method(stub.impl, _Dex_methods[3], controller, inp, done)
DeleteClient(stub::DexBlockingStub, controller::ProtoRpcController, inp::api.DeleteClientReq) = call_method(stub.impl, _Dex_methods[3], controller, inp)

CreatePassword(stub::DexStub, controller::ProtoRpcController, inp::api.CreatePasswordReq, done::Function) = call_method(stub.impl, _Dex_methods[4], controller, inp, done)
CreatePassword(stub::DexBlockingStub, controller::ProtoRpcController, inp::api.CreatePasswordReq) = call_method(stub.impl, _Dex_methods[4], controller, inp)

UpdatePassword(stub::DexStub, controller::ProtoRpcController, inp::api.UpdatePasswordReq, done::Function) = call_method(stub.impl, _Dex_methods[5], controller, inp, done)
UpdatePassword(stub::DexBlockingStub, controller::ProtoRpcController, inp::api.UpdatePasswordReq) = call_method(stub.impl, _Dex_methods[5], controller, inp)

DeletePassword(stub::DexStub, controller::ProtoRpcController, inp::api.DeletePasswordReq, done::Function) = call_method(stub.impl, _Dex_methods[6], controller, inp, done)
DeletePassword(stub::DexBlockingStub, controller::ProtoRpcController, inp::api.DeletePasswordReq) = call_method(stub.impl, _Dex_methods[6], controller, inp)

ListPasswords(stub::DexStub, controller::ProtoRpcController, inp::api.ListPasswordReq, done::Function) = call_method(stub.impl, _Dex_methods[7], controller, inp, done)
ListPasswords(stub::DexBlockingStub, controller::ProtoRpcController, inp::api.ListPasswordReq) = call_method(stub.impl, _Dex_methods[7], controller, inp)

GetVersion(stub::DexStub, controller::ProtoRpcController, inp::api.VersionReq, done::Function) = call_method(stub.impl, _Dex_methods[8], controller, inp, done)
GetVersion(stub::DexBlockingStub, controller::ProtoRpcController, inp::api.VersionReq) = call_method(stub.impl, _Dex_methods[8], controller, inp)

ListRefresh(stub::DexStub, controller::ProtoRpcController, inp::api.ListRefreshReq, done::Function) = call_method(stub.impl, _Dex_methods[9], controller, inp, done)
ListRefresh(stub::DexBlockingStub, controller::ProtoRpcController, inp::api.ListRefreshReq) = call_method(stub.impl, _Dex_methods[9], controller, inp)

RevokeRefresh(stub::DexStub, controller::ProtoRpcController, inp::api.RevokeRefreshReq, done::Function) = call_method(stub.impl, _Dex_methods[10], controller, inp, done)
RevokeRefresh(stub::DexBlockingStub, controller::ProtoRpcController, inp::api.RevokeRefreshReq) = call_method(stub.impl, _Dex_methods[10], controller, inp)

export Client, CreateClientReq, CreateClientResp, DeleteClientReq, DeleteClientResp, UpdateClientReq, UpdateClientResp, Password, CreatePasswordReq, CreatePasswordResp, UpdatePasswordReq, UpdatePasswordResp, DeletePasswordReq, DeletePasswordResp, ListPasswordReq, ListPasswordResp, VersionReq, VersionResp, RefreshTokenRef, ListRefreshReq, ListRefreshResp, RevokeRefreshReq, RevokeRefreshResp, Dex, DexStub, DexBlockingStub, CreateClient, UpdateClient, DeleteClient, CreatePassword, UpdatePassword, DeletePassword, ListPasswords, GetVersion, ListRefresh, RevokeRefresh
