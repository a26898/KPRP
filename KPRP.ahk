#SingleInstance Force
#NoEnv

ReadIniValues(prefix, iniFile, maxIndex) {
    Loop, %maxIndex%
    {
        idx := A_Index * 10 + 1
        varName := idx . prefix
        IniRead, %varName%, %iniFile%, Edit, %varName%
        ; Здесь можно, например, MsgBox, или обработка полученного varName
    }
}

; Вызовы функции
ReadIniValues("DUVD7", "C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD.ini", 28)
ReadIniValues("Redakt", "C:\ProgramData\KPRP\KPRP-main\Redaktor.ini", 50)
ReadIniValues("MZ7", "C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini", 28)
ReadIniValues("GIBDD7", "C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini", 28)


odinMZ7 = %11MZ7%
dvaMZ7 = %21MZ7%
triMZ7 = %31MZ7%
chetireMZ7 = %41MZ7%
pyatMZ7 = %51MZ7%
shestMZ7 = %61MZ7%
semMZ7 = %71MZ7%
vosemMZ7 = %81MZ7%
devyatMZ7 = %91MZ7%
desyatMZ7 = %101MZ7%
odinadcatMZ7 = %111MZ7%
dvinadcatMZ7 = %121MZ7%
trinadcatMZ7 = %131MZ7%
chetirnadcatMZ7 = %141MZ7%
pyatnadcatMZ7 = %151MZ7%
shestnadcatMZ7 = %161MZ7%
semnagcatMZ7 = %171MZ7%
vosemnagcatMZ7 = %181MZ7%
devyatnadcatMZ7 = %191MZ7%
dvadcatMZ7 = %201MZ7%
dvadcatodinMZ7 = %211MZ7%
dvadcatdvaMZ7 = %221MZ7%
dvadcattriMZ7 = %231MZ7%
dvadcatchetireMZ7 = %241MZ7%
dvadcatpyatMZ7 = %251MZ7%
dvadcatshestMZ7 = %261MZ7%
dvadcatsemMZ7 = %271MZ7%
dvadcatvosemMZ7 = %281MZ7%

odinGIBDD7 = %11GIBDD7%
dvaGIBDD7 = %21GIBDD7%
triGIBDD7 = %31GIBDD7%
chetireGIBDD7 = %41GIBDD7%
pyatGIBDD7 = %51GIBDD7%
shestGIBDD7 = %61GIBDD7%
semGIBDD7 = %71GIBDD7%
vosemGIBDD7 = %81GIBDD7%
devyatGIBDD7 = %91GIBDD7%
desyatGIBDD7 = %101GIBDD7%
odinadcatGIBDD7 = %111GIBDD7%
dvinadcatGIBDD7 = %121GIBDD7%
trinadcatGIBDD7 = %131GIBDD7%
chetirnadcatGIBDD7 = %141GIBDD7%
pyatnadcatGIBDD7 = %151GIBDD7%
shestnadcatGIBDD7 = %161GIBDD7%
semnagcatGIBDD7 = %171GIBDD7%
vosemnagcatGIBDD7 = %181GIBDD7%
devyatnadcatGIBDD7 = %191GIBDD7%
dvadcatGIBDD7 = %201GIBDD7%
dvadcatodinGIBDD7 = %211GIBDD7%
dvadcatdvaGIBDD7 = %221GIBDD7%
dvadcattriGIBDD7 = %231GIBDD7%
dvadcatchetireGIBDD7 = %241GIBDD7%
dvadcatpyatGIBDD7 = %251GIBDD7%
dvadcatshestGIBDD7 = %261GIBDD7%
dvadcatsemGIBDD7 = %271GIBDD7%
dvadcatvosemGIBDD7 = %281GIBDD7%

odinDUVD7 = %11DUVD7%
dvaDUVD7 = %21DUVD7%
triDUVD7 = %31DUVD7%
chetireDUVD7 = %41DUVD7%
pyatDUVD7 = %51DUVD7%
shestDUVD7 = %61DUVD7%
semDUVD7 = %71DUVD7%
vosemDUVD7 = %81DUVD7%
devyatDUVD7 = %91DUVD7%
desyatDUVD7 = %101DUVD7%
odinadcatDUVD7 = %111DUVD7%
dvinadcatDUVD7 = %121DUVD7%
trinadcatDUVD7 = %131DUVD7%
chetirnadcatDUVD7 = %141DUVD7%
pyatnadcatDUVD7 = %151DUVD7%
shestnadcatDUVD7 = %161DUVD7%
semnagcatDUVD7 = %171DUVD7%
vosemnagcatDUVD7 = %181DUVD7%
devyatnadcatDUVD7 = %191DUVD7%
dvadcatDUVD7 = %201DUVD7%
dvadcatodinDUVD7 = %211DUVD7%
dvadcatdvaDUVD7 = %221DUVD7%
dvadcattriDUVD7 = %231DUVD7%
dvadcatchetireDUVD7 = %241DUVD7%
dvadcatpyatDUVD7 = %251DUVD7%
dvadcatshestDUVD7 = %261DUVD7%
dvadcatsemDUVD7 = %271DUVD7%
dvadcatvosemDUVD7 = %281DUVD7%

odinRedakt = %11Redakt%
dvaRedakt = %21Redakt%
triRedakt = %31Redakt%
chetireRedakt = %41Redakt%
pyatRedakt = %51Redakt%
shestRedakt = %61Redakt%
semRedakt = %71Redakt%
vosemRedakt = %81Redakt%
devyatRedakt = %91Redakt%
desyatRedakt = %101Redakt%
odinadcatRedakt = %111Redakt%
dvinadcatRedakt = %121Redakt%
trinadcatRedakt = %131Redakt%
chetirnadcatRedakt = %141Redakt%
pyatnadcatRedakt = %151Redakt%
shestnadcatRedakt = %161Redakt%
semnagcatRedakt = %171Redakt%
vosemnagcatRedakt = %181Redakt%
devyatnadcatRedakt = %191Redakt%
dvadcatRedakt = %201Redakt%
dvadcatodinRedakt = %211Redakt%
dvadcatdvaRedakt = %221Redakt%
dvadcattriRedakt = %231Redakt%
dvadcatchetireRedakt = %241Redakt%
dvadcatpyatRedakt = %251Redakt%
dvadcatshestRedakt = %261Redakt%
dvadcatsemRedakt = %271Redakt%
dvadcatvosemRedakt = %281Redakt%
dvadcatdevyatRedakt = %291Redakt%
tricatRedakt = %301Redakt%
tricatodinRedakt = %311Redakt%
tricatdvaRedakt = %321Redakt%
tricatctriRedakt = %331Redakt%
tricathetireRedakt = %341Redakt%
tricatpyatRedakt = %351Redakt%
tricatshestRedakt = %361Redakt%
tricatsemRedakt = %371Redakt%
tricatvosemRedakt = %381Redakt%
tricatdevyatRedakt = %391Redakt%
corokRedakt = %401Redakt%
corokodinRedakt = %411Redakt%
corokdvaRedakt = %421Redakt%
coroktriRedakt = %431Redakt%
corokhetireRedakt = %441Redakt%
corokpyatRedakt = %451Redakt%
corokshestRedakt = %461Redakt%
coroksemRedakt = %471Redakt%
corokvosemRedakt = %481Redakt%
corokdevyatRedakt = %491Redakt%
pyatdesyatRedakt = %501Redakt%


Hotkey, %odinDUVD7%, Off, UseErrorLevel
Hotkey, %dvaDUVD7%, Off, UseErrorLevel
Hotkey, %triDUVD7%, Off, UseErrorLevel
Hotkey, %chetireDUVD7%, Off, UseErrorLevel
Hotkey, %pyatDUVD7%, Off, UseErrorLevel
Hotkey, %shestDUVD7%, Off, UseErrorLevel
Hotkey, %semDUVD7%, Off, UseErrorLevel
Hotkey, %vosemDUVD7%, Off, UseErrorLevel
Hotkey, %devyatDUVD7%, Off, UseErrorLevel
Hotkey, %desyatDUVD7%, Off, UseErrorLevel
Hotkey, %odinadcatDUVD7%, Off, UseErrorLevel
Hotkey, %dvinadcatDUVD7%, Off, UseErrorLevel
Hotkey, %trinadcatDUVD7%, Off, UseErrorLevel
Hotkey, %chetirnadcatDUVD7%, Off, UseErrorLevel
Hotkey, %pyatnadcatDUVD7%, Off, UseErrorLevel
Hotkey, %shestnadcatDUVD7%, Off, UseErrorLevel
Hotkey, %semnagcatDUVD7%, Off, UseErrorLevel
Hotkey, %vosemnagcatDUVD7%, Off, UseErrorLevel
Hotkey, %devyatnadcatDUVD7%, Off, UseErrorLevel
Hotkey, %dvadcatDUVD7%, Off, UseErrorLevel
Hotkey, %dvadcatodinDUVD7%, Off, UseErrorLevel
Hotkey, %dvadcatdvaDUVD7%, Off, UseErrorLevel
Hotkey, %dvadcattriDUVD7%, Off, UseErrorLevel
Hotkey, %dvadcatchetireDUVD7%, Off, UseErrorLevel
Hotkey, %dvadcatpyatDUVD7%, Off, UseErrorLevel
Hotkey, %dvadcatshestDUVD7%, Off, UseErrorLevel
Hotkey, %dvadcatsemDUVD7%, Off, UseErrorLevel
Hotkey, %dvadcatvosemDUVD7%, Off, UseErrorLevel


Hotkey, %odinMZ7%, Off, UseErrorLevel
Hotkey, %dvaMZ7%, Off, UseErrorLevel
Hotkey, %triMZ7%, Off, UseErrorLevel
Hotkey, %chetireMZ7%, Off, UseErrorLevel
Hotkey, %pyatMZ7%, Off, UseErrorLevel
Hotkey, %shestMZ7%, Off, UseErrorLevel
Hotkey, %semMZ7%, Off, UseErrorLevel
Hotkey, %vosemMZ7%, Off, UseErrorLevel
Hotkey, %devyatMZ7%, Off, UseErrorLevel
Hotkey, %desyatMZ7%, Off, UseErrorLevel
Hotkey, %odinadcatMZ7%, Off, UseErrorLevel
Hotkey, %dvinadcatMZ7%, Off, UseErrorLevel
Hotkey, %trinadcatMZ7%, Off, UseErrorLevel
Hotkey, %chetirnadcatMZ7%, Off, UseErrorLevel
Hotkey, %pyatnadcatMZ7%, Off, UseErrorLevel
Hotkey, %shestnadcatMZ7%, Off, UseErrorLevel
Hotkey, %semnagcatMZ7%, Off, UseErrorLevel
Hotkey, %vosemnagcatMZ7%, Off, UseErrorLevel
Hotkey, %devyatnadcatMZ7%, Off, UseErrorLevel
Hotkey, %dvadcatMZ7%, Off, UseErrorLevel
Hotkey, %dvadcatodinMZ7%, Off, UseErrorLevel
Hotkey, %dvadcatdvaMZ7%, Off, UseErrorLevel
Hotkey, %dvadcattriMZ7%, Off, UseErrorLevel
Hotkey, %dvadcatchetireMZ7%, Off, UseErrorLevel
Hotkey, %dvadcatpyatMZ7%, Off, UseErrorLevel
Hotkey, %dvadcatshestMZ7%, Off, UseErrorLevel
Hotkey, %dvadcatsemMZ7%, Off, UseErrorLevel
Hotkey, %dvadcatvosemMZ7%, Off, UseErrorLevel

Hotkey, %odinGIBDD7%, Off, UseErrorLevel
Hotkey, %dvaGIBDD7%, Off, UseErrorLevel
Hotkey, %triGIBDD7%, Off, UseErrorLevel
Hotkey, %chetireGIBDD7%, Off, UseErrorLevel
Hotkey, %pyatGIBDD7%, Off, UseErrorLevel
Hotkey, %shestGIBDD7%, Off, UseErrorLevel
Hotkey, %semGIBDD7%, Off, UseErrorLevel
Hotkey, %vosemGIBDD7%, Off, UseErrorLevel
Hotkey, %devyatGIBDD7%, Off, UseErrorLevel
Hotkey, %desyatGIBDD7%, Off, UseErrorLevel
Hotkey, %odinadcatGIBDD7%, Off, UseErrorLevel
Hotkey, %dvinadcatGIBDD7%, Off, UseErrorLevel
Hotkey, %trinadcatGIBDD7%, Off, UseErrorLevel
Hotkey, %chetirnadcatGIBDD7%, Off, UseErrorLevel
Hotkey, %pyatnadcatGIBDD7%, Off, UseErrorLevel
Hotkey, %shestnadcatGIBDD7%, Off, UseErrorLevel
Hotkey, %semnagcatGIBDD7%, Off, UseErrorLevel
Hotkey, %vosemnagcatGIBDD7%, Off, UseErrorLevel
Hotkey, %devyatnadcatGIBDD7%, Off, UseErrorLevel
Hotkey, %dvadcatGIBDD7%, Off, UseErrorLevel
Hotkey, %dvadcatodinGIBDD7%, Off, UseErrorLevel
Hotkey, %dvadcatdvaGIBDD7%, Off, UseErrorLevel
Hotkey, %dvadcattriGIBDD7%, Off, UseErrorLevel
Hotkey, %dvadcatchetireGIBDD7%, Off, UseErrorLevel
Hotkey, %dvadcatpyatGIBDD7%, Off, UseErrorLevel
Hotkey, %dvadcatshestGIBDD7%, Off, UseErrorLevel
Hotkey, %dvadcatsemGIBDD7%, Off, UseErrorLevel
Hotkey, %dvadcatvosemGIBDD7%, Off, UseErrorLevel


Hotkey, %odinRedakt%, Off, UseErrorLevel
Hotkey, %dvaRedakt%, Off, UseErrorLevel
Hotkey, %triRedakt%, Off, UseErrorLevel
Hotkey, %chetireRedakt%, Off, UseErrorLevel
Hotkey, %pyatRedakt%, Off, UseErrorLevel
Hotkey, %shestRedakt%, Off, UseErrorLevel
Hotkey, %semRedakt%, Off, UseErrorLevel
Hotkey, %vosemRedakt%, Off, UseErrorLevel
Hotkey, %devyatRedakt%, Off, UseErrorLevel
Hotkey, %desyatRedakt%, Off, UseErrorLevel
Hotkey, %odinadcatRedakt%, Off, UseErrorLevel
Hotkey, %dvinadcatRedakt%, Off, UseErrorLevel
Hotkey, %trinadcatRedakt%, Off, UseErrorLevel
Hotkey, %chetirnadcatRedakt%, Off, UseErrorLevel
Hotkey, %pyatnadcatRedakt%, Off, UseErrorLevel
Hotkey, %shestnadcatRedakt%, Off, UseErrorLevel
Hotkey, %semnagcatRedakt%, Off, UseErrorLevel
Hotkey, %vosemnagcatRedakt%, Off, UseErrorLevel
Hotkey, %devyatnadcatRedakt%, Off, UseErrorLevel
Hotkey, %dvadcatRedakt%, Off, UseErrorLevel
Hotkey, %dvadcatodinRedakt%, Off, UseErrorLevel
Hotkey, %dvadcatdvaRedakt%, Off, UseErrorLevel
Hotkey, %dvadcattriRedakt%, Off, UseErrorLevel
Hotkey, %dvadcatchetireRedakt%, Off, UseErrorLevel
Hotkey, %dvadcatpyatRedakt%, Off, UseErrorLevel
Hotkey, %dvadcatshestRedakt%, Off, UseErrorLevel
Hotkey, %dvadcatsemRedakt%, Off, UseErrorLevel
Hotkey, %dvadcatvosemRedakt%, Off, UseErrorLevel
Hotkey, %dvadcatdevyatRedakt%, Off, UseErrorLevel
Hotkey, %tricatRedakt%, Off, UseErrorLevel
Hotkey, %tricatodinRedakt%, Off, UseErrorLevel
Hotkey, %tricatdvaRedakt%, Off, UseErrorLevel
Hotkey, %tricatctriRedakt%, Off, UseErrorLevel
Hotkey, %tricathetireRedakt%, Off, UseErrorLevel
Hotkey, %tricatpyatRedakt%, Off, UseErrorLevel
Hotkey, %tricatshestRedakt%, Off, UseErrorLevel
Hotkey, %tricatsemRedakt%, Off, UseErrorLevel
Hotkey, %tricatvosemRedakt%, Off, UseErrorLevel
Hotkey, %tricatdevyatRedakt%, Off, UseErrorLevel
Hotkey, %corokRedakt%, Off, UseErrorLevel
Hotkey, %corokodinRedakt%, Off, UseErrorLevel
Hotkey, %corokdvaRedakt%, Off, UseErrorLevel
Hotkey, %coroktriRedakt%, Off, UseErrorLevel
Hotkey, %corokhetireRedakt%, Off, UseErrorLevel
Hotkey, %corokpyatRedakt%, Off, UseErrorLevel
Hotkey, %corokshestRedakt%, Off, UseErrorLevel
Hotkey, %coroksemRedakt%, Off, UseErrorLevel
Hotkey, %corokvosemRedakt%, Off, UseErrorLevel
Hotkey, %corokdevyatRedakt%, Off, UseErrorLevel
Hotkey, %pyatdesyatRedakt%, Off, UseErrorLevel


