local _guu = nil
local _pft = ""

-- ========================================================
-- DESENCRIPTACIÓN (Salsa20)
-- ========================================================
do
  local _b0 = "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"
  local _b1 = "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"
  local _b2 = "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"
  local _b3 = "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"
  local _b4 = "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"
  local _b5 = "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"
  local _b6 = "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"
  local _b7 = "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"
  local _b8 = "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"
  local _b9 = "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"
  local _b10 = "NtIoa+mEuQVoswLhcRZDQfSyLIIA+R/apn4j3Ps2IOi0GUdXEE4nF3ZQ4c3HdRjuzAl+P3dQGt52nNkfKYi7J4kVy22A4mHTNha9EzjiwA/Dl8K1/QAwEcsuOXY3wKS3Hde9uXgF3MKBpuurHZIkP3kMUdTmCCQ5fT6IVT5BvRJvAnG8JKhYWeCbYg0E7nx5Vv6Nmb3ui0hAIW99awZokEq2msxXQa3QQGp7IX8JFwI5zch3KuqNnvKRX0g887dOBQ4f1ocrMKvmQKEc56k9mCu2/Y7MlwxHogDkam4ueMR4Zcjh4jVMFs8LxKOS53FhLVegpaXzpt7Jx0gvz1XjVvMe8XUETyP6EGUwmgI1qU/Dy/DXRrNnHayKw9iPnvvPN4AmuDSuy6KcNkou/WFDqVtHKL+9LFOoJlAcEHy0rmX5+VaxlCnzprUInlBVYrk8dj7ok/55lFx1i8guhuySV0nzbXYWIO/4drcWPl7jmNtijcrR33itKvfiDXu3MpMNIOMBcusRyDyYjK6+7rDk2uqxOHLd6QHpwq4fnvKOzFpMgQy/UxC2kDoKgvW9dD472fmvQid3a6BbElxZ8oRF9CKTMrV3IAhX+VUPAcRb4ZyI4PeOySKS0PMIeqmnLCl04LkKeaVz4OAYKgPxXBVQvZAQPfm+p+lhbnZI3C+lbUEIe7kG3/pMm3ss87kF/CvbWXI95KYi0EH8Da+5NHp/Pyo5J48nU3PWuKZLEOnDedana7zAgrlQO0ytiRyV1D/2/LsGTWWwBVitPuBtj3e+FBl+PwBGzYtnAvfyoW/wRqiMeP0CYRTRad2eeCMok2e8XmdLAk/CMGDtL6im8dTVlJioGfFH/kk00o6li0wE/s07TYSC42CsbrnX5d18xEhZb09kkLyKbWxv+yCAestuDEjuMtL2DxpXGVPb/JbgDdqgDlH7+hIN8kIMngbbrreVWNy5chTmFcBTi8r9qoVJf9ekfr++uuI8WFWoM8JMB7xWD9m2n8Kwy3+gBFKN7QYBf5jX00TPM+fcTDDN2XLLmPsYQeu6+cJ/FPhlNWyPZKzF07ubb4bl4poX4kO8bBtQFde2XeRE95PAWlbCH2Ka66Gl1Xq7dUtae0jT+ad0LBMlBfbNwqCr6muwwEKnaSmMNedgKAKs8oVSGnYYK2XQIgmpDIjg38UMBa0QzTy6MftZF4NTeIDy9mdCAKjiFtDIUjfiM/AH3kmv5HDZ5dGPj2d7ai60Mg8L5GHeRqY0JJoOaDQuKz42TVcC7/SJYFy6gIb297o9nMVZXUI8hrPZ8BsxYtXDTE1z4VeD0pBR56SwspFuvKRNG1GzsiFGUUcs+Svf+LOBCCaLZckiL/sy/G0xj1cYBJHFgQbgm8Gk+6tnBtoCepkMvbjv1snVKXqtANTk9H+DLEwzz2evTeEBwzZ13/d8gMV/0KOa+CjSITR5e0zbfyepxfWtFJhkS2eb3+lSyU1xhWdp4kRnpWDwfBJbwkYqD7ODrJqueBwe06PuHBmxKIwR/OQNMgMFPtJCjp9V5Qlo0JqmJIdeaN4JQAOg+b1mTntUudCNct1gra6yFRTGQK42VMa2EnStaaO20M1YNb4qdIPuD3LJPaleCuQmUPaMiV+2fQmC+SwkJ9CbP5HphO2fnDBst2xVwY9Lhm5DIUj3IZzcvlSaQlczUU5uKpqtQALmVDoOw1XtAIcTG0uPxH/XWhE3FSwdfbLKScC79//KJ/517GseiMaoGVrpU8+xVMHHnARXVQ36lnU3nZY2cEVle6nZmZ7J11OoOO9oO1hZ5loSZ2dc5F7/msc8daA8UJC6cYLOisq7gWWc1WX/aThsLOdEdpqyaUsTVtuP"

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

  local _blh = _hex2bin("dde43f636717d20035cefccb4776bdd69b47257f45df5affb9984aa9e90540fa")
  local _lng = _hex2bin("708afe18138e4e8f")

  if #_blh ~= 32 or #_lng ~= 8 then
    _guu = "invalid key/nonce"
  else
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
      k32[i] = string.byte(_blh, p)
             + string.byte(_blh, p + 1) * 256
             + string.byte(_blh, p + 2) * 65536
             + string.byte(_blh, p + 3) * 16777216
    end
    for i = 1, 2 do
      local p = (i - 1) * 4 + 1
      n32[i] = string.byte(_lng, p)
             + string.byte(_lng, p + 1) * 256
             + string.byte(_lng, p + 2) * 65536
             + string.byte(_lng, p + 3) * 16777216
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

    _pft = table.concat(dec)

    local h = 0
    for i = 1, #_pft do
      h = (h * 16777619 + string.byte(_pft, i)) % 4294967296
    end
    if h ~= 1996242760 then
      _guu = "hash mismatch"
    end
  end
end

-- ========================================================
-- EJECUCIÓN (Hilo independiente, entorno global)
-- ========================================================
if _guu then
  warn("[obf] " .. tostring(_guu))
else
  local _load = loadstring or load
  if not _load then
    warn("[obf] no loadstring available")
  else
    local _fn, _cErr = _load(_pft)
    if not _fn then
      warn("[obf] compile error: " .. tostring(_cErr))
    else
      local _env = getfenv and getfenv() or _G
      if setfenv then setfenv(_fn, _env) end
      
      -- 🔥 LA CLAVE: Usar coroutine para que el executor no lo mate
      local _co = coroutine.create(_fn)
      local _ok, _rErr = coroutine.resume(_co)
      if not _ok then
        warn("[obf] runtime error: " .. tostring(_rErr))
      end
    end
  end
end
