SoundPlay,   C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_14.mp3

 --- Создаём основной GUI с номером 5 ---
Gui, 12: +LastFound
Gui, 12:Font, S10 Bold, %Shrift%
Gui, 12:Tab, 1
parentHWND := WinExist()

; Добавляем вкладки
Gui, 12:Add, Tab2, x0 y0 w1290 h25 c%Tsvet% +BackgroundTrans vMyTab gTabChanged1, КПРП|Общее|Журнал активности

; --- Вкладка 1 ---

Gui, 12:Show, center h650 w1200, Государственная инспекция безопасности дорожного движения | КПРП работает на коммунизм!

Gui, 12:Tab, 1

; ---------------- Константы ----------------

; Объявляем константы для стилей один раз
GWL_STYLE := -16
WS_CHILD := 0x40000000

; --- Запускаем KPRP.exe для вкладки 1 ---
appPath1 := "C:\ProgramData\KPRP\KPRP-main\Telegramkprp\KPRP.exe"
Run, %appPath1%, , , pid1
WinWait, ahk_pid %pid1%
WinGet, hwndApp1, ID, ahk_pid %pid1%

DllCall("SetParent", "Ptr", hwndApp1, "Ptr", parentHWND)
DllCall("SetWindowLongPtr", "Ptr", hwndApp1, "Int", GWL_STYLE, "Ptr", WS_CHILD)
DllCall("SetWindowPos", "Ptr", hwndApp1, "Ptr", 0, "Int", 0, "Int", 24, "Int", 1200, "Int", 626, "UInt", 0x0040)
DllCall("RedrawWindow", "Ptr", hwndApp1, "Ptr", 0, "Ptr", 0, "UInt", 0x85)

; --- Запускаем Journal.exe для вкладки 10 ---
appPath3 := "C:\ProgramData\KPRP\KPRP-main\Telegramkprp\Journal.exe"
Run, %appPath3%, , , pid3
WinWait, ahk_pid %pid3%
WinGet, hwndApp3, ID, ahk_pid %pid3%

DllCall("SetParent", "Ptr", hwndApp3, "Ptr", parentHWND)
DllCall("SetWindowLongPtr", "Ptr", hwndApp3, "Int", GWL_STYLE, "Ptr", WS_CHILD)
DllCall("SetWindowPos", "Ptr", hwndApp3, "Ptr", 0, "Int", 0, "Int", 24, "Int", 1200, "Int", 626, "UInt", 0x0040)
DllCall("RedrawWindow", "Ptr", hwndApp3, "Ptr", 0, "Ptr", 0, "UInt", 0x85)

; Скрываем окно журнала, показываем только окно КПРП
WinShow, ahk_id %hwndApp1%
WinHide, ahk_id %hwndApp3%


; --- Вкладка 2 — добавляем картинки и кнопки ---
Gui, 12:Tab, 2
Gui, 12:Add, Button, x10 y40 w300 h40 , /КоАП Пример:/КоАП19.4
Gui, 12:Add, Button, x10 y90 w300 h40 , /УК Пример:/УК5.7

Gui, 12:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Clear.png
Gui, 12:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfoGIBDD,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Police.png
Gui, 12:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditGIBDD, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka.png
Gui, 12:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Editor.png
Gui, 12:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Offers.png
Gui, 12:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Bug_report.png
Gui, 12:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Uluchsheniya.png
Gui, 12:Add, Picture, x720 y600 w48 w48   +BackgroundTrans gHelp, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Tekhpodderzhka.png
Gui, 12:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Smena_fraktsii.png
Gui, 12:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Help.png

Gui, 12:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\restart.png

Gui, 12:Add, Picture, x1000 y370 w150 h150 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\%Bol_ro_2%
Gui, 12:Add, Picture, x1000 y190 w150 h150 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\KPRP.png

Return

TabChanged1:
GuiControlGet, ActiveTab,, MyTab

if (ActiveTab = "КПРП") {
    WinShow, ahk_id %hwndApp1%
    WinHide, ahk_id %hwndApp3%
} else if (ActiveTab = "Журнал активности") {
    WinShow, ahk_id %hwndApp3%
    WinHide, ahk_id %hwndApp1%
} else {
    WinHide, ahk_id %hwndApp1%
    WinHide, ahk_id %hwndApp3%
}
return

