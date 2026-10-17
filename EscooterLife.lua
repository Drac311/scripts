local _wfv = nil
local _zak = ""

-- ========================================================
-- DESENCRIPTACIÓN (En ámbito principal para heredar global)
-- ========================================================
do
  local _b0 = "xK1ot8njA8oTMAQMX7B2ELCxkoXwqcHrZtsgf6XHITczEN4kGVeysONAVoWulD9a8J9CcLmhlVYxhe4M/Cez37nHB0jamLABOkzVFbSPwvWyt+9k6ZXpnzLpW2d2vuurrVjrhIcSrMKQQpPoHwfDkyG6faqPkMwAZmpDATZewaR4qTrvfRmvvmHfqZ+uDZnmnNTYle0t0Rrm7QDOt7pZjODAOH8tn87l4bDTNfqcDoLmZWoit2C9hpq2AOYFYF+BlCSSvS2kKBTyGE76+6R+23XBpE+0quGG90K4Gyx5k3N+xZYv0HFQxOdXp4H4NBLjMUKwS2D+mn4dfwyHENjhTXi1oACHZuF2RYpY7occ1mYWhWZfvltrrOwaBVE4jCj6lbTkYgx/i4oWtqaf219G7Pg3CdKdPGmksYLO9GczGfMSzI9W48LpUDT8KdwLlcg2sg5FEesT6GBq0wV60F1/rwrlOoHuZeJDMlUEePMogOj+IvVkILifZQeWKGp5HNq3mvu036bUW6WogfNoGrEy6hHN13EUUsqXh8YsgdjC42PpuoBSjO9TgTOPMhuFcJ0+epd/Hn6LLg5L6VvhqstOO/r7optzt17pvdcVwv58TAGpoz+HHHFWIWFD+e3BVJy5uAl9RLRpowJ4u9aTJSmz0u83U+W/wD8O0dUowSrmS8LRvFtzNERchxytGCrIRF1R5JUQXelfelOczT6eIRRb5Qo9cYBk9DAUh8PSOIMwUbwhtLni61N+AQWSHe12rq4BoSZa6AZD7YmRRny809WoPcYfDo171Qi+rU9UAhuERS6Mf1N0pZBwZpa9Opj5WRyIXGG75tg2oO8O4pT5BOC7beOob05AXIRroa+hKtGC7czuu+bxMrcBi4HUGt9P2iLuDJOGYAHQCD+GgGiTz9bOWVQPWNPqB3Wh8/afh/qwtx9suH6wTnVUp+BHXHCUXl6GMVfYCtGf4TlWVha/SXE9HBWmb8o2HGaQKO5AZ7YwtX+GiZCROFi//ZnjXjHn6rdYj7HhGurpHptu2klvz5N9AgEFvNE3eK6shVZ/pa2CIMcuaIENWYsfQWwMj4g1RlWJCE0J5MggglhD5Ay0MC1p0mGZY1ew8PPZlqQe73rEE6jw2dRcPuoTa0roWD/duFDcGIa+JF6DfdNEfOAf6XZ6ZKPtu4k+/cQ2MGiFPIlz0bzeRgU/A4iLRPCbOU+nOzLu8I3rmJDlvtWt0E1mjWUYsYvTA698/S38SgmUdx4LARNmf7KTvf73nC2GbSdK4QI1x8TK2cgBGmMvtuY8VAxHU/wYtLOY4sJPthExFx3ClywUENtGQ4FkgeI5lpXrjeiiWDFxOz9MqFnjcKcs0BmwgggVZnSHNQU3fJDsDnA+32MbMp48LmsWMsBCIOx97+nSq15fPL9PFwOtUwAIHaVRLSoIdZERBjqL/IE6I3LM2gfX+oek/IwjxJXvKUXhxP0fCvOm+X8u4w7F37vX35qeMn3kv7s+L9f244EpWsogmsjT5aQZqCg1o0JIxtGKtKOAGTbhuMtJ/YqaCyfbLj6dNUaALUZt3AsCHE5Qju0ThS/0d/KZuECxDn3qJvEScRvxSPjr2/8CajnDXC8DEHpEirRMDlHUWdRJsgwKjZ+KjsmfZnIGVdbKNtBUBnz33ezPvfSZssj9VZKCWGGPxrwzMGizqvAeKuhdEfpsWKwmn+rFFKXtVTNw4fN86prMQOPXxYmU3/B7/UlQpiJPhNCmxzqeUleePUnH/PkNOl4YlaJ+erNH7e9Tyzqj2tEpSZMfd1nuphJvxaAODWh0xtLjjtlczGbtZ1/86+LHH6IkXf+9fFse9BvpxFGsxREWgBspel4t9ix1XCL8I+D+rs3vQ2m/je6HJi9RYiAN9c94lszd2psm+QI9Qe4/2AtFz8jCRCfnuCjLQDFowRUdv3quG9kRFS7g852MHHs+nfL3Wg5c1wdg0mncrC+1h/v5lt14CTg1ckUMM/ZP+QGz"
  local _b1 = "3x5Ik+gLBV6WGER0nUq5hNWeS7+OW3+ygpv0uUHWFKOJO+zrSy8trSqR65IjgU24wYEyTVuKeYvHpxYBLUtnBZWAIhcm4KcjBpAIWHbgPPwihKiJEjbm0WXtQPbmViUD+/iiSrXIkJ5gxX9kq7oOHESC0qr3DtNgHK6uFmFL10lQJI3mLcFfqs9HD0q9w+gBPGcZ3TfYE7HvHnsbuJCkrVeqLYn6GAiPSRiBfOU5HrVGVkvNqML5PWfZLGCxSAJyX5ikaYSrLZXdnGY1tkeJ0t47Bj1KrqNbs9ZYNvFaPgyRGypmCEQ7M4jDKvX7Y94ZICDacfKDtglbwefMGdmz814YPiaQODgnESZBQ9gXCFLjRbjxi34/SPA6KyE9RB+2frVyRkFq/G7wD9Cm5QW9liqCXblwoQnngxIWpHErj7J5ubWeCxv8taMrIPeVILfrsmiw9lJuTN2Iqb9RJKbvzPUwhJFdUQBhCDDA8rysMEshTINEUB+vblFtPYmqW/BVrrmpvLxpwIkSxUitihfp7hU1fsCduk/7F2qpH+ZKprGtJbbOajpNJ9nIgFOG6dx6tiGFJ7awhm/58+ln2OAgvrtJbgCO6KJzv6Ar8NVaV1cOgnmD2fsftcmLKnVH9ALrfRB7djQLqieYed0TbhzIHLr2WuV0FAEoPg8amOdBzmbBMGcxa5jK52QP7k5UghBLJ8/+z6ml8rJws23+ncZnVgEk5FT0rm4eaBTcBbQhzAFklUNRgnPszzDUgsVfuvDJqJiORqt9mn1CVWqVwFAIq8fkAShnaD88sRpnI46yqfTMr/LS5YikUDeF6y2d0WHma0Oav0gTCLf45F+VAw579+tAm9WmME9yqGwl9tC86nDNAhgxnyITZpuv48s6HS1b+EdpAOnUs2sED0/LHicamjco2NyZy322EeQmKYpZVd9lC5MtHRtun3DCPFCAIv/JVyOgd3X/TQxvvwwigWJK0OQTXCVTDcXGTWdoXF8saJQ66ABB8HNP4CWvesybusMXhEx9KzUett89yJF2vGDPQ5Sxy9pxXcUEs6VC5PCaX/vQ5b3LzSAUsekVe4PHnThmD6MY20YgX3mpF6LFk6MMRGZ94R5olKL6in6SsB/ipWEXrzHvhtshaiy68HdWYgh73FKPyitCwVExEDYyGIVniTfHQl00Se+gHFNSq4rxZ1Pm7oqpHK/v8ZYiKIKpmGgb4iEUTedHbBuebI112X9hz/4oAZqj6zwF3JkAmLHtZemg6RQ3P0QFUXpHMkFhjMIbJ12yj0wj6hPoxcKHeg5EHdA0mPPd3gM19iijzlEiRBBhzLVpVULKjlTUgMxbV04+Wr73T3cIU+AyjH8/IcBm5r6wNhHoIhvwvQo3/SBM/mjPjtJ5yPc79Wq9Ji5Mi9/3Uw0C5TsM/eCxi6ilByBWCGBAabl2eJn+9QilJjLjncUUyqttN6bS9I6dK+RYY2rM3kjBiz/apnWZRVEomBRBLbo2JpdBc/4r7zG2cKABRtOVA7dwEY+S9/vMDHJZSNtyC6V0UY8enE9+pFLhadlD8W9y0CJVHBlqGyvkxyY4cAHw6g+RzDOb7SeqJYGARCtxckm3ujnX2RlpC6zv+HibYXAQcwjSDYqaEt0vdQqc8an2Lg62HBAJ8saBk2Ip+/Pu19maLszHTt4U+1ndrEo4HgFBN+PRsfTn09GhSW74wcw70BzIdJMcVniv5yCNLRAljdlJKjr4geGBzgFCkAYmsDwLtAOOfAvvG0vv/7B1Fl249dqiMpDc1FBiTkUQp2obyflV5gP6X+qQcCoU1SbttBwiTl6DgwSUA+Nerw9jdz9cyr/N/6mz+DAqyksR2nO++Z6oqu+DEEXAKEDAHKFA5t3+hR3j+kPgwAsNar5BRFI7sB+KPRarTZL2sX0R/tlNVSxI0XO1qa9XO/0vL4ZG1VG0Mopx/RtJtnHnIHUhyxKqEfunt3SLw5CfWHSS88FzLzmzImWYwNz95fs8"
  local _b2 = "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"
  local _b3 = "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"
  local _b4 = "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"
  local _b5 = "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"
  local _b6 = "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"
  local _b7 = "fJq1V2lwBzTTim6F4QirCZICEkNQevpHdfTbYV1ykBy6iq6Q60lmkOMYhEPIkv4iDDtbBXza8G9KKXeyIImltgVbnIIjnHA2gizei3OjSH1GEBA7KIib7lK2mjEeDRq6c27vskgNRKGA9AlYticfAGMmTazjcwLWsf51sdytYVvvP0s5oa5HDB/lHYrg+uqtoTrWALDVLvz/y5CuzmQdpLrGS5p/RTCRLyuaL16dnW5mjBc64n5Tnq8ULrpj12gWBSV+9pD7T47RtXU2l79E6ZrA97Qw3W/9cuEJWVVMcOez5I+SM+Q/nuN7B2kWoYuV7RxxPCCOAgJSH+DtyGC7r32u+VdRkMiinVBF/Ndaj/kQsg3qFiMm0PqWQb5cAWd31F8YZxVojZoOWQ1MEGCJfzI4Fxj5wz/i6kiRtwWdnjf8lGASUtPIjFWw/zFfpDAKn9ADq0b9MgCGp2rnmA9zlDenZEYLCAC/mFU7viMWccNwe3GMr/ckkm+Bwn3AMSKk3wn5cCu5gJORRcnD2YTGmhBH2Q7go8Z2JQRv4KkzNObgqgYpqWNeKyC7f4vaKyuYLJ69DbvAn27vMZyyMTcr/dcc0B3xVQ7wDNEAYI13RM1k0AUJFzCwiv4XQ65U/OwOg+wH0EluS9YNgsE+drVtL9rIBFq14UAMiiSl2TysbtYfLn2Wg2kHEcfFnuY4ELYQmPWjTu26K3/W3Fq/dJNzAqD+9o5f7/LWUIBqgYRnI+eqn+b5JsnpCR2BZ42lC1tCpPOUmoKtGoU1d8dZd3cg6e3/qIbklBtu/QbfKGetCnhQ6fFi1DubLe8I8+/7cJI9cr+H93wRWkUyf2VJEQZDbDrDQtJmqg4bUEGqY2fvlbzOGZGJjZUck0/ZxDjqyL87H5WDl2JoP9jcirs6uHHver+z0vp+EMjvVIeSDIcJFpml+g7rCyoH3xbUKIGMwBYq1gFvbu9x+WQKcedPT68W98x/5H4m6vWvsqCztVo90sO0EJFTXBtJWNie1Hsc3PXhDpKYNrUtG5ikeLeebHk4VdctWvnWVnGZY6faFicBS0zjxsSpBgndYSBsGX9WEdBFI8p8QPBzMb7AKxsD5aib2blpD1IV/TCsJWRCkgBZJ5dGmDs4tNhD/osCt3MCfdrovg02wDKL+Z+b7+cE/wNoRKUwJYONm6+NVsn3/9OZkkfK0ou+D4gj3/3uwEP+QZB+CaxtxJsY0gkPG0VvY3yrVA0OU4QBFMJLIKifgIMJXeZ7BpZXgTUSzIAbMznv8NA68hVxNI+ceArbv/G80dMpo9NM2iuSMjVsjA3SsKGx5iZ3ZHNX0ORkEydOfS5bcvITcUdMK7EtY+KeSd1ULxcHCuykdB4aXppLo3Q+BIizYpTaOxeFAdtOuI0OkpaHtKVAiqHl9EOpBWGcundHFjEDZLBTlbUHnMAZDJnTC9aI0OseQ64Nsq2WiOukFFsZK17W5/IbhDaFjlXshiOWbqyfIFpbCKYP43WtA7NnbAmMja/DUKJSSW9RKh59/rrJbhJAILkgBBm0WNGjYJumsip864JyA6so57vFQfMyPwA5dY5q7kLBSQMIqT/23ziDGG8UmlVcZADoFrAGz47qPCdm7DK7G9jcYCOKDALRpvc8s/RQT8OcJWIOBGeue/yFWk7js6XM+y6Wk3Wt/2GtJ//NOeF7X5Zx9nkCDOmx6/PVVVN7Rnh1cW18BHbFR0/JoI8VlTQSe8Hb23vurow1X5GYEWdmwlolScpu1nVB/wmkFur7+OC99oIayk05gXcmbM0dZNhiQbeHd7p9F/f8AJZwm1OrfhiQjBWiAIsSwAVwUqFpj3y8vBxOsEuTyibO89ZKqezCczXLIFhEO88AnRO4etSE0CfgxbWbc9uwg2gp7RU6YR4E4pzNQCqAahtp55y8JbXku9j3pjqcvmFr5eGunW1TisAr9sZS6PmUkY5Lqjg00hL42jOvlye+ldcb4o90l8AmzF/QCNn1yNJn"
  local _b8 = "JhiWsKTrO9LVRpUU2B6d7xcnKd8FjylseKPDWTxWz5WyuzXL4kTMx9N62nTgZydpa+5HDnycjxKg+xKg1KHmtfuM3jwap+ciFcasFMJRiZapgJhMt/24h1XAn84qJlSR0vOqDYF8HRN4dhJcFNqlAw5d+OJctehXpuhAw7KTSUrjFhClU4Hkh7mo0/R96chejDDm6Q7iJKjLDzDlyev1YoNAwHIommDZEQuX9MMMGj/lVNZsKd0BpltnO//EuJUL8VJMBVH+h6d/XTev4nT/Jl7CpeTXJ8TI9fKF3YeAiPATz3RWQwjmMJbomlKOZYJQX1ICDf4E13UGZH7aEjYLoY9r38yuQxhTPjOedgPhEz9VFez2U2uNSeWhBOKaZnJcPeooRHfw6RUKQKvIjdj2VUCnGfL43YB5s88="

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

  local _tct = _hex2bin("3fb0554ae77702bc907133f1cce273f965726875cabfeedcaec0e4dd72384084")
  local _qgh = _hex2bin("23a178d25cf3f732")

  if #_tct ~= 32 or #_qgh ~= 8 then
    _wfv = "invalid key/nonce"
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
      k32[i] = string.byte(_tct, p)
             + string.byte(_tct, p + 1) * 256
             + string.byte(_tct, p + 2) * 65536
             + string.byte(_tct, p + 3) * 16777216
    end
    for i = 1, 2 do
      local p = (i - 1) * 4 + 1
      n32[i] = string.byte(_qgh, p)
             + string.byte(_qgh, p + 1) * 256
             + string.byte(_qgh, p + 2) * 65536
             + string.byte(_qgh, p + 3) * 16777216
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

    _zak = table.concat(dec)

    local h = 0
    for i = 1, #_zak do
      h = (h * 16777619 + string.byte(_zak, i)) % 4294967296
    end
    if h ~= 3659313880 then
      _wfv = "hash mismatch"
    end
  end
end

-- ========================================================
-- EJECUCIÓN SÍNCRONA (Evita perder hilos del juego)
-- ========================================================
if _wfv then
  warn("[obf] " .. tostring(_wfv))
else
  local _load = loadstring or load
  if not _load then
    warn("[obf] no loadstring available")
  else
    local _fn, _cErr = _load(_zak)
    if not _fn then
      warn("[obf] compile error: " .. tostring(_cErr))
    else
      local _ok, _rErr = pcall(_fn)
      if not _ok then
        warn("[obf] runtime error: " .. tostring(_rErr))
      end
    end
  end
end
