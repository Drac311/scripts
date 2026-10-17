-- Multi-layer obfuscation (ChaCha20-IETF + chunk-shuffle)
local _ctln={(9*16+6),(11*16+8),(9*16+9),(13*16+14),(13*16+9),(6*16+2),(3*16+11),(8*16+9),(11*16+14),(5*16+11),(15*16+6),(11*16+1),(10*16+14),(4*16+15),(13*16+1),(13*16+10),(15*16+10),(9*16+6),(5*16+15),(5*16+2),(10*16+8),(1*16+0),(7*16+1),(12*16+6),(7*16+8),(9*16+2),(6*16+8),(6*16+1),(14*16+14),(12*16+6),(8*16+10),(14*16+15)}
local _xsfj={32,47,130,197,124,201,75,86,196,192,225,24}
local _devq={}
_devq[1]="QUWNDsxIqvHSimQ99NS6avM8BxxX/q8xakCd4Hhivhyuu8vXzxX2oVCF12d15iQl21kPKHH732fK8zDtH1jE8H0BNj69Q5EBw9v8UcPr46NNwlekb6KkA2IB7Fe9Xa3m"
_devq[2]="k5tBLLDzFI1HqV+jCcJyxy93A1fWyw+XpFIxjIOJr94BOLdv/A7o58m4NHjvkP8DF9WSDVC+8o6BbKLkcEtOmU5OG/hY07zoho6bz32pSDk9ZGQAfFCycr0O6H7ODKiN"
_devq[3]="S1b17HTQGk+WdYt+7TpLrZwPFi+U6IlKsyzZIG0EE6sGS+cLjpdNp12bK/+v7zF/Om829DTgyc7ZfDlHC6B5WQjO6f6Vic12X7n0ib25ugBPufeIfQ4KTMLn5RO5f2+M"
_devq[4]="xXQ8x/fs7y7H4AlDWqUrnYVCsU4hM74Fdr0J97wI79wy3R1EONZor0Q0kjHr28rGs4jyrERMN5sBjA4XkatkSTCI0AJDe/kDjUxjwsqZ17ezfJ8d/TlZ4juEYM7tQmTG"
_devq[5]="B6nIkJa6YH6tYP/7jB1DcHD5YWiQ6RGJYRHkKHCL331HEDHEPXf/9o8tl49w08uZheA8WVBILNbhFZuuK4mif4FkdUZIg5Rh1/UiNWOpWBdYjiz+WxjAjb1jVvPcef5E"
_devq[6]="9mb0WNmOzgUJ3boG1DHXP3yqBRr/wyGqiQNIhq3FNg1XWUxFStMHjA5wE6uMNCpBL9iI3+SlnuIjwKhdr6PfiPW7x7jEi6U0dfAeUrOsK75N5MPa5J735kiMEVfAHA5e"
_devq[7]="4kAX04WHZ3p39fa2Sfl0qoJcF86qWG4+ujOfos7cE1RdempSPAHI+9sZhDK3Qe90n7XaxAYMmY6SvE1svFvXP3zIeFr07B1RU1DJUuSb2OtGDVmuNxWgnAUEKH3y2Hpd"
_devq[8]="itWxUjF+sx3XwSGYzpuEdy5BlPoR3j4xpY82lsGT6fRx35CWfOikleIx4Xxl1pMOCQxUqEPxbu8A8pWSHoMYjeJzGLXjgmoEkia0HgSx4ONyUl2n+flWunDyfeuXE1rw"
_devq[9]="Od3/2w3LXO48Pqa2j2J570TX6RX3dvUHNupYktLrRlZZn66JDBvvebHr3SMcONHhLwQ6tVELwlthaKY3ADpsUNTMIk+VvoFTqEzeZU3caB2vhNJ7yH7IfU+CMu7hRrp0"
_devq[10]="Fr1CSgkTSFY7VZywNJlIXR553rvVevqAt7MRuIyhzsLhD09A5Gem+WlPY2vGGzDh6a9pN97gdZv0k/0aOTVt26LzTvZG72XSvQWTZA76KnpPSsC3WNjM5i1lkD8jnZyp"
_devq[11]="1WcC2EW34TvoY6UFHS8AsCORlniMpdKKolEi9MiCiBKa3qrJjg/lj0kfsmhoSZ1lfGZMJ9IHyc2OTiTT/v789I7SWO+zoBD5ydCFcKHXqr8O8xuFpJB4heODHjyC5tE0"
_devq[12]="pWXLG6Zhfcq+ev1u3W/wmg0qytofmeR78JhSBXPlsGmOz7yjNrz23rR0HMInoucZ5pmpZ5VxEELaaMUmqWD1XRLe128AO7WpqgbZW+VOHAKqDShZVQjXzxq1Lv4RPE9a"
_devq[13]="2N9NUgWGq071PTIm7nH0LjYGhSZZKW6Ajmph0jeyKuLn4pOh+9vSzV31Rlo5RzCHbhfZr60GqQG5MLeM5poBBpkAK6avsuoWsAVn1CJUJHSbA69n85BQ6/K6Ls9eDPRg"
_devq[14]="y8oBWq/dg2W7tGLpyDrArVgHektfWJ+dj5fC04kughBeIONcsiRSzKbFyh5CN6O8bmjgMUWY2NfNRpCh5ViZcBQd3yLjLZoLkVkeJcT9x931Bvmz+FuL/1ox25hXOimB"
_devq[15]="fzIrIpweBEsAgbSEyHiU6iNI90WpUyX0f9+zJ5pAd/rkvURBNAG/6kHPZuuPrf3gEaw5DPTpASyjNTNDej4ZZecq2229VRbIosbBbU9KwYWPKLRFDOYcdhN6+pNFdHQU"
_devq[16]="B7ZbpegwRNHl6Uv7iSo5ktpj9XAS9j6vSlkutpBKfc4O1SusWAROZUy+bHmUPLl6OFOvsLp+Ue79w/zCx9pL2kbh6Iq2dtoJmpxeuwP5jKGa3OIegi45PkIqZ8P+lTXT"
_devq[17]="NtFe0WGUnki+IOk5dV+HJcnTp1I1e/OCvpfFASNA1M3wEdcVEsHHb+RWFHs9o2XtwKi/rURdSD7mlw+JHyFUOqaM7/4AyYsIMS23uvq2VC4Jf3sxxQuLMW64n2PAHg99"
_devq[18]="peZfI6/0ibMWVpFwVjGNre7HnRWu76PfJM5NyPrFKQIw3ilP5mUUGN1TZk2cuW4LADKzFljS7JdqNs4PcTah8tlphfGzmQbbCjsvoEglHCyu4spnOIbOs7mT2bhTNup+"
_devq[19]="iscZei9sZESpwb+rcCVmwPNE7GyXWssICTtB60PEVS1mBotXnsb52t8ULObCIabs+FMXpCChuuw7q1Ty8HJENhIZNyQiihLVX8Lk22WNQodzhuc10AvrV4I/qZB85/EG"
_devq[20]="mLV+GntyGWTyU7HciAJpiXJRHvnMUMdLMKeavc+INZdML5zKyCWlDEz75jE4MvZBsCcMAV9dKwdCWqQtBf0nSsXZ7Tusw0/BE9FsSk5X7ixFwgK5WCineAqanZa6bUkp"
_devq[21]="5F3X6RuGRekQHCmiRkfW/4i7qiIGXKuc6r/6sHHM52EmxOzRELzzmMVQEsKZrmaEg7BTL0Nl/Qx0FBow7dX6JfSqupXLWtUsNTvqmjGVHXMehPQr9Werqmz3FHIY+Pv3"
_devq[22]="9rnRQXeOb0hDo2vHSE7G0r4uqZpFZCcOdPP+Z4lkmAmy4+B42t0ycBrxKAzSwh7/++D6b9H9zkp8zgl3UwL9QiqKHLz2y1oQxN9PuvvSeueMdEsbG9zr8wSLQQBYbGmn"
_devq[23]="Uy6ioHw4mvIFe10MhbGZBsOJ3UpQ+mj/ZdeZzTevv+fmah08wh2kRYKmUwH0pD8lnikpYH2rTmknHdE8LrG9C8cGs4we23vs1fzAJFU/QyjdEKO/75AHnhfu9Yu6lG9s"
_devq[24]="/Es+JjY4YiNEnMBpPT/twI+vxWAn/b6FY7Hex4GvA7hzVS1oxxks+lIZ52uiSDb62h7mCPreUY+iHFSxp2/V9Ibp+zIzL/5xH/WJsbwpyUfsdMwI0AG8jjlzlp2oQnJC"
_devq[25]="wJQ6lOZLLNQoUh57yKs1HcpVam/WiTaOG3LvqLvuR/Pb/UaBe1jPYIErkIwSkgpPSJYv0XWqbWq3jBscuNb1lOG+4QANNHUgxEnioEQR92OAaDcZ19OB+poDvwK2q28J"
_devq[26]="2EXk9ghLN1RJYO4jrv64Qpwo0Ypp9Qx0IJESwIEPclb++gLi8S/wNaidGy9ZtEqQh4sK45XpC6kZQzHC1r0DgDpM"
_devq[27]="4YkI5JJnutTexp0IDwQ9ebnmXVd8aRIB/IqptdvF0ozLcA/TvkYYrRpp43nCZn9TW7Xcm3BCN1YAgMUAA79va0wHucq6EaOd+iTUAcWkrFMgiquPaL2t6tZcD/kpYsTD"
_devq[28]="9nuluCL7H7PDTXlSMLhk9A24vwS9oFiNN9RjMvdT/Aa9SqTiATZLJduDmspdGfvZ9qSAof71b+iOQX02HxsfdS6z63qGwZHIoXbH1WXYEhm3TU0w1F9p1ejcagxzPM6R"
_devq[29]="Y/mIKUw3HToZqBPjajtFSnEYJdX0FSSWono9pBqYleRD1TU3OACwIGURcpdTfO7Dn5ScNi+GHz0Af8GR52nKUlavBFZ1Pxw4r+2pGiAXJV8WkPEURu+KMMl1gtfAIQmF"
_devq[30]="djYcbVz2aQ2Uzw/4Bu06svliuQvdpxfBYkazerURqVU+RprlynzpojbmsWTCO+D1D9CMAfOmp3thQeVZjZ7AgBlimTnTW46Fkdr/s+vlNXYgTCdzt+w86n2lV1X37BX0"
_devq[31]="K3Yl1GNYOTa2WjL4oL+qD/dWxicbnwcsu28ePHHle9KW8yNMPQNSY/Kng5UZOdy1setZpk5216ghH+AXtkgyW8Fi2+4A7OCywtJY24ZijsG9yOg4LtlGOn0U8TRNvylQ"
_devq[32]="x81epdZ9vqkApBMd1fGuzES1qB7fbNM4036hQvcvTGBoVtXfwZEjgmhWcAxnI6YLVqT17aMyzq7glR9Y70I4ydd0rxBmC5KF/zz7GfPNNQrVwWtWxEFFYxmG1NYLqmo2"
_devq[33]="y3Nchq3VIU9cBFirtRJ0HUn2TNqRDKeWWgeoAdI99VEnxuU/jwRGLZAAomWTAZJkaCrbbMKWoDunf1Zye9s4207JE2Atgd4NB24PQj1mtfcd+Hq0hcKwUiRm1aD4cCQs"
_devq[34]="p5exOHCdc8KGOcfONymuzRwXYuWLGbTNqmgaxW+cUbivOIg0ODUB59h7hTAzsRzfLlOdEUBSQJ924ml2zGS6HeIXgyjSOBEsYpk7do+HZB6V6AiZ4+gW8wUJ62/rgouW"
_devq[35]="nkl5Fg86DkbR5jnwfp1FR8vdm1N0exjlfX7pxgRYecQT4q+krydNBETcH83ckdbeRzsU80oLcs7/7rn4c49pgdhu+rLuqx15HizMpU2OmdCPga/3UEhQj8TIbhbexvdj"
_devq[36]="Uy2ufLfV0Dk51kgUh7o6FiMeccyFrK2ff3S6sqmsCV09yzUYRQ/BKdAYUPVYEPdhS5gRBT4Piui3OxiQqeX6OCE8xVrWXYlRMuCZbYT3bvArA9n5oZcRuEl/7JkXOPFG"
_devq[37]="TF/7gseGCGLvoF09aJ6/4Uka1fNDqLNxHQSoYMUYVqhSGNLIbDCbkeQ8JD1IiZ5C6rW86gh51T34gBfMUraIBRFeu/hPwXOKZzR17rR+c/bhNplPd/B26Z362Iypwk5Y"
_devq[38]="vaXoZtavzothdxCpdMfzZHmnn4OgyQFkYpgmW4O5ljtyIZw/pGaaW7jcquHTk1rzAyyoKkegYbDTsfkNHGBGfsZtmQT5a42pyi+uk/04CVFD9bi/g6r/vqWeXOU1KTbx"
_devq[39]="jwVezuoiLLNsMQzsO6sY5JBbZqNhU5fPke7EnQm6fSFpW4b/f28sHohCh2nEjKp3W/I2+oxoWirjbL55pfN6sSlAx+VMjnM2Q31iogoXwbmLibvQFZl3YBxNxfWYZ5cD"
_devq[40]="p/SrSyssXytO/NU/UWxhKysxEE/+sLpAMd94iXVzz8U4onlVTyqPmmaZQRBmhg0mioJtNTBIrVrfcEAiUl17x3wpiqpHk0roCxesfOHwfzCU9aQ0X9amsiUA+NalVFJd"
_devq[41]="Ed3bDHOHqn0rz3Q5geds4iRfZTXi2hmsyenNaFIGpG0l6uNyb0YG3rw716XmwXk+ef4fCikFqP0B0gRKCGNTrFzukyBTskzklvhCIebEBuoaTLMOl1zreN1BZVBx4Cq3"
_devq[42]="dY37XUX1Mxo5NyVUpdobnD/LO+zkxjdF6m5IbR3cKPrd246b7SP7YC484aP+R4hht2QjYh55dEfWvh5zzorBoZpktD62fj+2wY4nLVLW5HEW0HpdSjSrSE96M2FB+oBf"
_devq[43]="lIrioIGMtNVq4lRMhmykGetCRX2klVpyrjrimnUAXYe8OKg9WettucJb1FC2B97IvJR8SloMrvjWeSbx9YIWoOKHMiZvHDsjSRh99Is8MCIxiiZVY60IGtkQrWxteIAg"
_devq[44]="M7jhnwPgDaqIkmCJG/RXSiIqP9iG0GWu96Unq5GmfEuB+9/jKjzm+eCME0h/WBQNnXyoxG8xkwoyNV3k+etVNoRg+BKeXvZG17Vh7wZC1xX/r8km5FQYsiMPacg+C8Um"
_devq[45]="rPuYzZVKhzmyMkRA4m1hnhWgFnaBxTyFTiiG0SKRPiHoJ5qM0NSmuRoxSejg09vEhOmNHY4cQz6/j6HWOnbBHZErJ3d+jebDLpxeexcI0tKx2Uc9DF4Ji3JXz7mq2H7O"
_devq[46]="Q03F9htYmJuyc1/J+FG+t/YiKcNmyW4mLK3Q8RGP0QYCspM7lBumPIhFV89ROiBZvwgsJQIGGaJzMxbBbXoA+6uRJcDLGOMmTYSnPOARxe3K/AgWTjHaOR8oLpNX98EW"
_devq[47]="V8N0M0PhVXcbQMWhA+OVdyr0+eQCeTePhSX/XnPlLPV+YP+aJiyhiRCF2p4f4GNTwduB/2b3cIc5sGz+hlhh0PIwcTZy/enQHOY8/+hxBjsgsE09Mk4G6zALx7NrHbWd"
_devq[48]="lC0hOMSODDVYd54q3pGlsHW1obl8COKTja/Q1cuYm0AY7pl35bma0BCQjvVs/6ATV4IAFMKy3DdsdXTS5PHlbxcTcHhux5Qg7GO5TYnaUresl9toW4wcxyONyBYbyWER"
_devq[49]="KalefzW2UP0NRwPZYCxP0J9JH3wym9JcdFHhu+7P8s6QU1B0tw+nW2+qMabDmp9QOydmQCDGC8TYkyv25X6C1WDQqKtTMDthEO3ktNXDqMcUreyfC47teqb+vYFiWHb8"
_devq[50]="hR9lwHrj7cwdS3ry+TSbJpDO7bUaD8UR7ghd4KMCRc+367mPTou/ccB1+HFMgR2fMlGuyhT+DepVT+1qvDpbvk1XU11eKnBv788Ne1GKPqE0u+kZQYPZZoUvDYMI2NVF"
_devq[51]="RwJLF+dxdCK0qjo42LePriPM6xALpTXzUEqyZNXpi40WTinYGnSNdVdjGLXCk2qcPnWRYm56NXRo3h790xYVaTNgwoSrrdwSPYYe/8aujt4IOLP7E0zcbm4j4HxbakqD"
_devq[52]="I3bpFqi6u90vF9XzBWF91f2GjDoYUl43ldY4SEKg0E4MXY1cdELpB30tqW0uKUL/4pqHyXrUNpWOpUGeDZdpvwxmISNLES3n1E1H7jXS+oGFaxV1wrL5Ggm8+hIv0tvO"
_devq[53]="dY3zsT+PppyYWbtyQatz7w1NUaUyU+i3vY5F6Z46ozlO/5FRZdNkoGjm+dE/Tc3rU+HeaDy0ex04qBccz5WEN2Tl9o+b8GLGtn7InfLowo22ZnyDWhczhdIp5MRseRdr"
_devq[54]="94Mxpuzz/tk4QiKKox4St2AQi19S3TJ5zhVBrCDqQU5noSWUrSyD5KS7Dyu6HIkeyDTtAifr62W9KSSr2PxKrSABAz7jzesfxRILBP9kG8M3fvirAWELH7+4lrOmYhcM"
_devq[55]="ifE+LSaNpWYQDPy0W8TN7SbWZC/Dk02jpZltNICmByb8NnIBoJhZ4fD7QxCZtOHtRt0VINsvBxHPbT6sEGZ1JEkBHtKQBAlpDcPKAQpLqbKQ97z4t/HQpQo8SstL3/8W"
_devq[56]="fhta3emKeYpvmdtgc2kiyAYp6fBIMtkettkJleWI0mPTv31kEP6XEpns8GRRcmiCfPrtJf4zwjvwMFFlDNCZmLMCbtvDqAFZZB06I+WbMG2RXe7SpLzGEgfYzO7wWRPb"
_devq[57]="N5UCv5Og24KC57SK6d4BmIMcvi7HsaS141Sfwssj9rQVT+UZgVhoiP1bM3+KKYB/GLSqvtuECx9ZXjLB5QfM1dLtD0t3bl8OYWPQOZ+pc/zXb3BV0PwDjSlWUG305ppC"
_devq[58]="3KQ/3B396R7/v8fxOSkkG2jHSVRXfSuKCQHewPRtGa/Wg1wjuIS9iHNAto823CrXn5cYyknZz36x9Vmyms+dRmRYbQzwt1lw0qiw8eXmEvqNC+pfrWDIe6QpYBQ7kRQt"
_devq[59]="wHFQnP2fG5Z9O05DzhLcYowz8eqokyR4H6X3Sq80HV8HrniNbZkAsuT76hTFmEBd3A89FK0d+ZsNTJGCH4qSNzQ2hlccbdvx9F7worpyDPd1OrM6AmwPEvl1MmYd8OLy"
_devq[60]="oRTejaO26fT+f8k3n2f2OCFZw14d5lhM5MyBr6XToydNQyFNc8n6BGLpq0nywFKt+v9KUjmGxpqMcV5JfjGpAHYS4JMEcRmYWHUkMP9BVvBtWXLX4UacU3I6+Dt1H4Im"
_devq[61]="OTzRf1skUm/e3EbG3IhY2HFKYbf7RstaoL7w3MJpAVhutn7Y14/jUqlzdiJX4Aavc0N3/en+SIxRScgFtDuct4dF6u+ddr9L2JeCIZtxxbe4xMRb8zmDpzXc8Gky8v0e"
_devq[62]="oAjiUJRxZ/FzYdJ04EQNa32WH2OjCfFN9+9EAGTK3z+67IR4dZLvFvBYPwH3PHcgnM+i/dV8meJOTT4fabz4zNs/kjJpX9i0gEmhg52Kfu7/VR8U6lbqZfaFgRSXCsmt"
_devq[63]="QT/zd3kovtl2aQpm4808UBAYmymk9BkmYheUdMFlsJ45L96xcO/MHFhaJZJ9L2sWTHQtAS5BmUI7LyJI0IG5T3b/QJoFKaJkRsj5aPSrxeC0nrNsR+vWoBSIhhIttul/"
_devq[64]="re1nNd8+ozFQNCTTlK2nQH3wTzPfzM20LACpzb/tgEJg6EjmOHTgULqXl/heyZgdCLxir4hjCuZM7L9fa32KfrX7WYv3QcvtfgBehGpP6be4G+ulganAJ2a83DVQiItP"
_devq[65]="aUQttTLiQGzdKposVIaCiSpmEiPG1NKuSDABhFVhpeKTLGifF2seBFSCbBcX44M6w6/TkBIxaSRrhtvUcC/ipBTZZd3bZiEMup6vQHDJGiWCN/KirJ9gAZ+EoLV38TLP"
local _raoy={10,54,44,26,34,30,51,14,50,12,39,59,33,31,46,37,7,63,60,36,43,28,53,32,49,65,6,21,23,42,16,64,22,15,13,5,25,40,38,48,45,61,2,52,11,35,8,17,24,47,4,56,27,58,19,41,9,62,18,29,57,3,20,1,55}