; --- Обработчик изменения размера окна GUI ---
GuiSize1:
if (A_Gui = 12) {
    Width := A_GuiWidth
    Height := A_GuiHeight
    ; Подгоняем размер окна КПРП
    DllCall("SetWindowPos", "Ptr", hwndApp1, "Ptr", 0, "Int", 0, "Int", 24, "Int", Width, "Int", Height - 24, "UInt", 0x0040)
    ; Подгоняем размер окна журнала
    DllCall("SetWindowPos", "Ptr", hwndApp3, "Ptr", 0, "Int", 0, "Int", 24, "Int", Width, "Int", Height - 24, "UInt", 0x0040)
}
return


0001GIBDD7:
    SendTemplate("KPRPGIBDD", 1)
Return

0002GIBDD7:
    SendTemplate("KPRPGIBDD", 2)
Return

0003GIBDD7:
    SendTemplate("KPRPGIBDD", 3)
Return

0004GIBDD7:
    SendTemplate("KPRPGIBDD", 4)
Return

0005GIBDD7:
    SendTemplate("KPRPGIBDD", 5)
Return

0006GIBDD7:
    SendTemplate("KPRPGIBDD", 6)
Return

0007GIBDD7:
    SendTemplate("KPRPGIBDD", 7)
Return

0008GIBDD7:
    SendTemplate("KPRPGIBDD", 8)
Return

0009GIBDD7:
    SendTemplate("KPRPGIBDD", 9)
Return

0010GIBDD7:
    SendTemplate("KPRPGIBDD", 10)
Return

0011GIBDD7:
    SendTemplate("KPRPGIBDD", 11)
Return

0012GIBDD7:
    SendTemplate("KPRPGIBDD", 12)
Return

0013GIBDD7:
    SendTemplate("KPRPGIBDD", 13)
Return

0014GIBDD7:
    SendTemplate("KPRPGIBDD", 14)
Return

0015GIBDD7:
    SendTemplate("KPRPGIBDD", 15)
Return

0016GIBDD7:
    SendTemplate("KPRPGIBDD", 16)
Return

0017GIBDD7:
    SendTemplate("KPRPGIBDD", 17)
Return

0018GIBDD7:
    SendTemplate("KPRPGIBDD", 18)
Return

0019GIBDD7:
    SendTemplate("KPRPGIBDD", 19)
Return

0020GIBDD7:
    SendTemplate("KPRPGIBDD", 20)
Return

0021GIBDD7:
    SendTemplate("KPRPGIBDD", 21)
Return

0022GIBDD7:
    SendTemplate("KPRPGIBDD", 22)
Return

0023GIBDD7:
    SendTemplate("KPRPGIBDD", 23)
Return

0024GIBDD7:
    SendTemplate("KPRPGIBDD", 24)
Return

0025GIBDD7:
    SendTemplate("KPRPGIBDD", 25)
Return

0026GIBDD7:
    SendTemplate("KPRPGIBDD", 26)
Return

0027GIBDD7:
    SendTemplate("KPRPGIBDD", 27)
Return


InfoGIBDD:
SoundPlay,  C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_14.mp3

Gui, 19:Destroy,
Gui, 19:Add, Picture, x0 y10 w475   h672 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Vod_GIBDD.png
Gui, 19:Add, Picture, x470 y600 w64 h64   +BackgroundTrans gChangeInfoGIBDD, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Ok_64.png

Gui, 19:Font, S15 C%Tsvet_1% Bold, Consolas
Gui, 19:Add, ComboBox, x90 y40  w425  vRankGIBDD7, %RankGIBDD7%||Рядовой|Сержант|Старшина|Прапорщик|Лейтенант|Старший лейтенант|Капитан|Майор|Подполковник|Полковник|Генерал
Gui, 19:Add, ComboBox, x90 y130 w425 vOtdelGIBDD7, %OtdelGIBDD7%
Gui, 19:Add, Edit, x90 y230 w425 Disabled, 
Gui, 19:Add, Edit, x90 y320 w425 vSurnameGIBDD7, %SurnameGIBDD7%
Gui, 19:Add, Edit, x90 y420 w425 Disabled, 
Gui, 19:Add, DropDownList, x90 y510 w425 vBol_ro, %Bol_ro%||Мирный|Невский|Приволжск
Gui, 19:Add, DropDownList, x90 y610  w225 vpol,%pol%||Мужской|Женский

Gui, 19:show, center , Данные
Return


EditGIBDD:
SoundPlay,   C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_14.mp3

