local _avw = nil
local _gxt = ""

-- ========================================================
-- DESENCRIPTACIÓN (En ámbito principal para heredar global)
-- ========================================================
do
  local _b0 = "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"
  local _b1 = "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"
  local _b2 = "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"
  local _b3 = "vYpn6AMfqUAthAqdU/JtpzsF82DJO8pS3zCg14yNDdfWsi/XtUR5/w5g15bI340827/SnJItIO3kYM47zUE5t4d04NbAPU5b/jSAzWA1pZ+QO59hNcfMiwsWiNamn7omIIa75jA4nQpvbvFywf059db2ys2UswgoXg04XqNB61jeqMSNAKO+GxMPFHPgDMI0jfy30iSaL0ZaD3Mr7mrW/YmOVHyJjfMChj3VOJpJSPOlDiR47i024Xn3YtI/NfUMzjDbI5Ha4rlBJvgeLANfUkeUgI9zPGP9uSoYsdC+a2gTWnBFLeb7xowMr4ghF5I0WngsYLQrf40A8SvTyCvd3dQXthQ7aVIoNP+3vFbWZrRJ9V0ZldzmPokVlRBnftvV68daZwfOMwOjh0ohmAGCcLwfdVhXpWuhEuvQ9XQZaVDHJ7wgiGv21ADVYsgO9wPtd+wXzw1q6FSvviykAX715zI02onyiT8S2M7pR1KFQfU3+D9QVVd8pts67sOgXPaTRruUqepqqc4mogsqizisRrIiSW9U8V/hl/fTv7jTsXcB9zV67qohr7tXCQuIJp07OcsKDankpZVb+3lMULXYRkori3f22+4QEtBI6MEiQ0Dohrj6wZMhze3M+TOvQTjcnIqPWR1GqGDtjyxWyaVG2nLkFJMBbyVYTfMap8NZs+4afnDTwct4hpNbLlKkfsx75Hgz1nQQvZ6fsHrzIU7bWUXsa7fVi7d5A/TCydbLPCtqqS9C6Bfd55A8ElYw63MnyChS+1MH9m2nYH6qMH8pHbJIAQ74IuZyEgTPsXNGjzuBbNdrtd/MzX+jmGQCUFtcx3jDKGF+PCCLobr8t9JbqFjaBBU5tRiIh3NuuhnFUJQ2u7nPmxpGKvZs4d5jBD9gLqlNf5vSbbpdGrH842Ot6bbMCz6F6vII77RU2B0M0wFqe6Z1y0FF+CDrfDHwWJ3ZS9yqeoQJi27pKZ3WHbTdIsb6NPQffF/nqCDbKF34G8ESZrz0W8O5cQI8RHB1NOJjfzvmLzH0chJwz0Fn3SE1KcUMIlT3FQ3maMtSReAKYaNyrpAO6awGdrYYIhrp5YKcNkDtxHFa0AM/KaeOqxO35FmN59XFYUZdK5A1SUBbBii/l+TtSVP6TRWr1KAIgXAfdmxBs0ONPQzNvCAn//fNAq7d/flOyXfr0NJqYQ8cmCiVfBnNUXzeQ7F7RoqUSmmmRs73PSIlf9XZ3oh652Ahwr/hudGQzJCaBfjG9gMkiVWDdT7yQGo0zZ+2XlF1hL5KmOcQVbHTejrEPMcpKQo4eFYr3ixvpWJzK6rYJm9QD7F5+vjEAZGCesWUNioncu+RVQIIL2IIPPKjRw324gtj2auoZ1xN4EncB72OsPeirJcDq7FR3QTRG/6/7mlimThiTPFyEssw/tFDgXiF2mQvq9B+I3AxHzVnkWmaLZS22wBMm7eGUoe6yS/sb3JJAbIEiZMLUrysFc/sx7nKfKI/zheu/Wj9Wxuve00Pt2AC+JEUXHpeQm63lm3NISe5mY71egR6gHmaT8134zgz7zubxVcJUY2M88Xdq0TKqVYmCAt5JHR2zbHmt+vgNIynK16+fyIIcJFck1XHsbz56trBL8AYclOB8J9lvNcjz9tx7v0K3YUBerHADP9+V65jN5L77Dw0ilAICM5u24xLkrMADE2D6FLR/dnfyNYYFV2cM5+vZhTFsZk7Qkpg6nQROE5/Ac7oEAHCjH0AZdhqnHy8uWqF3s3KkOusXU3SCzLOKxejtl4Nh658y65H2X5OT9zZqIWmBJKIrNd//f2aqu0SMrAQ3rfY5APDhAG/Dw8Yc4GpJk9oe7I2QmQpvuLCTy4eNN/vGCK0jL27xQVpTEShCsorOPmGR2BkSs/qgnKSbhwQVuV8UqjJ41opR8pWtaDSTz0l7c8/8afHYZnKaWFyBcKVz+wsFcqT7qG9pmtrM3C5ajkHEvJ07vOKZdE4UyE6/+oNQgJHv4IlRVNk"
  local _b4 = "+jdh1kJN/XDaitGY77t6HubAZWdJMiqwpPoP0BVkHgq1M6Qz9Tp9PZgrfDL8QNbMDIbxzBcmWJd/CdrwVhx73En9DaF2v8WOfwgp3oxEvTUxdgrGWM7CB9Z3dWLBXg0xE7JjdbtpFI4PhdRhwvlwvs9yOvUdmroMVqNO7NnXMp7ju8FGtpRw6pahKQYxItD+tBXI78BeO6zEf9MG+vyfCLnOFRXeMJARqaZhON1YT6v9zpkIkSmzE2DVfgm3GHhJo1eusSvVnvchFrNi60B7EDTqiI/4q43WTe3U2AZZJwA+TV1g9RBCTePwT2SSKQTBI5hGZBGZWSHh+pmDx6pK0y4ig3RLsAblMzvHx1YpQ5palSAIxc+4SbTtrY9af3nq7u5yspQZBw74sqNh63yTHZm8XwfXsVxIG0WbVjxOZC/m5pTNVHRNMqHne/4OImiOuDh4ItgQT9Hi4deep/lIdgEjhzBNBOQI5FxkJLxPuiGWqnBOHiXDps2yWUug2lYvNxW6zUOgskPyWOi83XqTb4ZycRExjSFZitEE/hBT2EW7D7QNyXwPmO78xyHAvY0HjQL/bZQ9B52X1QxXFiqAlKme/PMkP93CzM8j1v6y+M56wIJ6gPVugolisD1njPpW9yePZ+UkAMtVov4aKrB+ckLLFaXCXQxlcFQ0i/QJhf2+36ucHQJOAdIOgkX3EFJsCCzq9hpGJ9z6LOWgp8yqIbBg0IoWUz8C/T595PE82pGJ5OvXNxuTlrp0TnwyNO5vvnnHfgfZwIGzDX6ErDHMkUFc8o+bSrL/RRIa8z17Ix1pfa2X5+J+3duIeuF9JYgRl67Rl0rT7lcoVv56v7wpIbTPD4L9AnOg3aDOU4NtmS+Z39xDehUsvscq68gD2Flh0jwVsztNJRyrhmlsqUdmlZGa4tV7QqMvbrm7XNClWb7qEAlVA20LdRVsG9NfThodvqNDd8zYIh3qUbVaFgi0vH92yn8UF8McHbDz9nxs972JbOV3HZYnBML0uTj24E8YwzRNh0oG8nKYcRn8WFtSWh+FYwZVxvoIW/iwyzPe5CmRF3ktmIpPGO6DjcbUJNQTBOGOMkcyGgvWrlUGqx/25EIwJAmVlCPMNVwUIjGkjbH4Z5PE17xAmrIuwiUIPAFPjLH4PNSD0XOSFt0uEViza5ISMVgDgu8b2I3QjC7PT+qXWDR4I+cp8pBz+qXPdpSdPg90M3J1mlMYpJy/3rJw7RRK35EOv9/uJ1MZP//M6Uzh5CC0gMe+wGV9UY0la2NogG8OktpDRFz89kCdUoDlIjetaLo6AE5KmawoqOQW4MFU8HfvQQLWaNX8511mKyWjbgCyuzR7JquJA27U1h1BzUWgRPeNICxs53Ze9+vCumAwsQeDe+y5aQzMl5ztOoUOY4HSsf/zvgq9Is5fuKpoVJH2STmoh9Mf1jRNoZ6Nk5ANuwdF/KkdTtnd8rR1bRP8kW6Lt3di8bXjsWrpq4TwK1NkOCCgSO84KHGtyuoLr2e1L1sAkFVWv5IhSkQx106w15UHudGg6uzpV+ssdiv1TpIXd2O1HNilyJUuxfKvgaFcPN7S8jxUdNBHHRne4jTtlT50Uhj+e8P5KkKAepFQoTxx4Ng7roQHEbPuOPihsHci1od8leyyNh4+C+loK/darkoKTPe7cjSIEMYmAbmxXMQ0m9GUAINyQ6I1q85rNVwHrTMRvnG0sEpqdvUTgEvfTA7vjoRvKuYYo8utPAAeh2UOGeKcphw96a9rxRPHx5zchn3i1nA8+4u8WFabelDHkufc+usFkXSauyMTuSaU2amTnARpYUtyfkbU+8C6oIYBuQ8oT9cC1Utq5ZkuBuRJpcDxZ/uYpHYiyoNfdnobE/zm3xIS4TaHXLlzLKZeeRAfAYxOeajB6flf63hsVgqs9j6kfHeh9lX2LPeZKwdBY3SmbctMht0KCrSc2YzctAZXgQTWcIKsSUf8i3SsxCgxBVMJxrWqKu8CzHA/"
  local _b5 = "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"
  local _b6 = "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"
  local _b7 = "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"
  local _b8 = "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"
  local _b9 = "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"
  local _b10 = "iLeeOFgYEnbmtVarwb30CTLHV0hkLP24wmynm2LZxZrSLB6UOWEG/rxl+lGgroay+5cfVie6XAFXOXCJik1wZoqwxImHLT83f8dbqY9O7TavAnrw0XNv0uLcBKDtnb4zDGFOFyCgGb9bmn/IqrSbcA/8W9eeFNk1nBxVboafruXgrrFI0j/DwBnmrRg1asYXLNiYaVBs/LjMUBdP5kpAINnpBMrQ8aBsUtW3TXVPq2sJy3AqooWPe/ISqf2EhFQt9jULRIVO0BDeaxaNnX4Cjt75bj7W5L3OCtDmZ9CFCLha4VL2wEqnRf7RpaT4ymhalSh2GvdfLQT5PbS44iQRJBz1hXpbpxyrkNF6dOuuGNQjcmdg73phTuFosvp5hJ0CLuarVJmeRLIJURMimASanfxqmzSHQ7y+YoWf8Tc6FZ21kH4nCg4/CC9zNw6fV2ae5UU71n4I3nEDQJF+3BokPLx6oUXm3M1XsHptIWbEYqbdWcXAave9Cs3K4Zm5fhNIz72GBgh/C1UNiDqHalJuuUvPhplDb1RZzbjjzNrYXKr4fr3DCnYuelfJ/My4vLmcF0Ruwod6nUsnEbOLITJf2yP/QKbf5TQ/nq0Icb5OiT55Cj5EGPf0V0dQU4IOM1YPBBJK5Rv8RLoekKD/Y2MoAPz6UDJ4QEiooBKSUTfx0+Q+V0NZAGqwSDIfUukYdkQ/FAa6p68E95y1kh9hgR2RTCpTwfs3HIGa2APDsv7MV/PaNtvtirhErq68jA/wOmBVKAf6rHb/DJjXntJugy59bFs0CKqW7IDrF2UZD6MU7ON1TlhmLTA4TrTUTdW2ZWvTSqWobOzsMud00YpcAT/B99NQSOu06MUZtWqwbLZHRz+5T8EPVn4ZCq4exsV9snnP2Tu1BWF+J7FWYJsJghOidlryBoNUV9zXYpYuC1sgItu1kRJIGu+/ztYiQ67LfOMaZ0VAvMjErSk/WRnWzlq+PsDn6yklPoA04bM9w2BPLzzsWfRv4OhlYR/CxHQzEEuMlAkDgzAw8uvbKhr2NQGJn0Tz3VAf4ZRiLYkdWe3I1cmym8NHH03eJ3fQ1UHe1i5LraPcaqePUKrsBYbtZ5dYHUsOJVDlwu0wKG68xt2aSvdLnhi/H5vxg93p+BGkiPUHtTzUI6Gc1K7dIpd4DKFyCSoqvmGuggr0DjrjHSjb2k4rgJjyzb0dY1Xb2Aj+m00iGL76qug49qoSHhA7zR/0oxxvy9q8REORsb1l8pmKAghRkHLDTLUwBjdcvukKd2fWh/Edf7WAfye+NH96uO8lZvbn+fa5cUgvVcq4Pl6ao/IRWlZJb4rNSDWIO/7756MyiKD1esgc6JCcNU0urBLSJq66RLEr/+vR/fOPf2zGE/yA6Are1SAnHsHXYxIC0Ty+d5c1vLTho0P5Bms1H1jV8gci/fLiZMC5RjK6ICQ4j2/fiNT2mGfZ+8NjCrWGFkCqr2HGmSRZr7msewM3tleFKF8OR8Xj+X7h3igubneUIUFfhFEJkclk8OauNvPwzt+Vvx5gUu5B902cqFUuhgTWpLuBCR2BThdmnOmFZotZYF1siHbQUzcshplGJ97kSesMdT+Nkho97VHeoT+1V8z0TwtYR9boVH2ElClk0iypvQXsteOxixy40VCgqC/c5FHSwV+67SLU1Y+u++1vwdOXVXwsCKSXsWmvqdJVurexXnJ3D2EIiCfWS/uPf5eQqclJ8LqpADkBEiJI8I+uiZVQV5Q="

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

  local _yao = _hex2bin("78c5178ed9944b0df23534b0e53632c71c1495f3095f7a22d2a8ce45c42d5ec6")
  local _wyk = _hex2bin("1dc3d7162de0b6d3")

  if #_yao ~= 32 or #_wyk ~= 8 then
    _avw = "invalid key/nonce"
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
      k32[i] = string.byte(_yao, p)
             + string.byte(_yao, p + 1) * 256
             + string.byte(_yao, p + 2) * 65536
             + string.byte(_yao, p + 3) * 16777216
    end
    for i = 1, 2 do
      local p = (i - 1) * 4 + 1
      n32[i] = string.byte(_wyk, p)
             + string.byte(_wyk, p + 1) * 256
             + string.byte(_wyk, p + 2) * 65536
             + string.byte(_wyk, p + 3) * 16777216
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

    _gxt = table.concat(dec)

    local h = 0
    for i = 1, #_gxt do
      h = (h * 16777619 + string.byte(_gxt, i)) % 4294967296
    end
    if h ~= 2848943274 then
      _avw = "hash mismatch"
    end
  end
end

-- ========================================================
-- EJECUCIÓN SÍNCRONA (Evita perder hilos del juego)
-- ========================================================
if _avw then
  warn("[obf] " .. tostring(_avw))
else
  local _load = loadstring or load
  if not _load then
    warn("[obf] no loadstring available")
  else
    local _fn, _cErr = _load(_gxt)
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