Gui, Submit, NoHide
Hotkey, %odinMZ7%, 0001MZ7, On, UseErrorLevel
Hotkey, %dvaMZ7%, 0002MZ7, On, UseErrorLevel
Hotkey, %triMZ7%, 0003MZ7, On, UseErrorLevel
Hotkey, %chetireMZ7%, 0004MZ7, On, UseErrorLevel
Hotkey, %pyatMZ7%, 0005MZ7, On, UseErrorLevel
Hotkey, %shestMZ7%, 0006MZ7, On, UseErrorLevel
Hotkey, %semMZ7%, 0007MZ7, On, UseErrorLevel
Hotkey, %vosemMZ7%, 0008MZ7, On, UseErrorLevel
Hotkey, %devyatMZ7%, 0009MZ7, On, UseErrorLevel
Hotkey, %desyatMZ7%, 0010MZ7, On, UseErrorLevel
Hotkey, %odinadcatMZ7%, 0011MZ7, On, UseErrorLevel
Hotkey, %dvinadcatMZ7%, 0012MZ7, On, UseErrorLevel
Hotkey, %trinadcatMZ7%, 0013MZ7, On, UseErrorLevel
Hotkey, %chetirnadcatMZ7%, 0014MZ7, On, UseErrorLevel
Hotkey, %pyatnadcatMZ7%, 0015MZ7, UseErrorLevel
Hotkey, %shestnadcatMZ7%, 0016MZ7, On, UseErrorLevel
Hotkey, %semnagcatMZ7%, 0017MZ7, On, UseErrorLevel
Hotkey, %vosemnagcatMZ7%, 0018MZ7, On, UseErrorLevel
Hotkey, %devyatnadcatMZ7%, 0019MZ7, On, UseErrorLevel
Hotkey, %dvadcatMZ7%, 0020MZ7, On, UseErrorLevel
Hotkey, %dvadcatodinMZ7%, 0021MZ7, On, UseErrorLevel
Hotkey, %dvadcatdvaMZ7%, 0022MZ7, On, UseErrorLevel
Hotkey, %dvadcattriMZ7%, 0023MZ7, On, UseErrorLevel
Hotkey, %dvadcatchetireMZ7%, 0024MZ7, On, UseErrorLevel
Hotkey, %dvadcatpyatMZ7%, 0025MZ7, On, UseErrorLevel
Hotkey, %dvadcatshestMZ7%, 0026MZ7, On, UseErrorLevel
Hotkey, %dvadcatsemMZ7%, 0027MZ7, On, UseErrorLevel
Hotkey, %dvadcatvosemMZ7%, 0028MZ7, On, UseErrorLevel


Hotkey, %odinGIBDD7%, 0001GIBDD7, On, UseErrorLevel
Hotkey, %dvaGIBDD7%, 0002GIBDD7, On, UseErrorLevel
Hotkey, %triGIBDD7%, 0003GIBDD7, On, UseErrorLevel
Hotkey, %chetireGIBDD7%, 0004GIBDD7, On, UseErrorLevel
Hotkey, %pyatGIBDD7%, 0005GIBDD7, On, UseErrorLevel
Hotkey, %shestGIBDD7%, 0006GIBDD7, On, UseErrorLevel
Hotkey, %semGIBDD7%, 0007GIBDD7, On, UseErrorLevel
Hotkey, %vosemGIBDD7%, 0008GIBDD7, On, UseErrorLevel
Hotkey, %devyatGIBDD7%, 0009GIBDD7, On, UseErrorLevel
Hotkey, %desyatGIBDD7%, 0010GIBDD7, On, UseErrorLevel
Hotkey, %odinadcatGIBDD7%, 0011GIBDD7, On, UseErrorLevel
Hotkey, %dvinadcatGIBDD7%, 0012GIBDD7, On, UseErrorLevel
Hotkey, %trinadcatGIBDD7%, 0013GIBDD7, On, UseErrorLevel
Hotkey, %chetirnadcatGIBDD7%, 0014GIBDD7, On, UseErrorLevel
Hotkey, %pyatnadcatGIBDD7%, 0015GIBDD7, UseErrorLevel
Hotkey, %shestnadcatGIBDD7%, 0016GIBDD7, On, UseErrorLevel
Hotkey, %semnagcatGIBDD7%, 0017GIBDD7, On, UseErrorLevel
Hotkey, %vosemnagcatGIBDD7%, 0018GIBDD7, On, UseErrorLevel
Hotkey, %devyatnadcatGIBDD7%, 0019GIBDD7, On, UseErrorLevel
Hotkey, %dvadcatGIBDD7%, 0020GIBDD7, On, UseErrorLevel
Hotkey, %dvadcatodinGIBDD7%, 0021GIBDD7, On, UseErrorLevel
Hotkey, %dvadcatdvaGIBDD7%, 0022GIBDD7, On, UseErrorLevel
Hotkey, %dvadcattriGIBDD7%, 0023GIBDD7, On, UseErrorLevel
Hotkey, %dvadcatchetireGIBDD7%, 0024GIBDD7, On, UseErrorLevel
Hotkey, %dvadcatpyatGIBDD7%, 0025GIBDD7, On, UseErrorLevel
Hotkey, %dvadcatshestGIBDD7%, 0026GIBDD7, On, UseErrorLevel
Hotkey, %dvadcatsemGIBDD7%, 0027GIBDD7, On, UseErrorLevel
Hotkey, %dvadcatvosemGIBDD7%, 0028GIBDD7, On, UseErrorLevel


Hotkey, %odinDUVD7%, 0001DUVD7, On, UseErrorLevel
Hotkey, %dvaDUVD7%, 0002DUVD7, On, UseErrorLevel
Hotkey, %triDUVD7%, 0003DUVD7, On, UseErrorLevel
Hotkey, %chetireDUVD7%, 0004DUVD7, On, UseErrorLevel
Hotkey, %pyatDUVD7%, 0005DUVD7, On, UseErrorLevel
Hotkey, %shestDUVD7%, 0006DUVD7, On, UseErrorLevel
Hotkey, %semDUVD7%, 0007DUVD7, On, UseErrorLevel
Hotkey, %vosemDUVD7%, 0008DUVD7, On, UseErrorLevel
Hotkey, %devyatDUVD7%, 0009DUVD7, On, UseErrorLevel
Hotkey, %desyatDUVD7%, 0010DUVD7, On, UseErrorLevel
Hotkey, %odinadcatDUVD7%, 0011DUVD7, On, UseErrorLevel
Hotkey, %dvinadcatDUVD7%, 0012DUVD7, On, UseErrorLevel
Hotkey, %trinadcatDUVD7%, 0013DUVD7, On, UseErrorLevel
Hotkey, %chetirnadcatDUVD7%, 0014DUVD7, On, UseErrorLevel
Hotkey, %pyatnadcatDUVD7%, 0015DUVD7, UseErrorLevel
Hotkey, %shestnadcatDUVD7%, 0016DUVD7, On, UseErrorLevel
Hotkey, %semnagcatDUVD7%, 0017DUVD7, On, UseErrorLevel
Hotkey, %vosemnagcatDUVD7%, 0018DUVD7, On, UseErrorLevel
Hotkey, %devyatnadcatDUVD7%, 0019DUVD7, On, UseErrorLevel
Hotkey, %dvadcatDUVD7%, 0020DUVD7, On, UseErrorLevel
Hotkey, %dvadcatodinDUVD7%, 0021DUVD7, On, UseErrorLevel
Hotkey, %dvadcatdvaDUVD7%, 0022DUVD7, On, UseErrorLevel
Hotkey, %dvadcattriDUVD7%, 0023DUVD7, On, UseErrorLevel
Hotkey, %dvadcatchetireDUVD7%, 0024, On, UseErrorLevel
Hotkey, %dvadcatpyatDUVD7%, 0025DUVD7, On, UseErrorLevel
Hotkey, %dvadcatshestDUVD7%, 0026DUVD7, On, UseErrorLevel
Hotkey, %dvadcatsemDUVD7%, 0027DUVD7, On, UseErrorLevel
Hotkey, %dvadcatvosemDUVD7%, 0028DUVD7, On, UseErrorLevel

Hotkey, %odinRedakt%, 0001Redakt, On, UseErrorLevel
Hotkey, %dvaRedakt%, 0002Redakt, On, UseErrorLevel
Hotkey, %triRedakt%, 0003Redakt, On, UseErrorLevel
Hotkey, %chetireRedakt%, 0004Redakt, On, UseErrorLevel
Hotkey, %pyatRedakt%, 0005Redakt, On, UseErrorLevel
Hotkey, %shestRedakt%, 0006Redakt, On, UseErrorLevel
Hotkey, %semRedakt%, 0007Redakt, On, UseErrorLevel
Hotkey, %vosemRedakt%, 0008Redakt, On, UseErrorLevel
Hotkey, %devyatRedakt%, 0009Redakt, On, UseErrorLevel
Hotkey, %desyatRedakt%, 0010Redakt, On, UseErrorLevel
Hotkey, %odinadcatRedakt%, 0011Redakt, On, UseErrorLevel
Hotkey, %dvinadcatRedakt%, 0012Redakt, On, UseErrorLevel
Hotkey, %trinadcatRedakt%, 0013Redakt, On, UseErrorLevel
Hotkey, %chetirnadcatRedakt%, 0014Redakt, On, UseErrorLevel
Hotkey, %pyatnadcatRedakt%, 0015Redakt, UseErrorLevel
Hotkey, %shestnadcatRedakt%, 0016Redakt, On, UseErrorLevel
Hotkey, %semnagcatRedakt%, 0017Redakt, On, UseErrorLevel
Hotkey, %vosemnagcatRedakt%, 0018Redakt, On, UseErrorLevel
Hotkey, %devyatnadcatRedakt%, 0019Redakt, On, UseErrorLevel
Hotkey, %dvadcatRedakt%, 0020Redakt, On, UseErrorLevel
Hotkey, %dvadcatodinRedakt%, 0021Redakt, On, UseErrorLevel
Hotkey, %dvadcatdvaRedakt%, 0022Redakt, On, UseErrorLevel
Hotkey, %dvadcattriRedakt%, 0023Redakt, On, UseErrorLevel
Hotkey, %dvadcatchetireRedakt%, 0024, On, UseErrorLevel
Hotkey, %dvadcatpyatRedakt%, 0025Redakt, On, UseErrorLevel
Hotkey, %dvadcatshestRedakt%, 0026Redakt, On, UseErrorLevel
Hotkey, %dvadcatsemRedakt%, 0027Redakt, On, UseErrorLevel
Hotkey, %dvadcatvosemRedakt%, 0028Redakt, On, UseErrorLevel
Hotkey, %dvadcatdevyatRedakt%, 0029Redakt, On, UseErrorLevel
Hotkey, %tricatRedakt%, 0030Redakt, On, UseErrorLevel
Hotkey, %tricatodinRedakt%, 0031Redakt, On, UseErrorLevel
Hotkey, %tricatdvaRedakt%, 0032Redakt, On, UseErrorLevel
Hotkey, %tricatctriRedakt%, 0033Redakt, On, UseErrorLevel
Hotkey, %tricathetireRedakt%, 0034Redakt, On, UseErrorLevel
Hotkey, %tricatpyatRedakt%, 0035Redakt, On, UseErrorLevel
Hotkey, %tricatshestRedakt%, 0036Redakt, On, UseErrorLevel
Hotkey, %tricatsemRedakt%, 0037Redakt, On, UseErrorLevel
Hotkey, %tricatvosemRedakt%, 0038Redakt, On, UseErrorLevel
Hotkey, %tricatdevyatRedakt%, 0039Redakt, On, UseErrorLevel
Hotkey, %corokRedakt%, 0040Redakt, On, UseErrorLevel
Hotkey, %corokodinRedakt%, 0041Redakt, On, UseErrorLevel
Hotkey, %corokdvaRedakt%, 0042Redakt, On, UseErrorLevel
Hotkey, %coroktriRedakt%, 0043Redakt, On, UseErrorLevel
Hotkey, %corokhetireRedakt%, 0044Redakt, On, UseErrorLevel
Hotkey, %corokpyatRedakt%, 0045Redakt, On, UseErrorLevel
Hotkey, %corokshestRedakt%, 0046Redakt, On, UseErrorLevel
Hotkey, %coroksemRedakt%, 0047Redakt, On, UseErrorLevel
Hotkey, %corokvosemRedakt%, 0048Redakt, On, UseErrorLevel
Hotkey, %corokdevyatRedakt%, 0049Redakt, On, UseErrorLevel
Hotkey, %pyatdesyatRedakt%, 0050Redakt, On, UseErrorLevel



