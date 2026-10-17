local _ivh = pcall
local _ejl = nil
local _tni = ""

local function _safeRun()
  local _b0 = "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"
  local _b1 = "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"
  local _b2 = "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"
  local _b3 = "dJAtGddlZve9QLa1alRJ2NXH4APUZlQ0nsuqy6ldNm6xYvO3UAp4lwEXNHHhJ397OStHhs+jLTw5Sjipk4PtOn1OWUlEkraXdv/ZXBbvq8FjjknJipNdK7p6oK+0YIZXdrUFAmBdpxRX/z2eB5IsqkC+oxlFRgUA1tr2UaN5aHkxtXmp52Rm8OUnlqsPMTUnt6uVthSLxcQhrd0J4jNsg6OHJLpl9/Gg548FKkjH4JKf8cz0VWJJIFhkdKQDMVkEWKkqmfQ9LjS5SExJ+fxwXB5p13V5Jig578R6y6iR5DNJ4Cvi/icwpT44/6rWqU4+KJQwTolXGMPnaXARqdfy1hdR1+qMBlRp60nwmvCMlNTI5kd/aYb9YXWfhSlJIVXhqQaQmi7LHbBgDzC1usCy0o2dhxQD/99gmSwAqxEseFpR8ccss0FFg2aX8mmUkW65aE4GTH2swQ2IDAcOEHEIZNT0STgVMZZH0NIiDhgcj1Jvv3XXRmT7tOgykp1W+ispWwixLkGcaQNSW/zJcgWCPU6dWYpJ+pJCReMlOdEr5AFK4pRyRjQ6+whwNCBLPyyTb4QM5FSSHrsVn8ZoZcb8M8TLEmt991xVz936GrPd7ROGCtZPcDcieNy0ygsGd4dmBZKv7GAt3zKknY31OJRnFlQaxaYcxZLpX12RMP7sjclxzwHmYnEgEJ/r/eTFRP1tt9mzCRM9S34ZAvGzh98la9NnHsWG65R+C5NGRE9BCKFkRC63nhjz2hFcwsplIqzwf0KyPlF/h/4gFI0obkLNRrh8ErPJw0S3kbm+xFSYrKno+S4pCXNegxOQEQpVUM4/mjBtmnfQv8KIhG8Km9zYTHHKM32fpXujPq+5JX4lc5TXoVedDT3+kNlfIEtMrF8wjFgf0h6DA/2O7ytUSnmSwSykpaNM1Vg+f7OHKLCz3pHBJFuyYSEH9CcVj6wdYzDv9Ovv8aCBwcdMBN0/wApp1gMprnbMpEJkq4h8sRih0SLvq/2AIXpneYT0QdecxRkuA15tp2lp0Wsk+Q7JgLjPQ3GMBFxVPv8TUoxPHsR24/e2ocQLY82GJ5T/PovhcFLQZyaMFgZM6eNlI+6Xgyu4JeLHP0Rief0pxUNNsffp569+ZnE/DC8H6Wj66KU8TzNJ7Fnkx095C7pr8cqo48wueJ+7wAZGIoI4TE3SzYjvef+SJvwEmPsKbU9z61mU2ybHTRmvi+Q93qeNaleiSKiMgtH8vsQgTaiMf3NNmJUQO1yDiclcgXaGVE8DV6pQduzh2iAfukk5WFDFUVcO3XTi6IX9/7Ab5kOsNIhYv1bmY0mxAoyhkf43ss3aU9ysov7XMCmVoOA41G7imT5w7Flis4tPNieN39Hd8v6rLOvidqklh1faNpY7MyD76OUX1dQjhMk0sccoPosDiL90SUC5Kchwa2QsV4AE8v1dCsQQ26g22+xd+JYHBXVu31ex7JcfCbZFlYnNnOuLI4yfQVD2kZ9kfAO0is8ovjI+sHReaTr5rITPfpCSKy1C8u2Hi3lLcmkCRWnQDiOpDc6hHqz/b6ln8i8tbXtS0sG/BIbdI51NbaI/I8yrpGwqKAxfIeAODdcbtfLQFNvnJGy1k25ik5xlbxYV3uJ0BkJxPEhI8R+ufv5YiLgXdSIwrMWBAWnC66spWyq+7SyTL/btybvCK3HEqfBhaw+qUvQjL78Rr68fzF1gE0LNb0cdr0lIXtiGf8vucLC3dCgDGb3BsJRRzWb3+X7sMyQjXU9cS/zu4qjk2HjI16Pl9j9fK0/pHUxerkioVBATseDpOEv1uQVyR8T6hF3PW6dF1wJYpwOJR3IykgAbKdogb83V46ultUgNqnSZG9+J4cvdzEPxuDKuR/e2mfpP1hF+6Tz/Z/a1OgJIKH+DBrfye60fUHYyJEfGzyXYC2rw2fUZDrCtcKL5EfDD79tSBfI4WeVCIsN9HQmOXzE7DuHZgyLsLkkDapz6mQvOWc7REbb2BAtO"
  local _b4 = "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"
  local _b5 = "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"
  local _b6 = "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"
  local _b7 = "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"
  local _b8 = "Z7crxtYC9hzwyKfqu1VvbMu8FsIJgFuQmeymQmnNZ+X5AKrDwsqExWdW5/CUYtSxFWmxKlghGL6hZmXj1h+SuNnsfqerb5PocikjicoX0RvhBQ2lTkhNtOtyvw9Mt+iXKPpMet+kds7wuvKOK1CvZ1UPOgYppH+I899U4j8aBqt1ooJr7jcCg1/XA/B7aKCQsGRCj98JFIKj0lDT0Zi91r+X9XlzWZi+B29xWl+47PLrm56ABLw1ChJPt703HQsDf73OUwsbc1bTMxAAFkeWhXTjC4MUqBszagbXKZ4RYNkjKB0DzTWq00nqzEeycv5Q29vn7cGNAvrBNQhO4EWPVB14mjONTgbajVQ2mE7wMxJPxCPqcbemoVjanFIR9njo7WY4VoOe9stI6Q2fERKgJH1+CHVsn+2S+2mru2QxHdGNQToTdo/x+9FfG3aGHtD5WwQ9WXA3kbW0w7rqGK7GnCNEfPtHkmUXvda6AZ8hH75GZIeeEn9dPRavy2vbUVtr9xEgv8KtBkxbixpXTWTdJPrsiEsr/cPl5bwvkJDyO0xcoFKeygQvR38W5RBdUVl6+eDcbGnSjz0A53c6hmdCHVSA5xuBB/Yrq4ivryeG4o6oT5/n46a6PSLmPqv0iBb3pddCmMeU5twdS9ilyU5PZVB3eZ+SFIqq9r9nXimbDDQQhHw/oYZdGbtOL/iu9squQtTCGyaVSelH3YQdVcy6eQk6dEfRrcvDIHiUgVpk8P7I6C2BCbhhEJOtkEhLv4RdNHkAGmOp9nGJ8yMbFyw5mCqaZtkhDDznvCrY0wF7zxP0HyCrlM2HoqD/fvPzrQpzfHVJnBgr2fCu0ITtXvlwon9TLa0YfkdMVRf1oNmA2oDoXRIxv1EofTSNtG5wR6NXTdOlp9X1AmhMsd1UWERHuVsBFzwb4RvLcvLmNvwdX6RJLaVDJsI46AdOWk0o+cac2VjS5hw9CavxyvXQEqeIY/30fzlMSw4HapdagwTn1CuWTE6xaZGEqTAXADpXd2bJJ92I0mBBuZwNkxY="

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

  local _drd = _hex2bin("5716d0219f36806d78e9574063f26a9c6c8ad3b4d0109f8f9e481f04f3572221")
  local _bfs = _hex2bin("44d1f2fd4a223a31")

  if #_drd ~= 32 or #_bfs ~= 8 then
    _ejl = "invalid key/nonce"
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
    k32[i] = string.byte(_drd, p)
           + string.byte(_drd, p + 1) * 256
           + string.byte(_drd, p + 2) * 65536
           + string.byte(_drd, p + 3) * 16777216
  end
  for i = 1, 2 do
    local p = (i - 1) * 4 + 1
    n32[i] = string.byte(_bfs, p)
           + string.byte(_bfs, p + 1) * 256
           + string.byte(_bfs, p + 2) * 65536
           + string.byte(_bfs, p + 3) * 16777216
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

  _tni = table.concat(dec)

  local h = 0
  for i = 1, #_tni do
    h = (h * 16777619 + string.byte(_tni, i)) % 4294967296
  end
  if h ~= 455175000 then
    _ejl = "hash mismatch"
    return
  end

  local _load = loadstring or load
  if not _load and getfenv then
    local ok, f = pcall(getfenv)
    if ok and type(f) == "table" then _load = f.loadstring or f.load end
  end
  if not _load then
    _ejl = "no loadstring available in this executor"
    return
  end

  local _okTest, _compiledTest = _ivh(_load, "return 2+2")
  if not _okTest or not _compiledTest then
    _ejl = "loadstring check failed"
    return
  end
  local _okRun, _res = _ivh(_compiledTest)
  if not _okRun or _res ~= 4 then
    _ejl = "loadstring execution check failed"
    return
  end

  local _okComp, _fn = _ivh(_load, _tni)
  if not _okComp or not _fn then
    _ejl = "compilation failed"
    return
  end

  local _okExec, _execErr = _ivh(_fn)
  if not _okExec then
    _ejl = "execution failed: " .. tostring(_execErr)
  end
end

local _okGlobal, _globalErr = _ivh(_safeRun)
if not _okGlobal then
  warn("[obf] wrapper crashed: " .. tostring(_globalErr))
elseif _ejl then
  warn("[obf] " .. tostring(_ejl))
end