Gui, 18:Destroy,
IniRead, 11GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 11GIBDD7
IniRead, 21GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 21GIBDD7
IniRead, 31GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 31GIBDD7
IniRead, 41GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 41GIBDD7
IniRead, 51GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 51GIBDD7
IniRead, 61GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 61GIBDD7
IniRead, 71GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 71GIBDD7
IniRead, 81GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 81GIBDD7
IniRead, 91GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 91GIBDD7
IniRead, 101GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 101GIBDD7
IniRead, 111GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 111GIBDD7
IniRead, 121GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 121GIBDD7
IniRead, 131GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 131GIBDD7
IniRead, 141GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 141GIBDD7
IniRead, 151GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 151GIBDD7
IniRead, 161GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 161GIBDD7
IniRead, 171GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 171GIBDD7
IniRead, 181GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 181GIBDD7
IniRead, 191GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 191GIBDD7
IniRead, 201GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 201GIBDD7
IniRead, 211GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 211GIBDD7
IniRead, 221GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 221GIBDD7
IniRead, 231GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 231GIBDD7
IniRead, 241GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 241GIBDD7
IniRead, 251GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 251GIBDD7
IniRead, 261GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 261GIBDD7
IniRead, 271GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 271GIBDD7
IniRead, 281GIBDD7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_GIBDD.ini , Edit, 281GIBDD7


Gui, 18:Font, S11 C%Tsvet_1% Bold, Arial

Gui, 18:Add, Hotkey, x10 y26 w150 v11GIBDD7, %odinGIBDD7%
Gui, 18:Add, Hotkey, x10 y86 w150 v21GIBDD7, %dvaGIBDD7%
Gui, 18:Add, Hotkey, x10 y146 w150 v31GIBDD7, %triGIBDD7%
Gui, 18:Add, Hotkey, x10 y206 w150 v41GIBDD7, %chetireGIBDD7%
Gui, 18:Add, Hotkey, x10 y266 w150 v51GIBDD7, %pyatGIBDD7%
Gui, 18:Add, Hotkey, x10 y326 w150 v61GIBDD7, %shestGIBDD7%
Gui, 18:Add, Hotkey, x10 y386 w150 v71GIBDD7, %semGIBDD7%
Gui, 18:Add, Hotkey, x10 y446 w150 v81GIBDD7, %vosemGIBDD7%
Gui, 18:Add, Hotkey, x10 y506 w150 v91GIBDD7, %devyatGIBDD7%
Gui, 18:Add, Hotkey, x10 y566 w150 v101GIBDD7, %desyatGIBDD7%
Gui, 18:Add, Hotkey, x10 y626 w150 v111GIBDD7, %odinadcatGIBDD7%
Gui, 18:Add, Hotkey, x10 y686 w150 v121GIBDD7, %dvinadcatGIBDD7%
Gui, 18:Add, Hotkey, x10 y746 w150  v251GIBDD7, %dvadcatpyatGIBDD7%


Gui, 18:Add, Hotkey, x500 y26 w150 v131GIBDD7, %trinadcatGIBDD7%
Gui, 18:Add, Hotkey, x500 y86 w150 v141GIBDD7, %chetirnadcatGIBDD7%
Gui, 18:Add, Hotkey, x500 y146 w150 v151GIBDD7, %pyatnadcatGIBDD7%
Gui, 18:Add, Hotkey, x500 y206 w150 v161GIBDD7, %shestnadcatGIBDD7%
Gui, 18:Add, Hotkey, x500 y266 w150 v171GIBDD7, %semnagcatGIBDD7%
Gui, 18:Add, Hotkey, x500 y326 w150 v181GIBDD7, %vosemnagcatGIBDD7%
Gui, 18:Add, Hotkey, x500 y386 w150 v191GIBDD7, %devyatnadcatGIBDD7%
Gui, 18:Add, Hotkey, x500 y446 w150 v201GIBDD7, %dvadcatGIBDD7%
Gui, 18:Add, Hotkey, x500 y506 w150 v211GIBDD7, %dvadcatodinGIBDD7%
Gui, 18:Add, Hotkey, x500 y566 w150 v221GIBDD7, %dvadcatdvaGIBDD7%
Gui, 18:Add, Hotkey, x500 y626 w150 v231GIBDD7, %dvadcattriGIBDD7%
Gui, 18:Add, Hotkey, x500 y686 w150 v241GIBDD7, %dvadcatchetireGIBDD7%
Gui, 18:Add, Edit, x500 y746  w150 Disabled, Alt+P 