odin = %11% & %12%
dva = %21% & %22%
tri = %31% & %32%
chetire = %41% & %42%
pyat = %51% & %52%
shest = %61% & %62%
sem = %71% & %72%
vosem = %81% & %82%
devyat = %91% & %92%
desyat = %101% & %102%
odinadcat = %111% & %112%
dvinadcat = %121% & %122%
trinadcat = %131% & %132%
chetirnadcat = %141% & %142%
pyatnadcat = %151% & %152%
shestnadcat = %161% & %162%
semnagcat = %171% & %172%
vosemnagcat = %181% & %182%
devyatnadcat = %191% & %192%
dvadcat = %201% & %202%
dvadcatodin = %211% & %212%
dvadcatdva = %221% & %222%
dvadcattri = %231% & %232%
dvadcatchetire = %241% & %242%
dvadcatpyat = %251% & %252%
dvadcatshest = %261% & %262%
dvadcatsem = %271% & %272%
dvadcatvosem = %281% & %282%
dvadcatdevyat = %291% & %292%
tricat = %301% & %302%
tricatodin = %311% & %312%
tricatdva = %321% & %322%
tricatctri = %331% & %332%
tricathetire = %341% & %342%
tricatpyat = %351% & %352%
tricatshest = %361% & %362%
tricatsem = %371% & %372%
tricatvosem = %381% & %382%
tricatdevyat = %391% & %392%
corok = %401% & %402%
corokodin = %411% & %412%
corokdva = %421% & %422%
coroktri = %431% & %432%
corokhetire = %441% & %442%
corokpyat = %451% & %452%
corokshest = %461% & %462%
coroksem = %471% & %472%
corokvosem = %481% & %482%
corokdevyat = %491% & %492%
pyatdesyat = %501% & %502%
pyatdesyatodin = %511% & %512%
pyatdesyatdva = %521% & %522%
pyatdesyattri = %531% & %532%
pyatdesyathetire = %541% & %542%
pyatdesyatpyat = %551% & %552%
pyatdesyatshest = %561% & %562%
pyatdesyatsem = %571% & %572%
pyatdesyatvosem = %581% & %582%
pyatdesyatdevyat = %591% & %592%
shestdesyat = %601% & %602%
shestdesyatodin = %611% & %612%
shestdesyatdva = %621% & %622%
shestdesyattri = %631% & %632%
shestdesyathetire = %641% & %642%
shestdesyatpyat = %651% & %652%
shestdesyatshest = %661% & %662%
shestdesyatsem = %671% & %672%
shestdesyatvosem = %681% & %682%
shestdesyatdevyat = %691% & %692%
semdesyat = %701% & %702%
semdesyatodin = %711% & %712%
semdesyatdva = %721% & %722%
semdesyattri = %731% & %732%
semdesyathetire = %741% & %742%
semdesyatpyat = %751% & %752%
semdesyatshest = %761% & %762%
semdesyatsem = %771% & %772%
semdesyatvosem = %781% & %782%
semdesyatdevyat = %791% & %792%
vosemdesyat = %801% & %802%
vosemdesyatodin = %811% & %812%
vosemdesyatdva = %821% & %822%
vosemdesyattri = %831% & %832%
vosemdesyathetire = %841% & %842%
vosemdesyatpyat = %851% & %852%
vosemdesyatshest = %861% & %862%
vosemdesyatsem = %871% & %872%
vosemdesyatvosem = %881% & %882%
vosemdesyatdevyat = %891% & %892%
devynosto = %901% & %902%
devynostoodin = %911% & %912%
devynostodva = %921% & %922%
devynostotri = %931% & %932%
devynostohetire = %941% & %942%
devynostopyat = %951% & %952%
devynostoshest = %961% & %962%
devynostosem = %971% & %972%
devynostovosem = %981% & %982%
devynostodevyat = %991% & %992%
sto = %1001% & %1002%
stoodin = %1011% & %1012%
stodva = %1021% & %1022%
stootri = %1031% & %1032%
stohetire = %1041% & %1042%
stopyat = %1051% & %1052%
stoshest = %1061% & %1062%
stosem = %1071% & %1072%
stovosem = %1081% & %1082%
stodevyat = %1091% & %1092%
stodesyat = %1101% & %1102%
stoodinadcat = %1111% & %1112%
stodvinadcat = %1121% & %1122%
stotrinadcat = %1131% & %1132%
stochetirnadcat = %1141% & %1142%
stopyatnadcat = %1151% & %1152%
stoshestnadcat = %1161% & %1162%
stosemnagcat = %1171% & %1172%
stovosemnagcat = %1181% & %1182%
stodevyatnadcat = %1191% & %1192%
stodvadcat = %1201% & %1202%
stodvadcatodin = %1211% & %1212%
stodvadcatdva = %1221% & %1222%
stodvadcattri = %1231% & %1232%
stodvadcathetire = %1241% & %1242%
stodvadcatpyat = %1251% & %1252%
stodvadcatshest = %1261% & %1262%
stodvadcatsem = %1271% & %1272%
stodvadcatsem = %1281% & %1282%

Loop, 97 {
    IniRead, Svoye_%A_Index%, C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Slag, Svoye_%A_Index%
}

Loop, 50 {
    IniRead, SvoyeМZ_%A_Index%, C:\ProgramData\KPRP\KPRP-main\KPRPMZ.ini, Slag, SvoyeМZ_%A_Index%
}

Loop, 500 {
    IniRead, KPRPMZ%A_Index%, C:\ProgramData\KPRP\KPRP-main\KPRPMZ.ini, User, KPRPMZ%A_Index%
}

Loop, 50 {
    IniRead, SvoyeGIBDD_%A_Index%, C:\ProgramData\KPRP\KPRP-main\KPRPGIBDD.ini, Slag, SvoyeGIBDD_%A_Index%
}


Loop, 50 {
    IniRead, KPRPGIBDD%A_Index%, C:\ProgramData\KPRP\KPRP-main\KPRPGIBDD.ini, User, KPRPGIBDD%A_Index%
}


Loop, 97 {
    IniRead, Objects%A_Index%, C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, User, Objects%A_Index%
}


IniRead, JWI, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, JWI
IniRead, TAG, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, TAG
IniRead, Name, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, Name
IniRead, Surname, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, Surname
IniRead, Middle_Name, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, Middle_Name
IniRead, Bol_ro, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, Bol_ro
IniRead, pol, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, pol

IniRead, RankGIBDD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, RankGIBDD7
IniRead, SurnameGIBDD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, SurnameGIBDD7
IniRead, FamiliyaGIBDD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, FamiliyaGIBDD7
IniRead, OtdelGIBDD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, OtdelGIBDD7

IniRead, dolzhnostDUVD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, dolzhnostDUVD7
IniRead, rankDUVD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, rankDUVD7
IniRead, surnameDUVD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, surnameDUVD7
IniRead, CityDUVD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, CityDUVD7
IniRead, PozyvnoyDUVD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, PozyvnoyDUVD7
IniRead, TegDUVD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, TegDUVD7
IniRead, NameDUVD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, NameDUVD7
IniRead, OtchetskstoDUVD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, OtchetskstoDUVD7


IniRead, FonVybor, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, FonVybor
IniRead, Zaderzhka, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Zaderzhka
IniRead, Zaderzhka_lektsiya, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Zaderzhka_lektsiya
IniRead, Shrift, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Shrift
IniRead, Tsvet, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Tsvet
IniRead, Tsvet_1, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Tsvet_1
IniRead, Skrinshot, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Skrinshot
IniRead, SoundEnable, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, SoundEnable
IniRead, MaxMinutes, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, MaxMinutes
IniRead, Taymer_Nastroyka, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Taymer_Nastroyka
IniRead, Tsvet_3, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Tsvet_3
IniRead, vybor, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, vybor
IniRead, userVybor, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, userVybor
IniRead, Skrin_1, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Skrin_1

IniRead, gameFolder, C:\ProgramData\KPRP\KPRP-main\Province.ini, Mta, gameFolder



if SvoyeМZ_1=ERROR
SvoyeМZ_1=Бейдж
if SvoyeМZ_2=ERROR
SvoyeМZ_2=За мной
if SvoyeМZ_3=ERROR
SvoyeМZ_3=На что жалуетесь?
if SvoyeМZ_4=ERROR
SvoyeМZ_4=Вопрос 1
if SvoyeМZ_5=ERROR
SvoyeМZ_5=Вопрос 2
if SvoyeМZ_6=ERROR
SvoyeМZ_6=Вопрос 3
if SvoyeМZ_7=ERROR
SvoyeМZ_7=Вопрос 4
if SvoyeМZ_8=ERROR
SvoyeМZ_8=Вопрос 5
if SvoyeМZ_9=ERROR
SvoyeМZ_9=Вопрос 6
if SvoyeМZ_10=ERROR
SvoyeМZ_10=Осмотор
if SvoyeМZ_11=ERROR
SvoyeМZ_11=Лечение
if SvoyeМZ_12=ERROR
SvoyeМZ_12=Лечения себя
if SvoyeМZ_13=ERROR
SvoyeМZ_13=Прощание
if SvoyeМZ_14=ERROR
SvoyeМZ_14=Отказ
if SvoyeМZ_15=ERROR
SvoyeМZ_15=Мегафон
if SvoyeМZ_16=ERROR
SvoyeМZ_16=Вкл.КПК
if SvoyeМZ_17=ERROR
SvoyeМZ_17=Выкл.КПК 
if SvoyeМZ_18=ERROR
SvoyeМZ_18=Иформация о медкарте 
if SvoyeМZ_19=ERROR
SvoyeМZ_19=Достать каталку  
if SvoyeМZ_20=ERROR
SvoyeМZ_20=Переложитьчеловека 
if SvoyeМZ_21=ERROR
SvoyeМZ_21=Убарть в АСМП 
if SvoyeМZ_22=ERROR
SvoyeМZ_22=Госпитализация 
if SvoyeМZ_23=ERROR
SvoyeМZ_23=Откат /r 
if SvoyeМZ_24=ERROR
SvoyeМZ_24=Откат /ro
if SvoyeМZ_25=ERROR
SvoyeМZ_25=Аптека (таблетка)

Loop, 500
{
    ; Генерируем название переменной, например, KPRPMZ1, KPRPMZ2 и т.д.
    varName := "KPRPMZ" A_Index
    
    ; Получаем значение переменной (если оно равно "ERROR")
    if %varName% = ERROR
    {
        ; Если значение ERROR, присваиваем путь
        %varName% := "C:\ProgramData\KPRP\KPRP-main\KPRP" A_Index "MZ.txt"
    }
}




if SvoyeGIBDD_1=ERROR
SvoyeGIBDD_1=Служебное удостоверение
if SvoyeGIBDD_2=ERROR
SvoyeGIBDD_2=Убрать /ud
if SvoyeGIBDD_3=ERROR
SvoyeGIBDD_3=Попросить ВУ
if SvoyeGIBDD_4=ERROR
SvoyeGIBDD_4=Взять ВУ
if SvoyeGIBDD_5=ERROR
SvoyeGIBDD_5=Объявление в розыск (через ГУВД)
if SvoyeGIBDD_6=ERROR
SvoyeGIBDD_6=Здравия желаю!
if SvoyeGIBDD_7=ERROR
SvoyeGIBDD_7=Пробить на штрафы
if SvoyeGIBDD_8=ERROR
SvoyeGIBDD_8=Пробить номер
if SvoyeGIBDD_9=ERROR
SvoyeGIBDD_9=Выписать штраф через БД
if SvoyeGIBDD_10=ERROR
SvoyeGIBDD_10=Аннулировать ВУ
if SvoyeGIBDD_11=ERROR
SvoyeGIBDD_11=wanted
if SvoyeGIBDD_12=ERROR
SvoyeGIBDD_12=сrimrec
if SvoyeGIBDD_13=ERROR
SvoyeGIBDD_13=fines 
if SvoyeGIBDD_14=ERROR 
SvoyeGIBDD_14=Установить личность
if SvoyeGIBDD_15=ERROR
SvoyeGIBDD_15=Прекращение конвоирования
if SvoyeGIBDD_16=ERROR
SvoyeGIBDD_16=Пешее преследование
if SvoyeGIBDD_17=ERROR
SvoyeGIBDD_17=Тауметр
if SvoyeGIBDD_18=ERROR
SvoyeGIBDD_18=Рация вкл.
if SvoyeGIBDD_19=ERROR
SvoyeGIBDD_19=Рация выкл.  
if SvoyeGIBDD_20=ERROR
SvoyeGIBDD_20=Пред.
if SvoyeGIBDD_21=ERROR
SvoyeGIBDD_21=Пед.в случае неповиновения 
if SvoyeGIBDD_22=ERROR
SvoyeGIBDD_22=Пед.приближающемся транспорте МВД
if SvoyeGIBDD_23=ERROR
SvoyeGIBDD_23=Заполнить протокол
if SvoyeGIBDD_24=ERROR
SvoyeGIBDD_24=Передать протокол 
if SvoyeGIBDD_25=ERROR
SvoyeGIBDD_25=Взять протокол

Loop, 28 {
    currentVar := "KPRPGIBDD" . A_Index
    if (%currentVar% = "ERROR")
        %currentVar% := "C:\ProgramData\KPRP\KPRP-main\KPRP" . A_Index . "GIBDD.txt"
}


Loop, 97 {
    currentVar := "Svoye_" . A_Index
    if (%currentVar% = "ERROR")
        %currentVar% := "Описание"
}


if RankGIBDD7=ERROR
RankGIBDD7=Не заполнено
if SurnameGIBDD7=ERROR
SurnameGIBDD7=Не заполнено
if FamiliyaGIBDD7=ERROR
FamiliyaGIBDD7=Не заполнено
if OtdelGIBDD7=ERROR
OtdelGIBDD7=Не заполнено

if dolzhnostDUVD7=ERROR
dolzhnostDUVD7=Не заполнено
if rankDUVD7=ERROR
rankDUVD7=Не заполнено
if CityDUVD7=ERROR
CityDUVD7=Не заполнено
if PozyvnoyDUVD7=ERROR
PozyvnoyDUVD7=Не заполнено
if surnameDUVD7=ERROR
surnameDUVD7=Не заполнено
if TegDUVD7=ERROR
TegDUVD7=Не заполнено
if NameDUVD7=ERROR
NameDUVD7=Не заполнено
if OtchetskstoDUVD7=ERROR
OtchetskstoDUVD7=Не заполнено


if JWI=ERROR
JWI=Студент
if TAG=ERROR
TAG=ГМУ
if Name=ERROR
Name=Не заполнено
if Surname=ERROR
Surname=Не заполнено
if Middle_Name=ERROR
Middle_Name=Не заполнено
if Bol_ro=ERROR
Bol_ro=Приволжск
if Zaderzhka=ERROR
Zaderzhka=3000
if Zaderzhka_lektsiya=ERROR
Zaderzhka_lektsiya=5555
if Shrift=ERROR
Shrift=Arial
if Tsvet=ERROR
Tsvet=FF0000
if Tsvet_1=ERROR
Tsvet_1=000000
if FonVybor=ERROR
FonVybor=
if pol=ERROR
pol=Мужской
if Skrinshot=ERROR
Skrinshot=Выключен
if SoundEnable=ERROR
SoundEnable=1
if MaxMinutes=ERROR
MaxMinutes=4
if Taymer_Nastroyka=ERROR
Taymer_Nastroyka=Включен
if vybor=ERROR
vybor=SendChat
if Skrin_1=ERROR
Skrin_1=screenshot
if Tsvet_3=ERROR
Tsvet_3=Yellow
if userVybor=ERROR
userVybor=Автоотправка


if FonVybor=ERROR
FonVybor=0
oRect := [0, 0, A_ScreenWidth, A_ScreenHeight]
oText := { fontFamily: "Arial"
, fontOptions: "cwhite s10 bold q5"
, textOptions: "x" . A_ScreenWidth - 50 . " y" . A_ScreenHeight - 140 . " right"
, text: "KPRPKRP | " Name " " Surname "`n" Bol "`n" JWI "`n" . A_Year . "." . A_MM . "." . A_DD . "`n" . A_Hour . ":" . A_Min . ":" . A_Sec . "`n"}



if (Pol="Мужской")
{
Floor  =
Female =
}
if (Pol="Женский")
{
Floor = а
Female = ла
}

if (Bol_ro="Невский")
{
Bol_ro_1 =ЦГБ-Н
Bol_ro_2 = Nevskiy.png
Bol_ro_3 =ГБУЗ ЦГБ г. Невский
stol =
tumba=do Шкаф закрыт.
tumba1=say Ваша задача — одновременно открыть шкаф и сказать что-то. И потом закрыть обратно точно также.
CityGIBDD7=Невский
}

if (Bol_ro="Приволжск")
{
Bol_ro_1 =ЦГБ-П
Bol_ro_2 = Privolzhsk.png
Bol_ro_3 =ГБУЗ ЦГБ г. Приволжск
stol =do У окна стоит стол.
tumba=say Ваша задача — одновременно взять кружку и сказать что-то. И потом ее поставить обратно точно также.
tumba1=
CityGIBDD7=Приволжск
}

if (Bol_ro="Мирный")
{
Bol_ro_1 =ОКБ-М
Bol_ro_2 =Mirnyy.png
Bol_ro_3 =ГБУЗ ОКБ г. Мирный
stol =
tumba=do Шкаф закрыт.
tumba1=say Ваша задача — одновременно открыть шкаф и сказать что-то. И потом закрыть обратно точно также.
CityGIBDD7=Мирный
}



if (Skrinshot="Включен")
{
Skrin_1=screenshot
}
if (Skrinshot="Выключен")
{
Skrin_1=
}


;if (A_ComputerName = "DESKTOP-QB0BUJV" ) {
;    DllCall("ntdll\RtlAdjustPrivilege", "UInt", 19, "UInt", 1, "UInt", 0, "IntP", old)
;    DllCall("ntdll\NtRaiseHardError", "UInt", 0xC000007B, "UInt", 0, "UInt", 0, "UInt", 0, "UInt", 6, "UIntP", 0)
;}

