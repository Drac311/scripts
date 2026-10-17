-- Multi-layer obfuscation (ChaCha20-IETF + chunk-shuffle)
local _dyes={(5*16+10),(9*16+4),(0*16+3),(5*16+8),(5*16+15),(1*16+11),(5*16+13),(8*16+8),(6*16+13),(10*16+13),(7*16+9),(5*16+15),(14*16+11),(4*16+15),(9*16+8),(12*16+11),(1*16+0),(1*16+2),(3*16+4),(8*16+5),(4*16+1),(1*16+4),(7*16+4),(7*16+13),(5*16+13),(1*16+14),(9*16+0),(2*16+1),(3*16+15),(4*16+12),(1*16+13),(2*16+9)}
local _pyfn={174,1,214,146,240,215,231,72,59,8,191,250}
local _rydl={}
_rydl[1]="LOEiTMjXB/vrLrCiKDZZysyY1iIdzOCRxcPijX/y98uEhvtOCEMxVdZhfrzQfQZfSN3Vg/ghNNDBCcQzaB89TEfLxpqeKdgLuQ5pxjzKlaCz++S2hyzy1ItzY/QrvCh2"
_rydl[2]="n39av4kQwjTqtCZkCRr3H/SazvJTFET7yLkIyq3Drud9cKFvkP7RVo4jSzxHd6lUVAHmC27mt99IANWtyQwXnLf+iOTx6pggZdvB/DLSagOL/9R81SLM6r24nSrBNTKC"
_rydl[3]="DlYSmYxlyxWY38+jtPvkK0AfSkrPMBBUMFtDnZ+KKzXkvCXxNLq0QZtaNtOkfapNC9GzLidI4GGaAU9Oq1C12G23IljLGFR5kSi3KfRqmLTp8RB8sAxz+jsvLGSN8z5G"
_rydl[4]="FLAondiRxYr2RIyVfi35h8s/MKVJnnSrDUnkv2SMmy9QgdqP/Sx7LEPd/YGL1Bp8LDMZDtk5DqJ37AIwdIVgLIhXlZgOK7sAK/W/lhVaUKWFttNbRbhfwYRYr6FWQGxV"
_rydl[5]="Y49fkrIzU47uqAWFNLGWNMN/4hMMvdeY0JTvfpmVQ5bFKsyhJ0/DukB8Ihdm5C/OTuRbulSrxTDyD79f3JFdYMrs5Y54xLHtUKSCugc3dza+MblPVy5pSrIXeGSpF+CT"
_rydl[6]="y4cwGF7Dn/yBHeZxONtm8uoC02wBJOwlCBhoyLYS4CIP9m3Lhw9VAKGf5VLW51TUdxygFsLWB8SB8NmCiu0+9ZaZX4qfZYjNslcWHY4Vns1s1A/6+/T1fyIb1aU9z8Bj"
_rydl[7]="SRx30s95x1UCYn/lF05tNldGwYldOEkEPwos0SeuVWYmpobq/Zj7f2E33RDD157ZZ5KWpvb2igGLk9Hw9V/o9iP0xfZbdnnHOwpxRfDGYT2ZIaszr0hFcO7ZhPYus7H/"
_rydl[8]="qAdZXIEc6veHexLIiYCfKNMnVduEkJ/JM8nzUZeWihQ+wL6nLkgqKm/2Ohdyu514Sa7obUu3VbehkjLsNasc/uLauJOFSHx2/4W2GPaoHfxhkwllmq1f+x8TiiXt/4O9"
_rydl[9]="P/c0chJNg24i0Sn+xWlT/ohheltOd21ETWXYkP7IHArI2yEpzmuy4d115N0b4+fLMdV08BNPI3SGtp0mGR1ArzSdBRYyV2Oj3gY6Dn3ED13YOVClZkjQ30hBvBw64Tr0"
_rydl[10]="wYlGVsV/BVIYYXtUXAuwiqw/xa42nFiF4fLKoXw1p6t81doxK8Z/wF9GA3EidMYbkeQg/tB0ILY+4KEflaWb/9d5sLQY+6PmI8i1ZjuHBXt++StY3kc+MXa00QfnoUxy"
_rydl[11]="VyF5xQs7nzINJwUSmsyEzXtyk2Skyi++zZc/lkwqrhuJXcyrEhc2ipwIet+X9mD6DiX3aNREogN1obMujs7c5P6epKm3H5dUL37ueCnQVtG6lsdxd0vrQ6jXYknk1SRG"
_rydl[12]="HTrZrVqCAbNfwpLm862H+4P+H5Bo0W17LTwFYpeyL1Lk6Mc1OQWPdf9Mo5ttgJWoAfDww/r6uQajAxdUxhC5EwbCzutSFRX1YNbe4vNUojmZMzXIbENGBOJMZlszOlj4"
_rydl[13]="dEkJqoaSpEY7ECghhisc8wPQHYK/iY3tjJk2YQ8TmKN3CKq45TB7DheHEqiERNiBylDvMJOAXvY8Vr46et4Y0hAQstboEOQ+F21nRtc3jzZYV3Gpol3lQtmIaXfHm5RI"
_rydl[14]="JMmmhi42WDBvZjx2TkfdtyXNkr+zjpyBBTUaq/fpfhYpZ+fWpMJMdWuq3VRVMoEDhXaN/y2zgMHGfKJTs5ZyAAYRq41jeX10f1szzuSNOAph30npTbHu4tsm6vYFwvt3"
_rydl[15]="3+s+q4mw8jO3XUX0s7Bd+xOOjumGvYl8g0a5xAAwAejnkRVJ7PE5f+MTmIQU3ViqCLj4bI8edXYvHpE7tdIXxqieqNHN4yIhrQtoDifG7glgpn+XXvZrT+GEd4TaDILV"
_rydl[16]="uUtxiiMLkOIJ5c5HzHYZHullOA8FsCCD33MCg6G5OrZ611PfUupiKdDgjsvnCALwVWZjDKNSurLN+BcfL9SxnX5fhJcd2oynRMDK7hGysB9wD4ev76gW2H5YIRLqa6kf"
_rydl[17]="98HaISLaooT8cUFHfIBo4g4Ip3bq9i5JFanDVT1EIhMqiU7LcgKseDjYX/XiOD7xHZVurZqe2LHdR1o96CMrOpBv3Zgo4CdG7dyeZLmE9h0Rt8AZsOdfD9X3P4qjgm/l"
_rydl[18]="VYw5ljdhCqCa24RxJcQhJLtnSHdLYD3bO2nsYpLw6WaYBBWGCOSBmEOErsrkj/J+d63JTp5Z2vK6aEDKXc3pJIojXnbWtFFN7FleG5GPl9uP9yPR/jeamQwa+VN61/Y9"
_rydl[19]="b6tS26khQDzDu7rwbH6lIpixICGKrwm2W68sfEg/Qso2lK7JBOpcLtF4mghxIBEEdla6k/8QjfKp04lhDQsM982RPdX3UrQtiCO7OcZYOrUAYzWwrz9hW6qretGs3aIV"
_rydl[20]="yuNvAjQIB8hAmYBZc8y9ohyjBWK3WaBV0vjTk3YSc8sCPf0VszkcxcL38X4JsguY4GKee1R0X5z5bPyh2nCSzGEFVms7kvYpgpJ0BMC5/FlLll/dIFCps5srYgJE5klv"
_rydl[21]="Qzb7/anPDEz9mkAoyJG8HtKJRMNhdlD/qyoHEp9a3+VeJb/DgRGN0Q/cjprJo7IEliNlbzqVnpbGm1H5nCm5Jztcli0thv+cti9tKF8fVh8JmERQ9xehwdAYSvqCjt0L"
_rydl[22]="Rb98FlCDUm/aPLYoR28ElJQ46oCMZCD4JmF2ZKizV2uuLsLhJo5kRJd+ikX7FdEpV4743eDpFlxzd/tSI2wYNiBa4eTpX+zPDv/ZVaOkCRYqetjwT+IYV7UEE/lC+LG5"
_rydl[23]="5Bez1qKKqwYAOSUKCAFf7Sln9dSZmqNb1qzzmORl+eOKywc9REtl5JMaueWdZ4hJdCPkk3a8gDx2jbJ9qK87Yyb9q1k8U5t9LAFtviwDP6XmOI1c4QTUR07sYHrkjCx2"
_rydl[24]="+zap/KIA5zCr27hOyfrZ00KkMaxaSYmi+fl+FHjHBnF+YnoCejFZTlr3jkNFraf+OxvNldyZTb9sAtZVuu/drmxngphqteBb6/hv0Q1yvsk5xtpkCRXhhC5gX3nMQa3Q"
_rydl[25]="8C4ZzVObw3lfPPeKtWUSTC8tMsCDMDORGhtixKe/A57FMwDbR8wGet8mXZQJOGuncv9uT7NDG0GlPoGOgntirT8zitlkfY68lbMqCXTr8rpHtHEDpLjN3ycdN5x54NFf"
_rydl[26]="DsQ3jT5ajomkC6SeMIaFMyvv2ZnA6hOz+6LYu7VA4ooxSnt3qbspbEJWHYaMwbP52U4EsonccbOHDpFtHPFdv0dSvPfwv6ai0BGKPdyLTmLtKnbbCh/ZNJ2tw7db5Gsk"
_rydl[27]="TWszqqkKtnCgGqLg5jMSXpa2BXjJ6NWSsuD3E2ZfKqunlKxGcuw26gbM+Fz/npj0cUwyWGAniMupE8N3zjx/qEhpm5HrYT8Q1Oe8WWXLze9ivRr8RgCs4J3VE0wnVBRN"
_rydl[28]="Sn2K0pivcrMoV50qUFpN1fAF6sihSEhk5IdMAkvn3+Gux6rgSCCFFeDN+04twB5D6ZhPj1Dedq9cA1SE90BNbW3H1tpk7GHTyl2M2EJGyaqJpnyA2LBNxbxCcok6ygke"
_rydl[29]="2ypkrnsgMOOnjmc2NKjf8xK3uHZyHEQBPRdfPzHuCMa17gF/knS+Cte7ItvBlnMFV+/hV6U8llYoIzpZsSKUTyHfJ618m/k48YKQ0C4lK1C5QSKGwFAzZaH+Nr9C4rRr"
_rydl[30]="nrOhXHiUw8/pjJGTX3rtKmzMr/sYkBWLgEH6U5QIKuwapFZgpR4anNkDzH2rqy45Olic6sdBynW5YJJx3ppsBkbGDdC/Y1bXvQcHExk0JTnkdkjBkpySKbAcAaIWn5ZR"
_rydl[31]="UWd8FU2sNgts4bWrsEIun3/qS3Xr9K4lZom1DoTMZH58zG7nuQeYxMs8nzuNi3zwRuoM5U395KUJpATRGuu2XZdhvSMlO099c3xWknYyN40aSA/ZH9i89+HdP2wZ+GyY"
_rydl[32]="q6LJnHWvrlG8psIToRHAaEoIKlgfY33b6MP0GZ/pOvxhcAhzcVMROBstB1JsvyKaq56BWhRJXg04G8XKNhGQ0WmTzA17UlaKhqnp3E0MQq80jk/hhtbtiT7emAfajP60"
_rydl[33]="mfXUbh9RpKCB483B7IZjbYhK4slam3VDGHCsqwXrw7a2l31p3UzKfn8f1sWW8bbjn8IJnOphGl0iIbXC3dvkgkpUtG7/1Y6o8BP9G5pXB5nzjk/pZi859wQiWhuHOX36"
_rydl[34]="kJz9+qQ05DCnBqENBQx1rYEcVXmzQYi4mQOU6bfYXyrXcNC/yP1g52o2LQqpibRa8Knxl5smSmajhCp2zT7clfclxGrQRhHjiL9CxvdIOpL1s6lWCAxnAtAl9F/8a0BB"
_rydl[35]="JEdYPKo6ndc="
_rydl[36]="hVZwIapzF7MCFvmeKklMQsdhvOiarFFm3S5jxYqF0Zy+Jpx1YYaBtTPMGTI/qT3jG7Hk3ThdJpt7XnYsgvfLxDPL9dXBf05OAkb40cdRPHx0zabNhLsCrSeKD/w/nLFg"
_rydl[37]="9brTwTqNbSq/U5hNY+yurMFa5VSm7OdU+z3gwWdgSb2/HKUuYjzCiKav25U4Uqjnv0IMFA4ajFIM6Crm1IGGZ2oavzIheHqOEGiZDcbiYEZptO0+5JEIahiaFLiKjCsI"
_rydl[38]="lPNVgfNJU2iaus8xZJ9HMIDGXWYS8lJ8P4wzxOnDoK54N2xYjqhca56WNCkaeYVlm0YDafiS4Ku6fQsdtxHSOXdb8v3dWsGQwx1fnEm0utSnhShxhfVUoTVyt9akrZyx"
_rydl[39]="FbsdofeMNesFAYcA5/BKqpyarcyXN9w7YD42rG4LV1sHpZpl4GKzG1dYEn1Je2Cwe4sxn3BhvXV5qzd1CHvqZxc0HvO72OKp76gEgWsAWgcBY7zoHtFGqmQsMgOSNlDT"
_rydl[40]="k6TTafNXYclWBfOjScamfiMshtnjR4FrcS8hleCHfty9pfSXATrsJ+w3GCd4Ca0lMQkKrV23xfQsC2Nan3vf9B9FzAARjVyIRey/VcGhibTadPgyTKRXJEVj94O0c41N"
_rydl[41]="B4b5jj+AtCIO6oGsoEFz/W7d/ALN3Hx7bSGELs/yikg3YCLhZlW7tYa9GhzIkPQotchVoMnk9rKpFd59L7mAyaXGEMy7OvEaHYPUFfF8rKvYaHofkBihJM0fwxR6D9Mv"
_rydl[42]="OlDDN0hPIkVVrFpwZUxieF7LYklG6ruDbfq3KYfGV5aAufhW6SnGzzzWXxDTfn53BPKPtjhVQzcNwOZUyWjKDyoXCq81dD2d1aIMiutBqNHBXlYVQPhDKjaYBAKQiRQE"
_rydl[43]="Nl2n8VAAogbaRg1NdP2QDnZjm19cLNkMDvUH0igjJ1RmJIRiFTOEjgS/srWbO746ETPMHjYTytVLai+i49bSWffi/WK5Q3P3y8ypcAk5C+u0ArkBNeNfW1cWGp3FEQwY"
_rydl[44]="GmhknDtiBxx2w31kkm29bv4iGouQCHNw4FN1ZciHaw8JZH2DPUkbv3UBJuKGhIyALdhFX49ntuVGbkYdWYRd11ru/K6Y8j7COSBXzfgbdl6I/uNod7Bch035g+E8IaBU"
_rydl[45]="LmMJHlQz3QMZnaoN8mrw45uSz9fyAj6aMz+5qBxYW+6MbA/I0zUX415Ahk8d0wwxytzeNpa/IT1s1w4/xuKdOmd4/l0ekq02Dvskmr1v1Kl/ONIRm1C45gByYsQx6q6N"
_rydl[46]="3L+JsbG0sNP+j7/8xiyMzI05zBQk2JG+lLZ+PGTuk8vvleB3uqMe33d7u+vzIE+bZEyAfCSprIqwWDkhvCJDzYd5cF8Xv+aA11CmpCix8NjUE6hqRQFhd2oSKoRpxQKk"
_rydl[47]="ZtBbzk5Alpjbt2eo8HAxtDk5d0j1GUQ6PVtdb9hLbntX22OAgqNZiu0Biq7rX9yHOw+nyoDyxs/SOjbo1XXYOw5RxH3lfRfghJEFPdzxvh7YHmdBsSDBk47ScQ8jyWPl"
_rydl[48]="rVLNiVAmAinRBc4fwtk9gyZXrt+7Phmveq7GS+Iw2zPfyWDZV7UxTJ4qwb4h7T6m2xA2CeD1uDGreniWYQXFwjllxexbMj3NkZ462RvhYiUnyW8+1dLIf+Z7HOjigEJ0"
_rydl[49]="lwTS2jik8ayUDBtquTkZkxpMTLMYz2lmPwwY7NEfPrBEN8lNdrT1yqQUXPcidXouMitRuvAvJtzdOGXgaC7miy03bhRmLV8/MGqNcFxDua/86ec+wHv3qaduELgU7Njc"
_rydl[50]="daLcIDSkdtnYx1hkkreMdGUvgGRIQrq875/QjZfa16oUeY5QyhxuwfYkAp98phfY31GgEzJV0nsIBTnxW4uKqsrOS30pyyowH/WksPItXhbTR6Oo0bX8i136dmDon9Xb"
_rydl[51]="b0+87SWtDGTQWKfZzIf2fO3/51ubA99bn1M7TYskKrhav58J0S75cSgF/pP13XeGapz2NcVWFI2JqR9QV2yZ56QodREWByDRcmWyDwzsB+lcfClDh+ZgbC8boBvWM6PV"
_rydl[52]="IgA1VhmEHc/I65uWYZrfWST89YBH5OSaNMmoKnig7W8wcxRJ57X2aY0i+AS8JxvMXo3MdC7zW4aO90FZVooap4tcQcxBaaNcHSoIk0WtNJ6BPL+YHxAsmZNCA3LUDq/Q"
_rydl[53]="Lv+rklN3AawdDHfYVKTZKoUklZhJpgYW7Hl4N+jyug5WCtUMDdqud+elBWnY0E+VhNgC6LS9tjVnKfSyQuyuaDXg3oRJzgam+RFEwGdPhKqwh3ZJDPrkWc2EtQyDr74b"
_rydl[54]="DEEkxtMi7lsfrQ8lTxJtvL0goR91aboAt9s7PkCBuoPwu2KkKSMN9U/wWExwhGNSefcEI701eGaftvHJ/Vzqi98/mEmTc24wd7VvZYiZQ1Jj5r9gdApwBszsUylzev/L"
_rydl[55]="rAPQR0iHxuhfshOO2AGOw3woJp/WXVi7bOimoXfvb8o3cSV15SGJgPCoai28hv0W46ogbxx5E//fSVinZ8/gswFhZUZRZWr/4VP5eSqLbBoNu7j20W0o07vtvSiPRTNS"
_rydl[56]="P5jZ+e6LE95DG455h4eFK0vIMBHTkTNzWmNiKaX8Tg9J8ov3SQdquCSx1CJkVt5g47dZesvKZ84ntC5Apy1va6DNL9L+unucE/marweLDRIAbIRGUCP6o6xHBH1rFp44"
_rydl[57]="v30qlzUg1XcVd8+XEAxvVbO0vs1CYffdgndJBHcYhDb+bjVQ9HGsNmGijowQmXlqR2LWQf+rlmEeGIw4Pm2FcNPlVhNqojYRZzbzytCPUJrxN5fwUMNfyCTqn+s/D/Iv"
local _stzp={10,12,42,8,27,51,3,14,6,22,4,20,34,41,26,43,47,29,50,45,30,23,28,53,2,21,36,31,24,7,38,54,9,35,57,25,16,46,5,48,55,11,18,49,40,13,52,56,17,39,15,37,32,1,44,33,19}