Gui, 18:Add, Edit, x170 y26 w180 vSvoyeGIBDD_1, %SvoyeGIBDD_1%
Gui, 18:Add, Edit, x170 y86 w180 vSvoyeGIBDD_2, %SvoyeGIBDD_2%
Gui, 18:Add, Edit, x170 y146 w180 vSvoyeGIBDD_3, %SvoyeGIBDD_3%
Gui, 18:Add, Edit, x170 y206 w180 vSvoyeGIBDD_4, %SvoyeGIBDD_4%
Gui, 18:Add, Edit, x170 y266 w180 vSvoyeGIBDD_5, %SvoyeGIBDD_5%
Gui, 18:Add, Edit, x170 y326 w180 vSvoyeGIBDD_6, %SvoyeGIBDD_6%
Gui, 18:Add, Edit, x170 y386 w180 vSvoyeGIBDD_7, %SvoyeGIBDD_7%
Gui, 18:Add, Edit, x170 y446 w180 vSvoyeGIBDD_8, %SvoyeGIBDD_8%
Gui, 18:Add, Edit, x170 y506 w180 vSvoyeGIBDD_9, %SvoyeGIBDD_9%
Gui, 18:Add, Edit, x170 y566 w180 vSvoyeGIBDD_10, %SvoyeGIBDD_10%
Gui, 18:Add, Edit, x170 y626 w180 vSvoyeGIBDD_11, %SvoyeGIBDD_11%
Gui, 18:Add, Edit, x170 y686 w180 vSvoyeGIBDD_12, %SvoyeGIBDD_12%
Gui, 18:Add, Edit, x170 y746 w180 vSvoyeGIBDD_25, %SvoyeGIBDD_25%

Gui, 18:Add, Edit, x660 y26 w180 vSvoyeGIBDD_13, %SvoyeGIBDD_13%
Gui, 18:Add, Edit, x660 y86 w180 vSvoyeGIBDD_14, %SvoyeGIBDD_14%
Gui, 18:Add, Edit, x660 y146 w180 vSvoyeGIBDD_15, %SvoyeGIBDD_15%
Gui, 18:Add, Edit, x660 y206 w180 vSvoyeGIBDD_16, %SvoyeGIBDD_16%
Gui, 18:Add, Edit, x660 y266 w180 vSvoyeGIBDD_17, %SvoyeGIBDD_17%
Gui, 18:Add, Edit, x660 y326 w180 vSvoyeGIBDD_18, %SvoyeGIBDD_18%
Gui, 18:Add, Edit, x660 y386 w180 vSvoyeGIBDD_19, %SvoyeGIBDD_19%
Gui, 18:Add, Edit, x660 y446 w180 vSvoyeGIBDD_20, %SvoyeGIBDD_20%
Gui, 18:Add, Edit, x660 y506 w180 vSvoyeGIBDD_21, %SvoyeGIBDD_21%
Gui, 18:Add, Edit, x660 y566 w180 vSvoyeGIBDD_22, %SvoyeGIBDD_22%
Gui, 18:Add, Edit, x660 y626 w180 vSvoyeGIBDD_23, %SvoyeGIBDD_23%
Gui, 18:Add, Edit, x660 y686 w180 vSvoyeGIBDD_24, %SvoyeGIBDD_24%
Gui, 18:Add, Edit, x660 y746 w70  Disabled, пауза


Gui, 18:Add, Picture, x370 y16 w48 h48 +BackgroundTrans gSelectKPRPGIBDD1,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y76 w48 h48 +BackgroundTrans gSelectKPRPGIBDD2,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y136 w48 h48 +BackgroundTrans gSelectKPRPGIBDD3,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y196 w48 h48 +BackgroundTrans gSelectKPRPGIBDD4 ,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y256 w48 h48 +BackgroundTrans gSelectKPRPGIBDD5,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y316 w48 h48 +BackgroundTrans gSelectKPRPGIBDD6,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y376 w48 h48 +BackgroundTrans gSelectKPRPGIBDD7,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y436 w48 h48 +BackgroundTrans gSelectKPRPGIBDD8,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y496 w48 h48 +BackgroundTrans gSelectKPRPGIBDD9,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y556 w48 h48 +BackgroundTrans gSelectKPRPGIBDD10,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y616 w48 h48 +BackgroundTrans gSelectKPRPGIBDD11,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y676 w48 h48 +BackgroundTrans gSelectKPRPGIBDD12,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y736 w48 h48 +BackgroundTrans gSelectKPRPGIBDD25,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png

