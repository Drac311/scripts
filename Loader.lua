local _qup = pcall
local _fzj = nil
local _sal = ""

local function _safeRun()
  local _b0 = "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"
  local _b1 = "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"
  local _b2 = "z03GmyM4Aqn4LjHgXBHn3P4uKmcu4ZB7gaUABgzhusOXeQiPuWpVr8ydMEBRuMuBMIegPnZ999jWXzmoDavaEdQsmuuPeRtVw66YUGXExwPAm7/XSPh4AjWjdy1A0lQ+hH65ZqlEyXqV/dyGKFU+cwXOhfwnAlawj7Nfu0ni1IA9YDJrld2LQRc+qhIgoeSH9hetPoyVKrW5kDjgH3GzN79tfu/rdsy7YjOK+S66nIutsp+3tr9viWWw5E9fcLgc5nl1OowWz5g+ccFCBZjS9BgZOhVwoZdbN1kIPXdNngfAdwdL0iPCgHVpeSzCEtti+JfGDeyZ+U4CG8WM9tQlYdLPiAItMVEd8n8mC6RmoRXtyot1AfrNwaDGs2IpckrvSCplDr/sOXI+nN7ULLZuv1/CjBtGYj/k32DTL4G3Gk+KeWxftT654ZwvaDQULglMAcWWjDANR06bM11MuShDtHBDwQE5CvFrDgR5x+7PpC6G9qpnB6YNiz87VMdDaoxChxDDJ3YyClV3hmNjtIeBAsmgXY8JnTh0XpchbVTrYkudhJm6Eg7+j50wiKQT4DHP2gaFL1Enw91ycMIWRNbNJ6laztov8KlUcq5jK6V9k6ea4UM/ESAEWc6UEiCkl8jwj3kJesSihODXB/y0TCSdOzkY+Phpz9oxV5kTuqlaQ8nw17DeDRa8VB0zNIHUCybXuwkGbgdGV+72YySYRHT0fxIV1Wp8OKrTkcSoC8+CEvPc6f+eEuqKSTBRW4w30epRtOzEGPXaYo+9d0urgsEQCc4tQPE9fO+gOM7cUjZzVKGihxMfcLL0YnwRElErCySL2TvQ2GthS6UtnXIT7nwI/iYHWpbBvimDVUIi9mtBYHpt6Z4bwtc+jdsx6i7m1bbGAxqtOPAna+gzKUL5eYVT4/HUzZSJJdglh4BW8Jtsl2eorkuRw3HYjOo4ZoUS4OL1c0y3jFs/WV93Q/FcGbXBoGjJdsAr+mPiqtC1e6c7nOx/BbHp1lV/TB0+jBmms3nQL/jmk9z4EyPMmUOHv+gf6WZFNFrvVziOqodHGYsxVykfAzyjFBD0Z8Z6+zydTo08uYPiUk0EvFscD+tM3/PlLKpDCLukmYDI8WDr1hT+2ZFAcv4ig1JqdhEFsnw8y6rf8V57o4pgb940ALgnDKHlb25Zde8dIcTFlVIEINelL2Qfw4Y8ohw+Bs7uNXOY1mbDn8kLyya33bGmd9CEggH1nYsejlUepqoGMWN5nxgmGLH/E1HQNEDQFuLRn14RxzdPhYpp7r/X96r684a+x7rBZb2bQq1MC6Ln634omPt6psugOKEUTnwz90yj5mWgMz8yQIdUYSW5tEoZ9YkUQNVHgkCxPHmYOUPIS/lwTXLd/LGz/t1dw2Gc8lm0EfQv/PcC1gy4mJTUcI6zobPmJVbHwCvN2EUdJ8pFoGgsbxBXZM+o+lZ3EC0UNjhLQNM579OX8tkQBMeGuqPaHuS8PRzo5dpqAna9J5pM6FMgcdvwoeYNoib54rVPTKy19yrU1O85I0Et/sQMwUDBH9cIl2a6WOQQgqWct6tgljSV97iuM/LbqgZ5je12KZhgBOHEerDUavtpr3DaT2+s3BVtuq5NANnPJ9G8T95a2p/pCyGJ4fOzeScf6/2f9JhfsbaTscRT7FhXCTLcPl0GSJJyfGUlB2efl5eu7pKtO/jTJIIR4GGTtMnQWuVjJ7Agzukv+wanabUHhu8KdJeCD4dTsjtX1AuF5bvBcE4a8u5SLYdRGliJsq76lxYukHNpY+/rcHHlf2YlCjEMrgx9JwGjJKNnKkhVP2VsTk4kXwVWczNbd2G8+y/0wlXGYLb+RYQgB7ZJhCbAxWjRm7keR2NU1rSN0bdepplO5g2+poTI73mmf6LA+O2c1+puRlJ/Oi2uzQec9F+0SpoU9xERtOXv3RKxUv6SGtlKFn3QywXYG72Mg0/phrhbJ4yAlSbTclGPiYoDGZBiK67UkerLR/F7"
  local _b3 = "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"
  local _b4 = "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"
  local _b5 = "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"
  local _b6 = "UbH7Fbdd0f8xXqXzyQzEd6xyUbCm+49PKp9Ug2S7TTeq97isIZLpQv9JuLH1hlOmFhmjbE/dfigp52lXFiGBE4Zcjvka/N1s/rXEsp5o6bY1EhB+jEjwG9SvQjWEl+h6elZTgBddnPTMsq3c41o9EX5Awx0yYJZgjwjTfqeOgT/KbM10rpd/6uzIp5iy4FcwrxAqN1sfuoDMQM10GTiZ2W4CY+ZtRImUv9lbFFH5ZYE2vpak2OlIyO3YyiuQ7kPenPfSWfGFJ9Mhm5sHpyqpdWMMguWnVilkNhRnGw99EBT6fk48zqxuq3+AygTByMeE/tNC/sCDqS5SLGfKUTmr+W5kenq63DZ7ptG/Zu8eTv/MpP4NZF8PRDI3u/yWmTleToXx9UPzRTCR3GzulPC7913OBEp9OHLZUWMJAVvAVsKz4OHh6ssSd/I3KSuFW+a6EM4PVdUFLl+u4QZwiqlVEfjwxuNjSa/RiyX/0l3vsHMQdUJvqVyANeqJzhip6OoGjYzN68Dr8w1++Vo4CETTC9em+BZVMmrTnSy4Gom+h+ep9SKciAj3niDV6tbCOVrLfo1Eez2lFVJ6+ZQiVVmiZ9/e5ljaEiDl/zMZlN9wwliboUMgYw6vCh7J8vjPwCMAZ0y1QaTynyTPo7NU6LhryLePSWvpDvvDFuay8mobyYTsSiwdxJVbCqV+WzDJn7Q5jQyxlNOLKzi69eH1rZ0W7UFmxgIxt1mD3m4miWR9VUk+pglFUJkUGMk5Ww5fALxaLNgSnkZxRGZNcgBQWRhiZIEzVGXEAMNtWWxQ1ZAjYN3NmRvm8/YFPlT9H9hsrLEXts+RBiWhM8I/dYlmqdoJCFIYlRfPweJZtVntB9Dy+KIJWSyqH4ARdqVpTTn9p1E0bDy8ZHUFSf0OTZqqJmylZbRWRLcfUe2TRUpE3kaJirYFjVlrJxtHJlQSm1gJibtreMAwZ6es8/eiIClPw9g23XGF5ArX2XIQNkRmgIGlmaLlPEwUoQUAy6ZtbuNDowZt/UYHSzmFSdlD1HsYG8PSC+k1tZ1oMbztemCogk1ztZuCuCzL0wN1QA9koEf2BqKZRMNglSRgHP4CBkJXYxs4C2oQAlQHrLlg4ObkOGZL4OEj/Fcoje6igX7HUBXxBJEGAdgljbwaM+vFkNvhRTGIKhWUCc2oHGtXtNTqaSHgvkOtLQRqXzgt8xM44KLNXa8A5LjgEeE4YFua1CpOdLj11ZQU3jwM9y6GNf+sEpxGyWm6K7fjt7LdGKnWTwwp4s2ebrUGUfFLo1/TcMqK2TJnq5UnQ1cY9+2eP/YVTkVPbBvNENuKLFBdwbKJlro46NDQ7VvmjX8zgJg4AYDE8H/5hP2aGxE5nYWgjIMePWWPoeUlnNRM6rlFu3Ohq/DhhxFtI1a5WdCwfQQOJm9oWfouYexSAOtAxW2P5J2OutsIcOq4egiVZ4ssDH56DzeyUy/1OVVd8hw15S4zn109IlXalV8GIB+Y9BQt6QZ4ZILgXJLdnPyb96qN2kV+3NmznfXy+JkT0oK8YLVVqXEMUGMjaqD0oz+rkQQxjcJA+DpN0zdF/MItx+j0bxmaVwEhrh+EYpp0jsQCni0NYt8FCby1cUBXhPMrtbdf7imVEh7lk4khkm4C4LPX7pP/BeoD+x3aBFvBRO8e6jnyFZMFgfoaQw/A8MBaJAT+u7W7rXyp8JHikhAcEJeCiXPZjgwvxk+R2fhlr5OqVladAEg0FkApbHc4K/YGhZvZT2W2Szwj4OkQ9bHuV5hN1fN5NRTx3++b76ZamHIXB6HHX4YQDIl/BfA7PVXiP61rBp4VYrtYiEUwlAgV1jGvtjWUqEJC00cK2fV09T9AJhzx1kC7d1lPkgVmiBNxFcar14ZitEjEtDbzVGQvMuhQK0Albtsol2f3JMCZQpeCB1yAdPgSxeDuoocVnTuIG7fOC4RgJ89qlnUBEs5IGGeNw9uS8RxzbfCjJw/SyQPjPGg1fHbv"
  local _b7 = "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"
  local _b8 = "tyHB6Wu0FlkXnVvwzWSo5T6YjTFHJhc56sFPTuVXTeRwksgMn1Yv3QoIxjPPa40bBwR6va2Kxy/goEuX7PentZJ7noq7IBZeK+2Xi5+6gPjBa4VLAxet6NmWiQ4j9srg7Lig0qVMo54Hj42n8rmGuwblT8xcYOkvL3F3ewftkz+TV54nY8/gU1dswVZZEqac8OUghnfl2OsJaSUS/Cqh3Khsq4OdC7PIN2TXf/7+4bRmObugMVES3V6hOiajknvYokNNKF1XDMJbr5DZyRxSr/whYSNEgxMRD177RXnAf+w774CCvNx7yP3nwF99I2QBXaPACH4jzPVWhmdgy7dTMtM5jT3KYPZvrMufOtKE7g7eWBXDZOgM5Nf3txwVvKCj/DW9ozZ+mQl9FMhkpg0g57BUpV0yCZgrtFNvlTuOw9FO7Pu5Q3hWRMvixLpdGTy0KMQGtR4yoV8QAiE7Z83nPEHNzMpiV6CWt8uDL+IhhI+skyNqurURzsBkFTw8MZvhZKJ8zm1KiaByLoGHtbLaQyzQ/Yi+Zr084lEG4tSr2mlowEFI77l0wfww3+HfKpCyCPuB/1bxgVQKX9SbXhAl8qTIZO/DzBecYqy3qykY/Rc9NSdQloJWSESbpceF82xIPcd4gFMeeozeH4k+H8o9oOcBjOCKP9vx3ZqTWe+NHjdu5cH4ADtCmr9BmxCAAo4v4e9Jzn5P2pDnbOzynQ3UPAOaHC5cSU5ANFiBebIQtcFRJ8TMI5MO/EhgZBSwW9XKuLEHmSYJY0mrtLyIw8NFRJoth4P/oM2dU4uaZwKldIEfp69swSPm4T4Y8PME9dFLfyoAViBzeCzAH1uxFzWMeJHSwSaGm4rj49fLVfHPuV8SaECcDoHRhVmBdOfTnE/C4gRAw1j++jFZQb6X2JvXrd41ejECLmGLkF94dwnjZDBChyqMFob43tNSZKMDKarxvX+afjd1ADrNbP5Q4uGPTFlZUjZKLcXgKAG0B+h74WOU+8VO3Rfr2EW1BspkvbOW9/DECI7U3XIa+ytxIbuECOluZdLzsXOYkGSit3+oh+pi40rpBjZZBGhq12mUEGLLWhGcdnABgFfNRFBsBgQ5JmrhOnsk/fSV1mJKLrW+vQECLoOMb+rbcaYjglbrO1NXiJhYBld5L8YQEcT/m3Wguu4lsQUL+qS6kWQzZoBtunwlg9sqRmKiG9FRA3Siyxe2EAA+1G9Q31sCNHnjAAgU7eIjyggfQtuh4GuWSeKQzK3PG10mThM2FPg/qQQcXeZCxmwLFj+an+pREYPkUSB2fO2f68Hmm0EsfTHyfpAZzXRW8YVUzoBKp+IcgenStq7cquv9oF3DMW76qGfK7xlWYiIY6EJE+qR4wEhpqeYRxCQVbgyLYd7opxLX2MHRVDRh8Q2gLZoT+5eIGBB8aF3bhxiJ/9sxWLUteV+HYwPNWmZJ4//QN4TyNJ+bLStATPHdHS3boJn/o2wskjgOW4QKGLxYu747ztn/6vSqYJBYtF7cKJ75MlDDwIN87O7mkTDZFOQ8sysEcbM3sDu7GRCLpeAFsc63uCV2+dIYpzfePP7Th00/LL4ePggFIjg9yVvOfXo0Ngc5xjxvgnlUf7d2bX5IHFYTsH01RHvsPYljcANKLvJIRvMqKot8fpb+agvYRDPHxBOYm6PGufRthVPLDuGNPBYw2ST3i1dPnpEZha+M4Zbo9w0mCwG3odu/BEVxgW7Ihqt3HEfEzWcNoiE58JWVdUWO1ajxdAypOPme1O+cJMBZ4ooqy9fNI5cCUzz6jJPK63bHiK8CV6+0YxkzAXM4l4TzAx3/KmSfNR3SB25GzVmYz9NvMcPNYAQbLrbyv2tF75qsxOP1Pz1OmGGceCZOAlITegQFMaf1fwSCim0SpPxd2QUnqQRhm0fxIQC3CvxATqg1Bv+9xYb/WGQbh3IIgAlwuPMOQjamXpI5voL1pC5HHT0CFJtLQPBFhkOxj85M6ONkxSjQfUuv"
  local _b9 = "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"
  local _b10 = "ZZ7jLyjLs8gZAjAOmMcAuH5mVIM11w8zjIBC/HfADSw1ZxWEnQz72kbLln1vRv7Kekq0bZAtlkX1aTfuZjzPu7vFMWSS4pWsmesF0FTZdaWez+tEX4RFtcPnzkehI7roI1FfeScPKVfEp4X1nMaU7Znf6bp800raGBeFXds9rLp7Sud+hscd90uKAdHMD3Jx5BP5C/1JdbrH5GwvdwM1iVeztwlslfwKGWQON/0Uhl9IDvgg/3JkXFRK+FU2AvPl64gqHsQmmX7WW2iXhk9JHjpbFEW4kRTG6xi1WpzVr3arZaa0xwIQYZlYRNRi+v1KPt1m/lgrOQSY5JLOILKQ0VLUFgEGh1zmFJvQF7ORmdinSNeAA88CVLZ//roPuwx86Q779h/hEvIbuXI3KPj+sbBlddTLxLXPHu8S5rw4RsRcx1nT2KDMg4UcxiGdHBSkeuL5R0Y9iGQ29NRL/DcCslFC9qm0e9bYG8CZ0LFkEW+m+pldUzA1lVhWyB08ov6N3fPgQaxT8E9dowUnqeTfa4+cFPOL7NsKzOrjI5TnuABfAAZ49f8nLDd8TPiKgdmt6jO9FPVDQQudYoVowXX4FkOllwrzJyy3lHB/2yMdWcdqvP+twxdMxi8LjmSrLuzowDsuPKc83A02PUf/VKr3KnnRwSSLAv2zZ9lYRRUEqBUDXYlD8cSvBnAjstYvBzAgAjnaZTabJq25XbeEthi0U0oVNS1/dW93l5UJhppvYLNcrUe4mHZQq0cCpr8mM5M6jxUfjnKE2G8HoBa79wCUJBCwB++vBS7DEA6ue6HsHm4NVny3FHVgO4P7AjFTvbbgMpwj2fhOlZiE4hGIpsNgPtp8apSNtgB1605nMVszFDd4k+rgDigFyJWFnhCknllRv2NOpKbC++6X7MYXJYAQpd/T7sTdLiw6k37D8Bg8GlBulxzt/qWEaTNmkbO1hDgCa2tzaEQNCPL8BUAC1rGOdt0LqIvSMHvDmNVZwOtKqPng9NQqs3EAmLM3U1PllrmKPnVwoTKZOxCntUWqAZAvP4iIHFO8tk9cUOQgy4huprBSiWMLWtTbjHVIXjwtfs5VxnB9JrFRxmlSFr6es0ENjcjEovRoktLTldKE4d1CNWvW29GlKvgQLqIjvVRMTdyj9a4HpwkQp7WvCWTrBBV/dsabOsvGXtS7Dj1j2QcROwb9HjvGCh0MHfPZjrw9OWlz8VNKzjmSrFena+OGcOD44e7vXFKiNnHSI3weaeCbV3/DfM5p9cJ8YBYqsFZq3n9oaAad2piX1nI9YkBCoQSVLlUAEquJB6N8wb4AS/QfFwERp8ijvJpgPFmOdML2Lh2m84zQFy6ypD2pdyrO311V9CvnFBkmxBuxz7j/5d+aAnyneh5B8kEndvx645Bc79lmlg7+H2DX4b+ygG3x91Ad+zIfzdDg9Qyhm05ERS7Z2lb3DdWzLTIlg+Dq7s0PlQlT8BL2debRMq/By1RFWZd8fEefxA+k5s6Kkzhy635uKejlcLrovZDiqwY1bv5SI3Dzp6LfwRBqyT5MLLUsYd8IaTLVFnQIN+9cyx7BVtDGGhLx2JSymTg1KP01dSJHRBy1vwrgA2JXUB+uNuuIulcZnGbaz5BB7wJCiUMzXwUzfCoAjPDFEqp1j3j/qv8Vd3ywYHmoKkNjWqoVpjPvk8PqpRMzhJDDqrf4UMhXUbb/0njXSFfxMT+82oWN+aDMfhQ3uAWYN5T/frFH0A1Rzde8jiRtCiiYmZHCK0iFrI869ur2/oAu97HVIjxKXNN6fvSxE5xVW+wekfk="

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

  local _req = _hex2bin("bd88c084eef4d19f9bd1f8698c0e762765bf5481dc0742d8187ab72b8cd43902")
  local _ttw = _hex2bin("2d7b0f8ea1590eef")

  if #_req ~= 32 or #_ttw ~= 8 then
    _fzj = "invalid key/nonce"
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
    k32[i] = string.byte(_req, p)
           + string.byte(_req, p + 1) * 256
           + string.byte(_req, p + 2) * 65536
           + string.byte(_req, p + 3) * 16777216
  end
  for i = 1, 2 do
    local p = (i - 1) * 4 + 1
    n32[i] = string.byte(_ttw, p)
           + string.byte(_ttw, p + 1) * 256
           + string.byte(_ttw, p + 2) * 65536
           + string.byte(_ttw, p + 3) * 16777216
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

  _sal = table.concat(dec)

  local h = 0
  for i = 1, #_sal do
    h = (h * 16777619 + string.byte(_sal, i)) % 4294967296
  end
  if h ~= 2055280856 then
    _fzj = "hash mismatch"
    return
  end

  local _load = loadstring or load
  if not _load and getfenv then
    local ok, f = pcall(getfenv)
    if ok and type(f) == "table" then _load = f.loadstring or f.load end
  end
  if not _load then
    _fzj = "no loadstring available in this executor"
    return
  end

  local _okTest, _compiledTest = _qup(_load, "return 2+2")
  if not _okTest or not _compiledTest then
    _fzj = "loadstring check failed"
    return
  end
  local _okRun, _res = _qup(_compiledTest)
  if not _okRun or _res ~= 4 then
    _fzj = "loadstring execution check failed"
    return
  end

  local _okComp, _fn = _qup(_load, _sal)
  if not _okComp or not _fn then
    _fzj = "compilation failed"
    return
  end

  -- 🔥 SOLUCIÓN AL HILO COLGADO: Ejecutar en task.spawn
  local function _doExec()
    local _okExec, _execErr = _qup(_fn)
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

local _okGlobal, _globalErr = _qup(_safeRun)
if not _okGlobal then
  warn("[obf] wrapper crashed: " .. tostring(_globalErr))
elseif _fzj then
  warn("[obf] " .. tostring(_fzj))
end