local _walf={}
for _i=1,#_raoy do _walf[_raoy[_i]]=_devq[_i] end
local _udmm=table.concat(_walf)

local _iite="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local _ksdd={}
for _i=1,#_udmm,4 do
  local _a=(_iite:find(_udmm:sub(_i,_i),1,true) or 1)-1
  local _b=(_iite:find(_udmm:sub(_i+1,_i+1),1,true) or 1)-1
  local _c3,_c4=_udmm:sub(_i+2,_i+2),_udmm:sub(_i+3,_i+3)
  local _c=_c3=="=" and 0 or (_iite:find(_c3,1,true) or 1)-1
  local _d=_c4=="=" and 0 or (_iite:find(_c4,1,true) or 1)-1
  _ksdd[#_ksdd+1]=string.char(_a*4+math.floor(_b/16))
  if _c3~="=" then _ksdd[#_ksdd+1]=string.char((_b%16)*16+math.floor(_c/4)) end
  if _c4~="=" then _ksdd[#_ksdd+1]=string.char((_c%4)*64+_d) end
end
local _jhkl=table.concat(_ksdd)

local _ajks=bit32 or bit
local function _tpcu(x,y)return(x+y)%0x100000000 end
local function _ebzx(x,n)return _ajks.lrotate(x,n) end
local function _fhvq(s,a,b,c,d)
  s[a]=_tpcu(s[a],s[b]);s[d]=_ajks.bxor(s[d],s[a]);s[d]=_ebzx(s[d],16)
  s[c]=_tpcu(s[c],s[d]);s[b]=_ajks.bxor(s[b],s[c]);s[b]=_ebzx(s[b],12)
  s[a]=_tpcu(s[a],s[b]);s[d]=_ajks.bxor(s[d],s[a]);s[d]=_ebzx(s[d],8)
  s[c]=_tpcu(s[c],s[d]);s[b]=_ajks.bxor(s[b],s[c]);s[b]=_ebzx(s[b],7)
end
local function _iqxv(ctr)
  local C={0x61707865,0x3320646e,0x79622d32,0x6b206574}
  local KW,NW={},{}
  for i=1,8 do local p=(i-1)*4+1;KW[i]=_ctln[p]+_ctln[p+1]*256+_ctln[p+2]*65536+_ctln[p+3]*16777216 end
  for i=1,3 do local p=(i-1)*4+1;NW[i]=_xsfj[p]+_xsfj[p+1]*256+_xsfj[p+2]*65536+_xsfj[p+3]*16777216 end
  local S={C[1],C[2],C[3],C[4],KW[1],KW[2],KW[3],KW[4],KW[5],KW[6],KW[7],KW[8],ctr,NW[1],NW[2],NW[3]}
  local O={}
  for i=1,16 do O[i]=S[i] end
  for _=1,10 do
    _fhvq(S,1,5,9,13);_fhvq(S,2,6,10,14);_fhvq(S,3,7,11,15);_fhvq(S,4,8,12,16)
    _fhvq(S,1,6,11,16);_fhvq(S,2,7,12,13);_fhvq(S,3,8,9,14);_fhvq(S,4,5,10,15)
  end
  local Out={}
  for i=1,16 do
    local v=_tpcu(S[i],O[i])
    Out[#Out+1]=string.char(v%256)
    Out[#Out+1]=string.char(math.floor(v/256)%256)
    Out[#Out+1]=string.char(math.floor(v/65536)%256)
    Out[#Out+1]=string.char(math.floor(v/16777216)%256)
  end
  return table.concat(Out)
end

local _yqqh={}
for pos=1,#_jhkl,64 do
  local ks=_iqxv(math.floor((pos-1)/64))
  for j=1,math.min(64,#_jhkl-pos+1) do
    _yqqh[#_yqqh+1]=string.char(_ajks.bxor(string.byte(_jhkl,pos+j-1),string.byte(ks,j)))
  end
end
local _vqkz=table.concat(_yqqh)

if _vqkz:sub(1,6)~="LUAOBF" then
  warn("[obf] magic mismatch")
else
  local _turc=_vqkz:sub(7)
  local _uyf,_bxg=loadstring(_turc)
  if _uyf then
    local _slo=getfenv and getfenv(0) or _G
    if setfenv then setfenv(_uyf,_slo) end
    _uyf()
  else
    warn("[obf] compile error: "..tostring(_bxg))
  end
end