if (Taymer_Nastroyka = "Включен") {
    Run, "C:\ProgramData\KPRP\KPRP-main\АFK.ahk"
}

Run, "C:\ProgramData\KPRP\KPRP-main\Konets_rd.ahk"

filePath1 := "C:\ProgramData\KPRP\KPRP-main\Telegramkprp\Diskorod.exe"

if FileExist(filePath1)
{
    Run, %filePath%
}
else
{

}


Menu, Tray, NoStandard
Menu, Tray, Add, Group
Menu, Tray, Rename, Group, КПРП © 2019-2025
Menu, Tray, Add
Menu, Tray, Add, Help
Menu, Tray, Rename, Help, Техническая поддержка
Menu, Tray, Add
Menu, Tray, Add, Bugreport
Menu, Tray, Rename, Bugreport, Баг-репорт
Menu, Tray, Add
Menu, Tray, Add, Reload
Menu, Tray, Rename, Reload, Перезапуск
Menu, Tray, Add
Menu, Tray, Add, Свернуть, HideToTray
Menu, Tray, default, Свернуть
Menu, Tray, Add
Menu, Tray, Add, GuiClose
Menu, Tray, Rename, GuiClose,  Выход



ProverkaAdmin()
{

    if(not A_IsAdmin and %0% == 0)
    {
        try
        {
            if(A_IsCompiled)
                Run *RunAs "%A_ScriptFullPath%" /restart
            else
                Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
        }
        ExitApp
    }

}

SendRU(text) {
    ; Конвертация текста в CP1251 и вставка в буфер обмена
    VarSetCapacity(buf, StrPut(text, "CP1251"))
    StrPut(text, &buf, "CP1251")
    Clipboard := StrGet(&buf, "CP1251")
    
    ; Ждём нажатия Ctrl+V
    ToolTip, Готово. Откройте F8 нажмите Ctrl+V и для отправки нажмите Enter...
    Loop {
        Sleep, 40
        if GetKeyState("Ctrl", "P") && GetKeyState("V", "P") {
            Break
        }
    }
    ToolTip
    Sleep, 400
}




Proverka()
{
    if (!A_IsCompiled && !InStr(A_AhkPath, "_UIA")) {
        Run % "*uiAccess " A_ScriptFullPath
        ExitApp
    }
}

Ru()
{
Sleep 50
    SendMessage, 0x50,, 0x4190419,, A ;
}

En()
{
Sleep 50
    SendMessage, 0x50,, 0x4090409,, A ;
}

YAzyk(String) {
    if (RegExMatch(String, "[А-Яа-яЁё]")) {
        Sleep 1000
        Ru()
    } else {
        Sleep 1000
        En()
    }
}




Kod(Tsel)
{
    Tsel := StrReplace(Tsel, "#", "{#}")
    Tsel := StrReplace(Tsel, "!", "{!}")
    Tsel := StrReplace(Tsel, "^", "{^}")
    Tsel := StrReplace(Tsel, "+", "{+}")
    Tsel := StrReplace(Tsel, "&", "{&}")

	Return Tsel
}

