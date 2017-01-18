# syntax: proto3
using Compat
using ProtoBuf
import ProtoBuf.meta
import Base: hash, isequal, ==

type Client
    id::AbstractString
    secret::AbstractString
    redirect_uris::Array{AbstractString,1}
    trusted_peers::Array{AbstractString,1}
    public::Bool
    name::AbstractString
    logo_url::AbstractString
    Client(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Client
hash(v::Client) = ProtoBuf.protohash(v)
isequal(v1::Client, v2::Client) = ProtoBuf.protoisequal(v1, v2)
==(v1::Client, v2::Client) = ProtoBuf.protoeq(v1, v2)

type CreateClientReq
    client::Client
    CreateClientReq(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type CreateClientReq
hash(v::CreateClientReq) = ProtoBuf.protohash(v)
isequal(v1::CreateClientReq, v2::CreateClientReq) = ProtoBuf.protoisequal(v1, v2)
==(v1::CreateClientReq, v2::CreateClientReq) = ProtoBuf.protoeq(v1, v2)

type CreateClientResp
    already_exists::Bool
    client::Client
    CreateClientResp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type CreateClientResp
hash(v::CreateClientResp) = ProtoBuf.protohash(v)
isequal(v1::CreateClientResp, v2::CreateClientResp) = ProtoBuf.protoisequal(v1, v2)
==(v1::CreateClientResp, v2::CreateClientResp) = ProtoBuf.protoeq(v1, v2)

type DeleteClientReq
    id::AbstractString
    DeleteClientReq(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type DeleteClientReq
hash(v::DeleteClientReq) = ProtoBuf.protohash(v)
isequal(v1::DeleteClientReq, v2::DeleteClientReq) = ProtoBuf.protoisequal(v1, v2)
==(v1::DeleteClientReq, v2::DeleteClientReq) = ProtoBuf.protoeq(v1, v2)

type DeleteClientResp
    not_found::Bool
    DeleteClientResp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type DeleteClientResp
hash(v::DeleteClientResp) = ProtoBuf.protohash(v)
isequal(v1::DeleteClientResp, v2::DeleteClientResp) = ProtoBuf.protoisequal(v1, v2)
==(v1::DeleteClientResp, v2::DeleteClientResp) = ProtoBuf.protoeq(v1, v2)

type Password
    email::AbstractString
    hash::Array{UInt8,1}
    username::AbstractString
    user_id::AbstractString
    Password(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type Password
hash(v::Password) = ProtoBuf.protohash(v)
isequal(v1::Password, v2::Password) = ProtoBuf.protoisequal(v1, v2)
==(v1::Password, v2::Password) = ProtoBuf.protoeq(v1, v2)

type CreatePasswordReq
    password::Password
    CreatePasswordReq(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type CreatePasswordReq
hash(v::CreatePasswordReq) = ProtoBuf.protohash(v)
isequal(v1::CreatePasswordReq, v2::CreatePasswordReq) = ProtoBuf.protoisequal(v1, v2)
==(v1::CreatePasswordReq, v2::CreatePasswordReq) = ProtoBuf.protoeq(v1, v2)

type CreatePasswordResp
    already_exists::Bool
    CreatePasswordResp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type CreatePasswordResp
hash(v::CreatePasswordResp) = ProtoBuf.protohash(v)
isequal(v1::CreatePasswordResp, v2::CreatePasswordResp) = ProtoBuf.protoisequal(v1, v2)
==(v1::CreatePasswordResp, v2::CreatePasswordResp) = ProtoBuf.protoeq(v1, v2)

type UpdatePasswordReq
    email::AbstractString
    new_hash::Array{UInt8,1}
    new_username::AbstractString
    UpdatePasswordReq(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type UpdatePasswordReq
hash(v::UpdatePasswordReq) = ProtoBuf.protohash(v)
isequal(v1::UpdatePasswordReq, v2::UpdatePasswordReq) = ProtoBuf.protoisequal(v1, v2)
==(v1::UpdatePasswordReq, v2::UpdatePasswordReq) = ProtoBuf.protoeq(v1, v2)

type UpdatePasswordResp
    not_found::Bool
    UpdatePasswordResp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type UpdatePasswordResp
hash(v::UpdatePasswordResp) = ProtoBuf.protohash(v)
isequal(v1::UpdatePasswordResp, v2::UpdatePasswordResp) = ProtoBuf.protoisequal(v1, v2)
==(v1::UpdatePasswordResp, v2::UpdatePasswordResp) = ProtoBuf.protoeq(v1, v2)

type DeletePasswordReq
    email::AbstractString
    DeletePasswordReq(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type DeletePasswordReq
hash(v::DeletePasswordReq) = ProtoBuf.protohash(v)
isequal(v1::DeletePasswordReq, v2::DeletePasswordReq) = ProtoBuf.protoisequal(v1, v2)
==(v1::DeletePasswordReq, v2::DeletePasswordReq) = ProtoBuf.protoeq(v1, v2)

type DeletePasswordResp
    not_found::Bool
    DeletePasswordResp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type DeletePasswordResp
hash(v::DeletePasswordResp) = ProtoBuf.protohash(v)
isequal(v1::DeletePasswordResp, v2::DeletePasswordResp) = ProtoBuf.protoisequal(v1, v2)
==(v1::DeletePasswordResp, v2::DeletePasswordResp) = ProtoBuf.protoeq(v1, v2)

type ListPasswordReq
    ListPasswordReq(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type ListPasswordReq
hash(v::ListPasswordReq) = ProtoBuf.protohash(v)
isequal(v1::ListPasswordReq, v2::ListPasswordReq) = ProtoBuf.protoisequal(v1, v2)
==(v1::ListPasswordReq, v2::ListPasswordReq) = ProtoBuf.protoeq(v1, v2)

type ListPasswordResp
    passwords::Array{Password,1}
    ListPasswordResp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type ListPasswordResp
hash(v::ListPasswordResp) = ProtoBuf.protohash(v)
isequal(v1::ListPasswordResp, v2::ListPasswordResp) = ProtoBuf.protoisequal(v1, v2)
==(v1::ListPasswordResp, v2::ListPasswordResp) = ProtoBuf.protoeq(v1, v2)

type VersionReq
    VersionReq(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type VersionReq
hash(v::VersionReq) = ProtoBuf.protohash(v)
isequal(v1::VersionReq, v2::VersionReq) = ProtoBuf.protoisequal(v1, v2)
==(v1::VersionReq, v2::VersionReq) = ProtoBuf.protoeq(v1, v2)

type VersionResp
    server::AbstractString
    api::Int32
    VersionResp(; kwargs...) = (o=new(); fillunset(o); isempty(kwargs) || ProtoBuf._protobuild(o, kwargs); o)
end #type VersionResp
hash(v::VersionResp) = ProtoBuf.protohash(v)
isequal(v1::VersionResp, v2::VersionResp) = ProtoBuf.protoisequal(v1, v2)
==(v1::VersionResp, v2::VersionResp) = ProtoBuf.protoeq(v1, v2)

# service methods for Dex
const _Dex_methods = MethodDescriptor[
        MethodDescriptor("CreateClient", 1, CreateClientReq, CreateClientResp),
        MethodDescriptor("DeleteClient", 2, DeleteClientReq, DeleteClientResp),
        MethodDescriptor("CreatePassword", 3, CreatePasswordReq, CreatePasswordResp),
        MethodDescriptor("UpdatePassword", 4, UpdatePasswordReq, UpdatePasswordResp),
        MethodDescriptor("DeletePassword", 5, DeletePasswordReq, DeletePasswordResp),
        MethodDescriptor("ListPasswords", 6, ListPasswordReq, ListPasswordResp),
        MethodDescriptor("GetVersion", 7, VersionReq, VersionResp)
    ] # const _Dex_methods
const _Dex_desc = ServiceDescriptor("api.Dex", 1, _Dex_methods)

Dex(impl::Module) = ProtoService(_Dex_desc, impl)

type DexStub <: AbstractProtoServiceStub{false}
    impl::ProtoServiceStub
    DexStub(channel::ProtoRpcChannel) = new(ProtoServiceStub(_Dex_desc, channel))
end # type DexStub

type DexBlockingStub <: AbstractProtoServiceStub{true}
    impl::ProtoServiceBlockingStub
    DexBlockingStub(channel::ProtoRpcChannel) = new(ProtoServiceBlockingStub(_Dex_desc, channel))
end # type DexBlockingStub

CreateClient(stub::DexStub, controller::ProtoRpcController, inp::CreateClientReq, done::Function) = call_method(stub.impl, _Dex_methods[1], controller, inp, done)
CreateClient(stub::DexBlockingStub, controller::ProtoRpcController, inp::CreateClientReq) = call_method(stub.impl, _Dex_methods[1], controller, inp)

DeleteClient(stub::DexStub, controller::ProtoRpcController, inp::DeleteClientReq, done::Function) = call_method(stub.impl, _Dex_methods[2], controller, inp, done)
DeleteClient(stub::DexBlockingStub, controller::ProtoRpcController, inp::DeleteClientReq) = call_method(stub.impl, _Dex_methods[2], controller, inp)

CreatePassword(stub::DexStub, controller::ProtoRpcController, inp::CreatePasswordReq, done::Function) = call_method(stub.impl, _Dex_methods[3], controller, inp, done)
CreatePassword(stub::DexBlockingStub, controller::ProtoRpcController, inp::CreatePasswordReq) = call_method(stub.impl, _Dex_methods[3], controller, inp)

UpdatePassword(stub::DexStub, controller::ProtoRpcController, inp::UpdatePasswordReq, done::Function) = call_method(stub.impl, _Dex_methods[4], controller, inp, done)
UpdatePassword(stub::DexBlockingStub, controller::ProtoRpcController, inp::UpdatePasswordReq) = call_method(stub.impl, _Dex_methods[4], controller, inp)

DeletePassword(stub::DexStub, controller::ProtoRpcController, inp::DeletePasswordReq, done::Function) = call_method(stub.impl, _Dex_methods[5], controller, inp, done)
DeletePassword(stub::DexBlockingStub, controller::ProtoRpcController, inp::DeletePasswordReq) = call_method(stub.impl, _Dex_methods[5], controller, inp)

ListPasswords(stub::DexStub, controller::ProtoRpcController, inp::ListPasswordReq, done::Function) = call_method(stub.impl, _Dex_methods[6], controller, inp, done)
ListPasswords(stub::DexBlockingStub, controller::ProtoRpcController, inp::ListPasswordReq) = call_method(stub.impl, _Dex_methods[6], controller, inp)

GetVersion(stub::DexStub, controller::ProtoRpcController, inp::VersionReq, done::Function) = call_method(stub.impl, _Dex_methods[7], controller, inp, done)
GetVersion(stub::DexBlockingStub, controller::ProtoRpcController, inp::VersionReq) = call_method(stub.impl, _Dex_methods[7], controller, inp)

export Client, CreateClientReq, CreateClientResp, DeleteClientReq, DeleteClientResp, Password, CreatePasswordReq, CreatePasswordResp, UpdatePasswordReq, UpdatePasswordResp, DeletePasswordReq, DeletePasswordResp, ListPasswordReq, ListPasswordResp, VersionReq, VersionResp, Dex, DexStub, DexBlockingStub, CreateClient, DeleteClient, CreatePassword, UpdatePassword, DeletePassword, ListPasswords, GetVersion