Gui, 18:Add, Picture, x860 y16 w48 h48 +BackgroundTrans gSelectKPRPGIBDD13,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y76 w48 h48 +BackgroundTrans gSelectKPRPGIBDD14,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y136 w48 h48 +BackgroundTrans gSelectKPRPGIBDD15,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y196 w48 h48 +BackgroundTrans gSelectKPRPGIBDD16,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y256 w48 h48 +BackgroundTrans gSelectKPRPGIBDD17,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y316 w48 h48 +BackgroundTrans gSelectKPRPGIBDD18,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y376 w48 h48 +BackgroundTrans gSelectKPRPGIBDD19,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y436 w48 h48 +BackgroundTrans gSelectKPRPGIBDD20,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y496 w48 h48 +BackgroundTrans gSelectKPRPGIBDD21,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y556 w48 h48 +BackgroundTrans gSelectKPRPGIBDD22,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y616 w48 h48 +BackgroundTrans gSelectKPRPGIBDD23,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y676 w48 h48 +BackgroundTrans gSelectKPRPGIBDD24,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png

Gui, 18:Add, Picture, x440 y16 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD1,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y76 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD2,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y136 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD3,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y196 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD4 ,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y256 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD5,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y316 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD6,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y376 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD7,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y436 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD8,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y496 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD9,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y556 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD10,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y616 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD11,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y676 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD12,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y736 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD25,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 18:Add, Picture, x930 y16 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD13,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y76 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD14,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y136 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD15,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y196 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD16,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y256 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD17,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y316 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD18,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y376 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD19,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y436 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD20,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y496 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD21,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y556 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD22,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y616 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD23,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y676 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD24,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 18:Add, Picture, x930 y725 w64 h64  +BackgroundTrans gChangeRaskladka_GIBDD,   C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Ok_64.png
Gui, 18:Add, Picture, x850 y725 w64 h64  +BackgroundTrans gInfovariableGIBDD7,   C:\ProgramData\KPRP\KPRP-main\KPRPPNG\InfovariableMZ.png
Gui, 18:Add, Picture, x770 y725 w64 h64  +BackgroundTrans gVoprosKPRPMZ,   C:\ProgramData\KPRP\KPRP-main\KPRPPNG\VoprosKPRPMZ.png


Gui, 18:Show, w1000 h790, Редактор раскладки сочетания клавиш
Return


InfovariableGIBDD7:
 MsgBox, 64, Информация, % "
(
Значения переменных:

%floor%: " floor " - Добавляет а на конце.
%Female%: " Female " - Добавляет ла на конце.
%Var%: " Var " - Доброго времени суток, по МСК.
%SurnameGIBDD7%: " SurnameGIBDD7 " - Фамилия.
%RankGIBDD7 %: " RankDUVD7 " - Должность.
%OtdelGIBDD7%: " OtdelGIBDD7 " - Ваш отдел.
%CityGIBDD7%: " CityGIBDD7 " - Город работы.
%Skrin_1%: " Skrin_1 " - Делает скриншот.

)"
  
Return


NotebookKPRPGIBDD1: 
Run, notepad.exe "%KPRPGIBDD1%" 
return
NotebookKPRPGIBDD2: 
Run, notepad.exe "%KPRPGIBDD2%"
 return
