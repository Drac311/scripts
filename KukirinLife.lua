local _lks = pcall
local _iyu = nil
local _zqv = ""

local function _safeRun()
  local _b0 = "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"
  local _b1 = "1yoB7D3Re0Z8xQDc9NALdoPG1L8uWFFs9jiKgh/znos+kDj/L4kS7wwbdyv3IwbY/7ovULE1pQzXoMgDwHNw0qY/U0rG6a/o34ZN5b7VbVhkT93SehriH2+o2X1FnvqnZ/7MxFIHiwOnmnf+w+lvw4EsPkyaVvudHZWj00ypjXi/6uWYyj7tis1f4Rvc+IS6j9has01CkZ4wWmWi/kAOYTdJQaUf7AlthEnVMWfO0WBlYiUGEWx3O7PSGRwug2xR7Z0W5OnwzO64TvAKy0XUdbTlQ6D9a7liEebxqRWuNveBc90KdpEK9AeaxzYtRyj1x4i+Y/nlCccEyIwgYmDJRn9nWg+0V/PyLTANfo/1xOG+qvdicxfY6tYDSPDXi6W+9GEowlfzz5Oy1yHYSXynjBifYyao0De1DfpjNDp9Pci5hOQoj9ECLlJZc9CPCJ8LPylUzA9vVZRL40VHHhwdrVNXrYAU5wusrs8iY0578k76rD1dlroEiRPCWQRsQUIYvcoYdjv0YaeUA3VMTn1bCTxSliYlUFhowIz3k/e5KZR3LWtt+9qxraQIEOkblPmk96qDBrfzCU2i/qqXHqaI7ucuwqTnGNndolMtaf9bUBdRpLCcmOY8d91bbNwo+UY+gPosZ5ct4Ic1QWNDiCrOx2ijumazZAfA5SV7FyFivNCe5YcmL3gYKUlphaxGX+bcWn+CraEMP7eWIU7S1vgS+fXLwOlBIKHE6GAMvqpclBTCbioBwIU0S7+TXwySMaFkdjaLTbABWvfccu+KE1Yi2U+SqdhTyfMqK7yMmyWl1dfqNmdCwpfGSTvU7mn1rfvS2P1afnQYmehMfuz4S0Y3e51b1Cjqpw3hzXqCpaHuqhf3ay+fkF/lf+Xu+QMijQpY8OEbCD5oZYMBiGrOszeAST7mCjYnqsWa594Dd5bfPWu4qh1FqPaEF6+agM3+3mS1pMfSU/r4NBHJ9T4WFkZmzvSi0cCTcYBFLUAiUZBjXLuUkqAhTJ4jCMPyxCh8Us+YgXn5qbmHelEGw8r0TrqNyS90X2m2pot6s25DMrUHX6sjcJRzpjXKOkEIjM5rwYlrej9Uq5jpOzVyjkjPTS4xJzS8uQZ9G4U7NTniwszC1D3s+SIaN14TtugAz5D3QB8fWEwLnEL6DTz29gbk7WYI4kvt2Ygd2strbVGFTBvRQBZ6TEmAfXd3TIIyBGkjY8RpH4x201zc+S7vNVi/fjY4BJSycTOuiJuOoBt5KtNDQ1iSAY3zHjPn0haT5oM4eKfV11ufLfagyT3xj3hyMMdIDE68x4h7AsUZ/3m9ZntUSG017FFHMOJdZptoT0s9KHLSRJgZHG7GhViu/f1qmVC4/Fyu+JZtQnKFiQagONuaA/mz3epxLGohePY/i78HsfydRfFRgceJ3jMre8Bw9h533jn5wtulz203DRZHfhtuiaNNMf5MbtMam/WVw3U87phnJk0xIqobDAomQeM+xkAKP+XuLncGD7uopXX3ixxJ22kaKzwdMc/oxe95fdKV9vo/9VKF3uZV3e5ztdQJ/ubXvcr0OBaUiTJwwUXjkAC2tCBu2249lFpxu8sIcNtMrTudcqsC+vm16qUQleinEsPi8QNeGaX7gvAw1ZhuzGjDdaKQ9gypxnqSRb+wreHC0aGN+baB86PFU8ermg9Q6TIph2TscyP+xpPRppn1K/zXvGVm2fLaZp7TnsZzvZ4QueElHhPmkP+U8OTA7hX88TUqtXwjcWguB7JUnUMlLpyBgqT/AnXw9pVkqD/essC4UB1KEfG9Am+47impSSjTI1CZHV+cEAb7Pma3uMTNepP1m4oDfJSEbFGkXGVP7hUJqiks4ZBmHsU6cadrCh7+irhsWt1N2OBmqiIHlE3Q93ANIKqB95KzdENlsnmAwTk9hEDWglphhfMHeUKpA2Ey1hPOsAY0g65q9l32c0sVfYofm4Q8izgcUYeVAlS4UB2dwTg+cMcYuhSPI3sWOOsf"
  local _b2 = "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"
  local _b3 = "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"
  local _b4 = "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"
  local _b5 = "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"
  local _b6 = "jQLTCkyfdwPL2RT/OxxuW73q/EndzTymbU+Rvqwr+1nbqbz7YY+R3Zo5BIjXFc8YS46t25CdmVG2o3xYdpHMSmQgaoFfD2GZibokKKqhIqU67WkpecQ/sUEG3IBUU2QbPtMzfu3o/RzbO3+8a57Yf+ovKDDy0LB0BGe3yDvSDUMHhkbKsFwOcLpGbZLz72yA3+HkXtEtVc7wJD9foqsYzLReiqLGWiXo/T73dk0f3ote2isCItJJcnJH2qOn6qlsieCptDYZZL1oW20ylZ0HfTa3QafCp5jUYzZF2aXJxHO27Lb9a4D1yPbd1LL0V7b0uzJM4lkNsTAeScC6FJ4QSD95LGAHiD3hkNiss34V6Ucap076KY/kExlDSrrMFd9jDWIvhJjOlM2ahQgcu1HG26yk63O/vqr9Y00ZTX8+WEo+t87iuUC81cvaSaD8VRPYFOW4Re5x7OT6iLzlrHrB7kqgmd6x11ZXGsDPrqa2Dp992tL6J5mq9mEBifuphLTAzpfJw1SqdKH4Vtj+zRXxXmu4weOp9locChtNqXdpYi0k0jpzU6v656+zpg1AwFsQDFCMxpNA3IGVGLhSTw9WJa59ddhr9FfJquqepksigCkh2gYFXKCYHSl5aqu0JZK/dODtSg+YoyMZg0fLUvQkvdzu1UraJOVG8NOkInuNvwCE9Wx5zi6PAB+dczFPiQvUeb1BSdbx35yLTglNDDXagxe46hrf1cJuPpSjACKylQrJ826zgLPX4SWrV8P77vzSOduQl/8YcY5RKpCNoyT7nikaPat9etFFsMrOWr9adGZ1Q+oNjs2eeI+j3lTjyEJ9Fv9RvB+o1EBV9KKoRFaGlq/pxBkPHGnjCuqjFNpG1jL65rCAPndcpeIQXdR39898WWKXB5imSRJsdKjBWrYG6z+tA6XorOLX9SAmr0KecoKcWtD0+D/GNJeEZ6CCv0PVA+bFeE3Vw5gCdvbcYaXEfUuq+uXVF2xHNmLyUdyq7YRR0sQdnzHHnm4dxS8WMmuTV39o/szRvgbMWiMHc0QAwbn91xfxL+3vvvpCfU4bO54lF4ihNcpvqpQaJt0swa8M8OQwSJ8EkbGVtejMVJ4oMP8A3QqCGco9dqiaaHXZ8iLZMqcprSmRPSmX21qyW/IvApSeA5T4b4F5BxvuYAoMVuZ5aZvNNNqRXM9rCQwwkAy2E+o7UDJATFobaHfS6xMXAba8g61C47cIEzxPEw+GXtVSqYvVl05CvhQELTA2FIW0S2mDlhiu6pZXDy50ATWinDXDtMKx1maemPmwWWhaESMkE6pBre7LR3i9OutnLVtOp+2gFgnBkSCILVSGSP6w1MId0KwdPfP1OxZdF94+NA8N+1+mmkz1IMH7xd9pZDTZ979cJMnHyFUy7iOpkHim4taO2Og5ziLybT8fbR0wmpuVCu43q9tBR7ojYUnfVwCEtZPf43NTCDtB0XC7wP91mdyW4NGl7xX7bFx3PRm0oiHsEucRjXlvtstPRMVlM2UqRnQhh9i610TUR02vXofO7Zmm9oepPUQeodGQ/iUBNDmsCX3VqEdIkmQ/AdRgCZE2u8m2tFaLj2drk9IaOl+Fn6yHxff90zawJvLtqhWoT4w6VAPYUpG/Ezx5dMkfQRfO97OQEjDxWzbU//eeIjwi60szqcT3YcIeflPfL7OjdXZL1GYlRdIZD3uRI6DkPmPqXSInGGWy9t4K4NxgDOHkvWNQh5jMDTveRXoHF/8j3JlS1fIqtqOCrN4scbI/D6rRyd1XJhE7vIt8exR9xeUz6vDG56IBDZ+p0y5FKO37e6s+y7WMikCh9+T/5Xd0rVWjUeuPRngkglnnIJ5oCM4Ste5HqA9BTJqTElAy5+3a9ZW3va1bJM8aS3MydChPcJhYkv3tULO7AHbGTtUKxtGMYL9JG8XO8eMbKnCo0cNkaxcDk1Bid2iquUxwM8LQ6Rii+WyEzGKvv79lQV25satU6g=="

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

  local _ivn = _hex2bin("dc8af7c8685817ff71655c4d6afebc924b70bcf4b653852705bc3a51b5be9a34")
  local _iwc = _hex2bin("d016fbeb722f9690")

  if #_ivn ~= 32 or #_iwc ~= 8 then
    _iyu = "invalid key/nonce"
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
    k32[i] = string.byte(_ivn, p)
           + string.byte(_ivn, p + 1) * 256
           + string.byte(_ivn, p + 2) * 65536
           + string.byte(_ivn, p + 3) * 16777216
  end
  for i = 1, 2 do
    local p = (i - 1) * 4 + 1
    n32[i] = string.byte(_iwc, p)
           + string.byte(_iwc, p + 1) * 256
           + string.byte(_iwc, p + 2) * 65536
           + string.byte(_iwc, p + 3) * 16777216
  end

  local raw = _b64d(table.concat({_b0, _b1, _b2, _b3, _b4, _b5, _b6}))
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

  _zqv = table.concat(dec)

  local h = 0
  for i = 1, #_zqv do
    h = (h * 16777619 + string.byte(_zqv, i)) % 4294967296
  end
  if h ~= 4106893416 then
    _iyu = "hash mismatch"
    return
  end

  local _load = loadstring or load
  if not _load and getfenv then
    local ok, f = pcall(getfenv)
    if ok and type(f) == "table" then _load = f.loadstring or f.load end
  end
  if not _load then
    _iyu = "no loadstring available in this executor"
    return
  end

  local _okTest, _compiledTest = _lks(_load, "return 2+2")
  if not _okTest or not _compiledTest then
    _iyu = "loadstring check failed"
    return
  end
  local _okRun, _res = _lks(_compiledTest)
  if not _okRun or _res ~= 4 then
    _iyu = "loadstring execution check failed"
    return
  end

  local _okComp, _fn = _lks(_load, _zqv)
  if not _okComp or not _fn then
    _iyu = "compilation failed"
    return
  end

  local _okExec, _execErr = _lks(_fn)
  if not _okExec then
    _iyu = "execution failed: " .. tostring(_execErr)
  end
end

local _okGlobal, _globalErr = _lks(_safeRun)
if not _okGlobal then
  warn("[obf] wrapper crashed: " .. tostring(_globalErr))
elseif _iyu then
  warn("[obf] " .. tostring(_iyu))
end
