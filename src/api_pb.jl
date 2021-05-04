# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct Client <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Client(; kwargs...)
        obj = new(meta(Client), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Client
const __meta_Client = Ref{ProtoMeta}()
function meta(::Type{Client})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Client)
            __meta_Client[] = target = ProtoMeta(Client)
            allflds = Pair{Symbol,Union{Type,String}}[:id => AbstractString, :secret => AbstractString, :redirect_uris => Base.Vector{AbstractString}, :trusted_peers => Base.Vector{AbstractString}, :public => Bool, :name => AbstractString, :logo_url => AbstractString]
            meta(target, Client, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Client[]
    end
end
function Base.getproperty(obj::Client, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :secret
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :redirect_uris
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :trusted_peers
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :public
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :logo_url
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct CreateClientReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CreateClientReq(; kwargs...)
        obj = new(meta(CreateClientReq), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct CreateClientReq
const __meta_CreateClientReq = Ref{ProtoMeta}()
function meta(::Type{CreateClientReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CreateClientReq)
            __meta_CreateClientReq[] = target = ProtoMeta(CreateClientReq)
            allflds = Pair{Symbol,Union{Type,String}}[:client => Client]
            meta(target, CreateClientReq, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CreateClientReq[]
    end
end
function Base.getproperty(obj::CreateClientReq, name::Symbol)
    if name === :client
        return (obj.__protobuf_jl_internal_values[name])::Client
    else
        getfield(obj, name)
    end
end

mutable struct CreateClientResp <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CreateClientResp(; kwargs...)
        obj = new(meta(CreateClientResp), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct CreateClientResp
const __meta_CreateClientResp = Ref{ProtoMeta}()
function meta(::Type{CreateClientResp})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CreateClientResp)
            __meta_CreateClientResp[] = target = ProtoMeta(CreateClientResp)
            allflds = Pair{Symbol,Union{Type,String}}[:already_exists => Bool, :client => Client]
            meta(target, CreateClientResp, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CreateClientResp[]
    end
end
function Base.getproperty(obj::CreateClientResp, name::Symbol)
    if name === :already_exists
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :client
        return (obj.__protobuf_jl_internal_values[name])::Client
    else
        getfield(obj, name)
    end
end

mutable struct DeleteClientReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DeleteClientReq(; kwargs...)
        obj = new(meta(DeleteClientReq), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct DeleteClientReq
const __meta_DeleteClientReq = Ref{ProtoMeta}()
function meta(::Type{DeleteClientReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DeleteClientReq)
            __meta_DeleteClientReq[] = target = ProtoMeta(DeleteClientReq)
            allflds = Pair{Symbol,Union{Type,String}}[:id => AbstractString]
            meta(target, DeleteClientReq, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DeleteClientReq[]
    end
end
function Base.getproperty(obj::DeleteClientReq, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct DeleteClientResp <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DeleteClientResp(; kwargs...)
        obj = new(meta(DeleteClientResp), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct DeleteClientResp
const __meta_DeleteClientResp = Ref{ProtoMeta}()
function meta(::Type{DeleteClientResp})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DeleteClientResp)
            __meta_DeleteClientResp[] = target = ProtoMeta(DeleteClientResp)
            allflds = Pair{Symbol,Union{Type,String}}[:not_found => Bool]
            meta(target, DeleteClientResp, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DeleteClientResp[]
    end
end
function Base.getproperty(obj::DeleteClientResp, name::Symbol)
    if name === :not_found
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct UpdateClientReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function UpdateClientReq(; kwargs...)
        obj = new(meta(UpdateClientReq), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct UpdateClientReq
const __meta_UpdateClientReq = Ref{ProtoMeta}()
function meta(::Type{UpdateClientReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_UpdateClientReq)
            __meta_UpdateClientReq[] = target = ProtoMeta(UpdateClientReq)
            allflds = Pair{Symbol,Union{Type,String}}[:id => AbstractString, :redirect_uris => Base.Vector{AbstractString}, :trusted_peers => Base.Vector{AbstractString}, :name => AbstractString, :logo_url => AbstractString]
            meta(target, UpdateClientReq, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_UpdateClientReq[]
    end
end
function Base.getproperty(obj::UpdateClientReq, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :redirect_uris
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :trusted_peers
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :logo_url
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct UpdateClientResp <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function UpdateClientResp(; kwargs...)
        obj = new(meta(UpdateClientResp), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct UpdateClientResp
const __meta_UpdateClientResp = Ref{ProtoMeta}()
function meta(::Type{UpdateClientResp})
    ProtoBuf.metalock() do
        if !isassigned(__meta_UpdateClientResp)
            __meta_UpdateClientResp[] = target = ProtoMeta(UpdateClientResp)
            allflds = Pair{Symbol,Union{Type,String}}[:not_found => Bool]
            meta(target, UpdateClientResp, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_UpdateClientResp[]
    end
end
function Base.getproperty(obj::UpdateClientResp, name::Symbol)
    if name === :not_found
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct Password <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Password(; kwargs...)
        obj = new(meta(Password), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Password
const __meta_Password = Ref{ProtoMeta}()
function meta(::Type{Password})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Password)
            __meta_Password[] = target = ProtoMeta(Password)
            allflds = Pair{Symbol,Union{Type,String}}[:email => AbstractString, :hash => Array{UInt8,1}, :username => AbstractString, :user_id => AbstractString]
            meta(target, Password, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Password[]
    end
end
function Base.getproperty(obj::Password, name::Symbol)
    if name === :email
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :hash
        return (obj.__protobuf_jl_internal_values[name])::Array{UInt8,1}
    elseif name === :username
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :user_id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct CreatePasswordReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CreatePasswordReq(; kwargs...)
        obj = new(meta(CreatePasswordReq), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct CreatePasswordReq
const __meta_CreatePasswordReq = Ref{ProtoMeta}()
function meta(::Type{CreatePasswordReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CreatePasswordReq)
            __meta_CreatePasswordReq[] = target = ProtoMeta(CreatePasswordReq)
            allflds = Pair{Symbol,Union{Type,String}}[:password => Password]
            meta(target, CreatePasswordReq, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CreatePasswordReq[]
    end
end
function Base.getproperty(obj::CreatePasswordReq, name::Symbol)
    if name === :password
        return (obj.__protobuf_jl_internal_values[name])::Password
    else
        getfield(obj, name)
    end
end

mutable struct CreatePasswordResp <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CreatePasswordResp(; kwargs...)
        obj = new(meta(CreatePasswordResp), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct CreatePasswordResp
const __meta_CreatePasswordResp = Ref{ProtoMeta}()
function meta(::Type{CreatePasswordResp})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CreatePasswordResp)
            __meta_CreatePasswordResp[] = target = ProtoMeta(CreatePasswordResp)
            allflds = Pair{Symbol,Union{Type,String}}[:already_exists => Bool]
            meta(target, CreatePasswordResp, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CreatePasswordResp[]
    end
end
function Base.getproperty(obj::CreatePasswordResp, name::Symbol)
    if name === :already_exists
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct UpdatePasswordReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function UpdatePasswordReq(; kwargs...)
        obj = new(meta(UpdatePasswordReq), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct UpdatePasswordReq
const __meta_UpdatePasswordReq = Ref{ProtoMeta}()
function meta(::Type{UpdatePasswordReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_UpdatePasswordReq)
            __meta_UpdatePasswordReq[] = target = ProtoMeta(UpdatePasswordReq)
            allflds = Pair{Symbol,Union{Type,String}}[:email => AbstractString, :new_hash => Array{UInt8,1}, :new_username => AbstractString]
            meta(target, UpdatePasswordReq, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_UpdatePasswordReq[]
    end
end
function Base.getproperty(obj::UpdatePasswordReq, name::Symbol)
    if name === :email
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :new_hash
        return (obj.__protobuf_jl_internal_values[name])::Array{UInt8,1}
    elseif name === :new_username
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct UpdatePasswordResp <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function UpdatePasswordResp(; kwargs...)
        obj = new(meta(UpdatePasswordResp), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct UpdatePasswordResp
const __meta_UpdatePasswordResp = Ref{ProtoMeta}()
function meta(::Type{UpdatePasswordResp})
    ProtoBuf.metalock() do
        if !isassigned(__meta_UpdatePasswordResp)
            __meta_UpdatePasswordResp[] = target = ProtoMeta(UpdatePasswordResp)
            allflds = Pair{Symbol,Union{Type,String}}[:not_found => Bool]
            meta(target, UpdatePasswordResp, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_UpdatePasswordResp[]
    end
end
function Base.getproperty(obj::UpdatePasswordResp, name::Symbol)
    if name === :not_found
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct DeletePasswordReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DeletePasswordReq(; kwargs...)
        obj = new(meta(DeletePasswordReq), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct DeletePasswordReq
const __meta_DeletePasswordReq = Ref{ProtoMeta}()
function meta(::Type{DeletePasswordReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DeletePasswordReq)
            __meta_DeletePasswordReq[] = target = ProtoMeta(DeletePasswordReq)
            allflds = Pair{Symbol,Union{Type,String}}[:email => AbstractString]
            meta(target, DeletePasswordReq, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DeletePasswordReq[]
    end
end
function Base.getproperty(obj::DeletePasswordReq, name::Symbol)
    if name === :email
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct DeletePasswordResp <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DeletePasswordResp(; kwargs...)
        obj = new(meta(DeletePasswordResp), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct DeletePasswordResp
const __meta_DeletePasswordResp = Ref{ProtoMeta}()
function meta(::Type{DeletePasswordResp})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DeletePasswordResp)
            __meta_DeletePasswordResp[] = target = ProtoMeta(DeletePasswordResp)
            allflds = Pair{Symbol,Union{Type,String}}[:not_found => Bool]
            meta(target, DeletePasswordResp, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DeletePasswordResp[]
    end
end
function Base.getproperty(obj::DeletePasswordResp, name::Symbol)
    if name === :not_found
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ListPasswordReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListPasswordReq(; kwargs...)
        obj = new(meta(ListPasswordReq), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ListPasswordReq
const __meta_ListPasswordReq = Ref{ProtoMeta}()
function meta(::Type{ListPasswordReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListPasswordReq)
            __meta_ListPasswordReq[] = target = ProtoMeta(ListPasswordReq)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, ListPasswordReq, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListPasswordReq[]
    end
end

mutable struct ListPasswordResp <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListPasswordResp(; kwargs...)
        obj = new(meta(ListPasswordResp), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ListPasswordResp
const __meta_ListPasswordResp = Ref{ProtoMeta}()
function meta(::Type{ListPasswordResp})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListPasswordResp)
            __meta_ListPasswordResp[] = target = ProtoMeta(ListPasswordResp)
            allflds = Pair{Symbol,Union{Type,String}}[:passwords => Base.Vector{Password}]
            meta(target, ListPasswordResp, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListPasswordResp[]
    end
end
function Base.getproperty(obj::ListPasswordResp, name::Symbol)
    if name === :passwords
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Password}
    else
        getfield(obj, name)
    end
end

mutable struct VersionReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function VersionReq(; kwargs...)
        obj = new(meta(VersionReq), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct VersionReq
const __meta_VersionReq = Ref{ProtoMeta}()
function meta(::Type{VersionReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_VersionReq)
            __meta_VersionReq[] = target = ProtoMeta(VersionReq)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, VersionReq, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_VersionReq[]
    end
end

mutable struct VersionResp <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function VersionResp(; kwargs...)
        obj = new(meta(VersionResp), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct VersionResp
const __meta_VersionResp = Ref{ProtoMeta}()
function meta(::Type{VersionResp})
    ProtoBuf.metalock() do
        if !isassigned(__meta_VersionResp)
            __meta_VersionResp[] = target = ProtoMeta(VersionResp)
            allflds = Pair{Symbol,Union{Type,String}}[:server => AbstractString, :api => Int32]
            meta(target, VersionResp, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_VersionResp[]
    end
end
function Base.getproperty(obj::VersionResp, name::Symbol)
    if name === :server
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :api
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct RefreshTokenRef <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RefreshTokenRef(; kwargs...)
        obj = new(meta(RefreshTokenRef), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct RefreshTokenRef
const __meta_RefreshTokenRef = Ref{ProtoMeta}()
function meta(::Type{RefreshTokenRef})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RefreshTokenRef)
            __meta_RefreshTokenRef[] = target = ProtoMeta(RefreshTokenRef)
            fnum = Int[1,2,5,6]
            allflds = Pair{Symbol,Union{Type,String}}[:id => AbstractString, :client_id => AbstractString, :created_at => Int64, :last_used => Int64]
            meta(target, RefreshTokenRef, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RefreshTokenRef[]
    end
end
function Base.getproperty(obj::RefreshTokenRef, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :client_id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :created_at
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :last_used
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ListRefreshReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListRefreshReq(; kwargs...)
        obj = new(meta(ListRefreshReq), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ListRefreshReq
const __meta_ListRefreshReq = Ref{ProtoMeta}()
function meta(::Type{ListRefreshReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListRefreshReq)
            __meta_ListRefreshReq[] = target = ProtoMeta(ListRefreshReq)
            allflds = Pair{Symbol,Union{Type,String}}[:user_id => AbstractString]
            meta(target, ListRefreshReq, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListRefreshReq[]
    end
end
function Base.getproperty(obj::ListRefreshReq, name::Symbol)
    if name === :user_id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ListRefreshResp <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListRefreshResp(; kwargs...)
        obj = new(meta(ListRefreshResp), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ListRefreshResp
const __meta_ListRefreshResp = Ref{ProtoMeta}()
function meta(::Type{ListRefreshResp})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListRefreshResp)
            __meta_ListRefreshResp[] = target = ProtoMeta(ListRefreshResp)
            allflds = Pair{Symbol,Union{Type,String}}[:refresh_tokens => Base.Vector{RefreshTokenRef}]
            meta(target, ListRefreshResp, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListRefreshResp[]
    end
end
function Base.getproperty(obj::ListRefreshResp, name::Symbol)
    if name === :refresh_tokens
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{RefreshTokenRef}
    else
        getfield(obj, name)
    end
end

mutable struct RevokeRefreshReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RevokeRefreshReq(; kwargs...)
        obj = new(meta(RevokeRefreshReq), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct RevokeRefreshReq
const __meta_RevokeRefreshReq = Ref{ProtoMeta}()
function meta(::Type{RevokeRefreshReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RevokeRefreshReq)
            __meta_RevokeRefreshReq[] = target = ProtoMeta(RevokeRefreshReq)
            allflds = Pair{Symbol,Union{Type,String}}[:user_id => AbstractString, :client_id => AbstractString]
            meta(target, RevokeRefreshReq, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RevokeRefreshReq[]
    end
end
function Base.getproperty(obj::RevokeRefreshReq, name::Symbol)
    if name === :user_id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :client_id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct RevokeRefreshResp <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RevokeRefreshResp(; kwargs...)
        obj = new(meta(RevokeRefreshResp), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct RevokeRefreshResp
const __meta_RevokeRefreshResp = Ref{ProtoMeta}()
function meta(::Type{RevokeRefreshResp})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RevokeRefreshResp)
            __meta_RevokeRefreshResp[] = target = ProtoMeta(RevokeRefreshResp)
            allflds = Pair{Symbol,Union{Type,String}}[:not_found => Bool]
            meta(target, RevokeRefreshResp, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RevokeRefreshResp[]
    end
end
function Base.getproperty(obj::RevokeRefreshResp, name::Symbol)
    if name === :not_found
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct VerifyPasswordReq <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function VerifyPasswordReq(; kwargs...)
        obj = new(meta(VerifyPasswordReq), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct VerifyPasswordReq
const __meta_VerifyPasswordReq = Ref{ProtoMeta}()
function meta(::Type{VerifyPasswordReq})
    ProtoBuf.metalock() do
        if !isassigned(__meta_VerifyPasswordReq)
            __meta_VerifyPasswordReq[] = target = ProtoMeta(VerifyPasswordReq)
            allflds = Pair{Symbol,Union{Type,String}}[:email => AbstractString, :password => AbstractString]
            meta(target, VerifyPasswordReq, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_VerifyPasswordReq[]
    end
end
function Base.getproperty(obj::VerifyPasswordReq, name::Symbol)
    if name === :email
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :password
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct VerifyPasswordResp <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function VerifyPasswordResp(; kwargs...)
        obj = new(meta(VerifyPasswordResp), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct VerifyPasswordResp
const __meta_VerifyPasswordResp = Ref{ProtoMeta}()
function meta(::Type{VerifyPasswordResp})
    ProtoBuf.metalock() do
        if !isassigned(__meta_VerifyPasswordResp)
            __meta_VerifyPasswordResp[] = target = ProtoMeta(VerifyPasswordResp)
            allflds = Pair{Symbol,Union{Type,String}}[:verified => Bool, :not_found => Bool]
            meta(target, VerifyPasswordResp, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_VerifyPasswordResp[]
    end
end
function Base.getproperty(obj::VerifyPasswordResp, name::Symbol)
    if name === :verified
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :not_found
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

# service methods for Dex
const _Dex_methods = MethodDescriptor[
        MethodDescriptor("CreateClient", 1, CreateClientReq, CreateClientResp),
        MethodDescriptor("UpdateClient", 2, UpdateClientReq, UpdateClientResp),
        MethodDescriptor("DeleteClient", 3, DeleteClientReq, DeleteClientResp),
        MethodDescriptor("CreatePassword", 4, CreatePasswordReq, CreatePasswordResp),
        MethodDescriptor("UpdatePassword", 5, UpdatePasswordReq, UpdatePasswordResp),
        MethodDescriptor("DeletePassword", 6, DeletePasswordReq, DeletePasswordResp),
        MethodDescriptor("ListPasswords", 7, ListPasswordReq, ListPasswordResp),
        MethodDescriptor("GetVersion", 8, VersionReq, VersionResp),
        MethodDescriptor("ListRefresh", 9, ListRefreshReq, ListRefreshResp),
        MethodDescriptor("RevokeRefresh", 10, RevokeRefreshReq, RevokeRefreshResp),
        MethodDescriptor("VerifyPassword", 11, VerifyPasswordReq, VerifyPasswordResp)
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

CreateClient(stub::DexStub, controller::ProtoRpcController, inp::CreateClientReq, done::Function) = call_method(stub.impl, _Dex_methods[1], controller, inp, done)
CreateClient(stub::DexBlockingStub, controller::ProtoRpcController, inp::CreateClientReq) = call_method(stub.impl, _Dex_methods[1], controller, inp)

UpdateClient(stub::DexStub, controller::ProtoRpcController, inp::UpdateClientReq, done::Function) = call_method(stub.impl, _Dex_methods[2], controller, inp, done)
UpdateClient(stub::DexBlockingStub, controller::ProtoRpcController, inp::UpdateClientReq) = call_method(stub.impl, _Dex_methods[2], controller, inp)

DeleteClient(stub::DexStub, controller::ProtoRpcController, inp::DeleteClientReq, done::Function) = call_method(stub.impl, _Dex_methods[3], controller, inp, done)
DeleteClient(stub::DexBlockingStub, controller::ProtoRpcController, inp::DeleteClientReq) = call_method(stub.impl, _Dex_methods[3], controller, inp)

CreatePassword(stub::DexStub, controller::ProtoRpcController, inp::CreatePasswordReq, done::Function) = call_method(stub.impl, _Dex_methods[4], controller, inp, done)
CreatePassword(stub::DexBlockingStub, controller::ProtoRpcController, inp::CreatePasswordReq) = call_method(stub.impl, _Dex_methods[4], controller, inp)

UpdatePassword(stub::DexStub, controller::ProtoRpcController, inp::UpdatePasswordReq, done::Function) = call_method(stub.impl, _Dex_methods[5], controller, inp, done)
UpdatePassword(stub::DexBlockingStub, controller::ProtoRpcController, inp::UpdatePasswordReq) = call_method(stub.impl, _Dex_methods[5], controller, inp)

DeletePassword(stub::DexStub, controller::ProtoRpcController, inp::DeletePasswordReq, done::Function) = call_method(stub.impl, _Dex_methods[6], controller, inp, done)
DeletePassword(stub::DexBlockingStub, controller::ProtoRpcController, inp::DeletePasswordReq) = call_method(stub.impl, _Dex_methods[6], controller, inp)

ListPasswords(stub::DexStub, controller::ProtoRpcController, inp::ListPasswordReq, done::Function) = call_method(stub.impl, _Dex_methods[7], controller, inp, done)
ListPasswords(stub::DexBlockingStub, controller::ProtoRpcController, inp::ListPasswordReq) = call_method(stub.impl, _Dex_methods[7], controller, inp)

GetVersion(stub::DexStub, controller::ProtoRpcController, inp::VersionReq, done::Function) = call_method(stub.impl, _Dex_methods[8], controller, inp, done)
GetVersion(stub::DexBlockingStub, controller::ProtoRpcController, inp::VersionReq) = call_method(stub.impl, _Dex_methods[8], controller, inp)

ListRefresh(stub::DexStub, controller::ProtoRpcController, inp::ListRefreshReq, done::Function) = call_method(stub.impl, _Dex_methods[9], controller, inp, done)
ListRefresh(stub::DexBlockingStub, controller::ProtoRpcController, inp::ListRefreshReq) = call_method(stub.impl, _Dex_methods[9], controller, inp)

RevokeRefresh(stub::DexStub, controller::ProtoRpcController, inp::RevokeRefreshReq, done::Function) = call_method(stub.impl, _Dex_methods[10], controller, inp, done)
RevokeRefresh(stub::DexBlockingStub, controller::ProtoRpcController, inp::RevokeRefreshReq) = call_method(stub.impl, _Dex_methods[10], controller, inp)

VerifyPassword(stub::DexStub, controller::ProtoRpcController, inp::VerifyPasswordReq, done::Function) = call_method(stub.impl, _Dex_methods[11], controller, inp, done)
VerifyPassword(stub::DexBlockingStub, controller::ProtoRpcController, inp::VerifyPasswordReq) = call_method(stub.impl, _Dex_methods[11], controller, inp)

export Client, CreateClientReq, CreateClientResp, DeleteClientReq, DeleteClientResp, UpdateClientReq, UpdateClientResp, Password, CreatePasswordReq, CreatePasswordResp, UpdatePasswordReq, UpdatePasswordResp, DeletePasswordReq, DeletePasswordResp, ListPasswordReq, ListPasswordResp, VersionReq, VersionResp, RefreshTokenRef, ListRefreshReq, ListRefreshResp, RevokeRefreshReq, RevokeRefreshResp, VerifyPasswordReq, VerifyPasswordResp, Dex, DexStub, DexBlockingStub, CreateClient, UpdateClient, DeleteClient, CreatePassword, UpdatePassword, DeletePassword, ListPasswords, GetVersion, ListRefresh, RevokeRefresh, VerifyPassword
