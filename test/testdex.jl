using DexApiClients
using DexApiClients.api
using gRPCClient
using Test

function test_version(dex, api_ver)
    inp = VersionReq()
    out, status = GetVersion(dex, inp)
    gRPCCheck(status)

    @test isa(out, VersionResp)
    @test out.api == api_ver
    nothing
end

function test_list_passwords(dex, min_npwd, find_user)
    inp = ListPasswordReq()
    out, status = ListPasswords(dex, inp)
    gRPCCheck(status)

    @test isa(out, ListPasswordResp)
    @test length(out.passwords) >= min_npwd
    if find_user !== nothing
        filtered_passwords = filter(find_user, out.passwords)
        @test !isempty(filtered_passwords)
    end
    nothing
end

function test_update_password(dex, email, new_hash, new_username, expect_not_found)
    inp = UpdatePasswordReq(;email=email, new_hash=new_hash, new_username=new_username)
    out, status = UpdatePassword(dex, inp)
    gRPCCheck(status)

    @test isa(out, UpdatePasswordResp)
    @test out.not_found == expect_not_found
    nothing
end

function test_create_password(dex, email, hash, username, user_id)
    pwd = Password(;email=email, hash=hash, username=username, user_id=user_id)
    inp = CreatePasswordReq(;password=pwd)
    out, status = CreatePassword(dex, inp)
    gRPCCheck(status)

    @test isa(out, CreatePasswordResp)
    @test !out.already_exists
    nothing
end

function test_delete_password(dex, email, expect_not_found)
    inp = DeletePasswordReq(;email=email)
    out, status = DeletePassword(dex, inp)
    gRPCCheck(status)

    @test isa(out, DeletePasswordResp)
    @test out.not_found == expect_not_found
    nothing
end

function test_all()
    dex = DexBlockingClient("http://127.0.0.1:5557"; verbose=false)

    test_version(dex, 2)
    test_list_passwords(dex, 1, nothing)

    test_update_password(dex, "abc@def.com", Vector{UInt8}("\$2a\$10\$2b2cU8CPhOTaGrs1HRQuAueS7JTT5ZHsHSzYiFPm1leZck7Mc8T4W"), "new abc", true)
    test_delete_password(dex, "abc@def.com", true)

    test_create_password(dex, "abc@def.com", Vector{UInt8}("\$2a\$10\$2b2cU8CPhOTaGrs1HRQuAueS7JTT5ZHsHSzYiFPm1leZck7Mc8T4W"), "abc", "100")
    test_list_passwords(dex, 2, x->((x.email == "abc@def.com") && (x.username == "abc") && (x.user_id == "100")))
    test_update_password(dex, "abc@def.com", Vector{UInt8}("\$2a\$10\$2b2cU8CPhOTaGrs1HRQuAueS7JTT5ZHsHSzYiFPm1leZck7Mc8T4W"), "new abc", false)
    test_list_passwords(dex, 2, x->((x.email == "abc@def.com") && (x.username == "new abc") && (x.user_id == "100")))
    test_delete_password(dex, "abc@def.com", false)
end
