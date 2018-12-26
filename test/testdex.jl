using DexClient
using Test

function test_version(dex, api_ver)
    inp = DexClient.VersionReq()
    out = DexClient.GetVersion(dex, inp)
    @test isa(out, DexClient.VersionResp)
    @test out.api == api_ver
    nothing
end

function test_list_passwords(dex, min_npwd, find_user)
    inp = DexClient.ListPasswordReq()
    out = DexClient.ListPasswords(dex, inp)
    @test isa(out, DexClient.ListPasswordResp)
    @test length(out.passwords) >= min_npwd
    if find_user !== nothing
        filtered_passwords = filter(find_user, out.passwords)
        @test !isempty(filtered_passwords)
    end
    nothing
end

function test_update_password(dex, email, new_hash, new_username, expect_not_found)
    inp = DexClient.UpdatePasswordReq(;email=email, new_hash=new_hash, new_username=new_username)
    out = DexClient.UpdatePassword(dex, inp)
    @test isa(out, DexClient.UpdatePasswordResp)
    @test out.not_found == expect_not_found
    nothing
end

function test_create_password(dex, email, hash, username, user_id)
    pwd = DexClient.Password(;email=email, hash=hash, username=username, user_id=user_id)
    inp = DexClient.CreatePasswordReq(;password=pwd)
    out = DexClient.CreatePassword(dex, inp)
    @test isa(out, DexClient.CreatePasswordResp)
    @test !out.already_exists
    nothing
end

function test_delete_password(dex, email, expect_not_found)
    inp = DexClient.DeletePasswordReq(;email=email)
    out = DexClient.DeletePassword(dex, inp)
    @test isa(out, DexClient.DeletePasswordResp)
    @test out.not_found == expect_not_found
    nothing
end

dex = DexBlockingClient()

test_version(dex, 2)
test_list_passwords(dex, 1, nothing)
test_update_password(dex, "abc@def.com", Vector{UInt8}("\$2a\$10\$2b2cU8CPhOTaGrs1HRQuAueS7JTT5ZHsHSzYiFPm1leZck7Mc8T4W"), "new abc", true)
test_delete_password(dex, "abc@def.com", true)
test_create_password(dex, "abc@def.com", Vector{UInt8}("\$2a\$10\$2b2cU8CPhOTaGrs1HRQuAueS7JTT5ZHsHSzYiFPm1leZck7Mc8T4W"), "abc", "100")
test_list_passwords(dex, 2, x->((x.email == "abc@def.com") && (x.username == "abc") && (x.user_id == "100")))
test_update_password(dex, "abc@def.com", Vector{UInt8}("\$2a\$10\$2b2cU8CPhOTaGrs1HRQuAueS7JTT5ZHsHSzYiFPm1leZck7Mc8T4W"), "new abc", false)
test_list_passwords(dex, 2, x->((x.email == "abc@def.com") && (x.username == "new abc") && (x.user_id == "100")))
test_delete_password(dex, "abc@def.com", false)