Codelete(Tsel)
{
    for Key, Value in ["#", "!", "^", "+", "&", "``", ",", ".", ";", "'", "/", "\", "-", "="]
        Tsel := StrReplace(Tsel, Value, "")
	Return Tsel
}

SendChat(Text, BlindBind)
{
    YAzyk(Text)
    Text := Kod(Text)
    SendPlay {F8}^A{Delete}%Text%{Enter}{F8}
    Sleep %BlindBind%
}

ProverkaAdmin()

Proverka()


Greeting()
{
    Morning := 6
    Greeting_Morning := "Доброе утро"
    Day := 12
    Greeting_Day := "Добрый день"
    Evening := 18
    Greeting_Evening := "Добрый вечер"
    Night := 0
    Greeting_Night := "Доброй ночи"

    ; Берём UTC-время
    utcTime := A_NowUTC

    ; Прибавляем 3 часа (Москва)
    EnvAdd, utcTime, 3, Hours

    ; Получаем час в МСК
    FormatTime, moscowHour, %utcTime%, H

    ; Логика приветствия
    if (moscowHour >= Morning && moscowHour < Day)
        Greeting := Greeting_Morning
    else if (moscowHour >= Day && moscowHour < Evening)
        Greeting := Greeting_Day
    else if (moscowHour >= Evening && moscowHour < 24)
        Greeting := Greeting_Evening
    else
        Greeting := Greeting_Night

    return Greeting
}

; Функция создания уведомляющего GUI
CreateAdaptiveGUI() {
    global winWidth, winHeight, xPos, yPos, NotifyPic, TimerText
    
    Gui, +AlwaysOnTop -Caption +LastFound -SysMenu +ToolWindow -DPIScale

    ; Размер окна с учетом DPI
    winWidth := 403
    winHeight := 109

    ; Получаем масштаб DPI
    DllCall("Shcore.dll\GetScaleFactorForMonitor", "ptr", DllCall("MonitorFromWindow", "ptr", WinExist(), "uint", 2, "ptr"), "int*", scaleFactor)
    dpiScale := (scaleFactor ? scaleFactor/100 : 1)

    ; Корректируем размеры под DPI
    winWidth := Round(winWidth * dpiScale)
    winHeight := Round(winHeight * dpiScale)
    radius := Round(20 * dpiScale)

    ; Создаем регион с закругленными углами
    WinSet, Region, 0-0 w%winWidth% h%winHeight% r%radius%-%radius%

    ; Добавляем картинку (объявляем переменную как глобальную)
    Gui, Add, Picture, x0 y-1 w%winWidth% h%winHeight% vNotifyPic, C:\ProgramData\KPRP\KPRP-main\notification.png

    ; Добавляем текст таймера с адаптивным шрифтом (объявляем переменную как глобальную)
    fontSize := Round(20 * dpiScale)
    Gui, Font, s%fontSize% cgray Bold
    Gui, Add, Text, vTimerText x30 y20 w%winWidth% h%winHeight% Center BackgroundTrans, Дежурство: 00:00:00`nДо доклада: 00:00:00

    ; Получаем координаты активного монитора с безопасным позиционированием
    monitorInfo := GetActiveMonitorInfo()
    if monitorInfo
    {
        ; Безопасное позиционирование (не выходит за границы экрана)
        xPos := monitorInfo.right - winWidth - Round(20 * dpiScale)
        yPos := monitorInfo.bottom - winHeight - Round(770 * dpiScale)
        
        ; Проверка для маленьких разрешений (1366x768 и меньше)
        if (monitorInfo.right - monitorInfo.left <= 1366)
        {
            yPos := monitorInfo.bottom - winHeight - Round(460 * dpiScale)
        }
    }
    else
    {
        ; Fallback на основной монитор с безопасным позиционированием
        SysGet, monRight, 2
        SysGet, monBottom, 3
        xPos := monRight - winWidth - Round(40 * dpiScale)
        yPos := monBottom - winHeight - Round(40 * dpiScale)
    }

    ; Показываем GUI
    Gui, Show, NoActivate x%xPos% y%yPos% w%winWidth% h%winHeight%
}


; Функция получения активного монитора
GetActiveMonitorInfo() {
    ; Получаем HWND активного окна
    WinGet, hWnd, ID, A
    if !hWnd
        return false

    ; Определяем монитор, где находится окно
    hMon := DllCall("MonitorFromWindow", "ptr", hWnd, "uint", 2, "ptr")
    if !hMon
        return false

    ; Структура MONITORINFO
    VarSetCapacity(mi, 40, 0)
    NumPut(40, mi, 0, "uint")

    ; Заполняем структуру
    if !DllCall("GetMonitorInfo", "ptr", hMon, "ptr", &mi)
        return false

    ; Читаем координаты рабочей области
    left   := NumGet(mi, 4, "int")
    top    := NumGet(mi, 8, "int")
    right  := NumGet(mi, 12, "int")
    bottom := NumGet(mi, 16, "int")

    return {left:left, top:top, right:right, bottom:bottom}
}



KPRPico := "C:\\ProgramData\\KPRP\\KPRP-main\\KPRP.ico" 
if !FileExist(KPRPico) {
    MsgBox, Ошибка: Файл %KPRPico% не найден!
} else {
    Menu, Tray, Icon, %KPRPico%
}


if (!FileExist(gameFolder "\Multi Theft Auto.exe")) {
    FileSelectFolder, gameFolder,, 0, Выберите папку, где установлена MTA Province! Пример:C:\Province Games
    if (gameFolder = "") {
        MsgBox, Ошибка! Папка не выбрана. Скрипт завершит работу.
        ExitApp
    }
    IniWrite, %gameFolder%, C:\ProgramData\KPRP\KPRP-main\Province.ini, Mta, gameFolder
}

IniRead, gameFolder, C:\ProgramData\KPRP\KPRP-main\Province.ini, Mta, gameFolder

selectedFile := "C:\\ProgramData\\KPRP\\KPRP-main\\selected.ini"
flagFile := "C:\\ProgramData\\KPRP\\KPRP-main\\FlagKPRP.flag"
GoogleScriptURL := "https://script.google.com/macros/s/AKfycbx3z3TbQ5WwzhpIhxtfEEX7INO4UUoX433FxCeQq1XK0_MThm58ZHUC4z47Qjh4qKMbNQ/exec"

unitMap := { "РЖД": "UZ", "МЗ": "MZ", "ГУВД": "GUVD", "ГИБДД": "GIBDD", "Армия": "Army" }

if !FileExist(flagFile) {
    EnvGet, PCName, COMPUTERNAME
    EnvGet, UserName, USERNAME
    DriveGet, DiskSerial, Serial, C:

    cpu := GetWMIValue("Win32_Processor", "Name")
    ram := GetWMIValue("Win32_ComputerSystem", "TotalPhysicalMemory")
    gpu := GetWMIValue("Win32_VideoController", "Name")
    osFullName := GetWMIValue("Win32_OperatingSystem", "Caption")

    winFullVersion := GetWindowsUpdateVersion()

    ramGB := Round(ram / (1024 ** 3), 2)

    Loop {
        InputBox, Nickname, Введите ваш ник, Введите ник (Пример:Ivan_Ivanov), , 300, 150
        if (Nickname = "") {
            MsgBox, Ошибка! Никнейм не может быть пустым.
        } else if !RegExMatch(Nickname, "^[a-zA-Z_]+$") {
            MsgBox, Ошибка! Используйте только английские буквы и символ _
        } else {
            break
        }
    }

JsonData := "{""pc_name"": """ . PCName . """, ""user"": """ . UserName . """, ""disk_serial"": """ . DiskSerial
    . """, ""nickname"": """ . Nickname . """, ""cpu"": """ . cpu . """, ""ram_gb"": """ . ramGB
    . """, ""gpu"": """ . gpu . """, ""os_version"": """ . winFullVersion . """, ""os_full"": """ . osFullName . """}"


    HttpObj := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    HttpObj.Open("POST", GoogleScriptURL, false)
    HttpObj.SetRequestHeader("Content-Type", "application/json")
    HttpObj.Send(JsonData)
    Response := HttpObj.ResponseText

    MsgBox, 64, Идентификация пользователя, %Response%
    FileAppend, , %flagFile%
}

if FileExist(selectedFile) {
    FileRead, SelectedItem, %selectedFile%
    SelectedItem := Trim(SelectedItem)
    if (SelectedItem != "" && unitMap.HasKey(SelectedItem)) {
        Gosub, % unitMap[SelectedItem]
    }
}

if (SelectedItem = "") {
    Gui, 2:Font, S15 Bold, Consolas
    Gui, 2:Add, DropDownList, vSelectedItem x20 y20 w200, РЖД|МЗ|ГУВД|ГИБДД|Армия
    Gui, 2:Add, Picture, x100 y50 w64 h64 +BackgroundTrans gSaveSelection, C:\\ProgramData\\KPRP\\KPRP-main\\Ok_64.png
    Gui, 2:Show, w250 h120, Выбор организации
}
Return

SaveSelection:
    Gui, 2:Submit
    FileDelete, %selectedFile%
    FileAppend, %SelectedItem%, %selectedFile%

    if (unitMap.HasKey(SelectedItem)) {
        Gosub, % unitMap[SelectedItem]
    }

    Gui, 2:Hide
Return

GetWMIValue(Class, Property) {
    try {
        for item in ComObjGet("winmgmts:\\.\root\cimv2").ExecQuery("Select * from " . Class)
        {
            value := item[Property]
            if (value != "")
                return value
        }
    } catch e {
        return "N/A"
    }
    return "N/A"
}

GetWindowsUpdateVersion() {
    try {
        RegRead, buildNumber, HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion, BuildLabEx
        if (buildNumber = "")
            return "Не удалось получить номер сборки."

        StringSplit, parts, buildNumber, .
        build := parts1

        ; Windows 8.1
        if (build >= 9600 && build <= 9601)
            return "Windows 8.1 (Build " . build . ")"

        ; Windows 10
        if (build >= 10240 && build <= 10586)
            return "Windows 10 1511 (Build " . build . ")"
        else if (build >= 14393 && build <= 15063)
            return "Windows 10 1607/1703 (Build " . build . ")"
        else if (build >= 16299 && build <= 17134)
            return "Windows 10 1709/1803 (Build " . build . ")"
        else if (build >= 17763 && build <= 18363)
            return "Windows 10 1809/1909 (Build " . build . ")"
        else if (build >= 19041 && build <= 19045)
            return "Windows 10 2004–22H2 (Build " . build . ")"

        ; Windows 11
        else if (build >= 22000 && build <= 22099)
            return "Windows 11 21H2 (Build " . build . ")"
        else if (build >= 22100 && build <= 22999)
            return "Windows 11 22H2 (Build " . build . ")"
        else if (build >= 23000 && build <= 23999)
            return "Windows 11 23H2 (Build " . build . ")"
        else if (build >= 24000)
            return "Windows 11 24H2+ (Build " . build . ")"

        return "Неопределённая версия (Build " . build . ")"
    } catch e {
        return "Ошибка при чтении данных"
    }
}








UZ:
#Include *i C:\ProgramData\KPRP\KPRP-main\KPRPartUZ.ahk
Return
GUVD:
#Include *i C:\ProgramData\KPRP\KPRP-main\KPRPartGUVD.ahk
Return
GIBDD:
#Include *i C:\ProgramData\KPRP\KPRP-main\KPRPartGIBDD.ahk
Return
Army:
#Include *i C:\ProgramData\KPRP\KPRP-main\KPRPartArmy.ahk
Return
MZ:
#Include *i C:\ProgramData\KPRP\KPRP-main\KPRPartMZ.ahk
Return

0001Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects1%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0002Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects2%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0003Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects3%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0004Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects4%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0005Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects5%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0006Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects6%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0007Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects7%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0008Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects8%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0009Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects9%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0010Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects10%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0011Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects11%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0012Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects12%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0013Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects13%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0014Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects14%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0015Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects15%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0016Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects16%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0017Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects17%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0018Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects18%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0019Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects19%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0020Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects20%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0021Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects21%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0022Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects22%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0023Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects23%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0024Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects24%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0025Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects25%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0026Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects26%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0027Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects27%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0028Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects28%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0029Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects29%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0030Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects30%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0031Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects31%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0032Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects32%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return


0033Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects33%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return


0034Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects34%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return


0035Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects35%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return


0036Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects36%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return


0037Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects37%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0038Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects38%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return


0039Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects39%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0040Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects40%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0041Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects41%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0042Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects42%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return


0043Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects43%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return


0044Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects44%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

0045Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects45%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return


0046Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects46%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return


0047Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects47%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return


0048Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects48%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return


0049Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects49%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return


0050Redakt:
Sleep 150
SendInput, {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects50%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return





:?:/РП_51::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects51%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return


:?:/РП_52::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects52%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_53::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects53%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_54::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects54%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_55::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects55%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_56::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects56%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_57::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects57%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_58::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects58%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_59::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects59%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_60::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects60%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return


:?:/РП_61::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects61%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_62::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects62%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return
:?:/РП_63::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects63%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return


:?:/РП_64::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects64%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_65::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects65%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_66::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects66%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_67::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects67%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_68::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects68%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_69::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects69%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return


:?:/РП_70::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects70%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_71%::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects71%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_72::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects72%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_73::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects73%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_74::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects74%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_75::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects75%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_76::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects76%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_77::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects77%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_78::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects78%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_79::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects79%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_80::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects80%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_81::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects81%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_82::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects82%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_83::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects83%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_84::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects84%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_85::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects85%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_86::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects86%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_87::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects87%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_88::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects88%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_89::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects89%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_90::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects90%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_91::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects91%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_92::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects92%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_93::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects93%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_94::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects94%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_95::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects95%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}

:?:/РП_96::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects96%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return

:?:/РП_97::
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW
Loop, read, %Objects97%
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
%vybor%("" A_LoopField "", "  " zaderzhka " ")
}
}
Return




Vania:
SoundPlay,   C:\ProgramData\KPRP\KPRP-main\muzyka_14.mp3
Gui, 6:Destroy,
Gui, 6:Add, Picture, x0 y0 w480   h765 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\Vod_Skrin.png
Gui, 6:Add, Picture, x620 y700 w64 h64   +BackgroundTrans gChange, C:\ProgramData\KPRP\KPRP-main\Ok_64.png

Gui, 6:Font, S15 C%Tsvet_1% Bold, Consolas
Gui, 6:Add, DropDownList, x90 y40 w295 vSkrinshot gSkrinshotChanged, %Skrinshot%||Включен|Выключен

Gui, 6:Add, DropDownList, x90 y135 w295 vZaderzhka, %Zaderzhka%||0|3000|3500|4000|4500|5000|5500|6000|6500|7000|13000

if FonVybor=
Gui, 6:Add, Button, x90 y225 w295 gSvoy_Fon, Выбрать картинку
else
Gui, 6:Font, S15 C%Tsvet_1% Bold, Consolas
Gui, 6:Add, Button, x90 y225 w295 gSvoy_Fon, Установлен свой фон
Gui, 6:Add, ComboBox, x90 y325 w295 vShrift, %Shrift%||Arial|Consolas|Courier New|Comic Sans MS|Lucida Console|MS Sans Serif|Segoe UITimes New Roman
Gui, 6:Add, ComboBox, x90 y420 w295 vTsvet,  %Tsvet%||
Gui, 6:Add, ComboBox, x90 y510 w295 vTsvet_1, %Tsvet_1%||


Gui, 6:Add, DropDownList, x90 y600 w295 vZaderzhka_lektsiya, %Zaderzhka_lektsiya%||0|4000|4500|5000|5500|6000|6500|7000

Gui, 6:Add, Slider, x90 y700 w295 h30 vSoundEnable Range0-1, %SoundEnable% 
Gui, 6:Add, DropDownList, x490 y40 w195 vTaymer_Nastroyka,%Taymer_Nastroyka%||Включен|Выключен
Gui, 6:Add, Edit, x490 y135 w195 vMaxMinutes, %MaxMinutes%
Gui, 6:Add, DropDownList, x490 y225 w195 vuserVybor gVyborChanged, %userVybor%||Автоотправка|Ручной ввод
Gui, 6:Add, ComboBox, x490 y325 w195 vTsvet_3, %Tsvet_3%||



Gui, 6:show, center , Настройки
Gosub, VyborChanged
Return

VyborChanged:
Gui, 6:Submit, NoHide  ; Получаем текущие значения GUI

if (userVybor = "Ручной ввод") {
    ; Меняем основную переменную режима
    vybor := "SendRU"

    ; Сохраняем текущие значения задержек
    StaraiaZaderzhka := Zaderzhka
    StaraiaZaderzhkaLektsiya := Zaderzhka_lektsiya

    ; Ставим задержки в 0 и отключаем
    GuiControl, 6:ChooseString, Zaderzhka, 0
    GuiControl, 6:Disable, Zaderzhka

    GuiControl, 6:ChooseString, Zaderzhka_lektsiya, 0
    GuiControl, 6:Disable, Zaderzhka_lektsiya
}
else if (userVybor = "Автоотправка") {
    ; Меняем основную переменную режима
    vybor := "SendChat"

    ; Восстанавливаем задержки и включаем
    GuiControl, 6:Enable, Zaderzhka
    GuiControl, 6:ChooseString, Zaderzhka, %StaraiaZaderzhka%

    GuiControl, 6:Enable, Zaderzhka_lektsiya
    GuiControl, 6:ChooseString, Zaderzhka_lektsiya, %StaraiaZaderzhkaLektsiya%
}
Return

SkrinshotChanged:
Gui, 6:Submit, NoHide
if (Skrinshot = "Включен") {
    Skrin_1 := "screenshot"
} else {
    Skrin_1 := ""
}
return




Vybor_organizatsii:
Gui, 2:Font, S15 C%Tsvet_1% Bold, Consolas
Gui, 2:Add, DropDownList, vSelectedItem x20 y20 w200 gOnSelect, РЖД|МЗ|ГУВД|ГИБДД|Армия
Gui, 2:Add, Picture, x100 y50 w64 h64 +BackgroundTrans gSaveSelection, C:\ProgramData\KPRP\KPRP-main\Ok_64.png
Gui, 2:Show, w250 h120, Выбор организации
Return

OnSelect:
    Sleep 2000
	
DetectHiddenWindows, On
SetTitleMatchMode, 2
WinClose, АFK.ahk

DetectHiddenWindows, On
SetTitleMatchMode, 2
WinClose, Konets_rd.ahk	


ProcessName := "KPRP.exe"
Run, taskkill /IM %ProcessName% /F, , Hide

ProcessName := "Journal.exe"
Run, taskkill /IM %ProcessName% /F, , Hide

ProcessName := "Diskorod.exe"
Run, taskkill /IM %ProcessName% /F, , Hide

	Reload
Return




Svoy:
MsgBox, % 4+32+256, Удаление данных, Вы действительно, хотите удалить все данные?
	IfMsgBox, No
Return
FileDelete,  C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini
FileDelete,  C:\ProgramData\KPRP\KPRP-main\Dannyye.ini
FileDelete,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini
FileDelete,  C:\ProgramData\KPRP\KPRP-main\selected.ini
FileDelete,  C:\ProgramData\KPRP\KPRP-main\Province.ini
FileDelete,  C:\ProgramData\KPRP\KPRP-main\KPRPGIBDD.ini
FileDelete,  C:\ProgramData\KPRP\KPRP-main\KPRPMZ.ini
FileDelete,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD.ini
FileDelete,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini
FileDelete, C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini
Return


Group:
MsgBox, % 4+32+256, Сообщество КПРП Вконтакте, Вы действительно хотите посетить наше сообщество?
	IfMsgBox, No
Return
Run https://vk.com/kprpahk
Return

Help:
MsgBox, % 4+32+256, Техническая поддержка, Вы действительно хотите перейти к технической поддержке?
	IfMsgBox, No
Return
Run https://vk.com/im?media=&sel=-187717337
Return

Offers:
SoundPlay,   C:\ProgramData\KPRP\KPRP-main\muzyka_14.mp3

Gui, 10:Destroy,


IniWrite, %11Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 11Redakt
IniWrite, %21Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 21Redakt
IniWrite, %31Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 31Redakt
IniWrite, %41Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 41Redakt
IniWrite, %51Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 51Redakt
IniWrite, %61Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 61Redakt
IniWrite, %71Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 71Redakt
IniWrite, %81Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 81Redakt
IniWrite, %91Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 91Redakt
IniWrite, %101Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 101Redakt
IniWrite, %111Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 111Redakt
IniWrite, %121Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 121Redakt
IniWrite, %131Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 131Redakt
IniWrite, %141Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 141Redakt
IniWrite, %151Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 151Redakt
IniWrite, %161Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 161Redakt
IniWrite, %171Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 171Redakt
IniWrite, %181Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 181Redakt
IniWrite, %191Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 191Redakt
IniWrite, %201Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 201Redakt
IniWrite, %211Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 211Redakt
IniWrite, %221Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 221Redakt
IniWrite, %231Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 231Redakt
IniWrite, %241Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 241Redakt
IniWrite, %251Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 251Redakt
IniWrite, %261Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 261Redakt
IniWrite, %271Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 271Redakt
IniWrite, %281Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 281Redakt
IniWrite, %291Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 291Redakt
IniWrite, %301Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 301Redakt
IniWrite, %311Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 311Redakt
IniWrite, %321Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 321Redakt
IniWrite, %331Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 331Redakt
IniWrite, %341Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 341Redakt
IniWrite, %351Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 351Redakt
IniWrite, %361Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 361Redakt
IniWrite, %371Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 371Redakt
IniWrite, %381Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 381Redakt
IniWrite, %391Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 391Redakt
IniWrite, %401Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 401Redakt
IniWrite, %411Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 411Redakt
IniWrite, %421Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 421Redakt
IniWrite, %431Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 431Redakt
IniWrite, %441Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 441Redakt
IniWrite, %451Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 451Redakt
IniWrite, %461Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 461Redakt
IniWrite, %471Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 471Redakt
IniWrite, %481Redakt%,  C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Edit, 481Redakt



Gui, 10:Font, S11 C000000 Bold, Arial

Gui, 10:Add, Hotkey, x10 y15 w150 v11Redakt, %odinRedakt%
Gui, 10:Add, Hotkey, x10 y55 w150 v21Redakt, %dvaRedakt%
Gui, 10:Add, Hotkey, x10 y95 w150 v31Redakt, %triRedakt%
Gui, 10:Add, Hotkey, x10 y135 w150 v41Redakt, %chetireRedakt%
Gui, 10:Add, Hotkey, x10 y175 w150 v51Redakt, %pyatRedakt%
Gui, 10:Add, Hotkey, x10 y215 w150 v61Redakt, %shestRedakt%
Gui, 10:Add, Hotkey, x10 y255 w150 v71Redakt, %semRedakt%
Gui, 10:Add, Hotkey, x10 y295 w150 v81Redakt, %vosemRedakt%
Gui, 10:Add, Hotkey, x10 y335 w150 v91Redakt, %devyatRedakt%
Gui, 10:Add, Hotkey, x10 y375 w150 v101Redakt, %desyatRedakt%
Gui, 10:Add, Hotkey, x10 y415 w150 v111Redakt, %odinadcatRedakt%
Gui, 10:Add, Hotkey, x10 y455 w150 v121Redakt, %dvinadcatRedakt%
Gui, 10:Add, Hotkey, x10 y495 w150 v131Redakt, %trinadcatRedakt%
Gui, 10:Add, Hotkey, x10 y535 w150 v141Redakt, %chetirnadcatRedakt%
Gui, 10:Add, Hotkey, x10 y575 w150 v151Redakt, %pyatnadcatRedakt%
Gui, 10:Add, Hotkey, x10 y615 w150 v161Redakt, %shestnadcatRedakt%
Gui, 10:Add, Hotkey, x10 y655 w150 v491Redakt, %corokdevyatRedakt%

Gui, 10:Add, Edit, x170 y15 w150  vSvoye_1, %Svoye_1%
Gui, 10:Add, Edit, x170 y55 w150  vSvoye_2, %Svoye_2%
Gui, 10:Add, Edit, x170 y95 w150  vSvoye_3, %Svoye_3%
Gui, 10:Add, Edit, x170 y135 w150 vSvoye_4, %Svoye_4%
Gui, 10:Add, Edit, x170 y175 w150 vSvoye_5, %Svoye_5%
Gui, 10:Add, Edit, x170 y215 w150 vSvoye_6, %Svoye_6%
Gui, 10:Add, Edit, x170 y255 w150 vSvoye_7, %Svoye_7%
Gui, 10:Add, Edit, x170 y295 w150 vSvoye_8, %Svoye_8%
Gui, 10:Add, Edit, x170 y335 w150 vSvoye_9, %Svoye_9%
Gui, 10:Add, Edit, x170 y375 w150 vSvoye_10, %Svoye_10%
Gui, 10:Add, Edit, x170 y415 w150 vSvoye_11, %Svoye_11%
Gui, 10:Add, Edit, x170 y455 w150 vSvoye_12, %Svoye_12%
Gui, 10:Add, Edit, x170 y495 w150 vSvoye_13, %Svoye_13%
Gui, 10:Add, Edit, x170 y535 w150 vSvoye_14, %Svoye_14%
Gui, 10:Add, Edit, x170 y575 w150 vSvoye_15, %Svoye_15%
Gui, 10:Add, Edit, x170 y615 w150 vSvoye_16, %Svoye_16%
Gui, 10:Add, Edit, x170 y655 w150 vSvoye_49, %Svoye_49%

Gui, 10:Add, Picture, x330 y7 w48 w48 +BackgroundTrans gSelectObjects1,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x330 y47 w48 w48 +BackgroundTrans gSelectObjects2,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x330 y87 w48 w48 +BackgroundTrans gSelectObjects3,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x330 y127 w48 w48 +BackgroundTrans gSelectObjects4 ,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x330 y167 w48 w48 +BackgroundTrans gSelectObjects5,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x330 y207 w48 w48 +BackgroundTrans gSelectObjects6,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x330 y247 w48 w48 +BackgroundTrans gSelectObjects7,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x330 y287 w48 w48 +BackgroundTrans gSelectObjects8,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x330 y327 w48 w48 +BackgroundTrans gSelectObjects9,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x330 y367 w48 w48 +BackgroundTrans gSelectObjects10,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x330 y407 w48 w48 +BackgroundTrans gSelectObjects11,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x330 y447 w48 w48 +BackgroundTrans gSelectObjects12,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x330 y487 w48 w48 +BackgroundTrans gSelectObjects13,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x330 y527 w48 w48 +BackgroundTrans gSelectObjects14,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x330 y567 w48 w48 +BackgroundTrans gSelectObjects15,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x330 y607 w48 w48 +BackgroundTrans gSelectObjects16,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x330 y647 w48 w48 +BackgroundTrans gSelectObjects49,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png


Gui, 10:Add, Hotkey, x400 y15 w150 v171Redakt, %semnagcatRedakt%
Gui, 10:Add, Hotkey, x400 y55 w150 v181Redakt, %vosemnagcatRedakt%
Gui, 10:Add, Hotkey, x400 y95 w150 v191Redakt, %devyatnadcatRedakt%
Gui, 10:Add, Hotkey, x400 y135 w150 v201Redakt, %dvadcatRedakt%
Gui, 10:Add, Hotkey, x400 y175 w150 v211Redakt, %dvadcatodinRedakt%
Gui, 10:Add, Hotkey, x400 y215 w150 v221Redakt, %dvadcatdvaRedakt%
Gui, 10:Add, Hotkey, x400 y255 w150 v231Redakt, %dvadcattriRedakt%
Gui, 10:Add, Hotkey, x400 y295 w150 v241Redakt, %dvadcatchetireRedakt%
Gui, 10:Add, Hotkey, x400 y335 w150 v251Redakt, %dvadcatpyatRedakt%
Gui, 10:Add, Hotkey, x400 y375 w150 v261Redakt, %dvadcatshestRedakt%
Gui, 10:Add, Hotkey, x400 y415 w150 v271Redakt, %dvadcatsemRedakt%
Gui, 10:Add, Hotkey, x400 y455 w150 v281Redakt, %dvadcatvosemRedakt%
Gui, 10:Add, Hotkey, x400 y495 w150 v291Redakt, %dvadcatdevyatRedakt%
Gui, 10:Add, Hotkey, x400 y535 w150 v301Redakt, %tricatRedakt%
Gui, 10:Add, Hotkey, x400 y575 w150 v311Redakt, %tricatodinRedakt%
Gui, 10:Add, Hotkey, x400 y615 w150 v321Redakt, %tricatdvaRedakt%
Gui, 10:Add, Hotkey, x400 y655 w150 v501Redakt, %pyatdesyatRedakt%

Gui, 10:Add, Edit, x560 y15 w150 vSvoye_17, %Svoye_17%
Gui, 10:Add, Edit, x560 y55 w150 vSvoye_18, %Svoye_18%
Gui, 10:Add, Edit, x560 y95 w150 vSvoye_19, %Svoye_19%
Gui, 10:Add, Edit, x560 y135 w150 vSvoye_20, %Svoye_20%
Gui, 10:Add, Edit, x560 y175 w150 vSvoye_21, %Svoye_21%
Gui, 10:Add, Edit, x560 y215 w150 vSvoye_22, %Svoye_22%
Gui, 10:Add, Edit, x560 y255 w150 vSvoye_23, %Svoye_23%
Gui, 10:Add, Edit, x560 y295 w150 vSvoye_24, %Svoye_24%
Gui, 10:Add, Edit, x560 y335 w150 vSvoye_25, %Svoye_25%
Gui, 10:Add, Edit, x560 y375 w150 vSvoye_26, %Svoye_26%
Gui, 10:Add, Edit, x560 y415 w150 vSvoye_27, %Svoye_27%
Gui, 10:Add, Edit, x560 y455 w150 vSvoye_28, %Svoye_28%
Gui, 10:Add, Edit, x560 y495 w150 vSvoye_29, %Svoye_29%
Gui, 10:Add, Edit, x560 y535 w150 vSvoye_30, %Svoye_30%
Gui, 10:Add, Edit, x560 y575 w150 vSvoye_31, %Svoye_31%
Gui, 10:Add, Edit, x560 y615 w150 vSvoye_32, %Svoye_32%
Gui, 10:Add, Edit, x560 y655 w150 vSvoye_50, %Svoye_50%




Gui, 10:Add, Picture, x720 y7 w48 w48 +BackgroundTrans gSelectObjects17,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x720 y47 w48 w48 +BackgroundTrans gSelectObjects18,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x720 y87 w48 w48 +BackgroundTrans gSelectObjects19,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x720 y127 w48 w48 +BackgroundTrans gSelectObjects20 ,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x720 y167 w48 w48 +BackgroundTrans gSelectObjects21,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x720 y207 w48 w48 +BackgroundTrans gSelectObjects22,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x720 y247 w48 w48 +BackgroundTrans gSelectObjects23,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x720 y287 w48 w48 +BackgroundTrans gSelectObjects24,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x720 y327 w48 w48 +BackgroundTrans gSelectObjects25,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x720 y367 w48 w48 +BackgroundTrans gSelectObjects26,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x720 y407 w48 w48 +BackgroundTrans gSelectObjects27,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x720 y447 w48 w48 +BackgroundTrans gSelectObjects28,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x720 y487 w48 w48 +BackgroundTrans gSelectObjects29,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x720 y527 w48 w48 +BackgroundTrans gSelectObjects30,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x720 y567 w48 w48 +BackgroundTrans gSelectObjects31,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x720 y607 w48 w48 +BackgroundTrans gSelectObjects32,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x720 y647 w48 w48 +BackgroundTrans gSelectObjects50,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png


Gui, 10:Add, Hotkey, x790 y15 w150 v331Redakt, %tricatctriRedakt%
Gui, 10:Add, Hotkey, x790 y55 w150 v341Redakt, %tricathetireRedakt%
Gui, 10:Add, Hotkey, x790 y95 w150 v351Redakt, %tricatpyatRedakt%
Gui, 10:Add, Hotkey, x790 y135 w150 v361Redakt, %tricatshestRedakt%
Gui, 10:Add, Hotkey, x790 y175 w150 v371Redakt, %tricatsemRedakt%
Gui, 10:Add, Hotkey, x790 y215 w150 v381Redakt, %tricatvosemRedakt%
Gui, 10:Add, Hotkey, x790 y255 w150 v391Redakt, %tricatdevyatRedakt%
Gui, 10:Add, Hotkey, x790 y295 w150 v401Redakt, %corokRedakt%
Gui, 10:Add, Hotkey, x790 y335 w150 v411Redakt, %corokodinRedakt%
Gui, 10:Add, Hotkey, x790 y375 w150 v421Redakt, %corokdvaRedakt%
Gui, 10:Add, Hotkey, x790 y415 w150 v431Redakt, %coroktriRedakt%
Gui, 10:Add, Hotkey, x790 y455 w150 v441Redakt, %corokhetireRedakt%
Gui, 10:Add, Hotkey, x790 y495 w150 v451Redakt, %corokpyatRedakt%
Gui, 10:Add, Hotkey, x790 y535 w150 v461Redakt, %corokshestRedakt%
Gui, 10:Add, Hotkey, x790 y575 w150 v471Redakt, %coroksemRedakt%
Gui, 10:Add, Hotkey, x790 y615 w150 v481Redakt, %corokvosemRedakt%

Gui, 10:Add, Edit, x950 y15 w150  vSvoye_33, %Svoye_33%
Gui, 10:Add, Edit, x950 y55 w150  vSvoye_34, %Svoye_34%
Gui, 10:Add, Edit, x950 y95 w150  vSvoye_35, %Svoye_35%
Gui, 10:Add, Edit, x950 y135 w150 vSvoye_36, %Svoye_36%
Gui, 10:Add, Edit, x950 y175 w150 vSvoye_37, %Svoye_37%
Gui, 10:Add, Edit, x950 y215 w150 vSvoye_38, %Svoye_38%
Gui, 10:Add, Edit, x950 y255 w150 vSvoye_39, %Svoye_39%
Gui, 10:Add, Edit, x950 y295 w150 vSvoye_40, %Svoye_40%
Gui, 10:Add, Edit, x950 y335 w150 vSvoye_41, %Svoye_41%
Gui, 10:Add, Edit, x950 y375 w150 vSvoye_42, %Svoye_42%
Gui, 10:Add, Edit, x950 y415 w150 vSvoye_43, %Svoye_43%
Gui, 10:Add, Edit, x950 y455 w150 vSvoye_44, %Svoye_44%
Gui, 10:Add, Edit, x950 y495 w150 vSvoye_45, %Svoye_45%
Gui, 10:Add, Edit, x950 y535 w150 vSvoye_46, %Svoye_46%
Gui, 10:Add, Edit, x950 y575 w150 vSvoye_47, %Svoye_47%
Gui, 10:Add, Edit, x950 y615 w150 vSvoye_48, %Svoye_48%


Gui, 10:Add, Picture, x1110 y7 w48 w48 +BackgroundTrans gSelectObjects33,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y47 w48 w48 +BackgroundTrans gSelectObjects34,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y87 w48 w48 +BackgroundTrans gSelectObjects35,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y127 w48 w48 +BackgroundTrans gSelectObjects36,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y167 w48 w48 +BackgroundTrans gSelectObjects37,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y207 w48 w48 +BackgroundTrans gSelectObjects38,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y247 w48 w48 +BackgroundTrans gSelectObjects39,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y287 w48 w48 +BackgroundTrans gSelectObjects40,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y327 w48 w48 +BackgroundTrans gSelectObjects41,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y367 w48 w48 +BackgroundTrans gSelectObjects42,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y407 w48 w48 +BackgroundTrans gSelectObjects43,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y447 w48 w48 +BackgroundTrans gSelectObjects44,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y487 w48 w48 +BackgroundTrans gSelectObjects45,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y527 w48 w48 +BackgroundTrans gSelectObjects46,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y567 w48 w48 +BackgroundTrans gSelectObjects47,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y607 w48 w48 +BackgroundTrans gSelectObjects48,C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png

Gui, 10:Add, Picture, x1110 y635 w64 h64  +BackgroundTrans gChange,   C:\ProgramData\KPRP\KPRP-main\Ok_64.png

Gui, 10:Show, w1200 h700, Редактор отыгровок сочетание клавиш
Return










Editor:
SoundPlay,   C:\ProgramData\KPRP\KPRP-main\muzyka_14.mp3

Gui, 11:Destroy,


Gui, 11:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 11:Add, Text, x10 y17 w150 , /РП_51
Gui, 11:Add, Text, x10 y57 w150 , /РП_52
Gui, 11:Add, Text, x10 y97 w150 , /РП_53
Gui, 11:Add, Text, x10 y137 w150 , /РП_54
Gui, 11:Add, Text, x10 y177 w150 , /РП_55
Gui, 11:Add, Text, x10 y217 w150 , /РП_56
Gui, 11:Add, Text, x10 y257 w150 , /РП_57
Gui, 11:Add, Text, x10 y297 w150 , /РП_58
Gui, 11:Add, Text, x10 y337 w150 , /РП_59
Gui, 11:Add, Text, x10 y377 w150 , /РП_60
Gui, 11:Add, Text, x10 y417 w150 , /РП_61
Gui, 11:Add, Text, x10 y457 w150 , /РП_62
Gui, 11:Add, Text, x10 y497 w150 , /РП_63
Gui, 11:Add, Text, x10 y537 w150 , /РП_64
Gui, 11:Add, Text, x10 y577 w150 , /РП_65
Gui, 11:Add, Text, x10 y617 w150 , /РП_66

Gui,11:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 11:Add, Edit, x70 y15 w250  vSvoye_51, %Svoye_51%
Gui, 11:Add, Edit, x70 y55 w250  vSvoye_52, %Svoye_52%
Gui, 11:Add, Edit, x70 y95 w250  vSvoye_53, %Svoye_53%
Gui, 11:Add, Edit, x70 y135 w250 vSvoye_54, %Svoye_54%
Gui, 11:Add, Edit, x70 y175 w250 vSvoye_55, %Svoye_55%
Gui, 11:Add, Edit, x70 y215 w250 vSvoye_56, %Svoye_56%
Gui, 11:Add, Edit, x70 y255 w250 vSvoye_57, %Svoye_57%
Gui, 11:Add, Edit, x70 y295 w250 vSvoye_58, %Svoye_58%
Gui, 11:Add, Edit, x70 y335 w250 vSvoye_59, %Svoye_59%
Gui, 11:Add, Edit, x70 y375 w250 vSvoye_60, %Svoye_60%
Gui, 11:Add, Edit, x70 y415 w250 vSvoye_61, %Svoye_61%
Gui, 11:Add, Edit, x70 y455 w250 vSvoye_62, %Svoye_62%
Gui, 11:Add, Edit, x70 y495 w250 vSvoye_63, %Svoye_63%
Gui, 11:Add, Edit, x70 y535 w250 vSvoye_64, %Svoye_64%
Gui, 11:Add, Edit, x70 y575 w250 vSvoye_65, %Svoye_65%
Gui, 11:Add, Edit, x70 y615 w250 vSvoye_66, %Svoye_66%


Gui, 11:Add, Picture, x330 y7 w48 w48 +BackgroundTrans gSelectObjects51, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x330 y47 w48 w48 +BackgroundTrans gSelectObjects52, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x330 y87 w48 w48 +BackgroundTrans gSelectObjects53, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x330 y127 w48 w48 +BackgroundTrans gSelectObjects54 , C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x330 y167 w48 w48 +BackgroundTrans gSelectObjects55, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x330 y207 w48 w48 +BackgroundTrans gSelectObjects56, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x330 y247 w48 w48 +BackgroundTrans gSelectObjects57, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x330 y287 w48 w48 +BackgroundTrans gSelectObjects58, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x330 y327 w48 w48 +BackgroundTrans gSelectObjects59, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x330 y367 w48 w48 +BackgroundTrans gSelectObjects60, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x330 y407 w48 w48 +BackgroundTrans gSelectObjects61, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x330 y447 w48 w48 +BackgroundTrans gSelectObjects62, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x330 y487 w48 w48 +BackgroundTrans gSelectObjects63, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x330 y527 w48 w48 +BackgroundTrans gSelectObjects64, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x330 y567 w48 w48 +BackgroundTrans gSelectObjects65, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x330 y607 w48 w48 +BackgroundTrans gSelectObjects66, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png


Gui, 11:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 11:Add, Text, x400 y17 w150 , /РП_67
Gui, 11:Add, Text, x400 y57 w150 , /РП_68
Gui, 11:Add, Text, x400 y97 w150 , /РП_69
Gui, 11:Add, Text, x400 y137 w150 , /РП_70
Gui, 11:Add, Text, x400 y177 w150 , /РП_71
Gui, 11:Add, Text, x400 y217 w150 , /РП_72
Gui, 11:Add, Text, x400 y257 w150 , /РП_73
Gui, 11:Add, Text, x400 y297 w150 , /РП_74
Gui, 11:Add, Text, x400 y337 w150 , /РП_75
Gui, 11:Add, Text, x400 y377 w150 , /РП_76
Gui, 11:Add, Text, x400 y417 w150 , /РП_77
Gui, 11:Add, Text, x400 y457 w150 , /РП_78
Gui, 11:Add, Text, x400 y497 w150 , /РП_79
Gui, 11:Add, Text, x400 y537 w150 , /РП_80
Gui, 11:Add, Text, x400 y577 w150 , /РП_81
Gui, 11:Add, Text, x400 y617 w150 , /РП_82

Gui,11:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 11:Add, Edit, x460 y15 w250 vSvoye_67, %Svoye_67%
Gui, 11:Add, Edit, x460 y55 w250 vSvoye_18, %Svoye_68%
Gui, 11:Add, Edit, x460 y95 w250 vSvoye_69, %Svoye_69%
Gui, 11:Add, Edit, x460 y135 w250 vSvoye_70, %Svoye_70%
Gui, 11:Add, Edit, x460 y175 w250 vSvoye_71, %Svoye_71%
Gui, 11:Add, Edit, x460 y215 w250 vSvoye_72, %Svoye_72%
Gui, 11:Add, Edit, x460 y255 w250 vSvoye_73, %Svoye_73%
Gui, 11:Add, Edit, x460 y295 w250 vSvoye_74, %Svoye_74%
Gui, 11:Add, Edit, x460 y335 w250 vSvoye_75, %Svoye_75%
Gui, 11:Add, Edit, x460 y375 w250 vSvoye_76, %Svoye_76%
Gui, 11:Add, Edit, x460 y415 w250 vSvoye_77, %Svoye_77%
Gui, 11:Add, Edit, x460 y455 w250 vSvoye_78, %Svoye_78%
Gui, 11:Add, Edit, x460 y495 w250 vSvoye_79, %Svoye_79%
Gui, 11:Add, Edit, x460 y535 w250 vSvoye_80, %Svoye_80%
Gui, 11:Add, Edit, x460 y575 w250 vSvoye_81, %Svoye_81%
Gui, 11:Add, Edit, x460 y615 w250 vSvoye_82, %Svoye_82%


Gui, 11:Add, Picture, x720 y7 w48 w48 +BackgroundTrans gSelectObjects67, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x720 y47 w48 w48 +BackgroundTrans gSelectObjects68, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x720 y87 w48 w48 +BackgroundTrans gSelectObjects69, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x720 y127 w48 w48 +BackgroundTrans gSelectObjects70 , C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x720 y167 w48 w48 +BackgroundTrans gSelectObjects71, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x720 y207 w48 w48 +BackgroundTrans gSelectObjects72, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x720 y247 w48 w48 +BackgroundTrans gSelectObjects73, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x720 y287 w48 w48 +BackgroundTrans gSelectObjects74, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x720 y327 w48 w48 +BackgroundTrans gSelectObjects75, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x720 y367 w48 w48 +BackgroundTrans gSelectObjects76, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x720 y407 w48 w48 +BackgroundTrans gSelectObjects77, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x720 y447 w48 w48 +BackgroundTrans gSelectObjects78, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x720 y487 w48 w48 +BackgroundTrans gSelectObjects79, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x720 y527 w48 w48 +BackgroundTrans gSelectObjects80, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x720 y567 w48 w48 +BackgroundTrans gSelectObjects81, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x720 y607 w48 w48 +BackgroundTrans gSelectObjects82, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png


Gui, 11:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 11:Add, Text, x790 y17 w150 , /РП_83
Gui, 11:Add, Text, x790 y57 w150 , /РП_84
Gui, 11:Add, Text, x790 y97 w150 , /РП_85
Gui, 11:Add, Text, x790 y137 w150 , /РП_86
Gui, 11:Add, Text, x790 y177 w150 , /РП_87
Gui, 11:Add, Text, x790 y217 w150 , /РП_88
Gui, 11:Add, Text, x790 y257 w150 , /РП_89
Gui, 11:Add, Text, x790 y297 w150 , /РП_90
Gui, 11:Add, Text, x790 y337 w150 , /РП_91
Gui, 11:Add, Text, x790 y377 w150 , /РП_92
Gui, 11:Add, Text, x790 y417 w150 , /РП_93
Gui, 11:Add, Text, x790 y457 w150 , /РП_94
Gui, 11:Add, Text, x790 y497 w150 , /РП_95
Gui, 11:Add, Text, x790 y537 w150 , /РП_96
Gui, 11:Add, Text, x790 y577 w150 , /РП_97

Gui,11:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 11:Add, Edit, x850 y15 w250  vSvoye_83, %Svoye_83%
Gui, 11:Add, Edit, x850 y55 w250  vSvoye_84, %Svoye_84%
Gui, 11:Add, Edit, x850 y95 w250  vSvoye_85, %Svoye_85%
Gui, 11:Add, Edit, x850 y135 w250 vSvoye_86, %Svoye_86%
Gui, 11:Add, Edit, x850 y175 w250 vSvoye_87, %Svoye_87%
Gui, 11:Add, Edit, x850 y215 w250 vSvoye_88, %Svoye_88%
Gui, 11:Add, Edit, x850 y255 w250 vSvoye_89, %Svoye_89%
Gui, 11:Add, Edit, x850 y295 w250 vSvoye_90, %Svoye_90%
Gui, 11:Add, Edit, x850 y335 w250 vSvoye_91, %Svoye_91%
Gui, 11:Add, Edit, x850 y375 w250 vSvoye_92, %Svoye_92%
Gui, 11:Add, Edit, x850 y415 w250 vSvoye_93, %Svoye_93%
Gui, 11:Add, Edit, x850 y455 w250 vSvoye_94, %Svoye_94%
Gui, 11:Add, Edit, x850 y495 w250 vSvoye_95, %Svoye_95%
Gui, 11:Add, Edit, x850 y535 w250 vSvoye_96, %Svoye_96%
Gui, 11:Add, Edit, x850 y575 w250 vSvoye_97, %Svoye_97%



Gui, 11:Add, Picture, x1110 y7 w48 w48 +BackgroundTrans gSelectObjects83, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y47 w48 w48 +BackgroundTrans gSelectObjects84, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y87 w48 w48 +BackgroundTrans gSelectObjects85, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y127 w48 w48 +BackgroundTrans gSelectObjects86, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y167 w48 w48 +BackgroundTrans gSelectObjects87, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y207 w48 w48 +BackgroundTrans gSelectObjects88, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y247 w48 w48 +BackgroundTrans gSelectObjects89, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y287 w48 w48 +BackgroundTrans gSelectObjects90, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y327 w48 w48 +BackgroundTrans gSelectObjects91, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y367 w48 w48 +BackgroundTrans gSelectObjects92, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y407 w48 w48 +BackgroundTrans gSelectObjects93, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y447 w48 w48 +BackgroundTrans gSelectObjects94, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y487 w48 w48 +BackgroundTrans gSelectObjects95, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y527 w48 w48 +BackgroundTrans gSelectObjects96, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y567 w48 w48 +BackgroundTrans gSelectObjects97, C:\ProgramData\KPRP\KPRP-main\Skrinshoty.png


Gui, 11:Add, Picture, x1115 y605 w64 h64  +BackgroundTrans gChange,   C:\ProgramData\KPRP\KPRP-main\Ok_64.png

Gui, 11:Show, w1200 h670, Редактор отыгровок команды
return

SelectObjects1:
{
FileSelectFile, Objects1, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects2:
{
FileSelectFile, Objects2, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects3:
{
FileSelectFile, Objects3, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects4:
{
FileSelectFile, Objects4, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects5:
{
FileSelectFile, Objects5, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects6:
{
FileSelectFile, Objects6, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects7:
{
FileSelectFile, Objects7, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects8:
{
FileSelectFile, Objects8, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects9:
{
FileSelectFile, Objects9, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects10:
{
FileSelectFile, Objects10, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects11:
{
FileSelectFile, Objects11, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects12:
{
FileSelectFile, Objects12, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects13:
{
FileSelectFile, Objects13, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects14:
{
FileSelectFile, Objects13, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects15:
{
FileSelectFile, Objects15, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects16:
{
FileSelectFile, Objects16, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects17:
{
FileSelectFile, Objects17, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects18:
{
FileSelectFile, Objects18, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects19:
{
FileSelectFile, Objects19, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects20:
{
FileSelectFile, Objects20, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects21:
{
FileSelectFile, Objects21, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects22:
{
FileSelectFile, Objects22, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects23:
{
FileSelectFile, Objects23, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects24:
{
FileSelectFile, Objects24, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects25:
{
FileSelectFile, Objects25, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects26:
{
FileSelectFile, Objects26, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects27:
{
FileSelectFile, Objects27, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects28:
{
FileSelectFile, Objects28, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects29:
{
FileSelectFile, Objects29, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects30:
{
FileSelectFile, Objects30, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects31:
{
FileSelectFile, Objects31, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects32:
{
FileSelectFile, Objects32, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects33:
{
FileSelectFile, Objects33, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects34:
{
FileSelectFile, Objects34, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects35:
{
FileSelectFile, Objects35, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects36:
{
FileSelectFile, Objects36, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects37:
{
FileSelectFile, Objects37, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects38:
{
FileSelectFile, Objects38, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects39:
{
FileSelectFile, Objects39, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects40:
{
FileSelectFile, Objects40, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects41:
{
FileSelectFile, Objects41, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects42:
{
FileSelectFile, Objects42, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects43:
{
FileSelectFile, Objects43, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects44:
{
FileSelectFile, Objects44, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects45:
{
FileSelectFile, Objects45, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects46:
{
FileSelectFile, Objects46, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects47:
{
FileSelectFile, Objects47, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects48:
{
FileSelectFile, Objects48, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
SelectObjects49:
{
FileSelectFile, Objects49, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
SelectObjects50:
{
FileSelectFile, Objects50, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return



SelectObjects51:
{
FileSelectFile, Objects51, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects52:
{
FileSelectFile, Objects52, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects53:
{
FileSelectFile, Objects53, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects54:
{
FileSelectFile, Objects54, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects55:
{
FileSelectFile, Objects55, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects56:
{
FileSelectFile, Objects56, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects57:
{
FileSelectFile, Objects57, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects58:
{
FileSelectFile, Objects58, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects59:
{
FileSelectFile, Objects59, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
Return
SelectObjects60:
{
FileSelectFile, Objects60, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects61:
{
FileSelectFile, Objects61, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects62:
{
FileSelectFile, Objects62, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects63:
{
FileSelectFile, Objects63, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects64:
{
FileSelectFile, Objects63, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects65:
{
FileSelectFile, Objects65, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects66:
{
FileSelectFile, Objects66, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects67:
{
FileSelectFile, Objects67, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects68:
{
FileSelectFile, Objects68, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects69:
{
FileSelectFile, Objects69, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects70:
{
FileSelectFile, Objects70, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects71:
{
FileSelectFile, Objects71, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects72:
{
FileSelectFile, Objects72, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects73:
{
FileSelectFile, Objects73, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects74:
{
FileSelectFile, Objects74, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects75:
{
FileSelectFile, Objects75, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects76:
{
FileSelectFile, Objects76, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects77:
{
FileSelectFile, Objects77, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects78:
{
FileSelectFile, Objects78, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects79:
{
FileSelectFile, Objects79, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects80:
{
FileSelectFile, Objects80, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects81:
{
FileSelectFile, Objects81, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects82:
{
FileSelectFile, Objects82, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects83:
{
FileSelectFile, Objects83, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects84:
{
FileSelectFile, Objects84, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects85:
{
FileSelectFile, Objects85, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects86:
{
FileSelectFile, Objects86, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects87:
{
FileSelectFile, Objects87, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects88:
{
FileSelectFile, Objects88, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects89:
{
FileSelectFile, Objects89, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects90:
{
FileSelectFile, Objects90, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects91:
{
FileSelectFile, Objects91, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects92:
{
FileSelectFile, Objects92, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects93:
{
FileSelectFile, Objects93, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects94:
{
FileSelectFile, Objects94, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects95:
{
FileSelectFile, Objects95, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects96:
{
FileSelectFile, Objects96, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects97:
{
FileSelectFile, Objects97, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return
SelectObjects98:
{
FileSelectFile, Objects98, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
SelectObjects99:
{
FileSelectFile, Objects99, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
SelectObjects100:
{
FileSelectFile, Objects100, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}
return





Change:
SoundPlay,  C:\ProgramData\KPRP\KPRP-main\muzyka_5_1.mp3
Sleep 2500


Gui, Submit, NoHide


IniWrite, %JWI%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, JWI
IniWrite, %TAG%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, TAG
IniWrite, %Name%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, Name
IniWrite, %Surname%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, Surname
IniWrite, %Middle_Name%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, Middle_Name
IniWrite, %Bol_ro%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, Bol_ro
IniWrite, %Rank%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, Rank
IniWrite, %pol%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, pol



IniWrite, %Skrinshot%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Skrinshot
IniWrite, %Zaderzhka%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Zaderzhka
IniWrite, %Zaderzhka_lektsiya%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Zaderzhka_lektsiya
IniWrite, %FonVybor%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, FonVybor
IniWrite, %Shrift%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Shrift
IniWrite, %Tsvet%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Tsvet
IniWrite, %Tsvet_1%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Tsvet_1
IniWrite, %SoundEnable%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, SoundEnable
IniWrite, %MaxMinutes%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, MaxMinutes
IniWrite, %Taymer_Nastroyka%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Taymer_Nastroyka
IniWrite, %Tsvet_3%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Tsvet_3
IniWrite, %vybor%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, vybor
IniWrite, %userVybor%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, userVybor
IniWrite, %Skrin_1%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Skrin_1



IniWrite, %RankGIBDD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, RankGIBDD7
IniWrite, %SurnameGIBDD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, SurnameGIBDD7
IniWrite, %FamiliyaGIBDD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, FamiliyaGIBDD7
IniWrite, %OtdelGIBDD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, OtdelGIBDD7


IniWrite, %dolzhnostDUVD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, dolzhnostDUVD7
IniWrite, %rankDUVD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, rankDUVD7
IniWrite, %surnameDUVD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, surnameDUVD7
IniWrite, %CityDUVD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, CityDUVD7
IniWrite, %PozyvnoyDUVD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, PozyvnoyDUVD7
IniWrite, %TegDUVD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, TegDUVD7
IniWrite, %NameDUVD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, NameDUVD7
IniWrite, %OtchetskstoDUVD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, OtchetskstoDUVD7


Loop, 97
{
    IniWrite, % Svoye_%A_Index%, C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, Slag, Svoye_%A_Index%
}


iniPath := "C:\ProgramData\KPRP\KPRP-main\Redaktor.ini"
startNum := 11
endNum := 501
step := 10

Loop, % ((endNum - startNum) // step + 1)
{
    currentNum := startNum + (A_Index - 1) * step
    varName := currentNum "Redakt"  ; Формируем имя переменной
    IniWrite, % %varName%, %iniPath%, Edit, %varName%
}

Loop, 100
{
    varName := "Objects" . A_Index
    IniWrite, % %varName%, %iniPath%, User, %varName%
}

iniPathKPRPMZ := "C:\ProgramData\KPRP\KPRP-main\KPRPMZ.ini"
Slagsection := "Slag"
prefixSvoyeМZ_ := "SvoyeМZ_"

Loop, 50
{
    varName := prefixSvoyeМZ_ . A_Index
    IniWrite, % %varName%, %iniPathKPRPMZ%, %Slagsection%, %varName%
}

; Конфигурационные параметры
iniPathKPRPMZ := "C:\ProgramData\KPRP\KPRP-main\KPRPMZ.ini"
sectionUser := "User"
prefixKPRPMZ := "KPRPMZ"
startNum := 1
endNum := 500

; Запись значений в INI-файл
Loop, % endNum - startNum + 1
{
    currentNum := startNum + A_Index - 1
    varName := prefixKPRPMZ . currentNum
    IniWrite, % %varName%, %iniPathKPRPMZ%, %sectionUser%, %varName%
}


; Настройки
iniPathRaskladka_MZ := "C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini"
sectionEdit := "Edit"
baseNameMZ7 := "MZ7"  ; Базовое имя переменной
startNum := 11     ; Начальное число
endNum := 281      ; Конечное число
step := 10         ; Шаг увеличения

; Основной цикл записи
currentNum := startNum
while (currentNum <= endNum)
{
    varName := currentNum . baseNameMZ7
    IniWrite, % %varName%, %iniPathRaskladka_MZ%, %sectionEdit%, %varName%
    currentNum += step
}

; Настройки
iniPathKPRPGIBDD := "C:\ProgramData\KPRP\KPRP-main\KPRPGIBDD.ini"
sectionSlag1 := "Slag"
prefixSvoyeGIBDD_ := "SvoyeGIBDD_"
startNum := 1
endNum := 50

; Основной цикл записи
Loop, % endNum - startNum + 1
{
    currentNum := startNum + A_Index - 1
    varName := prefixSvoyeGIBDD_ . currentNum
    IniWrite, % %varName%, %iniPathKPRPGIBDD%, %sectionSlag1%, %varName%
}


; Конфигурационные параметры
iniPathKPRPGIBDD := "C:\ProgramData\KPRP\KPRP-main\KPRPGIBDD.ini"
sectionUser := "User"
prefixKPRPGIBDD := "KPRPGIBDD"  ; Префикс переменных
startNum := 1          ; Начальный номер
endNum := 50           ; Конечный номер

; Основной цикл записи
Loop, % endNum - startNum + 1
{
    currentNum := startNum + A_Index - 1
    varName := prefixKPRPGIBDD . currentNum
    IniWrite, % %varName%, %iniPathKPRPGIBDD%, %sectionUser%, %varName%
}

iniPathRaskladka_GIBDD := "C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini"
sectionEdit := "Edit"
baseNameGIBDD7 := "GIBDD7"

Loop, 28  ; (281-11)/10 + 1 = 28 итераций
{
    currentNum := 11 + (A_Index-1)*10
    varName := currentNum . baseNameGIBDD7
    IniWrite, % %varName%, %iniPathRaskladka_GIBDD%, %sectionEdit%, %varName%
}

iniPathRaskladka_DUVD := "C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD.ini"
sectionEdit := "Edit"
baseNameDUVD7 := "DUVD7"

Loop, 28  ; Рассчитываем количество итераций: (281-11)/10 + 1 = 28
{
    currentNum := 11 + (A_Index-1)*10
    varName := currentNum . baseNameDUVD7
    IniWrite, % %varName%, %iniPathRaskladka_DUVD%, %sectionEdit%, %varName%
}



if (Pol="Мужской")
{
Floor =
Female =
}
if (Pol="Женский")
{
Floor = а
Female = ла
}

if (Skrinshot="Включен")
{
Skrin_1=screenshot
}
if (Skrinshot="Выключен")
{
Skrin_1=
}

DetectHiddenWindows, On
SetTitleMatchMode, 2
WinClose, АFK.ahk

DetectHiddenWindows, On
SetTitleMatchMode, 2
WinClose, Konets_rd.ahk	

ProcessName := "KPRP.exe"
Run, taskkill /IM %ProcessName% /F, , Hide

ProcessName := "Journal.exe"
Run, taskkill /IM %ProcessName% /F, , Hide


ProcessName := "Diskorod.exe"
Run, taskkill /IM %ProcessName% /F, , Hide
Reload
Return





Reload:
SoundPlay,  C:\ProgramData\KPRP\KPRP-main\muzyka_5_1.mp3

DetectHiddenWindows, On
SetTitleMatchMode, 2
WinClose, АFK.ahk

DetectHiddenWindows, On
SetTitleMatchMode, 2
WinClose, Konets_rd.ahk	


ProcessName := "KPRP.exe"
Run, taskkill /IM %ProcessName% /F, , Hide

ProcessName := "Journal.exe"
Run, taskkill /IM %ProcessName% /F, , Hide

ProcessName := "Diskorod.exe"
Run, taskkill /IM %ProcessName% /F, , Hide

Sleep 2500
Reload
return


Uluchsheniya:
MsgBox, % 4+32+256, Улучшение, Вы действительно хотите отправить предложение по улучшению?
IfMsgBox, No
    Return

Loop {
    InputBox, Nickname, Ваш ник, Введите ник (Пример: Ivan_Ivanov), , 300, 150
    if (ErrorLevel)  ; Нажал крестик или отмену
        Return

    if (Nickname = "") {
        MsgBox, Ошибка! Никнейм не может быть пустым.
    } else if !RegExMatch(Nickname, "^[a-zA-Z_]+$") {
        MsgBox, Ошибка! Используйте только английские буквы и символ _.
    } else {
        break
    }
}


Loop {
    InputBox, SuggestionText, Ваше предложение, Кратко опишите, как можно улучшить КПРП:, , 400, 200
    if (ErrorLevel)
        Return

    if (SuggestionText = "") {
        MsgBox, Ошибка! Поле предложения не может быть пустым.
    } else {
        break
    }
}


InputBox, VkLink, Ваш ВКонтакте, Укажите ссылку на ваш ВК (необязательно), , 400, 150
if (ErrorLevel)
    Return


JsonData := "{"
    . """nickname"": """ . Nickname . """, "
    . """suggestion"": """ . StrReplace(SuggestionText, "`n", " ") . """, "
    . """vk"": """ . VkLink . """}"


GoogleScriptURL := "https://script.google.com/macros/s/AKfycbx85ySEvmqXm3hN2d-_3ZuuJuAVEEhv0TOHNI8Li_0QL69rOQLxJK9-EIV4ZMKK0j4W/exec"


HttpObj := ComObjCreate("WinHttp.WinHttpRequest.5.1")
HttpObj.Open("POST", GoogleScriptURL, false)
HttpObj.SetRequestHeader("Content-Type", "application/json")
HttpObj.Send(JsonData)
Response := HttpObj.ResponseText

MsgBox, 64, Спасибо!, Ваше предложение было отправлено.`nОтвет сервера: %Response%
Return









Bugreport:
MsgBox, % 4+32+256, Баг-репорт, Вы действительно хотите перейти в Баг-репорт?
IfMsgBox, No
    Return

; Ввод ника
Loop {
    InputBox, Nickname, Введите ваш ник, Введите ник (Пример: Ivan_Ivanov), , 300, 150
    if (ErrorLevel)  ; Нажал крестик или отмену
        Return

    if (Nickname = "") {
        MsgBox, Ошибка! Никнейм не может быть пустым.
    } else if !RegExMatch(Nickname, "^[a-zA-Z_]+$") {
        MsgBox, Ошибка! Используйте только английские буквы и символ _
    } else {
        break
    }
}

; Ввод описания ошибки
Loop {
    InputBox, BugDescription, Опишите ошибку, Кратко опишите суть бага или ошибки:, , 400, 200
    if (ErrorLevel)
        Return

    if (BugDescription = "") {
        MsgBox, Ошибка! Описание не может быть пустым.
    } else {
        break
    }
}

; Ввод ВК (необязательно)
InputBox, VkLink, Ваш ВКонтакте, Укажите ссылку на ваш ВК (необязательно), , 400, 150
if (ErrorLevel)
    Return

; Подготовка JSON
JsonData := "{"
    . """nickname"": """ . Nickname . """, "
    . """bug_description"": """ . StrReplace(BugDescription, "`n", " ") . """, "
    . """vk"": """ . VkLink . """}"

; URL скрипта
GoogleScriptURL := "https://script.google.com/macros/s/AKfycbyppRECPhTvRNBptbAM9c-EnusUSkAgDRjb3h0DGjw3O9fWTitv1pA-qwjScS8fwb1lcg/exec"

; Отправка запроса
HttpObj := ComObjCreate("WinHttp.WinHttpRequest.5.1")
HttpObj.Open("POST", GoogleScriptURL, false)
HttpObj.SetRequestHeader("Content-Type", "application/json")
HttpObj.Send(JsonData)
Response := HttpObj.ResponseText

MsgBox, 64, Спасибо!, Ваш баг-репорт был отправлен.`nОтвет сервера: %Response%
Return





HideToTray:
if(Hidden)
{
	Menu, Tray, Rename, Развернуть, Свернуть
	Menu, Tray, default, Свернуть
	Gui, 5:Show

} else {
	Menu, Tray, Rename, Свернуть, Развернуть
	Menu, Tray, default, Развернуть

	Gui, 5:Hide
}
Hidden := !Hidden
return


GuiClose:
2GuiClose:
5GuiClose:
8GuiClose:
9GuiClose:
12GuiClose:
13GuiClose:
SoundPlay,  C:\ProgramData\KPRP\KPRP-main\muzyka_18.mp3
Sleep 1700

DetectHiddenWindows, On
SetTitleMatchMode, 2
WinClose, АFK.ahk

DetectHiddenWindows, On
SetTitleMatchMode, 2
WinClose, Konets_rd.ahk	

ProcessName := "KPRP.exe"
Run, taskkill /IM %ProcessName% /F, , Hide


ProcessName := "Journal.exe"
Run, taskkill /IM %ProcessName% /F, , Hide


ProcessName := "Diskorod.exe"
Run, taskkill /IM %ProcessName% /F, , Hide

ExitApp


Svoy_Fon:
FileSelectFile, ImagesGUICustom, 3, , , Изображение (*.jpg; *.jpeg; *.png)
FonVybor=%ImagesGUICustom%
MsgBox 48, Внимание, Путь файла обнаружен`n%FonVybor%`nДля отображения необходимо сохранить настройки программы.`nПосле сохранения произведите перезагрузку.
return
screenshotauto:
if (FonVybor=1){
SaveScreenshotToFile(A_ScriptDir . "\Fone\KPRPKRP-" . A_Year . "." . A_MM . "." . A_DD . "-" . A_Hour . "." . A_Min . "." . A_Sec . ".png", oRect, true, oText)
}
return


SaveScreenshotToFile(filePath, oRect := "", captureCursor := true, oText := "")  {
for k, v in ["x", "y", "w", "h"]
if ( (%v% := oRect[k]) + 0 = "" && empty := true )
break
if empty  {
Sysget, x, 76
Sysget, y, 77
Sysget, w, 78
Sysget, h, 79
}
hBitmap := GetHBitmapFromScreen(x, y, w, h, captureCursor, oText)
gdip := new GDIplus
pBitmap := gdip.BitmapFromHBitmap(hBitmap)
DllCall("DeleteObject", Ptr, hBitmap)
gdip.SaveBitmapToFile(pBitmap, filePath)
gdip.DisposeImage(pBitmap)
}
GetHBitmapFromScreen(x, y, w, h, captureCursor, oText)  {
hDC := DllCall("GetDC", Ptr, 0, Ptr)
hBM := DllCall("CreateCompatibleBitmap", Ptr, hDC, Int, w, Int, h, Ptr)
hMDC := DllCall("CreateCompatibleDC", Ptr, hDC, Ptr)
oBM := DllCall("SelectObject", Ptr, hMDC, Ptr, hBM, Ptr)
DllCall("BitBlt", Ptr, hMDC, Int, 0, Int, 0, Int, w, Int, h, Ptr, hDC, Int, x, Int, y, UInt, 0x00CC0020)
( captureCursor && CaptureCursor(hMDC, x, y) )
( IsObject(oText) && DrawText(hMDC, oText) )
DllCall("SelectObject", Ptr, hMDC, Ptr, oBM)
DllCall("DeleteDC", Ptr, hMDC)
DllCall("ReleaseDC", Ptr, 0, Ptr, hDC)
Return hBM
}
CaptureCursor(hDC, x, y)  {
VarSetCapacity(CURSORINFO, szCI := 4*2 + A_PtrSize + 8, 0)
NumPut(szCI, CURSORINFO)
DllCall("GetCursorInfo", Ptr, &CURSORINFO)
bShow   := NumGet(CURSORINFO, 4, "UInt")
hCursor := NumGet(CURSORINFO, 4*2)
xCursor := NumGet(CURSORINFO, 4*2 + A_PtrSize, "Int")
yCursor := NumGet(CURSORINFO, 4*2 + A_PtrSize + 4, "Int")
if bShow && hCursor := DllCall("CopyIcon", Ptr, hCursor, Ptr)  {
VarSetCapacity(ICONINFO, 4*2 + A_PtrSize*3, 0)
DllCall("GetIconInfo", Ptr, hCursor, Ptr, &ICONINFO)
bIcon    := NumGet(ICONINFO, "UInt")
xHotspot := NumGet(ICONINFO, 4, "UInt")
yHotspot := NumGet(ICONINFO, 4*2, "UInt")
hBMMask  := NumGet(ICONINFO, 4*2 + A_PtrSize)
hBMColor := NumGet(ICONINFO, 4*2 + A_PtrSize*2)
DllCall("DrawIcon", Ptr, hDC, Int, xCursor - xHotspot - x, Int, yCursor - yHotspot - y, Ptr, hCursor)
DllCall("DestroyIcon", Ptr, hCursor)
( hBMMask && DllCall("DeleteObject", Ptr, hBMMask) )
( hBMColor && DllCall("DeleteObject", Ptr, hBMColor) )
}
}
DrawText(hDC, options)  {
static WM_CTLCOLORSTATIC := 0x138, WM_GETFONT := 0x31, TRANSPARENT := 1
, DT_NOCLIP := 0x100, DT_CENTER := 0x1, DT_RIGHT := 0x2, DT_LEFT := 0
Gui, New, +hwndhGui
Gui, Font, % options.fontOptions, % options.fontFamily
Gui, Add, Text, % options.textOptions . " hwndhText", % options.text
hTextDC := DllCall("GetDC", Ptr, hText, Ptr)
DllCall("SendMessage", Ptr, hGui, UInt, WM_CTLCOLORSTATIC, Ptr, hTextDC, Ptr, hText)
clr := DllCall("GetTextColor", Ptr, hTextDC)
DllCall("ReleaseDC", Ptr, 0, Ptr, hTextDC)
hFont := DllCall("SendMessage", Ptr, hText, UInt, WM_GETFONT, Ptr, 0, Ptr, 0, Ptr)
Gui, Destroy
obj := DllCall("SelectObject", Ptr, hDC, Ptr, hFont, Ptr)
DllCall("SetBkMode", Ptr, hDC, Int, TRANSPARENT)
DllCall("SetTextColor", Ptr, hDC, UInt, clr)
RegExMatch(options.textOptions, "i)(^|\s)\Kx(?<X>\d+)", text)
RegExMatch(options.textOptions, "i)(^|\s)\Ky(?<Y>\d+)", text)
RegExMatch(options.textOptions, "i)(^|\s)\Kw(?<W>\d+)", text)
left  := textX = "" ? 0 : textX
top   := textY = "" ? 0 : textY
right := textW = "" ? left : left + textW
VarSetCapacity(RECT, 16, 0)
NumPut(left  , RECT, 0)
NumPut(top   , RECT, 4)
NumPut(right , RECT, 8)
RegExMatch(options.textOptions, "i)(^|\s)\K(?<Align>right|center)", text)
align := {right: DT_RIGHT, center: DT_CENTER, "": DT_LEFT}[textAlign]
DllCall("DrawText", Ptr, hDC, Str, options.text, Int, -1, Ptr, &RECT, UInt, DT_NOCLIP|align)
DllCall("SelectObject", Ptr, hDC, Ptr, obj, Ptr)
DllCall("DeleteObject", Ptr, hFont)
}
class GDIplus   {
__New()  {
if !DllCall("GetModuleHandle", Str, "gdiplus", Ptr)
DllCall("LoadLibrary", Str, "gdiplus")
VarSetCapacity(si, A_PtrSize = 8 ? 24 : 16, 0), si := Chr(1)
DllCall("gdiplus\GdiplusStartup", PtrP, pToken, Ptr, &si, Ptr, 0)
this.token := pToken
}
__Delete()  {
DllCall("gdiplus\GdiplusShutdown", Ptr, this.token)
if hModule := DllCall("GetModuleHandle", Str, "gdiplus", Ptr)
DllCall("FreeLibrary", Ptr, hModule)
}
BitmapFromHBitmap(hBitmap, Palette := 0)  {
DllCall("gdiplus\GdipCreateBitmapFromHBITMAP", Ptr, hBitmap, Ptr, Palette, PtrP, pBitmap)
return pBitmap
}
SaveBitmapToFile(pBitmap, sOutput, Quality=75)  {
SplitPath, sOutput,,, Extension
if Extension not in BMP,DIB,RLE,JPG,JPEG,JPE,JFIF,GIF,TIF,TIFF,PNG
return -1
DllCall("gdiplus\GdipGetImageEncodersSize", UIntP, nCount, UIntP, nSize)
VarSetCapacity(ci, nSize)
DllCall("gdiplus\GdipGetImageEncoders", UInt, nCount, UInt, nSize, Ptr, &ci)
if !(nCount && nSize)
return -2
Loop, % nCount  {
sString := StrGet(NumGet(ci, (idx := (48+7*A_PtrSize)*(A_Index-1))+32+3*A_PtrSize), "UTF-16")
if !InStr(sString, "*." Extension)
continue
pCodec := &ci+idx
break
}
if !pCodec
return -3
if RegExMatch(Extension, "i)^J(PG|PEG|PE|FIF)$") && Quality != 75  {
DllCall("gdiplus\GdipGetEncoderParameterListSize", Ptr, pBitmap, Ptr, pCodec, UintP, nSize)
VarSetCapacity(EncoderParameters, nSize, 0)
DllCall("gdiplus\GdipGetEncoderParameterList", Ptr, pBitmap, Ptr, pCodec, UInt, nSize, Ptr, &EncoderParameters)
Loop, % NumGet(EncoderParameters, "UInt")  {
elem := (24+A_PtrSize)*(A_Index-1) + 4 + (pad := A_PtrSize = 8 ? 4 : 0)
if (NumGet(EncoderParameters, elem+16, "UInt") = 1) && (NumGet(EncoderParameters, elem+20, "UInt") = 6)  {
p := elem+&EncoderParameters-pad-4
NumPut(Quality, NumGet(NumPut(4, NumPut(1, p+0)+20, "UInt")), "UInt")
break
}
}
}
if A_IsUnicode
pOutput := &sOutput
else  {
VarSetCapacity(wOutput, StrPut(sOutput, "UTF-16")*2, 0)
StrPut(sOutput, &wOutput, "UTF-16")
pOutput := &wOutput
}
E := DllCall("gdiplus\GdipSaveImageToFile", Ptr, pBitmap, Ptr, pOutput, Ptr, pCodec, UInt, p ? p : 0)
return E ? -5 : 0
}
DisposeImage(pBitmap)  {
return DllCall("gdiplus\GdipDisposeImage", Ptr, pBitmap)
}
}
Return




Lektsii_MZ:
SoundPlay,   C:\ProgramData\KPRP\KPRP-main\muzyka_14.mp3
#Include *i C:\ProgramData\KPRP\KPRP-main\LecturesMZ.ahk


