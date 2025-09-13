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

Loop, 700 {
    IniRead, KPRPMZ%A_Index%, C:\ProgramData\KPRP\KPRP-main\KPRPMZ.ini, User, KPRPMZ%A_Index%
}

Loop, 50 {
    IniRead, SvoyeGIBDD_%A_Index%, C:\ProgramData\KPRP\KPRP-main\KPRPGIBDD.ini, Slag, SvoyeGIBDD_%A_Index%
}


Loop, 50 {
    IniRead, KPRPGIBDD%A_Index%, C:\ProgramData\KPRP\KPRP-main\KPRPGIBDD.ini, User, KPRPGIBDD%A_Index%
}


Loop, 50 {
    IniRead, SvoyeDUVD_%A_Index%, C:\ProgramData\KPRP\KPRP-main\KPRPDUVD.ini, Slag, SvoyeDUVD_%A_Index%
}


Loop, 50 {
    IniRead, KPRPDUVD%A_Index%, C:\ProgramData\KPRP\KPRP-main\KPRPDUVD.ini, User, KPRPDUVD%A_Index%
}


Loop, 97 {
    IniRead, Objects%A_Index%, C:\ProgramData\KPRP\KPRP-main\Redaktor.ini, User, Objects%A_Index%
}


Loop, 1260 {
    IniRead, Lectures%A_Index%, C:\ProgramData\KPRP\KPRP-main\Lectures.ini, User, Lectures%A_Index%
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

IniRead, rankDUVD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, rankDUVD7
IniRead, surnameDUVD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, surnameDUVD7
IniRead, CityDUVD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, CityDUVD7
IniRead, PozyvnoyDUVD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, PozyvnoyDUVD7
IniRead, TegDUVD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, TegDUVD7
IniRead, NameDUVD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, NameDUVD7
IniRead, postDUVD7, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, postDUVD7


IniRead, FonVybor, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, FonVybor
IniRead, Zaderzhka, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Zaderzhka
IniRead, Shrift, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Shrift
IniRead, Tsvet, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Tsvet
IniRead, Tsvet_1, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Tsvet_1
IniRead, Skrinshot, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Skrinshot
IniRead, MaxMinutes, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, MaxMinutes
IniRead, Taymer_Nastroyka, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Taymer_Nastroyka
IniRead, ImgChestToken, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, ImgChestToken
IniRead, vybor, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, vybor
IniRead, userVybor, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, userVybor
IniRead, Skrin_1, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Skrin_1

IniRead, gameFolder, C:\ProgramData\KPRP\KPRP-main\Province.ini, Mta, gameFolder



if SvoyeМZ_1=ERROR
SvoyeМZ_1=Бейдж
if SvoyeМZ_2=ERROR
SvoyeМZ_2=На что жалуетесь?
if SvoyeМZ_3=ERROR
SvoyeМZ_3=Вопрос 1
if SvoyeМZ_4=ERROR
SvoyeМZ_4=Вопрос 2
if SvoyeМZ_5=ERROR
SvoyeМZ_5=Вопрос 3
if SvoyeМZ_6=ERROR
SvoyeМZ_6=Вопрос 4
if SvoyeМZ_7=ERROR
SvoyeМZ_7=Вопрос 5
if SvoyeМZ_8=ERROR
SvoyeМZ_8=Вопрос 6
if SvoyeМZ_9=ERROR
SvoyeМZ_9=Осмотор
if SvoyeМZ_10=ERROR
SvoyeМZ_10=Лечение
if SvoyeМZ_11=ERROR
SvoyeМZ_11=Лечения себя
if SvoyeМZ_12=ERROR
SvoyeМZ_12=Прощание
if SvoyeМZ_13=ERROR
SvoyeМZ_13=Отказ
if SvoyeМZ_14=ERROR
SvoyeМZ_14=Мегафон
if SvoyeМZ_15=ERROR
SvoyeМZ_15=Вкл.КПК
if SvoyeМZ_16=ERROR
SvoyeМZ_16=Выкл.КПК 
if SvoyeМZ_17=ERROR
SvoyeМZ_17=Иформация о медкарте 
if SvoyeМZ_18=ERROR
SvoyeМZ_18=Достать каталку  
if SvoyeМZ_19=ERROR
SvoyeМZ_19=Переложитьчеловека 
if SvoyeМZ_20=ERROR
SvoyeМZ_20=Убарть в АСМП 
if SvoyeМZ_21=ERROR
SvoyeМZ_21=Госпитализация 
if SvoyeМZ_23=ERROR
SvoyeМZ_23=Откат /r 
if SvoyeМZ_24=ERROR
SvoyeМZ_24=Откат /ro
if SvoyeМZ_25=ERROR
SvoyeМZ_25=Аптека (таблетка)

Loop, 700
{
    ; Генерируем название переменной, например, KPRPMZ1, KPRPMZ2 и т.д.
    varName := "KPRPMZ" A_Index
    
    ; Получаем значение переменной (если оно равно "ERROR")
    if %varName% = ERROR
    {
        ; Если значение ERROR, присваиваем путь
        %varName% := "C:\ProgramData\KPRP\KPRP-main\OtygrovkiMZ\KPRP" A_Index "MZ.txt"
    }
}


Loop, 1260
{
    ; Генерируем название переменной, например,
    varName := "Lectures" A_Index
    
    ; Получаем значение переменной (если оно равно "ERROR")
    if %varName% = ERROR
    {
        ; Если значение ERROR, присваиваем путь
        %varName% := "C:\ProgramData\KPRP\KPRP-main\LecturesartMZ\Lection_" A_Index ".txt"
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
        %currentVar% := "C:\ProgramData\KPRP\KPRP-main\OtygrovkiGIBDD\KPRP" . A_Index . "GIBDD.txt"
}



if SvoyeDUVD_1=ERROR
SvoyeDUVD_1=Служебное удостоверение
if SvoyeDUVD_2=ERROR
SvoyeDUVD_2=Проверка документов
if SvoyeDUVD_3=ERROR
SvoyeDUVD_3=Приветствие коллег
if SvoyeDUVD_4=ERROR
SvoyeDUVD_4=Объявление в федеральный розыск
if SvoyeDUVD_5=ERROR
SvoyeDUVD_5=wanted
if SvoyeDUVD_6=ERROR
SvoyeDUVD_6=crimrec
if SvoyeDUVD_7=ERROR
SvoyeDUVD_7=Удостоверение лич. с помощью КПК
if SvoyeDUVD_8=ERROR
SvoyeDUVD_8=Очистить лицо гражданину
if SvoyeDUVD_9=ERROR
SvoyeDUVD_9=Прекращение конвоирования
if SvoyeDUVD_10=ERROR
SvoyeDUVD_10=Рация вкл
if SvoyeDUVD_11=ERROR
SvoyeDUVD_11=Рация выл
if SvoyeDUVD_12=ERROR
SvoyeDUVD_12=Пред. в /m
if SvoyeDUVD_13=ERROR
SvoyeDUVD_13=Пред. вслучае неповиновения
if SvoyeDUVD_14=ERROR 
SvoyeDUVD_14=Пред. открытием огня
if SvoyeDUVD_15=ERROR
SvoyeDUVD_15=Пред. о транспорте МВД
if SvoyeDUVD_16=ERROR
SvoyeDUVD_16=Пешее преследование
if SvoyeDUVD_17=ERROR
SvoyeDUVD_17=Оформление протокола 
if SvoyeDUVD_18=ERROR
SvoyeDUVD_18=Передача конвоиру
if SvoyeDUVD_19=ERROR
SvoyeDUVD_19=Разбить стекло
if SvoyeDUVD_20=ERROR
SvoyeDUVD_20=Разбить стекло удачно
if SvoyeDUVD_21=ERROR
SvoyeDUVD_21=Отсутствует
if SvoyeDUVD_22=ERROR
SvoyeDUVD_22=Отсутствует
if SvoyeDUVD_23=ERROR
SvoyeDUVD_23=Отсутствует
if SvoyeDUVD_24=ERROR
SvoyeDUVD_24=Отсутствует
if SvoyeDUVD_25=ERROR
SvoyeDUVD_25=Отсутствует

Loop, 28 {
    currentVar := "KPRPDUVD" . A_Index
    if (%currentVar% = "ERROR")
        %currentVar% := "C:\ProgramData\KPRP\KPRP-main\OtygrovkiDUVD\KPRP" . A_Index . "DUVD.txt"
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
if postDUVD7=ERROR
postDUVD7=Не заполнено


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
if MaxMinutes=ERROR
MaxMinutes=4
if Taymer_Nastroyka=ERROR
Taymer_Nastroyka=Выключен
if vybor=ERROR
vybor=SendRU
if Skrin_1=ERROR
Skrin_1=screenshot
if ImgChestToken=ERROR
ImgChestToken=Укажите АРI
if userVybor=ERROR
userVybor=Ручной ввод


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
    SetTimer, CheckProcessMinimized, 1000
}

Run, "C:\ProgramData\KPRP\KPRP-main\Konets_rd.ahk"

filePath1 := "C:\ProgramData\KPRP\KPRP-main\Telegramkprp\Diskorod.exe"

if FileExist(filePath1)
{
    Run, %filePath1%
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
Menu, Tray, Add, Svoy1
Menu, Tray, Rename, Svoy1, Починить КПРП
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


TempFolder := A_Temp . "\screenshots"
FileCreateDir, %TempFolder%
AlbumFiles := []


TakeScreenshot(filePath)
{
    psCmd := "Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; "
    psCmd .= "$bmp = New-Object Drawing.Bitmap([System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width,[System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height); "
    psCmd .= "$gfx = [Drawing.Graphics]::FromImage($bmp); "
    psCmd .= "$gfx.CopyFromScreen([System.Drawing.Point]::Empty,[System.Drawing.Point]::Empty,$bmp.Size); "
    psCmd .= "$bmp.Save('" . filePath . "', [System.Drawing.Imaging.ImageFormat]::Png)"
    RunWait, %ComSpec% /C powershell -NoProfile -Command "%psCmd%",, Hide
    IfExist, %filePath%
        return true
    else
        return false
}

UploadAlbumPost(filesArray, token)
{
    curlCmd := "curl -s -H ""Authorization: Bearer " . token . """"
    for index, file in filesArray
        curlCmd .= " -F ""images[]=@""" . file . """"""
    curlCmd .= " https://api.imgchest.com/v1/post"

    RunWait, %ComSpec% /C %curlCmd% > "%A_Temp%\imgchest_response.json",, Hide
    FileRead, resp, %A_Temp%\imgchest_response.json

    if RegExMatch(resp, """link"":\s*""([^""]+)""", m)
    {
        link := m1
        StringReplace, link, link, \, /, All
        if !RegExMatch(link, "^https?://")
            link := "https://" link
        return link
    }
    else
        return ""
}

; === Глобальные переменные ===
global AlbumFiles := ""
global TempFolder := A_Temp

; === Создать альбом ===
CreateAlbum() {
    global AlbumFiles
    if (IsObject(AlbumFiles)) {
        ToolTip, Альбом уже создан
        SetTimer, RemoveToolTip, -2000
        return
    }
    AlbumFiles := []
    ToolTip, Альбом создан.`nТеперь добавляйте скриншоты (0 сделано)
    SetTimer, RemoveToolTip, -2000
}

; === Добавить скриншот (создаёт альбом при необходимости) ===
AddScreenshot() {
    global AlbumFiles, TempFolder
    if !IsObject(AlbumFiles) {
        ; Если альбом не создан — создаём автоматически
        CreateAlbum()
    }
    file := TempFolder . "\screen" . (AlbumFiles.MaxIndex() + 1) . ".png"
    if TakeScreenshot(file) {
        AlbumFiles.Push(file)
        count := AlbumFiles.MaxIndex()
        ToolTip, Скриншот добавлен.`nВсего: %count% До 20 максимум.
        SetTimer, RemoveToolTip, -2000
    } else {
        ToolTip, Ошибка: Не удалось сделать скриншот
        SetTimer, RemoveToolTip, -2000
    }
}

; === Завершить альбом и загрузить ===
FinishAlbum() {
    global AlbumFiles, ImgChestToken
    if !IsObject(AlbumFiles) || AlbumFiles.MaxIndex() = 0 {
        ToolTip, Ошибка: Альбом пуст или не создан
        SetTimer, RemoveToolTip, -2000
        return
    }
    link := UploadAlbumPost(AlbumFiles, ImgChestToken)
    if (link = "") {
        ToolTip, Ошибка: Не удалось загрузить альбом
    } else {
        count := AlbumFiles.MaxIndex()
        ToolTip, Альбом загружен.`nСкриншотов: %count%`n%link%
    }
    SetTimer, RemoveToolTip, -5000
    AlbumFiles := "" ; очистка
}



; === Токен для загрузки Медкарты === 
global ImgChestToken1 := "FdxlBAeh999urbVF8AG1hDgALOWIE6Wysupj3tev76933211"

; === Папка для скринов Медкарты ===
global TempFolder1 := A_Temp . "\screenshots1"
FileCreateDir, %TempFolder1%

; === Массив для хранения файлов Медкарты ===
global AlbumFiles1 := []

; === Функция для скриншотов Медкарты ===
TakeScreenshot1(filePath) {
    psCmd := "Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; "
    psCmd .= "$bmp = New-Object Drawing.Bitmap([System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width,[System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height); "
    psCmd .= "$gfx = [Drawing.Graphics]::FromImage($bmp); "
    psCmd .= "$gfx.CopyFromScreen([System.Drawing.Point]::Empty,[System.Drawing.Point]::Empty,$bmp.Size); "
    psCmd .= "$bmp.Save('" . filePath . "', [System.Drawing.Imaging.ImageFormat]::Png)"
    RunWait, %ComSpec% /C powershell -NoProfile -Command "%psCmd%",, Hide
    IfExist, %filePath%
        return true
    else
        return false
}

; === Функция загрузки альбома Медкарты ===
UploadAlbumPost1(filesArray, token) {
    curlCmd := "curl -s -H ""Authorization: Bearer " . token . """" 
    for index, file in filesArray
        curlCmd .= " -F ""images[]=@""" . file . """"""
    curlCmd .= " https://api.imgchest.com/v1/post"

    RunWait, %ComSpec% /C %curlCmd% > "%A_Temp%\imgchest_response.json",, Hide
    FileRead, resp, %A_Temp%\imgchest_response.json

    if RegExMatch(resp, """link"":\s*""([^""]+)""", m) {
        link := m1
        StringReplace, link, link, \, /, All
        if !RegExMatch(link, "^https?://")
            link := "https://" link
        return link
    } else
        return ""
}

; === Создать альбом Медкарты ===
CreateAlbum1() {
    global AlbumFiles1
    AlbumFiles1 := []
}

; === Добавить скриншот (автоматически создаёт альбом, если его нет Медкарты) ===
AddScreenshot1() {
    global AlbumFiles1, TempFolder1
    if !IsObject(AlbumFiles1)
        CreateAlbum1()

    file := TempFolder1 . "\screen1_" . (AlbumFiles1.MaxIndex() + 1) . ".png"
    if TakeScreenshot1(file) {
        AlbumFiles1.Push(file)
    }
}

; === Завершить альбом и загрузить (автоматически создаёт, если его нет) Медкарты ===
FinishAlbum1() {
    global AlbumFiles1, ImgChestToken1
    if !IsObject(AlbumFiles1)
        CreateAlbum1()

    if AlbumFiles1.MaxIndex() = 0
        return ""

    link := UploadAlbumPost1(AlbumFiles1, ImgChestToken1)
    AlbumFiles1 := [] ; очистка
    return link
}




CheckProcessMinimized() {
    global MaxMinutes, ProcessName, SoundFile
    static MinimizedDuration := 0

    MaxMinimizedTime := MaxMinutes * 60  ; Переводим в секунды

    ; Проверка, запущен ли процесс
    IfWinExist, ahk_exe gta_sa.exe
    {
        ; Получаем состояние окна
        WinGet, MinMaxState, MinMax, ahk_exe gta_sa.exe
        
        ; Если окно свернуто
        if (MinMaxState = -1) {
            MinimizedDuration++
            
            ; Если превышено время
            if (MinimizedDuration >= MaxMinimizedTime) {
                SoundPlay, C:\ProgramData\KPRP\KPRPMP3\KPRP-main\AFK.mp3
                MinimizedDuration := 0
            }
        }
        else {
            MinimizedDuration := 0
        }
    }
}



CloseBadProcesses() {
    ; Закрываем окно по заголовку
    SetTitleMatchMode, 2
    WinClose, Konets_rd.ahk

    ; Список процессов, которые нужно завершить
    processes := ["KPRP.exe", "Journal.exe", "Diskorod.exe"]

    for index, proc in processes {
        Run, taskkill /IM %proc% /F, , Hide
    }
}



; === ВЗ КС ===
ShowRedList() {

    SetTitleMatchMode, 2
    FileEncoding, UTF-8
    url := "https://docs.google.com/spreadsheets/d/e/2PACX-1vQmmY4JZ44c7Xa7W7YpIzMKB-eGrngoEo0khF1k3C-v2mdpBoSseJrf9NWcXeE9-0swQqPdyvVmEHon/pub?gid=2036179608&single=true&output=tsv"
    savePath := "C:\ProgramData\KPRP\KPRP-main\table.tsv"

    ; Скачать таблицу
    UrlDownloadToFile, %url%, %savePath%
    if !FileExist(savePath) {
        MsgBox, Не удалось скачать таблицу!
        return
    }

    content := "Временный запрет                     Красный список`n"
    content .= "---------------------------------------------------------------`n"

    FileRead, fileData, %savePath%
    Loop, Parse, fileData, `n, `r
    {
        if (A_Index = 1)
            continue
        line := A_LoopField
        fields := StrSplit(line, "`t")
        if (fields.Length() >= 9) {
            nickE := fields[4]
            passF := fields[5]
            nickH := fields[7]
            passI := fields[8]

            ; Выравнивание
            nickE := Format("{:-20}", nickE)
            passF := Format("{:-12}", passF)
            nickH := Format("{:-30}", nickH)

            if (nickE != "" || nickH != "")
                content .= nickE passF "|   " nickH passI "`n"
        }
    }

    ; Подсчёт строк
    lines := 0
    Loop, Parse, content, `n, `r
        lines++

    lineHeight := 18
    maxHeight := 600
    height := lines * lineHeight
    if (height > maxHeight)
        height := maxHeight

    winWidth := 740
    winHeight := height

    ; Позиция окна
    monitorInfo := GetActiveMonitorInfo()
    if monitorInfo {
        xPos := monitorInfo.right - winWidth - 40
        yPos := monitorInfo.top + 40
    } else {
        SysGet, primary, MonitorPrimary
        SysGet, mon, Monitor, %primary%
        xPos := monRight - winWidth - 40
        yPos := monTop + 40
    }

    Gui, ВЗ:New
    Gui, +AlwaysOnTop -Caption +LastFound +ToolWindow -DPIScale
    Gui, Font, s10, Courier New
    Gui, Add, Edit, w%winWidth% h%winHeight% ReadOnly, %content%
    Gui, Show, NoActivate x%xPos% y%yPos%, КС ВЗ
}

filePath := gameFolder "\MTA\logs\console.log"  ; строим путь к логу через переменную
targetText := "Уведомление: Пациент согласился с обновлением медицинской карты."
lastFound := ""

SetTimer, CheckLastLineTimer, 1000


; ======== Функция для проверки последней строки ==================
CheckLastLine(filePath, targetText) {
    global lastFound  ; используем глобальную переменную, чтобы не повторять уведомление

    File := FileOpen(filePath, "r", "UTF-8")
    if !IsObject(File)
        return

    lastLine := ""
    while !File.AtEOF
        lastLine := Trim(File.ReadLine())

    File.Close()

    if (InStr(lastLine, targetText) && lastLine != lastFound) {
		AddScreenshot1()
		FinishAlbum1()
        lastFound := lastLine
    }
}

; === Рядом термины ===
GetRandomWord() {
    Words := []
    Words[1] := "РП, МГ, ПГ"
    Words[2] := "ДМ, ЗЗ, СК"
    Words[3] := "ТК, РК, ООС"
    Words[4] := "33, ДБ, РП"
    Words[5] := "ВХ, ДМ, ПГ"
    Words[6] := "БХ, РВК, 33"
    Words[7] := "33, ДБ, МГ"
    Words[8] := "ПГ, РП, ВХ"
    Words[9] := "РПК, РВК, ООС"
    Words[10] := "РК, СК, ТК"
    Words[11] := "33, ДМ, РП"
    Words[12] := "ДМ, ДБ, ПГ"
    Words[13] := "РК, IC, БХ"
    Words[14] := "СК, МГ, ТК"
    Words[15] := "РП, ООС, РВК"

    Random, rand, 1, 15
    return Words[rand]
}

; === Рядом термины МЗ ===
GetRandomMedicalWord() {
    Words := []
    Words[1] :=  "СМП, ДБ, МГ, ЦГБ и ИВЛ"
    Words[2] :=  "АСМП, ТК, СК, ОКБ и ЭКГ"
    Words[3] :=  "ВСМП, РК, ТК, МЗ и УЗИ"
    Words[4] :=  "СМП, IC, ООС, ЦГБ и МРТ"
    Words[5] :=  "АСМП, БХ, 33, МЗ и ФГДС"
    Words[6] :=  "ВСМП, ПГ, РК, ОКБ и ФКС"
    Words[7] :=  "СМП, РВК, ДБ, ЦГБ и ЭЭГ"
    Words[8] :=  "ВСМП, РПК, ТК, МЗ и Флюорография"
    Words[9] :=  "АСМП, ДМ, БХ, МЗ и Томография"
    Words[10] := "СМП, ООС, ДБ, ЦГБ и Пульсоксиметр"
    Words[11] := "АСМП, ПГ, IC, ОКБ и Флюорография"
    Words[12] := "АСМП, ТК, МГ, ЦГБ и ОФЭКТ"
    Words[13] := "АСМП, РП, МГ, ЦГБ и Вакцинация"
    Words[14] := "АСМП, ТК, МГ, ЦГБ и Рентген"
    Words[15] := "АСМП, ТК, МГ, ЦГБ и Маммография"

    Random, rand, 1, Words.Length()
    return Words[rand]
}

; === Рядом тренировка МЗ ===
GetRandomProcedure() {
    Procedures := []
    Procedures[1] := "ЭКГ"
    Procedures[2] := "УЗИ"
    Procedures[3] := "ФКС"
    Procedures[4] := "ФГДС"
    Procedures[5] := "Вывих челюсти"
    Procedures[6] := "Флюорография"
    Procedures[7] := "ЭЭГ"
    Procedures[8] := "МРТ"
    Procedures[9] := "ОФЭКТ"
    Procedures[10] := "ОПТГ"
    Procedures[11] := "Клизма"
    Procedures[12] := "Цистоскопия"
    Procedures[13] := "Фетоскопия"
    Procedures[14] := "Взятие мазка"
    Procedures[15] := "Маммография"
    Procedures[16] := "Вакцинация"
    Procedures[17] := "Вакцинация от бешенства"
    Procedures[18] := "Вакцинация от коронавируса"
    Procedures[19] := "Капельница"
    Procedures[20] := "Анализ сахара в крови"
    Procedures[21] := "Химиотерапия"
    Procedures[22] := "Отравление"
    Procedures[23] := "Отбеливание зубов"
    Procedures[24] := "Рентген зуба"
    Procedures[25] := "Стерилизация"
    Procedures[26] := "Реминерализующая терапия"
    Procedures[27] := "ЗЧМТ"
    Procedures[28] := "Грыжа"
    Procedures[29] := "Пулевое ранение"
    Procedures[30] := "Ножевое ранение"
    Procedures[31] := "Ожог"
    Procedures[32] := "Родинка"
    Procedures[33] := "Роды"
    Procedures[34] := "ВМС"
    Procedures[35] := "Увеличение груди"
    Procedures[36] := "Рассечение головы"
    Procedures[37] := "Аппендицит"
    Procedures[38] := "Трансплантация"
    Procedures[39] := "Перевязывание раны"
    Procedures[40] := "Рентген"
    Procedures[41] := "Перелом ребер"
    Procedures[42] := "Перелом позвоночника"
    Procedures[43] := "Нос"
    Procedures[44] := "Открытый перелом"
    Procedures[45] := "Растяжение"
    Procedures[46] := "Хирургическая коррекция пола М>Ж"
    Procedures[47] := "Кровотечение носа"
    Procedures[48] := "Давление"
    Procedures[49] := "Сколиоз"
    Procedures[50] := "Глисты"
    Procedures[51] := "Проверка на вши"
    Procedures[52] := "Зрения"
    Procedures[53] := "Температура"
    Procedures[54] := "Проверка на наркотики"
    Procedures[55] := "Проверка на алкоголь"
    Procedures[56] := "Дефибриллятор"
    Procedures[57] := "Первая помощь"
    Procedures[58] := "Сотрясение"
    Procedures[59] := "Удушье"
    Procedures[60] := "Обморожение"
    Procedures[61] := "Коронавирус"
    Procedures[62] := "Проверка шумов в легких"
    Procedures[63] := "Проверка веса и роста"
    Procedures[64] := "Проверка шумов в сердце"
    Procedures[65] := "Рана"
    Procedures[66] := "Вывих ноги"
    Procedures[67] := "Удаление коренного зуба"
    Procedures[68] := "Удаление молочного зуба"
    Procedures[69] := "Удаление зуба мудрости"
    Procedures[70] := "Гистероскопия"
    Procedures[71] := "Ингалятор"
    Procedures[72] := "Миостимулятор"
    Procedures[73] := "Эндосонография"
    Procedures[74] := "Удаление тату"
    Procedures[75] := "Тест на ангину"
    Procedures[76] := "Извлечение гвоздя"
    Procedures[77] := "Костная мозоль"
    Procedures[78] := "Укол от наркозависимости"
    Procedures[79] := "Удаление бородавки"
    Procedures[80] := "ЭКС"
    Procedures[81] := "Соринка в глазу"
    Procedures[82] := "Заноза в руке"
    Procedures[83] := "Подвернул ногу"
    Procedures[84] := "Донорство крови"
    Procedures[85] := "ПМП при инфаркте"
    Procedures[86] := "Проверка на ВИЧ"
    Procedures[87] := "Проверка на туберкулез"
    Procedures[88] := "Проверка на дифтерию"
    Procedures[89] := "Проверка на бешенство"
    Procedures[90] := "Укус змеи"
    Procedures[91] := "Выведение геморроя"
    Procedures[92] := "Компьютерная томография"
    Procedures[93] := "Гинекологический осмотр"
    Procedures[94] := "Кольпоскопия"
    Procedures[95] := "Глюкометр"
    Procedures[96] := "ИВЛ"
    Procedures[97] := "Хирургическая коррекция пола Ж>М"
    Procedures[98] := "МРА"
    Procedures[99] := "КГТ"
    Procedures[100] := "МРТ матки"
    Procedures[101] := "МРТ яичников"
    Procedures[102] := "Тест на беременность"
    Procedures[103] := "МРТ органов малого таза"
    Procedures[104] := "МРТ позвоночника"
    Procedures[105] := "МРТ почек"
    Procedures[106] := "Лазерная липосакция"
    Procedures[107] := "Камень в почках"
    Procedures[108] := "Удаление матки"
    Procedures[109] := "Удаление груди"
    Procedures[110] := "Удаление легкого"
    Procedures[111] := "Хирургическое лечение плоскостопия"
    Procedures[112] := "Уменьшение груди"

    Random, rand, 1, Procedures.Length()
    return Procedures[rand]
}

; === Рядом МП МЗ ===
GetRandomHygieneTask() {
    Tasks := []
    Tasks[1] := "Стерилизация медицинских предметов"
    Tasks[2] := "Проверка срока годности лекарств"
    Tasks[3] := "Проверка условий хранения препаратов"
    Tasks[4] := "Проверка срока годности перчаток"
    Tasks[5] := "Дезинфекция в палатах"
    Tasks[6] := "Кварцевание палат"

    Random, rand, 1, Tasks.Length()
    return Tasks[rand]
}

; === Функция для ввода количества минут ===
GetMinutes() {
    global Skolko, FilePath, DataGroup

    SendMessage, 0x50, 0, 0x4190419,, A
    InputBox, Skolko, Ввод данных, Введите количество минут (например 10 минут = 1), затем нажмите "OK"
    if (ErrorLevel) {
        MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
        Reload
    }

    if !RegExMatch(Skolko, "^\d+$") {
        MsgBox, 16, Ошибка, Введите только цифры для количества минут.
        Reload
    }

    MsgBox, 48, Предупреждение, Количество минут: %Skolko%0 
    IniWrite, %Skolko%, %FilePath%, %DataGroup%, NumberCall
}

; === Функция для ввода фамилии напарника ===
GetPatrolName() {
    global Patrol, FilePath, DataGroup

    SendMessage, 0x50, 0, 0x4190419,, A
    InputBox, Patrol, Ввод данных, Введите фамилию напарника (Если нету оставить пустым), затем нажмите "OK"
    if (ErrorLevel) {
        MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
        Reload
    }

    if (Patrol != "" && !RegExMatch(Patrol, "^[А-Яа-яЁё\s<>,:;'\[\]\|]+$")) {
        MsgBox, 16, Ошибка, Введите только русские буквы для фамилии напарника.
        Reload
    }

    text := "Фамилия напарника: " (Patrol = "" ? "не указана" : Patrol)
    MsgBox, 48, Предупреждение, %text%
    IniWrite, %Patrol%, %FilePath%, %DataGroup%, PatrolName
}


; === Функция для ввода названия поста ===
GetPostName() {
    global Post, FilePath, DataGroup

    SendMessage, 0x50, 0, 0x4190419,, A
    InputBox, Post, Ввод данных, Введите название поста, затем нажмите "OK"
    if (ErrorLevel) {
        MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
        Reload
    }

    if !RegExMatch(Post, "^[А-Яа-яЁё\s<>,:;'\[\]\|]+$") {
        MsgBox, 16, Ошибка, Введите только русские буквы для названия поста.
        Reload
    }

    MsgBox, 48, Предупреждение, Название поста: %Post%
    IniWrite, %Post%, %FilePath%, %DataGroup%, PostName
}

; === Функция для ввода номера вызова ===
GetCallNumber() {
    global to, FilePath, DataGroup

    SendMessage, 0x50, 0, 0x4190419,, A
    InputBox, to, Ввод данных, Введите номер вызова, затем нажмите "OK"
    if (ErrorLevel) {
        MsgBox, 16, Ошибка, Вы отменили ввод данных. Скрипт остановлен.
        Reload
    }

    if !RegExMatch(to, "^\d+$") {
        MsgBox, 16, Ошибка, Введите только цифры для номера вызова.
        Reload
    }

    text := "Номер вызова: " to
    MsgBox, 48, Предупреждение, %text%
    IniWrite, %to%, %FilePath%, %DataGroup%, CallNumber
}

; Подключаем библиотеку Gdip
#Include C:\ProgramData\KPRP\KPRP-main\Gdip_All.ahk

; Инициализация Gdip
If !pToken := Gdip_Startup()
{
    MsgBox, 48, Ошибка!, Не удалось инициализировать GDI+
    ExitApp
}

; Получаем информацию об активном мониторе
SysGet, MonitorCount, 80
MouseGetPos, mouseX, mouseY, activeWin
activeMonitor := GetMonitorAt(mouseX, mouseY)
SysGet, Monitor, Monitor, %activeMonitor%

; Создаем GUI (прозрачный оверлей без фокуса)
Gui, 21: -Caption +E0x80000 +E0x20 +LastFound +AlwaysOnTop +ToolWindow +OwnDialogs
Gui, 21: Show, NA
hwnd1 := WinExist()

; Создаем графический контекст
hbm := CreateDIBSection(MonitorRight - MonitorLeft, MonitorBottom - MonitorTop)
hdc := CreateCompatibleDC()
obm := SelectObject(hdc, hbm)
G := Gdip_GraphicsFromHDC(hdc)
Gdip_SetSmoothingMode(G, 4)

; Параметры меню (центрируем на активном мониторе)
centerX := (MonitorRight - MonitorLeft) // 2
centerY := (MonitorBottom - MonitorTop) // 2
radius := 280
sectorCount := 8
activeSector := 0
isMenuVisible := false

; Текст для секторов
sectors := []
sectors.Push({text: "Пульс"})
sectors.Push({text: "СЛР"})
sectors.Push({text: "Что болит"})
sectors.Push({text: "Аллергия"})
sectors.Push({text: "Вылечить себя"})
sectors.Push({text: "Вызов"})
sectors.Push({text: "Аптека"})
sectors.Push({text: "Ифо.медкарте"})
; Цвета секторов (основные и выделенные)
colors := [0xFF34495E, 0xFF34495E, 0xFF34495E, 0xFF34495E, 0xFF34495E, 0xFF34495E, 0xFF34495E, 0xFF34495E]
highlightColors := [0xFFEB984E, 0xFFEB984E, 0xFFEB984E, 0xFFEB984E, 0xFFEB984E, 0xFFEB984E, 0xFFEB984E, 0xFFEB984E]

; === ОТРИСОВКА МЕНЮ ===
DrawRadialMenu(hoverSector := 0) {
    global
    
    ; Очищаем экран (прозрачный фон)
    Gdip_GraphicsClear(G, 0x00000000)
    
    ; Рисуем сектора
    angleStep := 360 / sectorCount
    Loop, %sectorCount%
    {
        startAngle := (A_Index - 1) * angleStep
        endAngle := A_Index * angleStep
        
        ; Создаем путь для сектора
        pPath := Gdip_CreatePath()
        Gdip_AddPathPie(pPath, centerX - radius, centerY - radius, radius * 2, radius * 2, startAngle, angleStep)
        
        ; Выбираем цвет
        if (A_Index = hoverSector) {
            pBrush := Gdip_BrushCreateSolid(highlightColors[A_Index])
        } else {
            pBrush := Gdip_BrushCreateSolid(colors[A_Index])
        }
        
        ; Закрашиваем сектор
        Gdip_FillPath(G, pBrush, pPath)
        Gdip_DeleteBrush(pBrush)
        
        ; Обводка сектора
        pPen := Gdip_CreatePen(0xFFFFFFFF, 2)
        Gdip_DrawPath(G, pPen, pPath)
        Gdip_DeletePen(pPen)
        Gdip_DeletePath(pPath)
        
        ; Добавляем текст
        textAngle := (startAngle + endAngle) / 2
		textRadius := radius * 0.7
        textX := centerX + (radius * 0.7) * Cos(textAngle * 3.14159 / 180)
        textY := centerY + (radius * 0.7) * Sin(textAngle * 3.14159 / 180)
        
        Options := "x" textX " y" textY " Center Center cffFFFFFF r4 s24"
        Gdip_TextToGraphics(G, sectors[A_Index].text, Options, "Arial")
    }
    
    ; Центральный круг
    pBrush := Gdip_BrushCreateSolid(0xFFFFFFFF)
    Gdip_FillEllipse(G, pBrush, centerX - 40, centerY - 40, 80, 80)
    Gdip_DeleteBrush(pBrush)
    
    ; Обновляем экран
    UpdateLayeredWindow(hwnd1, hdc, MonitorLeft, MonitorTop, MonitorRight - MonitorLeft, MonitorBottom - MonitorTop)
}

; === Определение монитора по координатам ===
GetMonitorAt(x, y) {
    SysGet, monitorCount, 80
    Loop, %monitorCount% {
        SysGet, mon, Monitor, %A_Index%
        if (x >= monLeft && x <= monRight && y >= monTop && y <= monBottom) {
            return A_Index
        }
    }
    return 1
}

; === Определение сектора по координатам ===
GetSector(x, y) {
    global centerX, centerY, sectorCount, MonitorLeft, MonitorTop
    
    adjX := x - MonitorLeft
    adjY := y - MonitorTop
    dx := adjX - centerX
    dy := adjY - centerY
    angle := Mod(ATan2(dy, dx) * 57.29578 + 360, 360)
    
    sector := Ceil(angle / (360 / sectorCount))
    return (sector = 0) ? sectorCount : sector
}

; === Функция ATan2 ===
ATan2(y, x) {
    return dllcall("msvcrt\atan2", "Double",y, "Double",x, "CDECL Double")
}


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


Proverka() {
    ; Проверяем, скомпилирован ли скрипт и запущен ли с uiAccess
    if (!A_IsCompiled && !InStr(A_AhkPath, "_UIA")) {
        try {
            Run % "*uiAccess " A_ScriptFullPath
            ExitApp
        } catch e {
            MsgBox, 16, Ошибка, 
            (LTrim
				Установите AutoHotkey по инструкции.
                С правами UI Access.`n
            )
            ExitApp
        }
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
    Gui, Add, Picture, x0 y-1 w%winWidth% h%winHeight% vNotifyPic, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\notification.png

    ; Добавляем текст таймера с адаптивным шрифтом (объявляем переменную как глобальную)
    fontSize := Round(20 * dpiScale)
    Gui, Font, s%fontSize% cgray Bold
    Gui, Add, Text, vTimerText x30 y10 w%winWidth% h%winHeight% Center BackgroundTrans, Скриншотов:0

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

; Функция редактор отыгровок
SelectObjects(objectNumber) {
    VarName := "Objects" . objectNumber
    FileSelectFile, %VarName%, 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
}


SendTemplate(type, num) {
    ; --- Глобальные переменные ---
    global floor, Name, Surname, Bol_ro_1, Bol_ro_3, JWI, TAG, Middle_Name, Skrin_1, Female, stol, Terms, 
    global TermsMZ, WorkoutMZ, WorkoutMZ1, MPMZ, MPMZ1, Post, Patrol, to
    global SurnameGIBDD7, rankGIBDD7, OtdelGIBDD7, CityGIBDD7
    global rankDUVD7, CityDUVD7, PozyvnoyDUVD7, surnameDUVD7, TegDUVD7, NameDUVD7, postDUVD7
    global vybor, zaderzhka

    Sleep 150
    SendPlay {Enter}
    FileEncoding, UTF-8-RAW

    ; --- Получаем переменные ---
    Var := Greeting()
    Terms := GetRandomWord()
    TermsMZ := GetRandomMedicalWord()
    WorkoutMZ1 := WorkoutMZ
    WorkoutMZ := GetRandomProcedure()
    MPMZ1 := MPMZ  
    MPMZ := GetRandomHygieneTask()

    ; --- Определяем путь к файлу ---
    if (type = "Redakt")
        filePath := Objects%num%
    else if (type = "KPRPMZ")
        filePath := KPRPMZ%num%
    else if (type = "Lectures")
        filePath := Lectures%num%
    else if (type = "KPRPGIBDD")
        filePath := KPRPGIBDD%num%
    else if (type = "KPRPDUVD")
        filePath := KPRPDUVD%num%
    else
        return  ; неизвестный тип

    ; --- Проверяем существование файла ---
    if !FileExist(filePath)
        return

    ; --- Читаем файл ---
    FileRead, content, %filePath%

    ; --- Определяем, нужны ли функции ---
    hasSozdatAlbom := InStr(content, "%SozdatAlbom%")
    hasDobavitSkrin := InStr(content, "%DobavitSkrin%")
    hasZagruzitAlbom := InStr(content, "%ZagruzitAlbom%")
	hasSozdatAlbom1 := InStr(content, "%SozdatAlbom1%")
    hasDobavitSkrin1 := InStr(content, "%DobavitSkrin1%")
    hasZagruzitAlbom1 := InStr(content, "%ZagruzitAlbom1%")

    ; --- Подстановка переменных ---
	
	content := StrReplace(content, "%Var%", Var)
	content := StrReplace(content, "%Terms%", Terms)
	content := StrReplace(content, "%floor%", floor)
	content := StrReplace(content, "%Skrin_1%", Skrin_1)
    content := StrReplace(content, "%Female%", Female)
	content := StrReplace(content, "%SozdatAlbom%", SozdatAlbom)
	content := StrReplace(content, "%DobavitSkrin%", DobavitSkrin)
	content := StrReplace(content, "%ZagruzitAlbom%", ZagruzitAlbom)
	content := StrReplace(content, "%Post%", Post)
	content := StrReplace(content, "%Patrol%", Patrol)
	content := StrReplace(content, "%to%", to)
	content := StrReplace(content, "%SozdatAlbom1%", SozdatAlbom1)
	content := StrReplace(content, "%DobavitSkrin1%", DobavitSkrin1)
	content := StrReplace(content, "%ZagruzitAlbom1%", ZagruzitAlbom1)
	
    content := StrReplace(content, "%Name%", Name)
    content := StrReplace(content, "%Surname%", Surname)
    content := StrReplace(content, "%Bol_ro_1%", Bol_ro_1)
    content := StrReplace(content, "%Bol_ro_3%", Bol_ro_3)
    content := StrReplace(content, "%JWI%", JWI)
    content := StrReplace(content, "%TAG%", TAG)
    content := StrReplace(content, "%Middle_Name%", Middle_Name)
    content := StrReplace(content, "%stol%", stol)
	content := StrReplace(content, "%TermsMZ%", TermsMZ)
	content := StrReplace(content, "%WorkoutMZ%", WorkoutMZ)
	content := StrReplace(content, "%WorkoutMZ1%", WorkoutMZ1)
	content := StrReplace(content, "%MPMZ%", MPMZ)
	content := StrReplace(content, "%MPMZ1%", MPMZ1)
	
	
	content := StrReplace(content, "%SurnameGIBDD7%", SurnameGIBDD7)
    content := StrReplace(content, "%rankGIBDD7%", rankGIBDD7)
    content := StrReplace(content, "%OtdelGIBDD7%", OtdelGIBDD7)
    content := StrReplace(content, "%CityGIBDD7%", CityGIBDD7)
	
	
	content := StrReplace(content, "%rankDUVD7%", rankDUVD7)
    content := StrReplace(content, "%CityDUVD7%", CityDUVD7)
    content := StrReplace(content, "%PozyvnoyDUVD7%", PozyvnoyDUVD7)
    content := StrReplace(content, "%surnameDUVD7%", surnameDUVD7)
	content := StrReplace(content, "%TegDUVD7%", TegDUVD7)
	content := StrReplace(content, "%NameDUVD7%", NameDUVD7)
	content := StrReplace(content, "%postDUVD7%", postDUVD7)


    ; --- Убираем метки функций из текста, чтобы они не мешали отправке ---
    if hasSozdatAlbom
        content := StrReplace(content, "%SozdatAlbom%", "")
    if hasDobavitSkrin
        content := StrReplace(content, "%DobavitSkrin%", "")
    if hasZagruzitAlbom
        content := StrReplace(content, "%ZagruzitAlbom%", "")
	if hasSozdatAlbom1
        content := StrReplace(content, "%SozdatAlbom1%", "")
    if hasDobavitSkrin1
        content := StrReplace(content, "%DobavitSkrin1%", "")
    if hasZagruzitAlbom1
        content := StrReplace(content, "%ZagruzitAlbom1%", "")	

    ; --- Разделяем на строки и отправляем ---
    Loop, parse, content, `n, `r
    {
        if (A_LoopField != "") {
            %vybor%(A_LoopField, "  " zaderzhka " ")
        }
    }

    ; --- Вызываем функции только если метки есть ---
    if hasSozdatAlbom
        SozdatAlbom := CreateAlbum()
    if hasDobavitSkrin
        DobavitSkrin := AddScreenshot()
    if hasZagruzitAlbom
        ZagruzitAlbom := FinishAlbum()
	if hasSozdatAlbom1
        SozdatAlbom1 := CreateAlbum1()
    if hasDobavitSkrin1
        DobavitSkrin1 := AddScreenshot1()
    if hasZagruzitAlbom1
        ZagruzitAlbom1 := FinishAlbum1()	
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
    Gui, 2:Add, Picture, x100 y50 w64 h64 +BackgroundTrans gSaveSeLectures, C:\ProgramData\KPRP\\KPRP-main\Ok_64.png
    Gui, 2:Show, w250 h120, Выбор организации
}
Return

SaveSeLectures:
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
    SendTemplate("Redakt", 1)
Return

0002Redakt:
    SendTemplate("Redakt", 2)
Return

0003Redakt:
    SendTemplate("Redakt", 3)
Return

0004Redakt:
    SendTemplate("Redakt", 4)
Return

0005Redakt:
    SendTemplate("Redakt", 5)
Return

0006Redakt:
    SendTemplate("Redakt", 6)
Return

0007Redakt:
    SendTemplate("Redakt", 7)
Return

0008Redakt:
    SendTemplate("Redakt", 8)
Return

0009Redakt:
    SendTemplate("Redakt", 9)
Return

0010Redakt:
    SendTemplate("Redakt", 10)
Return

0011Redakt:
    SendTemplate("Redakt", 11)
Return

0012Redakt:
    SendTemplate("Redakt", 12)
Return

0013Redakt:
    SendTemplate("Redakt", 13)
Return

0014Redakt:
    SendTemplate("Redakt", 14)
Return

0015Redakt:
    SendTemplate("Redakt", 15)
Return

0016Redakt:
    SendTemplate("Redakt", 16)
Return

0017Redakt:
    SendTemplate("Redakt", 17)
Return

0018Redakt:
    SendTemplate("Redakt", 18)
Return

0019Redakt:
    SendTemplate("Redakt", 19)
Return

0020Redakt:
    SendTemplate("Redakt", 20)
Return

0021Redakt:
    SendTemplate("Redakt", 21)
Return

0022Redakt:
    SendTemplate("Redakt", 22)
Return

0023Redakt:
    SendTemplate("Redakt", 23)
Return

0024Redakt:
    SendTemplate("Redakt", 24)
Return

0025Redakt:
    SendTemplate("Redakt", 25)
Return

0026Redakt:
    SendTemplate("Redakt", 26)
Return

0027Redakt:
    SendTemplate("Redakt", 27)
Return

0028Redakt:
    SendTemplate("Redakt", 28)
Return

0029Redakt:
    SendTemplate("Redakt", 29)
Return

0030Redakt:
    SendTemplate("Redakt", 30)
Return

0031Redakt:
    SendTemplate("Redakt", 31)
Return

0032Redakt:
    SendTemplate("Redakt", 32)
Return

0033Redakt:
    SendTemplate("Redakt", 33)
Return

0034Redakt:
    SendTemplate("Redakt", 34)
Return

0035Redakt:
    SendTemplate("Redakt", 35)
Return

0036Redakt:
    SendTemplate("Redakt", 36)
Return

0037Redakt:
    SendTemplate("Redakt", 37)
Return

0038Redakt:
    SendTemplate("Redakt", 38)
Return

0039Redakt:
    SendTemplate("Redakt", 39)
Return

0040Redakt:
    SendTemplate("Redakt", 40)
Return

0041Redakt:
    SendTemplate("Redakt", 41)
Return

0042Redakt:
    SendTemplate("Redakt", 42)
Return

0043Redakt:
    SendTemplate("Redakt", 43)
Return

0044Redakt:
    SendTemplate("Redakt", 44)
Return

0045Redakt:
    SendTemplate("Redakt", 45)
Return

0046Redakt:
    SendTemplate("Redakt", 46)
Return

0047Redakt:
    SendTemplate("Redakt", 47)
Return

0048Redakt:
    SendTemplate("Redakt", 48)
Return

0049Redakt:
    SendTemplate("Redakt", 49)
Return

0050Redakt:
    SendTemplate("Redakt", 50)
Return

:?:/РП_51::
    SendTemplate("Redakt", 51)
Return

:?:/РП_52::
    SendTemplate("Redakt", 52)
Return

:?:/РП_53::
    SendTemplate("Redakt", 53)
Return

:?:/РП_54::
    SendTemplate("Redakt", 54)
Return

:?:/РП_55::
    SendTemplate("Redakt", 55)
Return

:?:/РП_56::
    SendTemplate("Redakt", 56)
Return

:?:/РП_57::
    SendTemplate("Redakt", 57)
Return

:?:/РП_58::
    SendTemplate("Redakt", 58)
Return

:?:/РП_59::
    SendTemplate("Redakt", 59)
Return

:?:/РП_60::
    SendTemplate("Redakt", 60)
Return

:?:/РП_61::
    SendTemplate("Redakt", 61)
Return

:?:/РП_62::
    SendTemplate("Redakt", 62)
Return

:?:/РП_63::
    SendTemplate("Redakt", 63)
Return

:?:/РП_64::
    SendTemplate("Redakt", 64)
Return

:?:/РП_65::
    SendTemplate("Redakt", 65)
Return

:?:/РП_66::
    SendTemplate("Redakt", 66)
Return

:?:/РП_67::
    SendTemplate("Redakt", 67)
Return

:?:/РП_68::
    SendTemplate("Redakt", 68)
Return

:?:/РП_69::
    SendTemplate("Redakt", 69)
Return

:?:/РП_70::
    SendTemplate("Redakt", 70)
Return

:?:/РП_71::
    SendTemplate("Redakt", 71)
Return

:?:/РП_72::
    SendTemplate("Redakt", 72)
Return

:?:/РП_73::
    SendTemplate("Redakt", 73)
Return

:?:/РП_74::
    SendTemplate("Redakt", 74)
Return

:?:/РП_75::
    SendTemplate("Redakt", 75)
Return

:?:/РП_76::
    SendTemplate("Redakt", 76)
Return

:?:/РП_77::
    SendTemplate("Redakt", 77)
Return

:?:/РП_78::
    SendTemplate("Redakt", 78)
Return

:?:/РП_79::
    SendTemplate("Redakt", 79)
Return

:?:/РП_80::
    SendTemplate("Redakt", 80)
Return

:?:/РП_81::
    SendTemplate("Redakt", 81)
Return

:?:/РП_82::
    SendTemplate("Redakt", 82)
Return

:?:/РП_83::
    SendTemplate("Redakt", 83)
Return

:?:/РП_84::
    SendTemplate("Redakt", 84)
Return

:?:/РП_85::
    SendTemplate("Redakt", 85)
Return

:?:/РП_86::
    SendTemplate("Redakt", 86)
Return

:?:/РП_87::
    SendTemplate("Redakt", 87)
Return

:?:/РП_88::
    SendTemplate("Redakt", 88)
Return

:?:/РП_89::
    SendTemplate("Redakt", 89)
Return

:?:/РП_90::
    SendTemplate("Redakt", 90)
Return

:?:/РП_91::
    SendTemplate("Redakt", 91)
Return

:?:/РП_92::
    SendTemplate("Redakt", 92)
Return

:?:/РП_93::
    SendTemplate("Redakt", 93)
Return

:?:/РП_94::
    SendTemplate("Redakt", 94)
Return

:?:/РП_95::
    SendTemplate("Redakt", 95)
Return

:?:/РП_96::
    SendTemplate("Redakt", 96)
Return

:?:/РП_97::
    SendTemplate("Redakt", 97)
Return



CheckLastLineTimer:
    CheckLastLine(filePath, targetText)
return


; === Таймер для выделения сектора ===
CheckMousePosition:
    if (!isMenuVisible) {
        SetTimer, CheckMousePosition, Off
        return
    }
    
    MouseGetPos, mouseX, mouseY
    adjX := mouseX - MonitorLeft
    adjY := mouseY - MonitorTop
    distance := Sqrt((adjX - centerX)**2 + (adjY - centerY)**2)
    
    if (distance <= radius) {
        newSector := GetSector(mouseX, mouseY)
        if (newSector != activeSector) {
            activeSector := newSector
            DrawRadialMenu(activeSector)
        }
    } else if (activeSector != 0) {
        activeSector := 0
        DrawRadialMenu()
    }
return

; === Обработка клика ===
~LButton::
    if (!isMenuVisible)
        return
    
    MouseGetPos, mouseX, mouseY
    adjX := mouseX - MonitorLeft
    adjY := mouseY - MonitorTop
    distance := Sqrt((adjX - centerX)**2 + (adjY - centerY)**2)
    
    if (distance <= radius)
    {
        sector := GetSector(mouseX, mouseY)
        
        ; Метки для каждого сектора
        if (sector = 1)
            Gosub, Sector1
        else if (sector = 2)
            Gosub, Sector2
        else if (sector = 3)
            Gosub, Sector3
        else if (sector = 4)
            Gosub, Sector4
        else if (sector = 5)
            Gosub, Sector5
        else if (sector = 6)
            Gosub, Sector6
        else if (sector = 7)
            Gosub, Sector7
        else if (sector = 8)
            Gosub, Sector8
        
        ; Скрываем меню после выбора
        isMenuVisible := false
        SetTimer, CheckMousePosition, Off
        Gdip_GraphicsClear(G, 0x00000000)
        UpdateLayeredWindow(hwnd1, hdc, MonitorLeft, MonitorTop, MonitorRight - MonitorLeft, MonitorBottom - MonitorTop)
    }
    else if (distance > radius + 50)
    {
        isMenuVisible := false
        SetTimer, CheckMousePosition, Off
        Gdip_GraphicsClear(G, 0x00000000)
        UpdateLayeredWindow(hwnd1, hdc, MonitorLeft, MonitorTop, MonitorRight - MonitorLeft, MonitorBottom - MonitorTop)
    }
return

; === Метки для каждого сектора ===
Sector1:
	SendTemplate("KPRPMZ", 85)
return

Sector2:
	SendTemplate("KPRPMZ", 89)
return

Sector3:
	SendTemplate("KPRPMZ", 2)
return

Sector4:
	SendTemplate("KPRPMZ", 4)
return

Sector5:
	SendTemplate("KPRPMZ", 11)
return

Sector6:
    GetCallNumber()
    GetPatrolName()
    WinWaitActive, ahk_exe gta_sa.exe

    If (Patrol != "") {
        SendTemplate("KPRPMZ", 626)
    } Else {
        SendTemplate("KPRPMZ", 627)
	}	
return

Sector7:
	SendTemplate("KPRPMZ", 25)
return

Sector8:
	SendTemplate("KPRPMZ", 17)
return

Vania:
SoundPlay,   C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_14.mp3
Gui, 6:Destroy,
Gui, 6:Add, Picture, x0 y0 w480   h575 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Vod_Skrin.png
Gui, 6:Add, Picture, x720 y500 w64 h64   +BackgroundTrans gChange, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Ok_64.png

Gui, 6:Font, S15 C%Tsvet_1% Bold, Consolas
Gui, 6:Add, DropDownList, x90 y40 w295 vSkrinshot gSkrinshotChanged, %Skrinshot%||Включен|Выключен

Gui, 6:Add, DropDownList, x90 y135 w295 vZaderzhka, %Zaderzhka%||0|3000|3500|4000|4500|5000|5500|6000|6500|7000

if FonVybor=
Gui, 6:Add, Button, x90 y225 w295 gSvoy_Fon, Выбрать картинку
else
Gui, 6:Font, S15 C%Tsvet_1% Bold, Consolas
Gui, 6:Add, Button, x90 y225 w295 gSvoy_Fon, Установлен свой фон
Gui, 6:Add, ComboBox, x90 y325 w295 vShrift, %Shrift%||Arial|Consolas|Courier New|Comic Sans MS|Lucida Console|MS Sans Serif|Segoe UITimes New Roman
Gui, 6:Add, ComboBox, x90 y420 w295 vTsvet,  %Tsvet%||
Gui, 6:Add, ComboBox, x90 y510 w295 vTsvet_1, %Tsvet_1%||


Gui, 6:Add, DropDownList, x490 y40 w295 vTaymer_Nastroyka,%Taymer_Nastroyka%||Включен|Выключен
Gui, 6:Add, Edit, x490 y135 w295 vMaxMinutes, %MaxMinutes%
Gui, 6:Add, DropDownList, x490 y225 w295 vuserVybor gVyborChanged, %userVybor%||Автоотправка|Ручной ввод
Gui, 6:Add, Edit, x490 y300 w295 vImgChestToken, %ImgChestToken%
Gui, 6:Add, Button, x490 y400 w295 gToken, Создать API Token


Gui, 6:show, center , Настройки
Gosub, VyborChanged
Return

Token:
Run, https://imgchest.com/profile/api
Return

VyborChanged:
Gui, 6:Submit, NoHide  ; Получаем текущие значения GUI

if (userVybor = "Ручной ввод") {
    ; Меняем основную переменную режима
    vybor := "SendRU"

    ; Сохраняем текущие значения задержек
    StaraiaZaderzhka := Zaderzhka


    ; Ставим задержки в 0 и отключаем
    GuiControl, 6:ChooseString, Zaderzhka, 0
    GuiControl, 6:Disable, Zaderzhka

}
else if (userVybor = "Автоотправка") {
    ; Меняем основную переменную режима
    vybor := "SendChat"

    ; Восстанавливаем задержки и включаем
    GuiControl, 6:Enable, Zaderzhka
    GuiControl, 6:ChooseString, Zaderzhka, %StaraiaZaderzhka%


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
Gui, 2:Add, Picture, x100 y50 w64 h64 +BackgroundTrans gSaveSeLectures, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Ok_64.png
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

Svoy1:
FileDelete,  C:\ProgramData\KPRP\KPRP-main\KPRPMZ.ini
FileDelete,  C:\ProgramData\KPRP\KPRP-main\KPRPGIBDD.ini
FileDelete,  C:\ProgramData\KPRP\KPRP-main\KPRPDUVD.ini
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
Reload
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


Search:
LabelMap := {}

LabelMap["сахар, анализ сахара в крови, анализ сахара, сахара, Сахар, Анализ сахара в крови"] := "Medicine2"
LabelMap["шприц, аллергический приступ, приступ, Шприц, Аллергический приступ"] := "Medicine3"
LabelMap["вакцинация, Вакцинация"] := "Medicine4"
LabelMap["кровь, внутреннее кровотечение, внутреннее, Кровь, Внутреннее кровотечение"] := "Medicine5"
LabelMap["зонд, взятие мазка, мозок, Зонд, Взятие мазка"] := "Medicine6"
LabelMap["венаб, взятие крови из вены, Венаб, Взятие крови из вены"] := "Medicine7"
LabelMap["палец, взятие крови из пальца, Палец, Взятие крови из пальца"] := "Medicine8"
LabelMap["вмс, внутриматочная спираль, внутриматочная, ВМС, Внутриматочная спираль"] := "Medicine9"
LabelMap["фгдс, фиброгастродуоденоскопия, гастроскопия, ФГДС, Фиброгастродуоденоскопия"] := "Medicine10"
LabelMap["матка, гистероскопия, Матка, Гистероскопия"] := "Medicine11"
LabelMap["авд, дефибриллятор, АВД, Дефибриллятор"] := "Medicine13"
LabelMap["змея, действия при укусе змеи, Змея, Действия при укусе змеи"] := "Medicine14"
LabelMap["экг, электрокардиография, ЭКГ, Электрокардиография"] := "Medicine15"
LabelMap["температура, Температура"] := "Medicine16"
LabelMap["капельница, Капельница"] := "Medicine17"
LabelMap["фкс, колоноскопия, ФКС, Колоноскопия"] := "Medicine18"
LabelMap["клизма, Клизма"] := "Medicine19"
LabelMap["мрт, магнитно-резонансная томография, МРТ, Магнитно-резонансная томография"] := "Medicine22"
LabelMap["нож, ножевое ранение, Нож, Ножевое ранение"] := "Medicine23"
LabelMap["нос, носовое кровотечение, носовое, Нос, Носовое кровотечение"] := "Medicine24"
LabelMap["ожоги, Ожоги"] := "Medicine25"
LabelMap["желудок, отравление желудка, Желудок, Отравление желудка"] := "Medicine26"
LabelMap["открытый, открытый перелом, Открытый, Открытый перелом"] := "Medicine27"
LabelMap["вши, проверка на вши, Вши, Проверка на вши"] := "Medicine28"
LabelMap["глисты, проверка на глисты, Глисты, Проверка на глисты"] := "Medicine29"
LabelMap["алкоголь, проверка на алкоголь, Алкоголь, Проверка на алкоголь"] := "Medicine30"
LabelMap["наркотики, проверка на наркотики, Наркотики, Проверка на наркотики"] := "Medicine31"
LabelMap["чувства, приведение в чувства, Чувства, Приведение в чувства"] := "Medicine33"
LabelMap["сколиоз, Сколиоз"] := "Medicine34"
LabelMap["роды, Роды"] := "Medicine35"
LabelMap["позв, перелом позвоночника, Позв, Перелом позвоночника"] := "Medicine36"
LabelMap["ребро, перелом рёбер, Ребро, Перелом рёбер"] := "Medicine37"
LabelMap["пуля, пулевое ранение, Пуля, Пулевое ранение"] := "Medicine38"
LabelMap["рентген, Рентген"] := "Medicine39"
LabelMap["стер, стерилизация женщины, Стер, Стерилизация женщины"] := "Medicine40"
LabelMap["прибор, томография, Прибор, Томография"] := "Medicine41"
LabelMap["аппендикс, Аппендикс"] := "Medicine42"
LabelMap["узи, ультразвуковое исследование, УЗИ, Ультразвуковое исследование"] := "Medicine43"
LabelMap["грудь, увеличение груди, Грудь, Увеличение груди"] := "Medicine44"
LabelMap["грыжа, удаление позвоночной грыжи, Грыжа, Удаление позвоночной грыжи"] := "Medicine45"
LabelMap["флюшка, флюрография, Флюшка, Флюрография"] := "Medicine46"
LabelMap["плод, фетоскопия, Плод, Фетоскопия"] := "Medicine47"
LabelMap["цистоскоп, Цистоскоп"] := "Medicine48"
LabelMap["ээг, электро-энцефалограмма, ЭЭГ, Электро-энцефалограмма"] := "Medicine49"
LabelMap["вывих, действия при вывихе, Вывих, Действия при вывихе"] := "Medicine50"
LabelMap["кард, имплантация кардиостимулятора, кардиостимулятор, Кард, Имплантация кардиостимулятора"] := "Medicine51"
LabelMap["бешенство, Бешенство"] := "Medicine52"
LabelMap["родинка, Родинка"] := "Medicine53"
LabelMap["оптг, рентген всех зубов, ОПТГ, Рентген всех зубов"] := "Medicine54"
LabelMap["мудрости, удаление зуба мудрости, Мудрости, Удаление зуба мудрости"] := "Medicine55"
LabelMap["кариес, удаление коренного зуба, Кариес, Удаление коренного зуба"] := "Medicine56"
LabelMap["молочный, удаление молочного зуба, Молочный, Удаление молочного зуба"] := "Medicine57"
LabelMap["рем, реминерализирующая терапия, Рем, Реминерализирующая терапия"] := "Medicine58"
LabelMap["стетоскоп, проверка шумов в лёгких, Стетоскоп, Проверка шумов в лёгких"] := "Medicine59"
LabelMap["сердце, проверка шумов в сердце, Сердце, Проверка шумов в сердце"] := "Medicine60"
LabelMap["давление, проверка давления, Давление, Проверка давления"] := "Medicine61"
LabelMap["рост, взвешивание, измерение роста, Рост, Взвешивание, Измерение роста"] := "Medicine62"
LabelMap["радиация, Радиация"] := "Medicine63"
LabelMap["виз, визиографическое исследование зуба, Виз, Визиографическое исследование зуба"] := "Medicine64"
LabelMap["отбел, отбеливание зубов, Отбел, Отбеливание зубов"] := "Medicine65"
LabelMap["ранение, раненые операции, Ранение, Ранение операция"] := "Medicine66"
LabelMap["рассечение_г, рассечение головы, Рассечение_г, Рассечение головы"] := "Medicine67"
LabelMap["раст, растяжение, Раст, Растяжение"] := "Medicine68"
LabelMap["коронавирус, тест на коронавирус, Коронавирус, Тест на коронавирус"] := "Medicine69"
LabelMap["маммограф, маммография, Маммограф, Маммография"] := "Medicine70"
LabelMap["томосинтез, Томосинтез"] := "Medicine71"
LabelMap["офэкт, однофотонная эмиссионная компьютерная томография, ОФЭКТ, Однофотонная эмиссионная компьютерная томография"] := "Medicine72"
LabelMap["хим, химиотерапия, Хим, Химиотерапия"] := "Medicine73"
LabelMap["спутник, вакцинация от коронавируса, Спутник, Вакцинация от коронавируса"] := "Medicine74"
LabelMap["зчмт, закрытая черепно-мозговая травма, ЗЧМТ, Закрытая черепно-мозговая травма"] := "Medicine75"
LabelMap["пересадка, пересадка органов, Пересадка, Пересадка органов"] := "Medicine76"
LabelMap["нос, нос перелом, Нос, Нос перелом"] := "Medicine77"
LabelMap["пер, перевязывание раны, Пер, Перевязывание раны"] := "Medicine78"
LabelMap["клятва, Клятва"] := "Medicine79"
LabelMap["нога, подвернул ногу, Нога, Подвернул ногу"] := "Medicine80"
LabelMap["мк, медицинская карта, МК, Медицинская карта"] := "Medicine81"
LabelMap["зрения, проверка зрения, Зрения, Проверка зрения"] := "Medicine32"
LabelMap["годность, проверка срока годности препаратов, Годность, Проверка срока годности препаратов"] := "Medicine83"
LabelMap["хранение, проверка условий хранения препаратов, Хранение, Проверка условий хранения препаратов"] := "Medicine84"
LabelMap["пул, пульсоксиметр, Пул, Пульсоксиметр"] := "Medicine85"
LabelMap["белье, замена белья, Белье, Замена белья"] := "Medicine86"
LabelMap["докум, проверка наличия необходимой документации, Докум, Проверка документации"] := "Medicine87"
LabelMap["наркоман, вакцинация от наркозависимости, Наркоман, Вакцинация от наркозависимости"] := "Medicine88"
LabelMap["ингалятор, Ингалятор"] := "Medicine93"
LabelMap["миос, миостимулятор, Миос, Миостимулятор"] := "Medicine94"
LabelMap["эндоузи, эндосонография, ЭндоУЗИ, Эндосонография"] := "Medicine95"
LabelMap["тату, лазерное удаление тату, Тату, Лазерное удаление тату"] := "Medicine96"
LabelMap["ангина, тест на ангину, Ангина, Тест на ангину"] := "Medicine97"
LabelMap["гвоздь, извлечение гвоздя, Гвоздь, Извлечение гвоздя"] := "Medicine98"
LabelMap["мозол, костная мозоль, Мозол, Костная мозоль"] := "Medicine99"
LabelMap["бородавка, бородавка удаление, Бородавка, Удаление бородавки"] := "Medicine100"
LabelMap["соринка, соринка удаление, Соринка, Удаление соринки"] := "Medicine101"
LabelMap["заноза, заноза извлечение, Заноза, Извлечение занозы"] := "Medicine102"
LabelMap["пчела, укус пчелы, Пчела, Укус пчелы"] := "Medicine103"
LabelMap["донор, донор крови, Донор, Донор крови"] := "Medicine104"
LabelMap["м>ж, ж>м, хирургическая коррекция пола, М>Ж, Ж>М"] := "Medicine105"
LabelMap["кварц, кварцевание, Кварц, Кварцевание"] := "Medicine108"
LabelMap["пхд, ПХД"] := "Medicine109"
LabelMap["вич, тест на вич, ВИЧ, Тест на ВИЧ"] := "Medicine111"
LabelMap["туберкулёз, тест на туберкулёз, Туберкулёз, Тест на туберкулёз"] := "Medicine112"
LabelMap["дифтерия, тест на дифтерию, Дифтерия, Тест на дифтерию"] := "Medicine113"
LabelMap["бешенство, тест на бешенство, Бешенство, Тест на бешенство"] := "Medicine114"
LabelMap["гем, выведение геморроя, Гем, Выведение геморроя"] := "Medicine115"
LabelMap["кт, компьютерная томография, КТ, Компьютерная томография"] := "Medicine116"
LabelMap["шейка, кольпоскопия, Шейка, Кольпоскопия"] := "Medicine117"
LabelMap["гинек, гинекологическое обследование, Гинек, Гинекологическое обследование"] := "Medicine118"
LabelMap["глю, глюкометр, Глю, Глюкометр"] := "Medicine119"
LabelMap["мра, мр-ангиография, МРА, МР-ангиография"] := "Medicine120"
LabelMap["ктг, кардиотокография, ктг плода, КТГ, Кардиотокография"] := "Medicine121"
LabelMap["берм, тест беременность, Берм, Тест беременность"] := "Medicine122"
LabelMap["лл, лазерная липосакция, ЛЛ, Лазерная липосакция"] := "Medicine123"
LabelMap["увт, камень в почках малых размеров, камень в почках, УВТ, Камень в почках"] := "Medicine124"
LabelMap["матка_у, гистерэктомия, Матка_У, Гистерэктомия"] := "Medicine125"
LabelMap["легкое_у, удаление легкого, Легкое_У, Удаление легкого"] := "Medicine126"
LabelMap["пло_х, хирургическое лечение плоскостопия, Пло_Х, Хирургическое лечение плоскостопия"] := "Medicine127"
LabelMap["грудь_уу, удаление груди, Грудь_УУ, Удаление груди"] := "Medicine128"
LabelMap["грудь_у, уменьшение груди, Грудь_У, Уменьшение груди"] := "Medicine129"


LabelMap["пост, пост асмп, Пост, Пост АСМП"] := "Laziness1"
LabelMap["вызов, Вызов"] := "Laziness2"
LabelMap["напарник, смена данных в докладах, Напарник, Смена данных в докладах"] := "Laziness3"
LabelMap["вз, кс, ВЗ, КС"] := "Laziness4"
LabelMap["цгб, гму, собеседования, ЦГБ, ГМУ, Собеседования"] := "Laziness7"
LabelMap["мп, трен, радном, МП, Трен, Радном"] := "Laziness31"
LabelMap["республика, патруль республки аcмп, Республика, Патруль республки АСМП"] := "Laziness14"
LabelMap["республика_0, патруль республки, Республика_0, Патруль республки"] := "Laziness13"
LabelMap["город, патруль города аcмп, Город, Патруль города АСМП"] := "Laziness8"
LabelMap["город_0, патруль города, Город_0, Патруль города"] := "Laziness12"
LabelMap["мойка, Мойка"] := "Laziness20"
LabelMap["по, пост регистратура, регистратура, ПО, Пост Регистратура, Регистратура"] := "Laziness26"


LabelMap["рана, остановить кровотечения, Рана, Остановить кровотечения"] := "PMP1"
LabelMap["венозное, артериальное, кровотечения, Венозное, Артериальное, Кровотечения"] := "PMP2"
LabelMap["мороз, пмп при обморожении, Мороз, ПМП при обморожении"] := "PMP3"
LabelMap["ожог, пмп при ожогах, Ожог, ПМП при ожогах"] := "PMP4"
LabelMap["пуля, пмп при пулевом ранение, Пуля, ПМП при пулевом ранение"] := "PMP5"
LabelMap["у_пмп, пмп при удушье, У_ПМП, ПМП при удушье"] := "PMP6"
LabelMap["челюс, пмп при вывихе челюсти, Челюс, ПМП при вывихе челюсти"] := "PMP7"
LabelMap["нога, вывих ноги, Нога, Вывих ноги"] := "PMP8"
LabelMap["соз_1, пмп при потере сознания, Соз_1, ПМП при потере сознания"] := "PMP9"
LabelMap["закр, пмп при закрытом переломе, Закр, ПМП при закрытом переломе"] := "PMP10"
LabelMap["откр, пмп при открытом переломе, Откр, ПМП при открытом переломе"] := "PMP11"
LabelMap["нос, пмп при переломе носа, Нос, ПМП при переломе носа"] := "PMP12"
LabelMap["сотрясение, Сотрясение"] := "PMP13"
LabelMap["инфаркт, пмп при инфаркте, Инфаркт, ПМП при инфаркте"] := "PMP14"


LabelMap["аллергия, Аллергия"] := "Lekarstva1"
LabelMap["глаз, Глаз"] := "Lekarstva2"
LabelMap["ухо, Ухо"] := "Lekarstva3"
LabelMap["почки, Почки"] := "Lekarstva4"
LabelMap["живот, Живот"] := "Lekarstva5"
LabelMap["суставы, Суставы"] := "Lekarstva6"
LabelMap["печень, Печень"] := "Lekarstva7"
LabelMap["горло, Горло"] := "Lekarstva8"
LabelMap["витамин, Витамин"] := "Lekarstva9"
LabelMap["геморой, Геморой"] := "Lekarstva10"
LabelMap["голова, Голова"] := "Lekarstva11"
LabelMap["потенция, Потенция"] := "Lekarstva12"
LabelMap["диарея, Диарея"] := "Lekarstva13"
LabelMap["диабет, Диабет"] := "Lekarstva14"
LabelMap["изжога, Изжога"] := "Lekarstva15"
LabelMap["кашель, Кашель"] := "Lekarstva16"
LabelMap["пузырь, Пузырь"] := "Lekarstva17"
LabelMap["мигрень, Мигрень"] := "Lekarstva18"
LabelMap["насморк, Насморк"] := "Lekarstva19"
LabelMap["ожог, Ожог"] := "Lekarstva20"
LabelMap["повышенное, Повышенное"] := "Lekarstva21"
LabelMap["пониженное, Пониженное"] := "Lekarstva22"
LabelMap["жар, Жар"] := "Lekarstva23"
LabelMap["судороги, Судороги"] := "Lekarstva24"
LabelMap["сердце, Сердце"] := "Lekarstva25"
LabelMap["тошнота, Тошнота"] := "Lekarstva26"
LabelMap["обезбол, Обезбол"] := "Lekarstva27"
LabelMap["успокоительное, Успокоительное"] := "Lekarstva28"
LabelMap["бессонница, Бессонница"] := "Lekarstva29"
LabelMap["стресс, Стресс"] := "Lekarstva30"
LabelMap["температура, Температура"] := "Lekarstva31"
LabelMap["астма, Астма"] := "Lekarstva32"
LabelMap["понос, Понос"] := "Lekarstva33"
LabelMap["язва, Язва"] := "Lekarstva34"
LabelMap["молочница, Молочница"] := "Lekarstva35"
LabelMap["инфаркт, Инфаркт"] := "Lekarstva36"
LabelMap["головокружение, Головокружение"] := "Lekarstva37"
LabelMap["гастрит, Гастрит"] := "Lekarstva38"
LabelMap["зубная, Зубная"] := "Lekarstva39"
LabelMap["глисты, Глисты"] := "Lekarstva40"
LabelMap["противовирусные, Противовирусные"] := "Lekarstva41"
LabelMap["инсульт, Инсульт"] := "Lekarstva42"
LabelMap["антисептики, Антисептики"] := "Lekarstva43"
LabelMap["вздутие, Вздутие"] := "Lekarstva44"
LabelMap["грибок, Грибок"] := "Lekarstva45"
LabelMap["чесотка, Чесотка"] := "Lekarstva46"
LabelMap["член, Член"] := "Lekarstva47"
LabelMap["менструация, Менструация"] := "Lekarstva48"


Keys := []
for Label, Func in LabelMap {
    Loop, Parse, Label, `,
    {
        word := Trim(A_LoopField)
        StringLower, wordLower, word
        Keys.Push({key: wordLower, func: Func})
    }
}

; Сортировка по алфавиту
Keys.Sort("CompareKeys")
CompareKeys(a, b) {
    return (a.key < b.key) ? -1 : (a.key > b.key)
}

; --- Ввод от пользователя ---
InputBox, UserInput, Поиск, Введите слово (например ЭКГ или часть слова):
if ErrorLevel {
    return
}

StringLower, UserInputLower, UserInput

; --- Двоичный поиск (точное совпадение) ---
low := 1
high := Keys.MaxIndex()
found := false

while (low <= high) {
    mid := (low + high) // 2
    current := Keys[mid].key

    if (UserInputLower = current) {
        Gosub, % Keys[mid].func
        found := true
        break
    } else if (UserInputLower < current) {
        high := mid - 1
    } else {
        low := mid + 1
    }
}

; --- Если точного совпадения нет, ищем по частичному совпадению ---
if (!found) {
    for i, obj in Keys {
        if (InStr(obj.key, UserInputLower)) {
            Gosub, % obj.func
            found := true
            break
        }
    }
}

; --- Если вообще ничего не нашли ---
if (!found)
    MsgBox,64, Ничего не найдено, Ничего не найдено.
return




Offers:
SoundPlay,   C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_14.mp3

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

Gui, 10:Add, Picture, x330 y7 w48 w48 +BackgroundTrans gSelectObjects1,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x330 y47 w48 w48 +BackgroundTrans gSelectObjects2,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x330 y87 w48 w48 +BackgroundTrans gSelectObjects3,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x330 y127 w48 w48 +BackgroundTrans gSelectObjects4 ,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x330 y167 w48 w48 +BackgroundTrans gSelectObjects5,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x330 y207 w48 w48 +BackgroundTrans gSelectObjects6,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x330 y247 w48 w48 +BackgroundTrans gSelectObjects7,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x330 y287 w48 w48 +BackgroundTrans gSelectObjects8,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x330 y327 w48 w48 +BackgroundTrans gSelectObjects9,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x330 y367 w48 w48 +BackgroundTrans gSelectObjects10,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x330 y407 w48 w48 +BackgroundTrans gSelectObjects11,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x330 y447 w48 w48 +BackgroundTrans gSelectObjects12,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x330 y487 w48 w48 +BackgroundTrans gSelectObjects13,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x330 y527 w48 w48 +BackgroundTrans gSelectObjects14,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x330 y567 w48 w48 +BackgroundTrans gSelectObjects15,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x330 y607 w48 w48 +BackgroundTrans gSelectObjects16,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x330 y647 w48 w48 +BackgroundTrans gSelectObjects49,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png


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




Gui, 10:Add, Picture, x720 y7 w48 w48 +BackgroundTrans gSelectObjects17,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x720 y47 w48 w48 +BackgroundTrans gSelectObjects18,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x720 y87 w48 w48 +BackgroundTrans gSelectObjects19,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x720 y127 w48 w48 +BackgroundTrans gSelectObjects20 ,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x720 y167 w48 w48 +BackgroundTrans gSelectObjects21,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x720 y207 w48 w48 +BackgroundTrans gSelectObjects22,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x720 y247 w48 w48 +BackgroundTrans gSelectObjects23,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x720 y287 w48 w48 +BackgroundTrans gSelectObjects24,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x720 y327 w48 w48 +BackgroundTrans gSelectObjects25,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x720 y367 w48 w48 +BackgroundTrans gSelectObjects26,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x720 y407 w48 w48 +BackgroundTrans gSelectObjects27,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x720 y447 w48 w48 +BackgroundTrans gSelectObjects28,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x720 y487 w48 w48 +BackgroundTrans gSelectObjects29,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x720 y527 w48 w48 +BackgroundTrans gSelectObjects30,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x720 y567 w48 w48 +BackgroundTrans gSelectObjects31,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x720 y607 w48 w48 +BackgroundTrans gSelectObjects32,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x720 y647 w48 w48 +BackgroundTrans gSelectObjects50,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png


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


Gui, 10:Add, Picture, x1110 y7 w48 w48 +BackgroundTrans gSelectObjects33,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y47 w48 w48 +BackgroundTrans gSelectObjects34,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y87 w48 w48 +BackgroundTrans gSelectObjects35,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y127 w48 w48 +BackgroundTrans gSelectObjects36,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y167 w48 w48 +BackgroundTrans gSelectObjects37,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y207 w48 w48 +BackgroundTrans gSelectObjects38,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y247 w48 w48 +BackgroundTrans gSelectObjects39,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y287 w48 w48 +BackgroundTrans gSelectObjects40,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y327 w48 w48 +BackgroundTrans gSelectObjects41,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y367 w48 w48 +BackgroundTrans gSelectObjects42,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y407 w48 w48 +BackgroundTrans gSelectObjects43,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y447 w48 w48 +BackgroundTrans gSelectObjects44,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y487 w48 w48 +BackgroundTrans gSelectObjects45,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y527 w48 w48 +BackgroundTrans gSelectObjects46,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y567 w48 w48 +BackgroundTrans gSelectObjects47,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 10:Add, Picture, x1110 y607 w48 w48 +BackgroundTrans gSelectObjects48,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png

Gui, 10:Add, Picture, x1110 y635 w64 h64  +BackgroundTrans gChangeOffers,   C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Ok_64.png

Gui, 10:Show, w1200 h700, Редактор отыгровок сочетание клавиш
Return


Editor:
SoundPlay,   C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_14.mp3
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


Gui, 11:Add, Picture, x330 y7 w48 w48 +BackgroundTrans gSelectObjects51,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x330 y47 w48 w48 +BackgroundTrans gSelectObjects52,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x330 y87 w48 w48 +BackgroundTrans gSelectObjects53,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x330 y127 w48 w48 +BackgroundTrans gSelectObjects54 ,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x330 y167 w48 w48 +BackgroundTrans gSelectObjects55,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x330 y207 w48 w48 +BackgroundTrans gSelectObjects56,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x330 y247 w48 w48 +BackgroundTrans gSelectObjects57,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x330 y287 w48 w48 +BackgroundTrans gSelectObjects58,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x330 y327 w48 w48 +BackgroundTrans gSelectObjects59,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x330 y367 w48 w48 +BackgroundTrans gSelectObjects60,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x330 y407 w48 w48 +BackgroundTrans gSelectObjects61,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x330 y447 w48 w48 +BackgroundTrans gSelectObjects62,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x330 y487 w48 w48 +BackgroundTrans gSelectObjects63,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x330 y527 w48 w48 +BackgroundTrans gSelectObjects64,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x330 y567 w48 w48 +BackgroundTrans gSelectObjects65,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x330 y607 w48 w48 +BackgroundTrans gSelectObjects66,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png


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

Gui, 11:Add, Picture, x720 y7 w48 w48 +BackgroundTrans gSelectObjects67, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x720 y47 w48 w48 +BackgroundTrans gSelectObjects68, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x720 y87 w48 w48 +BackgroundTrans gSelectObjects69, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x720 y127 w48 w48 +BackgroundTrans gSelectObjects70 , C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x720 y167 w48 w48 +BackgroundTrans gSelectObjects71, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x720 y207 w48 w48 +BackgroundTrans gSelectObjects72, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x720 y247 w48 w48 +BackgroundTrans gSelectObjects73, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x720 y287 w48 w48 +BackgroundTrans gSelectObjects74, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x720 y327 w48 w48 +BackgroundTrans gSelectObjects75, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x720 y367 w48 w48 +BackgroundTrans gSelectObjects76, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x720 y407 w48 w48 +BackgroundTrans gSelectObjects77, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x720 y447 w48 w48 +BackgroundTrans gSelectObjects78, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x720 y487 w48 w48 +BackgroundTrans gSelectObjects79, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x720 y527 w48 w48 +BackgroundTrans gSelectObjects80, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x720 y567 w48 w48 +BackgroundTrans gSelectObjects81, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x720 y607 w48 w48 +BackgroundTrans gSelectObjects82, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png


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

Gui, 11:Add, Picture, x1110 y7 w48 w48 +BackgroundTrans gSelectObjects83, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y47 w48 w48 +BackgroundTrans gSelectObjects84, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y87 w48 w48 +BackgroundTrans gSelectObjects85, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y127 w48 w48 +BackgroundTrans gSelectObjects86, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y167 w48 w48 +BackgroundTrans gSelectObjects87, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y207 w48 w48 +BackgroundTrans gSelectObjects88, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y247 w48 w48 +BackgroundTrans gSelectObjects89, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y287 w48 w48 +BackgroundTrans gSelectObjects90, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y327 w48 w48 +BackgroundTrans gSelectObjects91, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y367 w48 w48 +BackgroundTrans gSelectObjects92, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y407 w48 w48 +BackgroundTrans gSelectObjects93, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y447 w48 w48 +BackgroundTrans gSelectObjects94, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y487 w48 w48 +BackgroundTrans gSelectObjects95, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y527 w48 w48 +BackgroundTrans gSelectObjects96, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png
Gui, 11:Add, Picture, x1110 y567 w48 w48 +BackgroundTrans gSelectObjects97, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skrinshoty.png

Gui, 11:Add, Picture, x1115 y605 w64 h64  +BackgroundTrans gChangeOffers,   C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Ok_64.png
Gui, 11:Show, w1200 h670, Редактор отыгровок команды
return



SelectObjects1:
    SelectObjects(1)
return

SelectObjects2:
    SelectObjects(2)
return

SelectObjects3:
    SelectObjects(3)
return

SelectObjects4:
    SelectObjects(4)
return

SelectObjects5:
    SelectObjects(5)
return

SelectObjects6:
    SelectObjects(6)
return

SelectObjects7:
    SelectObjects(7)
return

SelectObjects8:
    SelectObjects(8)
return

SelectObjects9:
    SelectObjects(9)
return

SelectObjects10:
    SelectObjects(10)
return

SelectObjects11:
    SelectObjects(11)
return

SelectObjects12:
    SelectObjects(12)
return

SelectObjects13:
    SelectObjects(13)
return

SelectObjects14:
    SelectObjects(14)
return

SelectObjects15:
    SelectObjects(15)
return

SelectObjects16:
    SelectObjects(16)
return

SelectObjects17:
    SelectObjects(17)
return

SelectObjects18:
    SelectObjects(18)
return

SelectObjects19:
    SelectObjects(19)
return

SelectObjects20:
    SelectObjects(20)
return

SelectObjects21:
    SelectObjects(21)
return

SelectObjects22:
    SelectObjects(22)
return

SelectObjects23:
    SelectObjects(23)
return

SelectObjects24:
    SelectObjects(24)
return

SelectObjects25:
    SelectObjects(25)
return

SelectObjects26:
    SelectObjects(26)
return

SelectObjects27:
    SelectObjects(27)
return

SelectObjects28:
    SelectObjects(28)
return

SelectObjects29:
    SelectObjects(29)
return

SelectObjects30:
    SelectObjects(30)
return

SelectObjects31:
    SelectObjects(31)
return

SelectObjects32:
    SelectObjects(32)
return

SelectObjects33:
    SelectObjects(33)
return

SelectObjects34:
    SelectObjects(34)
return

SelectObjects35:
    SelectObjects(35)
return

SelectObjects36:
    SelectObjects(36)
return

SelectObjects37:
    SelectObjects(37)
return

SelectObjects38:
    SelectObjects(38)
return

SelectObjects39:
    SelectObjects(39)
return

SelectObjects40:
    SelectObjects(40)
return

SelectObjects41:
    SelectObjects(41)
return

SelectObjects42:
    SelectObjects(42)
return

SelectObjects43:
    SelectObjects(43)
return

SelectObjects44:
    SelectObjects(44)
return

SelectObjects45:
    SelectObjects(45)
return

SelectObjects46:
    SelectObjects(46)
return

SelectObjects47:
    SelectObjects(47)
return

SelectObjects48:
    SelectObjects(48)
return

SelectObjects49:
    SelectObjects(49)
return

SelectObjects50:
    SelectObjects(50)
return

SelectObjects51:
    SelectObjects(51)
return

SelectObjects52:
    SelectObjects(52)
return

SelectObjects53:
    SelectObjects(53)
return

SelectObjects54:
    SelectObjects(54)
return

SelectObjects55:
    SelectObjects(55)
return

SelectObjects56:
    SelectObjects(56)
return

SelectObjects57:
    SelectObjects(57)
return

SelectObjects58:
    SelectObjects(58)
return

SelectObjects59:
    SelectObjects(59)
return

SelectObjects60:
    SelectObjects(60)
return

SelectObjects61:
    SelectObjects(61)
return

SelectObjects62:
    SelectObjects(62)
return

SelectObjects63:
    SelectObjects(63)
return

SelectObjects64:
    SelectObjects(64)
return

SelectObjects65:
    SelectObjects(65)
return

SelectObjects66:
    SelectObjects(66)
return

SelectObjects67:
    SelectObjects(67)
return

SelectObjects68:
    SelectObjects(68)
return

SelectObjects69:
    SelectObjects(69)
return

SelectObjects70:
    SelectObjects(70)
return

SelectObjects71:
    SelectObjects(71)
return

SelectObjects72:
    SelectObjects(72)
return

SelectObjects73:
    SelectObjects(73)
return

SelectObjects74:
    SelectObjects(74)
return

SelectObjects75:
    SelectObjects(75)
return

SelectObjects76:
    SelectObjects(76)
return

SelectObjects77:
    SelectObjects(77)
return

SelectObjects78:
    SelectObjects(78)
return

SelectObjects79:
    SelectObjects(79)
return

SelectObjects80:
    SelectObjects(80)
return

SelectObjects81:
    SelectObjects(81)
return

SelectObjects82:
    SelectObjects(82)
return

SelectObjects83:
    SelectObjects(83)
return

SelectObjects84:
    SelectObjects(84)
return

SelectObjects85:
    SelectObjects(85)
return

SelectObjects86:
    SelectObjects(86)
return

SelectObjects87:
    SelectObjects(87)
return

SelectObjects88:
    SelectObjects(88)
return

SelectObjects89:
    SelectObjects(89)
return

SelectObjects90:
    SelectObjects(90)
return

SelectObjects91:
    SelectObjects(91)
return

SelectObjects92:
    SelectObjects(92)
return

SelectObjects93:
    SelectObjects(93)
return

SelectObjects94:
    SelectObjects(94)
return

SelectObjects95:
    SelectObjects(95)
return

SelectObjects96:
    SelectObjects(96)
return

SelectObjects97:
    SelectObjects(97)
return

ChangeMZ:
SoundPlay,  C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_5_1.mp3
Gui, Submit, NoHide
Sleep 400
IniWrite, %JWI%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, JWI
IniWrite, %TAG%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, TAG
IniWrite, %Name%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, Name
IniWrite, %Surname%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, Surname
IniWrite, %Middle_Name%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, Middle_Name
IniWrite, %Bol_ro%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, Bol_ro
IniWrite, %Rank%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, Rank
IniWrite, %pol%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, pol
DetectHiddenWindows, On
CloseBadProcesses()
Reload

ChangeOffers:
SoundPlay,  C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_5_1.mp3
Gui, Submit, NoHide

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

DetectHiddenWindows, On
CloseBadProcesses()
Reload
return


ChangeRaskladka_MZ:
SoundPlay,  C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_5_1.mp3
Gui, Submit, NoHide

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
endNum := 700

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
DetectHiddenWindows, On
CloseBadProcesses()
Reload
return



ChangeInfoDUVD:
Gui, Submit, NoHide
SoundPlay,  C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_5_1.mp3
Sleep 400
IniWrite, %pol%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, pol
IniWrite, %rankDUVD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, rankDUVD7
IniWrite, %surnameDUVD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, surnameDUVD7
IniWrite, %CityDUVD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, CityDUVD7
IniWrite, %PozyvnoyDUVD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, PozyvnoyDUVD7
IniWrite, %TegDUVD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, TegDUVD7
IniWrite, %NameDUVD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, NameDUVD7
IniWrite, %postDUVD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, postDUVD7
DetectHiddenWindows, On
CloseBadProcesses()
Reload
return



ChangeRaskladka_DUVD:
Gui, Submit, NoHide
SoundPlay,  C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_5_1.mp3
; Настройки
iniPathKPRPDUVD := "C:\ProgramData\KPRP\KPRP-main\KPRPDUVD.ini"
sectionSlag1 := "Slag"
prefixSvoyeDUVD_ := "SvoyeDUVD_"
startNum := 1
endNum := 50

; Основной цикл записи
Loop, % endNum - startNum + 1
{
    currentNum := startNum + A_Index - 1
    varName := prefixSvoyeDUVD_ . currentNum
    IniWrite, % %varName%, %iniPathKPRPDUVD%, %sectionSlag1%, %varName%
}


; Конфигурационные параметры
iniPathKPRPDUVD := "C:\ProgramData\KPRP\KPRP-main\KPRPDUVD.ini"
sectionUser := "User"
prefixKPRPDUVD := "KPRPDUVD"  ; Префикс переменных
startNum := 1          ; Начальный номер
endNum := 50           ; Конечный номер

; Основной цикл записи
Loop, % endNum - startNum + 1
{
    currentNum := startNum + A_Index - 1
    varName := prefixKPRPDUVD . currentNum
    IniWrite, % %varName%, %iniPathKPRPDUVD%, %sectionUser%, %varName%
}

iniPathRaskladka_DUVD := "C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD.ini"
sectionEdit := "Edit"
baseNameDUVD7 := "DUVD7"


iniPathRaskladka_DUVD := "C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD.ini"
sectionEdit := "Edit"
baseNameDUVD7 := "DUVD7"

Loop, 28  ; Рассчитываем количество итераций: (281-11)/10 + 1 = 28
{
    currentNum := 11 + (A_Index-1)*10
    varName := currentNum . baseNameDUVD7
    IniWrite, % %varName%, %iniPathRaskladka_DUVD%, %sectionEdit%, %varName%
}

DetectHiddenWindows, On
CloseBadProcesses()
Reload
return


ChangeInfoGIBDD:
Gui, Submit, NoHide
SoundPlay,  C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_5_1.mp3
Sleep 400
IniWrite, %pol%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, pol
IniWrite, %RankGIBDD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, RankGIBDD7
IniWrite, %SurnameGIBDD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, SurnameGIBDD7
IniWrite, %FamiliyaGIBDD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, FamiliyaGIBDD7
IniWrite, %OtdelGIBDD7%, C:\ProgramData\KPRP\KPRP-main\Dannyye.ini, User, OtdelGIBDD7
DetectHiddenWindows, On
CloseBadProcesses()
Reload
return


ChangeRaskladka_GIBDD:
Gui, Submit, NoHide
SoundPlay,  C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_5_1.mp3

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

DetectHiddenWindows, On
CloseBadProcesses()
Reload
return



ChangeLectures:
iniPathLectures := "C:\ProgramData\KPRP\KPRP-main\Lectures.ini"
sectionUser := "User"
prefixLectures := "Lectures"
startNum := 1
endNum := 1260

; Запись значений в INI-файл
Loop, % endNum - startNum + 1
{
    currentNum := startNum + A_Index - 1
    varName := prefixLectures . currentNum
    IniWrite, % %varName%, %iniPathLectures%, %sectionUser%, %varName%
}
DetectHiddenWindows, On
CloseBadProcesses()
Reload
Return



Change:
SoundPlay,  C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_5_1.mp3
Gui, Submit, NoHide

IniWrite, %Skrinshot%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Skrinshot
IniWrite, %Zaderzhka%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Zaderzhka
IniWrite, %FonVybor%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, FonVybor
IniWrite, %Shrift%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Shrift
IniWrite, %Tsvet%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Tsvet
IniWrite, %Tsvet_1%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Tsvet_1
IniWrite, %MaxMinutes%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, MaxMinutes
IniWrite, %Taymer_Nastroyka%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Taymer_Nastroyka
IniWrite, %ImgChestToken%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, ImgChestToken
IniWrite, %vybor%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, vybor
IniWrite, %userVybor%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, userVybor
IniWrite, %Skrin_1%, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, Skrin_1

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
CloseBadProcesses()
Reload
Return


Reload:
SoundPlay,  C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_5_1.mp3
DetectHiddenWindows, On
CloseBadProcesses()
Sleep 400
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
SoundPlay,  C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_18.mp3
Sleep 700

DetectHiddenWindows, On
CloseBadProcesses()

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
SoundPlay,   C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_14.mp3
#Include *i C:\ProgramData\KPRP\KPRP-main\LecturesMZ.ahk