NotebookKPRPGIBDD3:
Run, notepad.exe "%KPRPGIBDD3%" 
return
NotebookKPRPGIBDD4: 
Run, notepad.exe "%KPRPGIBDD4%" 
return
NotebookKPRPGIBDD5: 
Run, notepad.exe "%KPRPGIBDD5%" 
return
NotebookKPRPGIBDD6: 
Run, notepad.exe "%KPRPGIBDD6%" 
return
NotebookKPRPGIBDD7:
Run, notepad.exe "%KPRPGIBDD7%" 
return
NotebookKPRPGIBDD8: 
Run, notepad.exe "%KPRPGIBDD8%" 
return
NotebookKPRPGIBDD9: 
Run, notepad.exe "%KPRPGIBDD9%" 
return
NotebookKPRPGIBDD10: 
Run, notepad.exe "%KPRPGIBDD10%"
return
NotebookKPRPGIBDD11: 
Run, notepad.exe "%KPRPGIBDD11%" 
return
NotebookKPRPGIBDD12: 
Run, notepad.exe "%KPRPGIBDD12%" 
return
NotebookKPRPGIBDD13: 
Run, notepad.exe "%KPRPGIBDD13%" 
return
NotebookKPRPGIBDD14: 
Run, notepad.exe "%KPRPGIBDD14%" 
return
NotebookKPRPGIBDD15: 
Run, notepad.exe "%KPRPGIBDD15%" 
return
NotebookKPRPGIBDD16: 
Run, notepad.exe "%KPRPGIBDD16%" 
return
NotebookKPRPGIBDD17: 
Run, notepad.exe "%KPRPGIBDD17%" 
return
NotebookKPRPGIBDD18: 
Run, notepad.exe "%KPRPGIBDD18%" 
return
NotebookKPRPGIBDD19: 
Run, notepad.exe "%KPRPGIBDD19%" 
return
NotebookKPRPGIBDD20: 
Run, notepad.exe "%KPRPGIBDD20%" 
return
NotebookKPRPGIBDD21: 
Run, notepad.exe "%KPRPGIBDD21%" 
return
NotebookKPRPGIBDD22: 
Run, notepad.exe "%KPRPGIBDD22%" 
return
NotebookKPRPGIBDD23: 
Run, notepad.exe "%KPRPGIBDD23%" 
return
NotebookKPRPGIBDD24: 
Run, notepad.exe "%KPRPGIBDD24%" 
return
NotebookKPRPGIBDD25: 
Run, notepad.exe "%KPRPGIBDD25%" 
return
NotebookKPRPGIBDD26: 
Run, notepad.exe "%KPRPGIBDD26%" 
return
NotebookKPRPGIBDD27: 
Run, notepad.exe "%KPRPGIBDD27%" 
return
NotebookKPRPGIBDD28: 
Run, notepad.exe "%KPRPGIBDD28%" 
return


SelectKPRPGIBDD1:
    SelectKPRPGIBDD(1)
return
SelectKPRPGIBDD2:
    SelectKPRPGIBDD(2)
return
SelectKPRPGIBDD3:
    SelectKPRPGIBDD(3)
return
SelectKPRPGIBDD4:
    SelectKPRPGIBDD(4)
return
SelectKPRPGIBDD5:
    SelectKPRPGIBDD(5)
return
SelectKPRPGIBDD6:
    SelectKPRPGIBDD(6)
return
SelectKPRPGIBDD7:
    SelectKPRPGIBDD(7)
return
SelectKPRPGIBDD8:
    SelectKPRPGIBDD(8)
return
SelectKPRPGIBDD9:
    SelectKPRPGIBDD(9)
return
SelectKPRPGIBDD10:
    SelectKPRPGIBDD(10)
return
SelectKPRPGIBDD11:
    SelectKPRPGIBDD(11)
return
SelectKPRPGIBDD12:
    SelectKPRPGIBDD(12)
return
SelectKPRPGIBDD13:
    SelectKPRPGIBDD(13)
return
SelectKPRPGIBDD14:
    SelectKPRPGIBDD(14)
return
SelectKPRPGIBDD15:
    SelectKPRPGIBDD(15)
return
SelectKPRPGIBDD16:
    SelectKPRPGIBDD(16)
return
SelectKPRPGIBDD17:
    SelectKPRPGIBDD(17)
return
SelectKPRPGIBDD18:
    SelectKPRPGIBDD(18)
return
SelectKPRPGIBDD19:
    SelectKPRPGIBDD(19)
return
SelectKPRPGIBDD20:
    SelectKPRPGIBDD(20)
return
SelectKPRPGIBDD21:
    SelectKPRPGIBDD(21)
return
SelectKPRPGIBDD22:
    SelectKPRPGIBDD(22)
return
SelectKPRPGIBDD23:
    SelectKPRPGIBDD(23)
return
SelectKPRPGIBDD24:
    SelectKPRPGIBDD(24)
return
SelectKPRPGIBDD25:
    SelectKPRPGIBDD(25)
return
SelectKPRPGIBDD26:
    SelectKPRPGIBDD(26)
return
SelectKPRPGIBDD27:
    SelectKPRPGIBDD(27)
return
SelectKPRPGIBDD28:
    SelectKPRPGIBDD(28)
return

SelectKPRPGIBDD(num) {
    global
    varName := "KPRPGIBDD" num
    LastPath := %varName%

    FileSelectFile, selectedFile, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (selectedFile = "") {
        %varName% := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    %varName% := selectedFile
    MsgBox, 64, Файл выбран, % %varName%
    Gosub, ChangeRaskladka_GIBDD
}
return