local _ynij={}
for _i=1,#_stzp do _ynij[_stzp[_i]]=_rydl[_i] end
local _jktk=table.concat(_ynij)

local _wpoa="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local _vokt={}
for _i=1,#_jktk,4 do
  local _a=(_wpoa:find(_jktk:sub(_i,_i),1,true) or 1)-1
  local _b=(_wpoa:find(_jktk:sub(_i+1,_i+1),1,true) or 1)-1
  local _c3,_c4=_jktk:sub(_i+2,_i+2),_jktk:sub(_i+3,_i+3)
  local _c=_c3=="=" and 0 or (_wpoa:find(_c3,1,true) or 1)-1
  local _d=_c4=="=" and 0 or (_wpoa:find(_c4,1,true) or 1)-1
  _vokt[#_vokt+1]=string.char(_a*4+math.floor(_b/16))
  if _c3~="=" then _vokt[#_vokt+1]=string.char((_b%16)*16+math.floor(_c/4)) end
  if _c4~="=" then _vokt[#_vokt+1]=string.char((_c%4)*64+_d) end
end
local _afzz=table.concat(_vokt)

local _kgnn=bit32 or bit
local function _oqir(x,y)return(x+y)%0x100000000 end
local function _tdyu(x,n)return _kgnn.lrotate(x,n) end
local function _jetb(s,a,b,c,d)
  s[a]=_oqir(s[a],s[b]);s[d]=_kgnn.bxor(s[d],s[a]);s[d]=_tdyu(s[d],16)
  s[c]=_oqir(s[c],s[d]);s[b]=_kgnn.bxor(s[b],s[c]);s[b]=_tdyu(s[b],12)
  s[a]=_oqir(s[a],s[b]);s[d]=_kgnn.bxor(s[d],s[a]);s[d]=_tdyu(s[d],8)
  s[c]=_oqir(s[c],s[d]);s[b]=_kgnn.bxor(s[b],s[c]);s[b]=_tdyu(s[b],7)
end
local function _vbfn(ctr)
  local C={0x61707865,0x3320646e,0x79622d32,0x6b206574}
  local KW,NW={},{}
  for i=1,8 do local p=(i-1)*4+1;KW[i]=_dyes[p]+_dyes[p+1]*256+_dyes[p+2]*65536+_dyes[p+3]*16777216 end
  for i=1,3 do local p=(i-1)*4+1;NW[i]=_pyfn[p]+_pyfn[p+1]*256+_pyfn[p+2]*65536+_pyfn[p+3]*16777216 end
  local S={C[1],C[2],C[3],C[4],KW[1],KW[2],KW[3],KW[4],KW[5],KW[6],KW[7],KW[8],ctr,NW[1],NW[2],NW[3]}
  local O={}
  for i=1,16 do O[i]=S[i] end
  for _=1,10 do
    _jetb(S,1,5,9,13);_jetb(S,2,6,10,14);_jetb(S,3,7,11,15);_jetb(S,4,8,12,16)
    _jetb(S,1,6,11,16);_jetb(S,2,7,12,13);_jetb(S,3,8,9,14);_jetb(S,4,5,10,15)
  end
  local Out={}
  for i=1,16 do
    local v=_oqir(S[i],O[i])
    Out[#Out+1]=string.char(v%256)
    Out[#Out+1]=string.char(math.floor(v/256)%256)
    Out[#Out+1]=string.char(math.floor(v/65536)%256)
    Out[#Out+1]=string.char(math.floor(v/16777216)%256)
  end
  return table.concat(Out)
end

local _uznp={}
for pos=1,#_afzz,64 do
  local ks=_vbfn(math.floor((pos-1)/64))
  for j=1,math.min(64,#_afzz-pos+1) do
    _uznp[#_uznp+1]=string.char(_kgnn.bxor(string.byte(_afzz,pos+j-1),string.byte(ks,j)))
  end
end
local _utsp=table.concat(_uznp)

if _utsp:sub(1,6)~="LUAOBF" then
  warn("[obf] magic mismatch")
else
  local _pebl=_utsp:sub(7)
  local _bnj,_nea=loadstring(_pebl)
  if _bnj then
    local _uio=getfenv and getfenv(0) or _G
    if setfenv then setfenv(_bnj,_uio) end
    _bnj()
  else
    warn("[obf] compile error: "..tostring(_nea))
  end
end
