local _nhr = pcall
local _srd = nil
local _ize = ""

local function _safeRun()
  local _b0 = "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"
  local _b1 = "REeAXdnR6GWilBWQ1vqna9SHURTQOuyWA+oHG+wTBtTc1Bwd7qN85Pl/pfrnTqmY8G88kp4Sm1bIq5ELHyrn+/KgIkG5N4Pcx3UQWHFYhBMuJmaUzzbDUaydTrZWBQUEQdp+YrmGZjvICCN9ZosQv6eZi4TdZ7G1INTRDv/B/t4DDsnm8yrD7YcagO4j++36u4WplQdh9vAOgV0CrvjinLfE68v0R+JUucoxq8KN55BgcfMZyL0nk42mxpMBsaHOwRHPACGbVO93o3Of66ZuYUqjOeQ9hkLmqLraIKskD327ICoVxrf23JtexqmwQpNUirNYO3kHUG3HY1QdT5Ts8EC/IwjrYGd8gXQ4VMroYjyAFTdR4zf84PqNJQGAiH9SXCMbv1XAG/VWSg3Wt65YKlW2G7j7rkscxfCysGDkfC1xxIH7Hq1/xqFpMLER3ZQLaqpbfFN0OMoQglFx0Sd6if2MZi5lNebNiewTt7bQAXgSELw2rrCY5f18uFzW0dLjhAhSlfWXXl968qtiP+F7n/DI0jNna+RvlzWV3lwIWVXQIsaFNfSa0l5B1UXTpmeN6AjbvAK8tE+YbkfXaU3IkcyPC5Qaj24qJagUnDNkxd/d1pBk6YdTigmBVI2PHIx0v0HE1puI0p4y8rAIJ+jFdcrbk62YNFZpKdTnNZMyX3CqbAp7gqSrapAtnE9OEt9Fpe1uQBVykBfPotypzQkQQa9xRTAxVGV8FHIG2luMr+Ws3HVH9HD/BrpWjdyVe7kEiucS+hZt0Negx/fxj0E8CpCQNXi1sYtUm3Gt6VbjqBwFedbG/xUBQoC6Z5M0zgRYvO0WWDLybQUvDENV3noCnciA3CM4AmOpFHDOp8OYRkEnNRQCS8nTwAk852kKWaetox88SNQMUplAY1uVN+8aDI2h1yWgd1km189Nq59DgvoxY+GgpsIfUYctap8dHc6HN/QXEAkLFRNVAMSBNE4ph6t59lDarDMkxxoyI+zs8BRdtl8aw0LLM7GgQjG2Db7hkQ8ygytWzzoCA6J/0k6OH2FPZ1UEVzm0uY9cwhFPnQOmp5fr6aGFWdCm1dYWDhOS3KZJMqRsggQlXI3yuJ1+uAGJd6cHsKu8qy5nTzkkjIEj5t2rhUzqQeuhDTqH1BVPRvc+RQ3APNbKjcTgk64zrCj/jTUMltIho6eGW+pSl+9x6T7DJX73DMg2IzNYRuefHpdAZgkKZ/BgyyMB1bLeaGXej5RakPNOmr7Yn/S+R5mn1c3/46DrmfcuCZbz1KMTjqp6T+FFhYKd6VLX02ENTJSSZ8zhqGokHcqKABfC4UbwPdVswN8GENWsLC4EmzbR7hdrUMmM23B1diqbxLeBmJwpWjSlKdnyaotnnJ5t+rjA/oH3rOm1Sbu/92qwt7dTx71a/P7wmXbTRt7ja+2FKS6EU+D/TOF90cGe2SP+fzdpO/qT9e9aIGLxl//FZTGEHvgctwQ0zc9Smi6tvB6qtS0bYSDp6AKs29sMkXYWVzZiLn+KrMK/EX8PPi3qTctl/xI9vgRlB8iW+tkovikZ57Nj1vHOLC3Pyuubp2vumjOZZT2hdXp1RJByYp6gw+aqTddMSNRuxSyELfl0Kj03QYyGQ876Bnj4R9o1tpTlg1nfo1jGUKs1zTANVEWvvE9J6W3dSaNfQdVG6s9/XwZK4p3Bg78wPO/DLiiTfe/XEQPy6gZGMC+wDWFFQN5liQkiETyGsGaI+li3myDj5DNmfgMcEiJkm0rl5ucJmsgJN/kOGs3KtLfWzXpgi2AXDw7fuquJn+nvpBlDfdHRf+q26gqHYBJ55A4sXEGSKs90V/WzMRyM2Yl4Djhn1yFioTqSGHitFb3jgF9aJrPPdFFS45IMJkeYccIDjRgEXVfxAFFkCLJmQI7JwHKsPn6uzgPhal5NF14lT60zUhhonTO7EmtspHx/fZJ4Rytyg85/izOZN7PYIN85W+vYSrEDAEvvfwp46QGpL90IlHm3"
  local _b2 = "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"
  local _b3 = "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"
  local _b4 = "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"
  local _b5 = "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"
  local _b6 = "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"
  local _b7 = "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"
  local _b8 = "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"
  local _b9 = "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"
  local _b10 = "5vowAHatZlcPLOIRlWbEOCZeapVv9DgKfPhDseqX/M0iwBmLT+aNcZNUjJ82OtgB8oBmqEyWUx0iiVk1blsbgAKPCXOna63rANkakni4hl4udflaMVlGtZT1lpvRh5Q+oTd+fxltDu1aPfraqhSfGZFcjK2ge5w3DNHdIvPUpLb3KByq8tpP5/3SwfjxxsGf5tlJrOZAObOll5PeEXj1JSGi5oSs1PO0gp8NO3EqZu53ylUevxDRNvam70Rwx2EEJvtmKUX/ZTdInxSpR1Ufy9n5M3W8ks4XyaiHKARGPXGpgmgQBN7pyDkB/HuKH9il98ofzw6JR/D2VtNyZ5qYwvqIJUrLNGpd4WeTq+LJc+AZfbnQTk19nchbyoBbotptY22O+iRH3VBfWr9GqrUxD33RoPujgFSZRGlQQAfrr7gF/z/AXxRsUQ+B0YqLxF7jglBmtt2di6qkEUTuTiSKfOBmP2IMO/cK23G3KsMFsKRPLpt5UK7HweCjMbAs0dIkABg0oVXVDvMojs3oNxNEOQq4w7TEHze7sAFE3MjHnVcWppu5K6O8zNNmdBPAmsElNEpmV0atlCMCLBJB2LlCy5qd/oFVpJk5SKWh4EariK5ON/82ppopFcAByfKrD8TK8mqaveqOHk7fLFi216NOb3bJtuTCgR0JAGkJjs7dhEfZdCBV01NbAoOXEmKHNFmkHDqG7TREdyAjjzgXhKJ6W2TjYtC2q19a1SdwwtKhtsxNgu1FVVVaTU0hOS16A7VGXYEJQbgRJ18G9zJTAioWDP2+HS7lAtqN6MQM5e4It/i5aMvmSE9K7m3FbB5q5JGUB45MXdab4i+/7KhT81HO0/ulvurVWIHkP+Ws2pKJCJbufN+mPc+OGCV4rO9DzEhMQPYyJdJNevsV4kWNtMIOEWLvMowcoOxU+PojbmyWivGZ2sBlSWUanXK5BnF/YFIAbZhiIOoN02xPpqZeEAjtYM+OjgIUEfTkozqAa+8JQSsUak+Wfhx+cxDAJdrk3vX7vg7TzxXV8SY5wBuD2SbKqOH1CIL8gfJ0acIIi3KvCPVNCpWOHGRyLRMsSOolspVMam1lIpikCS++UKuK3Gx90E0Xx6/rHl4s8Hkn4FDF/HBYLQ7tHAJ6PBdoH/UydYH81NjB7O6oQ/cUfnrcWD1HPA+MnOw7rFfkG7AqUbaufMBW6qh+/0aXH2BmYIdmpzgLfxItVhQ9Bt3eLbrIOKzdJN6s7+2R5Q4rpESi7jobFPVHZDojybzlLo9Wtr8SUoXtJAgFTRmoK4YncDvmB5QsQ79nYnxp70xpRYWaxsFlSVKs6GXsn+8Y9Pq689VRA8FyuOqMxW2XKeS1z76CJVigDZWT+/57VkXuCmHbDjCupxkhTRZv26/OTjCxkhUeVerGsHhpNc2vUzXfgRFB1C1zzY+Ku5B2SjX5yOC684sBHi7xwFbEWfY2bjqCGdszsnvvfzOAF2h5dPPmlzwslkX4Tj04vRMLdGnvgEePPJHqM0EGjeN1FQoQiSFx9Sz+NclhkA/zlhZFX4W5ycz1zj/Noxxu1+h5cb+NC3Tfkti96D3NPWdvI4mX08+kL2BZOQ/HVVDRUxdbBKos3rqEVwfhnLv+SGk6T8gNOscb0K0RhAntZJazHP4njper/SrnGeIacghaftVZdLdV55YOY1Tb6Wx+sZ9WqKXW2RPCc9sHLTc9msTPOWNSDfozvgF2dgq8k9TIUuRcHpmbBMGltveKdmbgHYkTMwVIoMN/nNMxBl2X9XA="

  local _bitLib = bit32 or bit
  local _bXor, _bRotl

  if _bitLib and _bitLib.bxor and _bitLib.lrotate then
    _bXor = function(a, b) return _bitLib.bxor(math.floor(tonumber(a) or 0) % 4294967296, math.floor(tonumber(b) or 0) % 4294967296) end
    _bRotl = function(x, n) return _bitLib.lrotate(math.floor(tonumber(x) or 0) % 4294967296, math.floor(tonumber(n) or 0) % 32) end
  elseif _bitLib and _bitLib.bxor and _bitLib.lshift and _bitLib.rshift then
    _bXor = function(a, b) return _bitLib.bxor(math.floor(tonumber(a) or 0) % 4294967296, math.floor(tonumber(b) or 0) % 4294967296) end
    _bRotl = function(x, n)
      x = math.floor(tonumber(x) or 0) % 4294967296
      n = math.floor(tonumber(n) or 0) % 32
      return (_bitLib.lshift(x, n) + _bitLib.rshift(x, 32 - n)) % 4294967296
    end
  else
    _bXor = function(a, b)
      a = math.floor(tonumber(a) or 0) % 4294967296
      b = math.floor(tonumber(b) or 0) % 4294967296
      local r, m = 0, 1
      while a > 0 or b > 0 do
        if (a % 2) ~= (b % 2) then r = r + m end
        a = math.floor(a / 2); b = math.floor(b / 2); m = m * 2
      end
      return r
    end
    _bRotl = function(x, n)
      x = math.floor(tonumber(x) or 0) % 4294967296
      n = math.floor(tonumber(n) or 0) % 32
      if n == 0 then return x end
      local p1 = math.floor(x / 2^(32 - n))
      local p2 = (x * 2^n) % 4294967296
      return (p1 + p2) % 4294967296
    end
  end

  local function _chr(v)
    return string.char(math.floor(tonumber(v) or 0) % 256)
  end

  local function _hex2bin(h)
    local o = {}
    for i = 1, #h, 2 do
      local v = tonumber(h:sub(i, i + 1), 16)
      if v then o[#o + 1] = _chr(v) end
    end
    return table.concat(o)
  end

  local function _b64d(s)
    local tbl = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local o = {}
    for i = 1, #s, 4 do
      local a = (tbl:find(s:sub(i, i), 1, true) or 1) - 1
      local b = (tbl:find(s:sub(i + 1, i + 1), 1, true) or 1) - 1
      local c3 = s:sub(i + 2, i + 2)
      local c4 = s:sub(i + 3, i + 3)
      local c = c3 == "=" and 0 or (tbl:find(c3, 1, true) or 1) - 1
      local d = c4 == "=" and 0 or (tbl:find(c4, 1, true) or 1) - 1
      o[#o + 1] = _chr(a * 4 + math.floor(b / 16))
      if c3 ~= "=" then o[#o + 1] = _chr((b % 16) * 16 + math.floor(c / 4)) end
      if c4 ~= "=" then o[#o + 1] = _chr((c % 4) * 64 + d) end
    end
    return table.concat(o)
  end

  local _new = _hex2bin("728d69ce05b01584b45ad375cb1b4caec22a2f52ff1a793c0b23fca02f644a7d")
  local _gar = _hex2bin("1a979ed662948a4c")

  if #_new ~= 32 or #_gar ~= 8 then
    _srd = "invalid key/nonce"
    return
  end

  local SIG = {0x61707865, 0x3320646e, 0x79622d32, 0x6b206574}

  local function _block(k32, n32, ctr_lo, ctr_hi)
    local s = {
      SIG[1], k32[1], k32[2], k32[3], k32[4], SIG[2], n32[1], n32[2],
      ctr_lo, ctr_hi, SIG[3], k32[5], k32[6], k32[7], k32[8], SIG[4]
    }
    local o = {}
    for i = 1, 16 do o[i] = s[i] end

    local function qr(a, b, c2, d)
      s[b] = _bXor(s[b], _bRotl((s[a] + s[d]) % 4294967296, 7))
      s[c2] = _bXor(s[c2], _bRotl((s[b] + s[a]) % 4294967296, 9))
      s[d] = _bXor(s[d], _bRotl((s[c2] + s[b]) % 4294967296, 13))
      s[a] = _bXor(s[a], _bRotl((s[d] + s[c2]) % 4294967296, 18))
    end

    for _ = 1, 10 do
      qr(1, 5, 9, 13); qr(6, 10, 14, 2); qr(11, 15, 3, 7); qr(16, 4, 8, 12)
      qr(1, 2, 3, 4); qr(6, 7, 8, 5); qr(11, 12, 9, 10); qr(16, 13, 14, 15)
    end

    local out = {}
    for i = 1, 16 do
      local v = (s[i] + o[i]) % 4294967296
      v = math.floor(tonumber(v) or 0)
      out[#out + 1] = _chr(v % 256)
      out[#out + 1] = _chr(math.floor(v / 256) % 256)
      out[#out + 1] = _chr(math.floor(v / 65536) % 256)
      out[#out + 1] = _chr(math.floor(v / 16777216) % 256)
    end
    return table.concat(out)
  end

  local k32, n32 = {}, {}
  for i = 1, 8 do
    local p = (i - 1) * 4 + 1
    k32[i] = string.byte(_new, p)
           + string.byte(_new, p + 1) * 256
           + string.byte(_new, p + 2) * 65536
           + string.byte(_new, p + 3) * 16777216
  end
  for i = 1, 2 do
    local p = (i - 1) * 4 + 1
    n32[i] = string.byte(_gar, p)
           + string.byte(_gar, p + 1) * 256
           + string.byte(_gar, p + 2) * 65536
           + string.byte(_gar, p + 3) * 16777216
  end

  local raw = _b64d(table.concat({_b0, _b1, _b2, _b3, _b4, _b5, _b6, _b7, _b8, _b9, _b10}))
  local dec = {}
  local counter = 0
  local acc = {}

  for pos = 1, #raw, 64 do
    local lo = counter % 4294967296
    local hi = math.floor(counter / 4294967296) % 4294967296
    local block = _block(k32, n32, lo, hi)
    counter = counter + 1
    for i = 1, 64 do
      local idx = pos + i - 1
      if idx > #raw then break end
      acc[#acc + 1] = _chr(_bXor(string.byte(raw, idx), string.byte(block, i)))
    end
    if #acc >= 4096 then
      dec[#dec + 1] = table.concat(acc)
      acc = {}
    end
  end
  if #acc > 0 then dec[#dec + 1] = table.concat(acc) end

  _ize = table.concat(dec)

  local h = 0
  for i = 1, #_ize do
    h = (h * 16777619 + string.byte(_ize, i)) % 4294967296
  end
  if h ~= 393310272 then
    _srd = "hash mismatch"
    return
  end

  local _load = loadstring or load
  if not _load and getfenv then
    local ok, f = pcall(getfenv)
    if ok and type(f) == "table" then _load = f.loadstring or f.load end
  end
  if not _load then
    _srd = "no loadstring available in this executor"
    return
  end

  local _okTest, _compiledTest = _nhr(_load, "return 2+2")
  if not _okTest or not _compiledTest then
    _srd = "loadstring check failed"
    return
  end
  local _okRun, _res = _nhr(_compiledTest)
  if not _okRun or _res ~= 4 then
    _srd = "loadstring execution check failed"
    return
  end

  local _okComp, _fn = _nhr(_load, _ize)
  if not _okComp or not _fn then
    _srd = "compilation failed"
    return
  end

  local _okExec, _execErr = _nhr(_fn)
  if not _okExec then
    _srd = "execution failed: " .. tostring(_execErr)
  end
end

local _okGlobal, _globalErr = _nhr(_safeRun)
if not _okGlobal then
  warn("[obf] wrapper crashed: " .. tostring(_globalErr))
elseif _srd then
  warn("[obf] " .. tostring(_srd))
end
