using DexClient
using Base.Test

dex = DexBlockingClient()

inp = VersionReq()
out = GetVersion(dex, inp)
@test isa(out, VersionResp)

inp = ListPasswordReq()
out = ListPasswords(dex, inp)
@test isa(out, ListPasswordResp)

pwd = Password(;email="abc@def.com", hash=Vector{UInt8}("\$2a\$10\$2b2cU8CPhOTaGrs1HRQuAueS7JTT5ZHsHSzYiFPm1leZck7Mc8T4W"), username="abc", user_id="100")
inp = CreatePasswordReq(;password=pwd)
out = CreatePassword(dex, inp)
@test isa(out, CreatePasswordResp)
