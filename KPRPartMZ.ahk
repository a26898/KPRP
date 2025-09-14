; --- Проигрываем звук (опционально) ---
SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_14.mp3

; --- Создаём основной GUI с номером 5 ---
Gui, 5: +LastFound
Gui, 5:Font, S10 Bold, %Shrift%
Gui, 5:Tab, 1
parentHWND := WinExist()

; Добавляем вкладки
Gui, 5:Add, Tab2, x0 y0 w1290 h25 c%Tsvet% +BackgroundTrans vMyTab gTabChanged, КПРП|Общее|ПМП|Проверки|Процедуры|Хирургия|Травматология|Препараты|МП|Журнал активности

; --- Вкладка 1 ---

Gui, 5:Show, center h650 w1200, Министерство здравоохранения | КПРП работает на коммунизм!

Gui, 5:Tab, 1


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
appPath10 := "C:\ProgramData\KPRP\KPRP-main\Telegramkprp\Journal.exe"
Run, %appPath10%, , , pid10
WinWait, ahk_pid %pid10%
WinGet, hwndApp10, ID, ahk_pid %pid10%

DllCall("SetParent", "Ptr", hwndApp10, "Ptr", parentHWND)
DllCall("SetWindowLongPtr", "Ptr", hwndApp10, "Int", GWL_STYLE, "Ptr", WS_CHILD)
DllCall("SetWindowPos", "Ptr", hwndApp10, "Ptr", 0, "Int", 0, "Int", 24, "Int", 1200, "Int", 626, "UInt", 0x0040)
DllCall("RedrawWindow", "Ptr", hwndApp10, "Ptr", 0, "Ptr", 0, "UInt", 0x85)

; Скрываем окно журнала, показываем только окно КПРП
WinShow, ahk_id %hwndApp1%
WinHide, ahk_id %hwndApp10%

; --- Вкладка 2 — добавляем картинки и кнопки ---
Gui, 5:Tab, 2
if (FonVybor != "ERROR" && FonVybor != "") {
    Gui, 5:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
}

Gui, 5:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Clear.png
Gui, 5:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfo,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Dannyye_MZ.png
Gui, 5:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditMZ, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka.png
Gui, 5:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Editor.png
Gui, 5:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Offers.png
Gui, 5:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Bug_report.png
Gui, 5:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Uluchsheniya.png
Gui, 5:Add, Picture, x720 y600 w48 w48   +BackgroundTrans  gSearch, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Search.png
Gui, 5:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Smena_fraktsii.png
Gui, 5:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Help.png
Gui, 5:Add, Picture, x1020 y600 w48 w48   +BackgroundTrans  gLektsii_MZ, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Infa_Lepktsii.png
Gui, 5:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\restart.png

Gui, 5:Add, Picture, x10 y40 w128 w96  +BackgroundTrans gLaziness7, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Sobes.png
Gui, 5:Add, Picture, x10 y260 w128 w96 +BackgroundTrans gMedicine81, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Cards.png
Gui, 5:Add, Picture, x10 y370 w128 w96 +BackgroundTrans gMedicine79, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Oath.png
Gui, 5:Add, Picture, x10 y480 w128 w96 +BackgroundTrans gMedicine33, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Feelings.png
Gui, 5:Add, Picture, x10 y150 w128 w96 +BackgroundTrans gLaziness4, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\VZ.png
Gui, 5:Add, Picture, x130 y40 w128 w96  +BackgroundTrans gMedicine13, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Defibrillator.png


Gui, 5:Add, Picture, x370 y40 w128 w96  +BackgroundTrans gLaziness2, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Fast.png

Gui, 5:Add, Picture, x490 y40 w128 w96  +BackgroundTrans gLaziness8, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Patrol.png
Gui, 5:Add, Picture, x970 y40 w128 w96  +BackgroundTrans gLaziness14, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Patrol_r.png
Gui, 5:Add, Picture, x610 y40 w128 w96  +BackgroundTrans gLaziness12, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Patrol_V.png
Gui, 5:Add, Picture, x1090 y40 w128 w96  +BackgroundTrans gLaziness13, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Patrol_rr.png
Gui, 5:Add, Picture, x730 y40 w128 w96  +BackgroundTrans gLaziness3, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Change.png
Gui, 5:Add, Picture, x850 y40 w128 w96  +BackgroundTrans gLaziness26, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Registry.png
Gui, 5:Add, Picture, x250 y40 w128 w96  +BackgroundTrans gLaziness1, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Call.png

Gui, 5:Add, Picture, x130 y150 w128 w96 +BackgroundTrans gLaziness31, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Random.png
Gui, 5:Add, Picture, x130 y260 w128 w96 +BackgroundTrans gLaziness25, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Gov.png

Gui, 5:Add, Picture, x1000 y370 w150 h150 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\%Bol_ro_2%
Gui, 5:Add, Picture, x1000 y190 w150 h150 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\KPRP.png


Gui, 5: Tab, 3
if (FonVybor != "ERROR" && FonVybor != "") {
    Gui, 5:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
}

Gui, 5:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Clear.png
Gui, 5:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfo,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Dannyye_MZ.png
Gui, 5:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditMZ, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka.png
Gui, 5:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Editor.png
Gui, 5:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Offers.png
Gui, 5:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Bug_report.png
Gui, 5:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Uluchsheniya.png
Gui, 5:Add, Picture, x720 y600 w48 w48   +BackgroundTrans  gSearch, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Search.png
Gui, 5:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Smena_fraktsii.png
Gui, 5:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Help.png
Gui, 5:Add, Picture, x1020 y600 w48 w48   +BackgroundTrans  gLektsii_MZ, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Infa_Lepktsii.png
Gui, 5:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\restart.png

Gui, 5:Add, Picture, x10 y40 w128 w96  +BackgroundTrans gPMP2, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Bleeding_PMP.png
Gui, 5:Add, Picture, x10 y150 w128 w96 +BackgroundTrans gPMP3, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Frostbite_PMP.png
Gui, 5:Add, Picture, x10 y260 w128 w96 +BackgroundTrans gPMP8, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Leg_PMP.png
Gui, 5:Add, Picture, x10 y370 w128 w96 +BackgroundTrans gPMP7, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Membership_PMP.png
Gui, 5:Add, Picture, x10 y480 w128 w96 +BackgroundTrans gPMP14, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Infarkt_PMP.png

Gui, 5:Add, Picture, x130 y40 w128 w96  +BackgroundTrans gPMP12, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Nos_PMP.png

Gui, 5:Add, Picture, x250 y40 w128 w96  +BackgroundTrans gPMP4, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Ozhog_PMP.png

Gui, 5:Add, Picture, x370 y40 w128 w96  +BackgroundTrans gPMP5, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Pulya_PMP.png

Gui, 5:Add, Picture, x490 y40 w128 w96  +BackgroundTrans gPMP1, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Rana_PMP.png

;Gui, 5:Add, Picture, x610 y40 w128 w96  +BackgroundTrans gPMP6, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Choking_PMP.png

Gui, 5:Add, Picture, x730 y40 w128 w96  +BackgroundTrans gPMP13, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Sotryaseniye_PMP.png

Gui, 5:Add, Picture, x850 y40 w128 w96  +BackgroundTrans gPMP9, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Soznaniye_PMP.png

Gui, 5:Add, Picture, x970 y40 w128 w96  +BackgroundTrans gPMP10, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Zakrytiy_PMP.png

Gui, 5:Add, Picture, x1090 y40 w128 w96  +BackgroundTrans gPMP11, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Otkrytyy_PMP.png


Gui, 5:Tab, 4
if (FonVybor != "ERROR" && FonVybor != "") {
    Gui, 5:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
}

Gui, 5:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Clear.png
Gui, 5:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfo,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Dannyye_MZ.png
Gui, 5:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditMZ, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka.png
Gui, 5:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Editor.png
Gui, 5:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Offers.png
Gui, 5:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Bug_report.png
Gui, 5:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Uluchsheniya.png
Gui, 5:Add, Picture, x720 y600 w48 w48   +BackgroundTrans  gSearch, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Search.png
Gui, 5:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Smena_fraktsii.png
Gui, 5:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Help.png
Gui, 5:Add, Picture, x1020 y600 w48 w48   +BackgroundTrans  gLektsii_MZ, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Infa_Lepktsii.png
Gui, 5:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\restart.png

Gui, 5:Add, Picture, x10 y40 w128 w96  +BackgroundTrans gMedicine30, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Alcohol.png
Gui, 5:Add, Picture, x10 y150 w128 w96 +BackgroundTrans gMedicine62, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Ves.png
Gui, 5:Add, Picture, x10 y260 w128 w96 +BackgroundTrans gMedicine69, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Coronavirus.png


Gui, 5:Add, Picture, x130 y40 w128 w96  +BackgroundTrans gMedicine31, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Narkotiki.png

Gui, 5:Add, Picture, x250 y40 w128 w96  +BackgroundTrans gMedicine28, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Vshi.png

Gui, 5:Add, Picture, x370 y40 w128 w96  +BackgroundTrans gMedicine29, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Listy.png

Gui, 5:Add, Picture, x490 y40 w128 w96  +BackgroundTrans gMedicine34, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Skolioz.png

Gui, 5:Add, Picture, x610 y40 w128 w96  +BackgroundTrans gMedicine59, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Legkiyee.png

Gui, 5:Add, Picture, x730 y40 w128 w96  +BackgroundTrans gMedicine60, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Serdtseye.png

Gui, 5:Add, Picture, x850 y40 w128 w96  +BackgroundTrans gMedicine61, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Davleniye.png

Gui, 5:Add, Picture, x970 y40 w128 w96  +BackgroundTrans gMedicine32, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Glaz5.png

Gui, 5:Add, Picture, x1090 y40 w128 w96  +BackgroundTrans gMedicine16, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Temperatura.png


Gui, 5:Tab, 5
if (FonVybor != "ERROR" && FonVybor != "") {
    Gui, 5:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
}

Gui, 5:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Clear.png
Gui, 5:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfo,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Dannyye_MZ.png
Gui, 5:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditMZ, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka.png
Gui, 5:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Editor.png
Gui, 5:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Offers.png
Gui, 5:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Bug_report.png
Gui, 5:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Uluchsheniya.png
Gui, 5:Add, Picture, x720 y600 w48 w48   +BackgroundTrans  gSearch, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Search.png
Gui, 5:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Smena_fraktsii.png
Gui, 5:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Help.png
Gui, 5:Add, Picture, x1020 y600 w48 w48   +BackgroundTrans  gLektsii_MZ, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Infa_Lepktsii.png
Gui, 5:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\restart.png

Gui, 5:Add, Picture, x10 y40 w128 w96  +BackgroundTrans gMedicine41, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Tomografiya.png
Gui, 5:Add, Picture, x10 y150 w128 w96 +BackgroundTrans gMedicine49, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\EEG.png
Gui, 5:Add, Picture, x10 y260 w128 w96 +BackgroundTrans gMedicine54, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\OPTG.png
Gui, 5:Add, Picture, x10 y370 w128 w96 +BackgroundTrans gMedicine2, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Sahara.png
Gui, 5:Add, Picture, x10 y480 w128 w96 +BackgroundTrans gMedicine6, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Mazka.png

Gui, 5:Add, Picture, x130 y40 w128 w96  +BackgroundTrans gMedicine43, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\UZI.png
Gui, 5:Add, Picture, x130 y150 w128 w96 +BackgroundTrans gMedicine70, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Mammography.png
Gui, 5:Add, Picture, x130 y260 w128 w96 +BackgroundTrans gMedicine73, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Chemotherapy.png
Gui, 5:Add, Picture, x130 y370 w128 w96 +BackgroundTrans gMedicine88, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Narkozavisimost.png
Gui, 5:Add, Picture, x130 y480 w128 w96 +BackgroundTrans gMedicine74, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Coron.png

Gui, 5:Add, Picture, x250 y40 w128 w96  +BackgroundTrans gMedicine46, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Fluorography.png
Gui, 5:Add, Picture, x250 y150 w128 w96 +BackgroundTrans gMedicine4, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Vaccination.png
Gui, 5:Add, Picture, x250 y260 w128 w96 +BackgroundTrans gMedicine52, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Rabies.png
Gui, 5:Add, Picture, x250 y370 w128 w96 +BackgroundTrans gMedicine17, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Kapel.png
Gui, 5:Add, Picture, x250 y480 w128 w96 +BackgroundTrans gMedicine58, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Remineralizing.png

Gui, 5:Add, Picture, x370 y40 w128 w96  +BackgroundTrans gMedicine47, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Fetoscopy.png
Gui, 5:Add, Picture, x370 y150 w128 w96 +BackgroundTrans gMedicine26, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Poisoning.png
Gui, 5:Add, Picture, x370 y260 w128 w96 +BackgroundTrans gMedicine64, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Visiographic.png
Gui, 5:Add, Picture, x370 y370 w128 w96 +BackgroundTrans gMedicine65, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Whitening.png
Gui, 5:Add, Picture, x370 y480 w128 w96 +BackgroundTrans gMedicine8, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Fingers.png

Gui, 5:Add, Picture, x490 y40 w128 w96  +BackgroundTrans gMedicine48, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Cystoscopy.png
Gui, 5:Add, Picture, x490 y150 w128 w96 +BackgroundTrans gMedicine7 , C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Vienna.png
Gui, 5:Add, Picture, x490 y260 w128 w96 +BackgroundTrans gMedicine72, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\OFE.png
Gui, 5:Add, Picture, x490 y370 w128 w96 +BackgroundTrans gMedicine85, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Pul_soksymetr.png
Gui, 5:Add, Picture, x490 y480 w128 w96 +BackgroundTrans gMedicine93, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Inhaler.png

Gui, 5:Add, Picture, x610 y40 w128 w96  +BackgroundTrans gMedicine19, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Enema.png
Gui, 5:Add, Picture, x610 y150 w128 w96  +BackgroundTrans gMedicine94, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Myostimulator.png
Gui, 5:Add, Picture, x610 y260 w128 w96  +BackgroundTrans gMedicine95, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Endosonography.png
Gui, 5:Add, Picture, x610 y370 w128 w96  +BackgroundTrans gMedicine96, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Tatu.png
Gui, 5:Add, Picture, x610 y480 w128 w96  +BackgroundTrans gMedicine97,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Angina.png

Gui, 5:Add, Picture, x730 y40 w128 w96  +BackgroundTrans gMedicine18, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Colonoscopy.png
Gui, 5:Add, Picture, x730 y150 w128 w96 +BackgroundTrans gMedicine101, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Mote.png
Gui, 5:Add, Picture, x730 y260 w128 w96 +BackgroundTrans gMedicine102, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Slinter.png
Gui, 5:Add, Picture, x730 y370 w128 w96  +BackgroundTrans gMedicine103, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Ukus_pchely.png
Gui, 5:Add, Picture, x730 y480 w128 w96  +BackgroundTrans gMedicine104,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Donor_krovi.png

Gui, 5:Add, Picture, x850 y40 w128 w96  +BackgroundTrans gMedicine15, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\EKG.png
Gui, 5:Add, Picture, x850 y150 w128 w96 +BackgroundTrans gMedicine111, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Vich.png
Gui, 5:Add, Picture, x850 y260 w128 w96 +BackgroundTrans gMedicine112, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Tuberculosis.png
Gui, 5:Add, Picture, x850 y370 w128 w96  +BackgroundTrans gMedicine113, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Diphtheria.png
Gui, 5:Add, Picture, x850 y480 w128 w96  +BackgroundTrans gMedicine114,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Beshenstvo.png

Gui, 5:Add, Picture, x970 y40 w128 w96  +BackgroundTrans gMedicine10, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Gastroscopy.png
Gui, 5:Add, Picture, x970 y150 w128 w96 +BackgroundTrans gMedicine14, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Zmeya_1.png
Gui, 5:Add, Picture, x970 y260 w128 w96 +BackgroundTrans gMedicine116, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\CT.png
Gui, 5:Add, Picture, x970 y370 w128 w96 +BackgroundTrans gMedicine117, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Colposcopy.png
Gui, 5:Add, Picture, x970 y480 w128 w96 +BackgroundTrans gMedicine118, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Gynecologically.png

Gui, 5:Add, Picture, x1090 y40 w128 w96  +BackgroundTrans gMedicine22, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\MRT.png
Gui, 5:Add, Picture, x1090 y150 w128 w96 +BackgroundTrans gMedicine119, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Glucometer.png
Gui, 5:Add, Picture, x1090 y260 w128 w96 +BackgroundTrans gMedicine120, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\MRA.png
Gui, 5:Add, Picture, x1090 y370 w128 w96 +BackgroundTrans gMedicine121, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\KTG.png
Gui, 5:Add, Picture, x1090 y480 w128 w96 +BackgroundTrans gMedicine122, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Test_KPRPMZennos.png


Gui, 5:Tab, 6
if (FonVybor != "ERROR" && FonVybor != "") {
    Gui, 5:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
}

Gui, 5:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Clear.png
Gui, 5:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfo,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Dannyye_MZ.png
Gui, 5:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditMZ, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka.png
Gui, 5:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Editor.png
Gui, 5:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Offers.png
Gui, 5:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Bug_report.png
Gui, 5:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Uluchsheniya.png
Gui, 5:Add, Picture, x720 y600 w48 w48   +BackgroundTrans  gSearch, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Search.png
Gui, 5:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Smena_fraktsii.png
Gui, 5:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Help.png
Gui, 5:Add, Picture, x1020 y600 w48 w48   +BackgroundTrans  gLektsii_MZ, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Infa_Lepktsii.png
Gui, 5:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\restart.png

Gui, 5:Add, Picture, x10 y40 w128 w96  +BackgroundTrans gMedicine38, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Pulya_PMP.png
Gui, 5:Add, Picture, x10 y150 w128 w96 +BackgroundTrans gMedicine5, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Vnutrenneye.png
Gui, 5:Add, Picture, x10 y260 w128 w96 +BackgroundTrans gMedicine56, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Korennoy.png
Gui, 5:Add, Picture, x10 y370 w128 w96 +BackgroundTrans gMedicine57, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Dairy.png
Gui, 5:Add, Picture, x10 y480 w128 w96 +BackgroundTrans gMedicine55, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Wisdom.png

Gui, 5:Add, Picture, x130 y40 w128 w96  +BackgroundTrans gMedicine23, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Nozhevoye.png
Gui, 5:Add, Picture, x130 y150 w128 w96 +BackgroundTrans gMedicine76, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Peresadka.png
Gui, 5:Add, Picture, x130 y260 w128 w96 +BackgroundTrans gMedicine78, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Perevyazka.png
Gui, 5:Add, Picture, x130 y370 w128 w96 +BackgroundTrans gMedicine66, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raneniye.png
Gui, 5:Add, Picture, x130 y480 w128 w96 +BackgroundTrans gMedicine67, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Rasicheniye.png

Gui, 5:Add, Picture, x250 y40 w128 w96  +BackgroundTrans gMedicine45, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Grizha.png
Gui, 5:Add, Picture, x250 y150 w128 w96 +BackgroundTrans gMedicine25, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Ozhog_PMP.png
Gui, 5:Add, Picture, x250 y260 w128 w96 +BackgroundTrans gMedicine75, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\ZMT.png
Gui, 5:Add, Picture, x250 y370 w128 w96 +BackgroundTrans gMedicine98, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Gvozd.png
Gui, 5:Add, Picture, x250 y480 w128 w96 +BackgroundTrans gMedicine99, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Kostnaya_mozo.png

Gui, 5:Add, Picture, x370 y40 w128 w96  +BackgroundTrans gMedicine42, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Appenditsit.png
Gui, 5:Add, Picture, x370 y150 w128 w96 +BackgroundTrans gMedicine100, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Wart.png
Gui, 5:Add, Picture, x370 y260 w128 w96 +BackgroundTrans gMedicine51, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\EKS.png
Gui, 5:Add, Picture, x370 y370 w128 w96 +BackgroundTrans gMedicine105, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\MF.png
Gui, 5:Add, Picture, x370 y480 w128 w96 +BackgroundTrans gMedicine115, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Gem.png

Gui, 5:Add, Picture, x490 y40 w128 w96  +BackgroundTrans gMedicine53, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Rodinka.png
Gui, 5:Add, Picture, x490 y150 w128 w96 +BackgroundTrans gMedicine123, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Liposuction.png
Gui, 5:Add, Picture, x490 y260 w128 w96 +BackgroundTrans gMedicine124, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\UHT_stone.png
Gui, 5:Add, Picture, x490 y370 w128 w96 +BackgroundTrans gMedicine125, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Hysterectomy.png
Gui, 5:Add, Picture, x490 y480 w128 w96 +BackgroundTrans gMedicine126, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Legkiye.png

Gui, 5:Add, Picture, x610 y40 w128 w96  +BackgroundTrans gMedicine44, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Uvelicheniye.png
Gui, 5:Add, Picture, x610 y150 w128 w96 +BackgroundTrans gMedicine127, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Ploskostopiya.png
Gui, 5:Add, Picture, x610 y260 w128 w96 +BackgroundTrans gMedicine128, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Grud.png
Gui, 5:Add, Picture,x610  y370 w128 w96 +BackgroundTrans gMedicine129, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Hrudy.png

Gui, 5:Add, Picture, x730 y40 w128 w96  +BackgroundTrans gMedicine35, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Rody.png

Gui, 5:Add, Picture, x850 y40 w128 w96  +BackgroundTrans gMedicine9, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\VMS.png

Gui, 5:Add, Picture, x970 y40 w128 w96  +BackgroundTrans gMedicine40, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Sterilizatsiya.png

Gui, 5:Add, Picture, x1090 y40 w128 w96  +BackgroundTrans gMedicine11, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Hysteroscopy.png


Gui, 5:Tab, 7
if (FonVybor != "ERROR" && FonVybor != "") {
    Gui, 5:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
}

Gui, 5:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Clear.png
Gui, 5:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfo,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Dannyye_MZ.png
Gui, 5:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditMZ, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka.png
Gui, 5:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Editor.png
Gui, 5:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Offers.png
Gui, 5:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Bug_report.png
Gui, 5:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Uluchsheniya.png
Gui, 5:Add, Picture, x720 y600 w48 w48   +BackgroundTrans  gSearch, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Search.png
Gui, 5:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Smena_fraktsii.png
Gui, 5:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Help.png
Gui, 5:Add, Picture, x1020 y600 w48 w48   +BackgroundTrans  gLektsii_MZ, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Infa_Lepktsii.png
Gui, 5:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\restart.png

Gui, 5:Add, Picture, x10 y40 w128 w96  +BackgroundTrans gMedicine36, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Spine.png

Gui, 5:Add, Picture, x130 y40 w128 w96  +BackgroundTrans gMedicine37, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Edge.png

Gui, 5:Add, Picture, x250 y40 w128 w96  +BackgroundTrans gMedicine39, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Rentgen.png

Gui, 5:Add, Picture, x370 y40 w128 w96  +BackgroundTrans gMedicine27, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Otkrytyy_PMP.png

Gui, 5:Add, Picture, x490 y40 w128 w96  +BackgroundTrans gMedicine50, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Exit.png

Gui, 5:Add, Picture, x610 y40 w128 w96  +BackgroundTrans gMedicine68, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\stretching.png

Gui, 5:Add, Picture, x730 y40 w128 w96  +BackgroundTrans gMedicine77, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Noss.png

Gui, 5:Add, Picture, x850 y40 w128 w96  +BackgroundTrans gMedicine80, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Podvernul.png

Gui, 5:Add, Picture, x970 y40 w128 w96  +BackgroundTrans gMedicine24, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Quo.png


Gui, 5:Tab, 8
if (FonVybor != "ERROR" && FonVybor != "") {
    Gui, 5:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
}

Gui, 5:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Clear.png
Gui, 5:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfo,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Dannyye_MZ.png
Gui, 5:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditMZ, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka.png
Gui, 5:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Editor.png
Gui, 5:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Offers.png
Gui, 5:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Bug_report.png
Gui, 5:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Uluchsheniya.png
Gui, 5:Add, Picture, x720 y600 w48 w48   +BackgroundTrans  gSearch, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Search.png
Gui, 5:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Smena_fraktsii.png
Gui, 5:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Help.png
Gui, 5:Add, Picture, x1020 y600 w48 w48   +BackgroundTrans  gLektsii_MZ, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Infa_Lepktsii.png
Gui, 5:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\restart.png

Gui, 5:Add, Picture, x10 y40 w128 w96 +BackgroundTrans gLekarstva1, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Allergiya.png
Gui, 5:Add, Picture, x10 y150 w128 w96 +BackgroundTrans gLekarstva11, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Golovnaya_png
Gui, 5:Add, Picture, x10 y260 w128 w96 +BackgroundTrans gLekarstva12, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Potentsiya.png
Gui, 5:Add, Picture, x10 y370 w128 w96 +BackgroundTrans gLekarstva13, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Diareya.png
Gui, 5:Add, Picture, x10 y480 w128 w96 +BackgroundTrans gLekarstva14, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Diabet1.png

Gui, 5:Add, Picture, x130 y40 w128 w96 +BackgroundTrans gLekarstva2, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Glazakh.png
Gui, 5:Add, Picture, x130 y150 w128 w96 +BackgroundTrans gLekarstva15, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Izzhoga.png
Gui, 5:Add, Picture, x130 y260 w128 w96 +BackgroundTrans gLekarstva16, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Kashel.png
Gui, 5:Add, Picture, x130 y370 w128 w96 +BackgroundTrans gLekarstva17, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Mochevoy.png
Gui, 5:Add, Picture, x130 y480 w128 w96 +BackgroundTrans gLekarstva18, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Migraine.png

Gui, 5:Add, Picture, x250 y40 w128 w96 +BackgroundTrans gLekarstva3, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Ushakh.png
Gui, 5:Add, Picture, x250 y150 w128 w96 +BackgroundTrans gLekarstva19, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Nasmork.png
Gui, 5:Add, Picture, x250 y260 w128 w96 +BackgroundTrans gLekarstva20, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\
Gui, 5:Add, Picture, x250 y370 w128 w96 +BackgroundTrans gLekarstva23, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Prostuda.png
Gui, 5:Add, Picture, x250 y480 w128 w96 +BackgroundTrans gLekarstva24, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Sudorogi.png

Gui, 5:Add, Picture, x370 y40 w128 w96 +BackgroundTrans gLekarstva4, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Pochkakh.png
Gui, 5:Add, Picture, x370 y150 w128 w96 +BackgroundTrans gLekarstva25, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Serdechnaya.png
Gui, 5:Add, Picture, x370 y260 w128 w96 +BackgroundTrans gLekarstva26, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Toshnota.png
Gui, 5:Add, Picture, x370 y370 w128 w96 +BackgroundTrans gLekarstva27, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Painkillers.png
Gui, 5:Add, Picture, x370 y480 w128 w96 +BackgroundTrans gLekarstva28, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Uspokoitel.png

Gui, 5:Add, Picture, x490 y40 w128 w96 +BackgroundTrans gLekarstva5, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Zhivote.png
Gui, 5:Add, Picture, x490 y150 w128 w96 +BackgroundTrans gLekarstva29, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Bessonnitsa.png
Gui, 5:Add, Picture, x490 y260 w128 w96 +BackgroundTrans gLekarstva30, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Stress.png
Gui, 5:Add, Picture, x490 y370 w128 w96 +BackgroundTrans gLekarstva31, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Temperature.png
Gui, 5:Add, Picture, x490 y480 w128 w96 +BackgroundTrans gLekarstva32, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Asthma.png

Gui, 5:Add, Picture, x610 y40 w128 w96 +BackgroundTrans gLekarstva6, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Back.png
Gui, 5:Add, Picture, x610 y150 w128 w96 +BackgroundTrans gLekarstva33, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Ponos.png
Gui, 5:Add, Picture, x610 y260 w128 w96 +BackgroundTrans gLekarstva34, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Ulcer.png
Gui, 5:Add, Picture, x610 y370 w128 w96 +BackgroundTrans gLekarstva35, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Thrush.png
Gui, 5:Add, Picture, x610 y480 w128 w96 +BackgroundTrans gLekarstva36, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Infarkt.png

Gui, 5:Add, Picture, x730 y40 w128 w96 +BackgroundTrans gLekarstva7, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Pecheni.png
Gui, 5:Add, Picture, x730 y150 w128 w96 +BackgroundTrans gLekarstva37, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Dizziness.png
Gui, 5:Add, Picture, x730 y260 w128 w96 +BackgroundTrans gLekarstva38, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Gastrit.png
Gui, 5:Add, Picture, x730 y370 w128 w96 +BackgroundTrans gLekarstva39, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Toothache.png
Gui, 5:Add, Picture, x730 y480 w128 w96 +BackgroundTrans gLekarstva40, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Listy.png

Gui, 5:Add, Picture, x850 y40 w128 w96 +BackgroundTrans gLekarstva8, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Gorle.png
Gui, 5:Add, Picture, x850 y150 w128 w96 +BackgroundTrans gLekarstva41, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Protivovirusnyye.png
Gui, 5:Add, Picture, x850 y260 w128 w96 +BackgroundTrans gLekarstva42, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Stroke.png
Gui, 5:Add, Picture, x850 y370 w128 w96 +BackgroundTrans gLekarstva43, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Antiseptics.png
Gui, 5:Add, Picture, x850 y480 w128 w96 +BackgroundTrans gLekarstva44, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Bloating.png

Gui, 5:Add, Picture, x970 y40 w128 w96 +BackgroundTrans gLekarstva9, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Vitaminy.png
Gui, 5:Add, Picture, x970 y150 w128 w96 +BackgroundTrans gLekarstva45, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Gribok.png
Gui, 5:Add, Picture, x970 y260 w128 w96 +BackgroundTrans gLekarstva46, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Scabies.png
Gui, 5:Add, Picture, x970 y370 w128 w96 +BackgroundTrans gLekarstva47, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Polovom.png
Gui, 5:Add, Picture, x970 y480 w128 w96 +BackgroundTrans gLekarstva48, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Menstruatsii.png

Gui, 5:Add, Picture, x10  y480 w128 w96 +BackgroundTrans gLekarstva10, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Gemoroy.png
Gui, 5:Add, Picture, x250  y260 w128 w96 +BackgroundTrans gLekarstva21, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Increased.png
Gui, 5:Add, Picture, x10   y150 w128 w96 +BackgroundTrans gLekarstva22, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Reduced.png


Gui, 5:Tab, 9
if (FonVybor != "ERROR" && FonVybor != "") {
    Gui, 5:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
}

Gui, 5:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Clear.png
Gui, 5:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfo,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Dannyye_MZ.png
Gui, 5:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditMZ, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka.png
Gui, 5:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Editor.png
Gui, 5:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Offers.png
Gui, 5:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Bug_report.png
Gui, 5:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Uluchsheniya.png
Gui, 5:Add, Picture, x720 y600 w48 w48   +BackgroundTrans  gSearch, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Search.png
Gui, 5:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Smena_fraktsii.png
Gui, 5:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Help.png
Gui, 5:Add, Picture, x1020 y600 w48 w48   +BackgroundTrans  gLektsii_MZ, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Infa_Lepktsii.png
Gui, 5:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\restart.png

Gui, 5:Add, Picture, x10 y40 w128 w96 +BackgroundTrans gLaziness20, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Dezinfektsiya.png
Gui, 5:Add, Picture, x10 y150 w128 w96 +BackgroundTrans gMedicine83, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Sroka_godnosti.png
Gui, 5:Add, Picture, x10 y260 w128 w96 +BackgroundTrans gMedicine87, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Dokumentatsiya.png
Gui, 5:Add, Picture, x10 y370 w128 w96 +BackgroundTrans gMedicine84, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Khraneniya.png
Gui, 5:Add, Picture, x10 y480 w128 w96 +BackgroundTrans gMedicine86, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Zamena_belya.png

Gui, 5:Add, Picture, x130 y40  w128 w96 +BackgroundTrans gMedicine108,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Quartzization.png
Gui, 5:Add, Picture, x130 y150  w128 w96 +BackgroundTrans gMedicine109,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PCD.png
return

; --- Обработчик смены вкладок ---
TabChanged:
GuiControlGet, ActiveTab,, MyTab

if (ActiveTab = "КПРП") {
    WinShow, ahk_id %hwndApp1%
    WinHide, ahk_id %hwndApp10%
} else if (ActiveTab = "Журнал активности") {
    WinShow, ahk_id %hwndApp10%
    WinHide, ahk_id %hwndApp1%
} else {
    WinHide, ahk_id %hwndApp1%
    WinHide, ahk_id %hwndApp10%
}
return

; --- Обработчик изменения размера окна GUI ---
GuiSize:
if (A_Gui = 5) {
    Width := A_GuiWidth
    Height := A_GuiHeight
    ; Подгоняем размер окна КПРП
    DllCall("SetWindowPos", "Ptr", hwndApp1, "Ptr", 0, "Int", 0, "Int", 24, "Int", Width, "Int", Height - 24, "UInt", 0x0040)
    ; Подгоняем размер окна журнала
    DllCall("SetWindowPos", "Ptr", hwndApp10, "Ptr", 0, "Int", 0, "Int", 24, "Int", Width, "Int", Height - 24, "UInt", 0x0040)
}
return


0001MZ7:
    SendTemplate("KPRPMZ", 1)
Return

0002MZ7:
    SendTemplate("KPRPMZ", 2)
Return

0003MZ7:
    SendTemplate("KPRPMZ", 3)
Return

0004MZ7:
    SendTemplate("KPRPMZ", 4)
Return

0005MZ7:
    SendTemplate("KPRPMZ", 5)
Return

0006MZ7:
    SendTemplate("KPRPMZ", 6)
Return

0007MZ7:
    SendTemplate("KPRPMZ", 7)
Return

0008MZ7:
    SendTemplate("KPRPMZ", 8)
Return

0009MZ7:
    SendTemplate("KPRPMZ", 9)
Return

0010MZ7:
    SendTemplate("KPRPMZ", 10)
Return

0011MZ7:
    SendTemplate("KPRPMZ", 11)
Return

0012MZ7:
    SendTemplate("KPRPMZ", 12)
Return

0013MZ7:
    SendTemplate("KPRPMZ", 13)
Return

0014MZ7:
    SendTemplate("KPRPMZ", 14)
Return

0015MZ7:
    SendTemplate("KPRPMZ", 15)
Return

0016MZ7:
    SendTemplate("KPRPMZ", 16)
Return

0017MZ7:
    SendTemplate("KPRPMZ", 17)
Return

0018MZ7:
    SendTemplate("KPRPMZ", 18)
Return

0019MZ7:
    SendTemplate("KPRPMZ", 19)
Return

0020MZ7:
    SendTemplate("KPRPMZ", 20)
Return

0021MZ7:
    SendTemplate("KPRPMZ", 21)
Return

0022MZ7:
CreateAlbum()
Return

0023MZ7:
AddScreenshot()
Return

0024MZ7:
FinishAlbum()
Return

:?:/Скрин+::
CreateAlbum()
Return

:?:/Скрин::
AddScreenshot()
Return

:?:/Скрин=::
FinishAlbum()
Return

; === Горячая клавиша для показа/скрытия меню ===

0025MZ7:
	SendPlay {F1} 
    isMenuVisible := !isMenuVisible
    if (isMenuVisible)
    {
        MouseGetPos, mouseX, mouseY
        activeMonitor := GetMonitorAt(mouseX, mouseY)
        SysGet, Monitor, Monitor, %activeMonitor%
        
        DrawRadialMenu()
        SetTimer, CheckMousePosition, 50
    }
    else
    {
        SetTimer, CheckMousePosition, Off
        Gdip_GraphicsClear(G, 0x00000000)
        UpdateLayeredWindow(hwnd1, hdc, MonitorLeft, MonitorTop, MonitorRight - MonitorLeft, MonitorBottom - MonitorTop)
    }
return



0026MZ7:
    SendTemplate("KPRPMZ", 26)
Return

0027MZ7:
    SendTemplate("KPRPMZ", 27)
Return

0028MZ7:
    SendTemplate("KPRPMZ", 28)
Return

:?:/Лек_1::
    SendTemplate("KPRPMZ", 3)
Return

:?:/Лек_2::
    SendTemplate("KPRPMZ", 4)
Return

:?:/Лек_3::
    SendTemplate("KPRPMZ", 5)
Return

:?:/Лек_4::
    SendTemplate("KPRPMZ", 6)
Return

:?:/Лек_5::
    SendTemplate("KPRPMZ", 7)
Return

:?:/Лек_6::
    SendTemplate("KPRPMZ", 8)
Return

:?:/Аптека::
    SendTemplate("KPRPMZ", 25)
Return

:?:/ВМС_1::
    SendTemplate("KPRPMZ", 29)  
Return

:?:/ВМС_2::
    SendTemplate("KPRPMZ", 30)  
Return

:?:/Желудок::
    SendTemplate("KPRPMZ", 31)
Return

:?:/Пуля::
    SendTemplate("KPRPMZ", 32)
Return

:?:/Шприц::
    SendTemplate("KPRPMZ", 33)
Return

:?:/Цистоскоп_1::
    SendTemplate("KPRPMZ", 34)  
Return

:?:/Цистоскоп_2::
    SendTemplate("KPRPMZ", 35)  
Return

:?:/Цистоскоп_3::
    SendTemplate("KPRPMZ", 36)  
Return

:?:/Цистоскоп_4::
    SendTemplate("KPRPMZ", 37)  
Return

:?:/Вакцинация::
    SendTemplate("KPRPMZ", 38)
Return

:?:/Зрения_1::
    SendTemplate("KPRPMZ", 39)
Return
:?:/Зрения_2::
    SendTemplate("KPRPMZ", 40)
Return
:?:/Зрения_3::
    SendTemplate("KPRPMZ", 41)
Return
:?:/Зрения_4::
    SendTemplate("KPRPMZ", 42)
Return
:?:/Зрения_5::
    SendTemplate("KPRPMZ", 43)
Return
:?:/Зрения_6::
    SendTemplate("KPRPMZ", 44)
Return
:?:/Зрения_7::
    SendTemplate("KPRPMZ", 45)
Return
:?:/Зрения_8::
    SendTemplate("KPRPMZ", 46)
Return
:?:/Зрения_9::
    SendTemplate("KPRPMZ", 47)
Return

:?:/Вши_1::
    SendTemplate("KPRPMZ", 48)
Return
:?:/Вши_2::
    SendTemplate("KPRPMZ", 49)
Return
:?:/Вши_3::
    SendTemplate("KPRPMZ", 50)
Return
:?:/Вши_4::
    SendTemplate("KPRPMZ", 51)
Return

:?:/Флюшка_1::
    SendTemplate("KPRPMZ", 52)
Return
:?:/Флюшка_2::
    SendTemplate("KPRPMZ", 53)
Return
:?:/Флюшка_3::
    SendTemplate("KPRPMZ", 54)
Return
:?:/Флюшка_4::
    SendTemplate("KPRPMZ", 55)
Return
:?:/Флюшка_5::
    SendTemplate("KPRPMZ", 56)
Return

:?:/Температура_1::
    SendTemplate("KPRPMZ", 57)
Return

:?:/Температура_2::
    SendTemplate("KPRPMZ", 58)
Return

:?:/Температура_3::
    SendTemplate("KPRPMZ", 59)
Return

:?:/Температура_4::
    SendTemplate("KPRPMZ", 60)
Return

:?:/Маммограф_1::
    SendTemplate("KPRPMZ", 61)
Return

:?:/Маммограф_2::
    SendTemplate("KPRPMZ", 62)
Return

:?:/Маммограф_3::
    SendTemplate("KPRPMZ", 63)
Return

:?:/Маммограф_4::
    SendTemplate("KPRPMZ", 64)
Return

:?:/Прибор_1::
    SendTemplate("KPRPMZ", 65)
Return

:?:/Прибор_2::
    SendTemplate("KPRPMZ", 66)
Return

:?:/Прибор_3::
    SendTemplate("KPRPMZ", 67)
Return

:?:/Прибор_4::
    SendTemplate("KPRPMZ", 68)
Return

:?:/Глисты_1::
    SendTemplate("KPRPMZ", 69)
Return

:?:/Глисты_2::
    SendTemplate("KPRPMZ", 70)
Return

:?:/Глисты_3::
    SendTemplate("KPRPMZ", 71)
Return

:?:/Глисты_4::
    SendTemplate("KPRPMZ", 72)
Return

:?:/ЭКГ_1::
    SendTemplate("KPRPMZ", 73)
Return

:?:/ЭКГ_2::
    SendTemplate("KPRPMZ", 74)
Return

:?:/ЭКГ_3::
    SendTemplate("KPRPMZ", 75)
Return

:?:/ЭКГ_4::
    SendTemplate("KPRPMZ", 76)
Return


:?:/Гинек_1::
    SendTemplate("KPRPMZ", 77)
Return

:?:/Гинек_2::
    SendTemplate("KPRPMZ", 78)
Return

:?:/Гинек_3::
    SendTemplate("KPRPMZ", 79)
Return

:?:/Гинек_4::
    SendTemplate("KPRPMZ", 80)
Return

:?:/Гинек_5::
    SendTemplate("KPRPMZ", 81)
Return

:?:/Матка_1::
    SendTemplate("KPRPMZ", 82)
Return

:?:/Матка_2::
    SendTemplate("KPRPMZ", 83)
Return

:?:/Чувства_0::
    SendTemplate("KPRPMZ", 84)
Return
:?:/Чувства_1::
    SendTemplate("KPRPMZ", 85)
Return
:?:/Чувства_2::
    SendTemplate("KPRPMZ", 86)
Return
:?:/Чувства_3::
    SendTemplate("KPRPMZ", 87)
Return
:?:/Чувства_4::
    SendTemplate("KPRPMZ", 88)
Return

:?:/Чувства_5::
    SendTemplate("KPRPMZ", 89)
Return

:?:/Чувства_6::
    SendTemplate("KPRPMZ", 90)
Return

:?:/Палец_1::
    SendTemplate("KPRPMZ", 91)
Return

:?:/Палец_2::
    SendTemplate("KPRPMZ", 92)
Return

:?:/Палец_3::
    SendTemplate("KPRPMZ", 93)
Return

:?:/Сахар_1::
    SendTemplate("KPRPMZ", 94)
Return

:?:/Сахар_2::
    SendTemplate("KPRPMZ", 95)
Return

:?:/Сахар_3::
    SendTemplate("KPRPMZ", 96)
Return

:?:/Сахар_4::
    SendTemplate("KPRPMZ", 97)
Return

:?:/Сколиоз_1::
    SendTemplate("KPRPMZ", 98)
Return

:?:/Сколиоз_2::
    SendTemplate("KPRPMZ", 99)
Return

:?:/Сколиоз_3::
    SendTemplate("KPRPMZ", 100)
Return

:?:/КТГ_1::
    SendTemplate("KPRPMZ", 101)
Return

:?:/КТГ_2::
    SendTemplate("KPRPMZ", 102)
Return
:?:/КТГ_3::
    SendTemplate("KPRPMZ", 103)
Return

:?:/КТГ_4::
    SendTemplate("KPRPMZ", 104)
Return

:?:/КТГ_5::
    SendTemplate("KPRPMZ", 105)
Return

:?:/Берм_1::
    SendTemplate("KPRPMZ", 106)
Return

:?:/Берм_2::
    SendTemplate("KPRPMZ", 107)
Return

:?:/Берм_3::
    SendTemplate("KPRPMZ", 108)
Return

:?:/Берм_4::
    SendTemplate("KPRPMZ", 109)
Return

:?:/Берм_5::
    SendTemplate("KPRPMZ", 110)
Return

:?:/ЛЛ_1::
    SendTemplate("KPRPMZ", 111)
Return

:?:/ЛЛ_2::
    SendTemplate("KPRPMZ", 112)
Return

:?:/КТ_1::
    SendTemplate("KPRPMZ", 113)
Return

:?:/КТ_2::
    SendTemplate("KPRPMZ", 114)
Return

:?:/КТ_3::
    SendTemplate("KPRPMZ", 115)
Return

:?:/КТ_4::
    SendTemplate("KPRPMZ", 116)
Return

:?:/КТ_5::
    SendTemplate("KPRPMZ", 117)
Return

:?:/КТ_6::
    SendTemplate("KPRPMZ", 118)
Return

:?:/Стетоскоп_1::
    SendTemplate("KPRPMZ", 119)
Return

:?:/Стетоскоп_2::
    SendTemplate("KPRPMZ", 120)
Return

:?:/Стетоскоп_3::
    SendTemplate("KPRPMZ", 121)
Return

:?:/Стетоскоп_4::
    SendTemplate("KPRPMZ", 122)
Return

:?:/МРТ_1::
    SendTemplate("KPRPMZ", 123)
Return

:?:/МРТ_2::
    SendTemplate("KPRPMZ", 124)
Return

:?:/МРТ_3::
    SendTemplate("KPRPMZ", 125)
Return

:?:/МРТ_4::
    SendTemplate("KPRPMZ", 126)
Return

:?:/МРТ_5::
    SendTemplate("KPRPMZ", 127)
Return

:?:/МРА_1::
    SendTemplate("KPRPMZ", 128)
Return

:?:/МРА_2::
    SendTemplate("KPRPMZ", 129)
Return

:?:/МРА_3::
    SendTemplate("KPRPMZ", 130)
Return

:?:/МРА_4::
    SendTemplate("KPRPMZ", 131)
Return

:?:/МРА_5::
    SendTemplate("KPRPMZ", 132)
Return

:?:/Зонд_1::
    SendTemplate("KPRPMZ", 133)
Return

:?:/Зонд_2::
    SendTemplate("KPRPMZ", 134)
Return

:?:/Зонд_3::
    SendTemplate("KPRPMZ", 135)
Return

:?:/Зонд_4::
    SendTemplate("KPRPMZ", 136)
Return

:?:/ФГДС_1::
    SendTemplate("KPRPMZ", 137)
Return

:?:/ФГДС_2::
    SendTemplate("KPRPMZ", 138)
Return

:?:/ФГДС_3::
    SendTemplate("KPRPMZ", 139)
Return

:?:/ФГДС_4::
    SendTemplate("KPRPMZ", 140)
Return

:?:/ФГДС_5::
    SendTemplate("KPRPMZ", 141)
Return

:?:/ФКС_1::
    SendTemplate("KPRPMZ", 142)
Return

:?:/ФКС_2::
    SendTemplate("KPRPMZ", 143)
Return

:?:/ФКС_3::
    SendTemplate("KPRPMZ", 144)
Return

:?:/ФКС_4::
    SendTemplate("KPRPMZ", 145)
Return

:?:/ФКС_5::
    SendTemplate("KPRPMZ", 146)
Return

:?:/Дифтерия_1::
    SendTemplate("KPRPMZ", 147)
Return

:?:/Дифтерия_2::
    SendTemplate("KPRPMZ", 148)
Return

:?:/Дифтерия_3::
    SendTemplate("KPRPMZ", 149)
Return

:?:/ОПТГ_1::
    SendTemplate("KPRPMZ", 150)
Return

:?:/ОПТГ_2::
    SendTemplate("KPRPMZ", 151)
Return

:?:/ОПТГ_3::
    SendTemplate("KPRPMZ", 152)
Return

:?:/ОПТГ_4::
    SendTemplate("KPRPMZ", 153)
Return

:?:/ОПТГ_5::
    SendTemplate("KPRPMZ", 154)
Return

:?:/ВИЧ_1::
    SendTemplate("KPRPMZ", 155)
Return

:?:/ВИЧ_2::
    SendTemplate("KPRPMZ", 156)
Return

:?:/ВИЧ_3::
    SendTemplate("KPRPMZ", 157)
Return

:?:/ВИЧ_4::
    SendTemplate("KPRPMZ", 158)
Return

:?:/ВИЧ_5::
    SendTemplate("KPRPMZ", 159)
Return

:?:/Туберкулёз_1::
    SendTemplate("KPRPMZ", 160)
Return

:?:/Туберкулёз_2::
    SendTemplate("KPRPMZ", 161)
Return

:?:/Туберкулёз_3::
    SendTemplate("KPRPMZ", 162)
Return

:?:/Туберкулёз_4::
    SendTemplate("KPRPMZ", 163)
Return

:?:/Сотряс_1::
    SendTemplate("KPRPMZ", 164)
Return

:?:/Сотряс_2::
    SendTemplate("KPRPMZ", 165)
Return

:?:/Сотряс_3::
    SendTemplate("KPRPMZ", 166)
Return

:?:/Плод_1::
    SendTemplate("KPRPMZ", 167)
Return

:?:/Плод_2::
    SendTemplate("KPRPMZ", 168)
Return

:?:/Плод_3::
    SendTemplate("KPRPMZ", 169)
Return

:?:/Плод_4::
    SendTemplate("KPRPMZ", 170)
Return

:?:/Плод_5::
    SendTemplate("KPRPMZ", 171)
Return

:?:/Алкоголь_1::
    SendTemplate("KPRPMZ", 172)
Return

:?:/Алкоголь_2::
    SendTemplate("KPRPMZ", 173)
Return

:?:/Алкоголь_3::
    SendTemplate("KPRPMZ", 174)
Return

:?:/Алкоголь_4::
    SendTemplate("KPRPMZ", 175)
Return

:?:/Алкоголь_5::
    SendTemplate("KPRPMZ", 176)
Return

:?:/Алкоголь_6::
    SendTemplate("KPRPMZ", 177)
Return

:?:/Алкоголь_7::
    SendTemplate("KPRPMZ", 178)
Return

:?:/Алкоголь_8::
    SendTemplate("KPRPMZ", 179)
Return

:?:/Наркотики_1::
    SendTemplate("KPRPMZ", 180)
Return

:?:/Наркотики_2::
    SendTemplate("KPRPMZ", 181)
Return

:?:/Наркотики_3::
    SendTemplate("KPRPMZ", 182)
Return

:?:/Наркотики_4::
    SendTemplate("KPRPMZ", 183)
Return

:?:/Наркотики_5::
    SendTemplate("KPRPMZ", 184)
Return

:?:/Наркотики_6::
    SendTemplate("KPRPMZ", 185)
Return

:?:/Наркотики_7::
    SendTemplate("KPRPMZ", 186)
Return

:?:/Наркотики_8::
    SendTemplate("KPRPMZ", 187)
Return

:?:/Давление_1::
    SendTemplate("KPRPMZ", 188)
Return

:?:/Давление_2::
    SendTemplate("KPRPMZ", 189)
Return

:?:/Давление_3::
    SendTemplate("KPRPMZ", 190)
Return

:?:/Рост_1::
    SendTemplate("KPRPMZ", 191)
Return

:?:/Рост_2::
    SendTemplate("KPRPMZ", 192)
Return

:?:/Рост_3::
    SendTemplate("KPRPMZ", 193)
Return

:?:/Рост_4::
    SendTemplate("KPRPMZ", 194)
Return

:?:/Коронавирус_1::
    SendTemplate("KPRPMZ", 195)
Return

:?:/Коронавирус_2::
    SendTemplate("KPRPMZ", 196)
Return

:?:/Коронавирус_3::
    SendTemplate("KPRPMZ", 197)
Return

:?:/Коронавирус_4::
    SendTemplate("KPRPMZ", 198)
Return

:?:/Сердце_4::
    SendTemplate("KPRPMZ", 199)
Return

:?:/Сердце_5::
    SendTemplate("KPRPMZ", 200)
Return

:?:/Сердце_6::
    SendTemplate("KPRPMZ", 201)
Return

:?:/Сердце_7::
    SendTemplate("KPRPMZ", 202)
Return

:?:/Ангина_1::
    SendTemplate("KPRPMZ", 203)
Return

:?:/Ангина_2::
    SendTemplate("KPRPMZ", 204)
Return

:?:/Ангина_3::
    SendTemplate("KPRPMZ", 205)
Return

:?:/Ангина_4::
    SendTemplate("KPRPMZ", 206)
Return

:?:/Клизма_1::
    SendTemplate("KPRPMZ", 207)
Return

:?:/Клизма_2::
    SendTemplate("KPRPMZ", 208)
Return

:?:/Соринка_1::
    SendTemplate("KPRPMZ", 209)
Return

:?:/Соринка_2::
    SendTemplate("KPRPMZ", 210)
Return

:?:/Соринка_3::
    SendTemplate("KPRPMZ", 211)
Return

:?:/Заноза_1::
    SendTemplate("KPRPMZ", 212)
Return

:?:/Заноза_2::
    SendTemplate("KPRPMZ", 213)
Return

:?:/Гвоздь_1::
    SendTemplate("KPRPMZ", 214)
Return

:?:/Гвоздь_2::
    SendTemplate("KPRPMZ", 215)
Return

:?:/Мозоль_1::
    SendTemplate("KPRPMZ", 216)
Return

:?:/Мозоль_2::
    SendTemplate("KPRPMZ", 217)
Return

:?:/Бородавка_1::
    SendTemplate("KPRPMZ", 218)
Return

:?:/Бородавка_2::
    SendTemplate("KPRPMZ", 219)
Return

:?:/Пчела_1::
    SendTemplate("KPRPMZ", 220)
Return

:?:/Пчела_2::
    SendTemplate("KPRPMZ", 221)
Return

:?:/Тату_1::
    SendTemplate("KPRPMZ", 222)
Return

:?:/Тату_2::
    SendTemplate("KPRPMZ", 223)
Return

:?:/Тату_3::
    SendTemplate("KPRPMZ", 224)
Return

:?:/Змея_1::
    SendTemplate("KPRPMZ", 225)
Return

:?:/Змея_2::
SendPlay {Enter}
    SendTemplate("KPRPMZ", 226)
Return

:?:/Бешенство_1::
    SendTemplate("KPRPMZ", 227)
Return

:?:/Бешенство_2::
    SendTemplate("KPRPMZ", 228)
Return

:?:/Бешенство_3::
    SendTemplate("KPRPMZ", 229)
Return

:?:/Бешенство_4::
    SendTemplate("KPRPMZ", 230)
Return

:?:/Мудрости_1::
    SendTemplate("KPRPMZ", 231)
Return

:?:/Мудрости_2::
    SendTemplate("KPRPMZ", 232)
Return

:?:/Мудрости_3::
    SendTemplate("KPRPMZ", 233)
Return

:?:/Мудрости_4::
    SendTemplate("KPRPMZ", 234)
Return

:?:/Кариес_1::
    SendTemplate("KPRPMZ", 235)
Return

:?:/Кариес_2::
    SendTemplate("KPRPMZ", 236)
Return

:?:/Кариес_3::
    SendTemplate("KPRPMZ", 237)
Return

:?:/Молочный_1::
    SendTemplate("KPRPMZ", 238)
Return

:?:/Молочный_2::
    SendTemplate("KPRPMZ", 239)
Return

:?:/Шейка_1::
    SendTemplate("KPRPMZ", 240)
Return

:?:/Шейка_2::
    SendTemplate("KPRPMZ", 241)
Return

:?:/Шейка_3::
    SendTemplate("KPRPMZ", 242)
Return

:?:/Шейка_4::
    SendTemplate("KPRPMZ", 243)
Return

:?:/Шейка_5::
    SendTemplate("KPRPMZ", 244)
Return

:?:/ЭндоУЗИ_1::
    SendTemplate("KPRPMZ", 245)
Return

:?:/ЭндоУЗИ_2::
    SendTemplate("KPRPMZ", 246)
Return

:?:/ЭндоУЗИ_3::
    SendTemplate("KPRPMZ", 247)
Return

:?:/М>Ж::
    SendTemplate("KPRPMZ", 248)
Return

:?:/Ж>М::
    SendTemplate("KPRPMZ", 249)
Return

:?:/Ингалятор::
    SendTemplate("KPRPMZ", 250)
Return

:?:/Донор_1::
    SendTemplate("KPRPMZ", 251)
Return

:?:/Донор_2::
    SendTemplate("KPRPMZ", 252)
Return

:?:/Донор_3::
    SendTemplate("KPRPMZ", 253)
Return

:?:/Донор_4::
    SendTemplate("KPRPMZ", 254)
Return

:?:/ЭЭГ_1::
    SendTemplate("KPRPMZ", 255)
Return

:?:/ЭЭГ_2::
    SendTemplate("KPRPMZ", 256)
Return

:?:/ЭЭГ_3::
    SendTemplate("KPRPMZ", 257)
Return

:?:/ЭЭГ_4::
    SendTemplate("KPRPMZ", 258)
Return

:?:/ЭЭГ_5::
    SendTemplate("KPRPMZ", 259)
Return

:?:/Глю_1::
    SendTemplate("KPRPMZ", 260)
Return

:?:/Глю_2::
    SendTemplate("KPRPMZ", 261)
Return

:?:/Глю_3::
    SendTemplate("KPRPMZ", 262)
Return

:?:/Глю_4::
    SendTemplate("KPRPMZ", 263)
Return

:?:/Глю_5::
    SendTemplate("KPRPMZ", 264)
Return

:?:/ОФЭКТ_1::
    SendTemplate("KPRPMZ", 265)
Return

:?:/ОФЭКТ_2::
    SendTemplate("KPRPMZ", 266)
Return

:?:/ОФЭКТ_3::
    SendTemplate("KPRPMZ", 267)
Return

:?:/ОФЭКТ_4::
    SendTemplate("KPRPMZ", 268)
Return

:?:/Пул_1::
    SendTemplate("KPRPMZ", 269)
Return

:?:/Пул_2::
    SendTemplate("KPRPMZ", 270)
Return

:?:/Рентген_1::
    SendTemplate("KPRPMZ", 271)
Return

:?:/Рентген_2::
    SendTemplate("KPRPMZ", 272)
Return

:?:/Рентген_3::
    SendTemplate("KPRPMZ", 273)
Return

:?:/Рентген_4::
    SendTemplate("KPRPMZ", 274)
Return

:?:/Рентген_5::
    SendTemplate("KPRPMZ", 275)
Return

:?:/Годность::
    SendTemplate("KPRPMZ", 276)
Return

:?:/Хранение::
    SendTemplate("KPRPMZ", 277)
Return

:?:/Белье::
    SendTemplate("KPRPMZ", 278)
Return

:?:/Кварц_1::
    SendTemplate("KPRPMZ", 279)
Return

:?:/Кварц_2::
    SendTemplate("KPRPMZ", 280)
Return

:?:/Докум::
    SendTemplate("KPRPMZ", 281)
Return

:?:/Мойка::
    SendTemplate("KPRPMZ", 282)
Return

:?:/ПХД_1::
    SendTemplate("KPRPMZ", 283)
Return

:?:/ПХД_2::
    SendTemplate("KPRPMZ", 284)
Return

:?:/Миос_1::
    SendTemplate("KPRPMZ", 285)
Return

:?:/Миос_2::
    SendTemplate("KPRPMZ", 286)
Return

:?:/Миос_3::
    SendTemplate("KPRPMZ", 287)
Return

:?:/Виз_1::
    SendTemplate("KPRPMZ", 288)
Return

:?:/Виз_2::
    SendTemplate("KPRPMZ", 289)
Return

:?:/Виз_3::
    SendTemplate("KPRPMZ", 290)
Return

:?:/Виз_4::
    SendTemplate("KPRPMZ", 291)
Return

:?:/Отбел_1::
    SendTemplate("KPRPMZ", 292)
Return

:?:/Отбел_2::
    SendTemplate("KPRPMZ", 293)
Return

:?:/Отбел_3::
    SendTemplate("KPRPMZ", 294)
Return

:?:/Спутник_1::
    SendTemplate("KPRPMZ", 295)
Return

:?:/Спутник_2::
    SendTemplate("KPRPMZ", 296)
Return

:?:/Наркоман_1::
    SendTemplate("KPRPMZ", 297)
Return

:?:/Наркоман_2::
    SendTemplate("KPRPMZ", 298)
Return

:?:/Бешенство_4::
    SendTemplate("KPRPMZ", 299)
Return

:?:/Бешенство_5::
    SendTemplate("KPRPMZ", 300)
Return

:?:/УЗИ_1::
    SendTemplate("KPRPMZ", 301)
Return

:?:/УЗИ_2::
    SendTemplate("KPRPMZ", 302)
Return

:?:/Хим_1::
    SendTemplate("KPRPMZ", 303)
Return

:?:/Хим_2::
    SendTemplate("KPRPMZ", 304)
Return

:?:/Рем_1::
    SendTemplate("KPRPMZ", 305)
Return

:?:/Рем_2::
    SendTemplate("KPRPMZ", 306)
Return

:?:/Вена_1::
    SendTemplate("KPRPMZ", 307)
Return

:?:/Вена_2::
    SendTemplate("KPRPMZ", 308)
Return

:?:/Клятва::
    SendTemplate("KPRPMZ", 309)
Return

:?:/Форма::
    SendTemplate("KPRPMZ", 310)
Return

:?:/ИВЛ_ЦГБ::
    SendTemplate("KPRPMZ", 311)
Return

:?:/ИВЛ_АСМП::
    SendTemplate("KPRPMZ", 312)
Return

:?:/ИВЛ::
    SendTemplate("KPRPMZ", 313)
Return

:?:/Капельница_1::
    SendTemplate("KPRPMZ", 314)
Return

:?:/Капельница_2::
    SendTemplate("KPRPMZ", 315)
Return

:?:/Легкое_У_1::
    SendTemplate("KPRPMZ", 316)
Return

:?:/Легкое_У_2::
    SendTemplate("KPRPMZ", 317)
Return

:?:/Грудь_УУ_1::
    SendTemplate("KPRPMZ", 318)
Return

:?:/Грудь_УУ_2::
    SendTemplate("KPRPMZ", 319)
Return

:?:/Пло_Х_1::
    SendTemplate("KPRPMZ", 320)
Return

:?:/Пло_Х_2::
    SendTemplate("KPRPMZ", 321)
Return

:?:/Грудь_У_1::
    SendTemplate("KPRPMZ", 322)
Return

:?:/Грудь_У_2::
    SendTemplate("KPRPMZ", 323)
Return

:?:/Матка_У_1::
    SendTemplate("KPRPMZ", 324)
Return

:?:/Матка_У_2::
    SendTemplate("KPRPMZ", 325)
Return

:?:/УВТ_1::
    SendTemplate("KPRPMZ", 326)
Return

:?:/УВТ_2::
    SendTemplate("KPRPMZ", 327)
Return

:?:/Гем_1::
    SendTemplate("KPRPMZ", 328)
Return

:?:/Гем_2::
    SendTemplate("KPRPMZ", 329)
Return

:?:/Нож_1::
    SendTemplate("KPRPMZ", 330)
Return

:?:/Нож_2::
    SendTemplate("KPRPMZ", 331)
Return

:?:/Аппендикс_1::
    SendTemplate("KPRPMZ", 332)
Return

:?:/Аппендикс_2::
    SendTemplate("KPRPMZ", 333)
Return

:?:/Соз_1::
    SendTemplate("KPRPMZ", 334)
Return

:?:/Соз_2::
    SendTemplate("KPRPMZ", 335)
Return

:?:/Соз_3::
    SendTemplate("KPRPMZ", 336)
Return

:?:/Родинка_1::
    SendTemplate("KPRPMZ", 337)
Return

:?:/Родинка_2::
    SendTemplate("KPRPMZ", 338)
Return

:?:/Родинка_3::
    SendTemplate("KPRPMZ", 339)
Return

:?:/Кард_1::
    SendTemplate("KPRPMZ", 340)
Return

:?:/Кард_2::
    SendTemplate("KPRPMZ", 341)
Return

:?:/Инфаркт_1::
    SendTemplate("KPRPMZ", 342)
Return

:?:/Инфаркт_2::
    SendTemplate("KPRPMZ", 343)
Return

:?:/Инфаркт_3::
    SendTemplate("KPRPMZ", 344)
Return

:?:/Инфаркт_4::
    SendTemplate("KPRPMZ", 345)
Return

:?:/Инфаркт_5::
    SendTemplate("KPRPMZ", 346)
Return

:?:/Инфаркт_6::
    SendTemplate("KPRPMZ", 347)
Return

:?:/Роды_1::
    SendTemplate("KPRPMZ", 348)
Return

:?:/Роды_2::
    SendTemplate("KPRPMZ", 349)
Return

:?:/Роды_3::
    SendTemplate("KPRPMZ", 350)
Return

:?:/Роды_4::
    SendTemplate("KPRPMZ", 351)
Return

:?:/Стер_2::
    SendTemplate("KPRPMZ", 352)
Return

:?:/Стер_2::
    SendTemplate("KPRPMZ", 353)
Return

:?:/Венозное::
    SendTemplate("KPRPMZ", 354)
Return

:?:/Артериальное::
    SendTemplate("KPRPMZ", 355)
Return

:?:/ЗЧМТ_1::
    SendTemplate("KPRPMZ", 356)
Return

:?:/ЗЧМТ_2::
    SendTemplate("KPRPMZ", 357)
Return

:?:/Нос_1::
    SendTemplate("KPRPMZ", 358)
Return

:?:/Нос_2::
    SendTemplate("KPRPMZ", 359)
Return

:?:/Откр::
    SendTemplate("KPRPMZ", 360)
Return

:?:/Закр::
    SendTemplate("KPRPMZ", 361)
Return

:?:/Ожог_3::
    SendTemplate("KPRPMZ", 362)
Return

:?:/Ожог_4::
    SendTemplate("KPRPMZ", 363)
Return

:?:/Пуля_1::
    SendTemplate("KPRPMZ", 364)
Return

:?:/Пуля_2::
    SendTemplate("KPRPMZ", 365)
Return

:?:/Пуля_3::
    SendTemplate("KPRPMZ", 366)
Return

:?:/Нога_1::
    SendTemplate("KPRPMZ", 367)
Return

:?:/Грыжа::
    SendTemplate("KPRPMZ", 368)
Return

:?:/Мороз_1::
    SendTemplate("KPRPMZ", 369)
Return

:?:/Мороз_2::
    SendTemplate("KPRPMZ", 370)
Return

:?:/Позв_1::
    SendTemplate("KPRPMZ", 371)
Return

:?:/Позв_2::
    SendTemplate("KPRPMZ", 372)
Return

:?:/Позв_3::
    SendTemplate("KPRPMZ", 373)
Return

:?:/Ребро_1::
    SendTemplate("KPRPMZ", 374)
Return

:?:/Ребро_2::
    SendTemplate("KPRPMZ", 375)
Return

:?:/Ребро_3::
    SendTemplate("KPRPMZ", 376)
Return

:?:/АВД_1::
    SendTemplate("KPRPMZ", 377)
Return

:?:/АВД_2::
    SendTemplate("KPRPMZ", 378)
Return

:?:/Челюс::
    SendTemplate("KPRPMZ", 379)
Return

:?:/Нос_ПМП::
    SendTemplate("KPRPMZ", 380)
Return

:?:/Нос::
    SendTemplate("KPRPMZ", 381)
Return

:?:/Нога_2::
    SendTemplate("KPRPMZ", 382)
Return

:?:/Рана::
    SendTemplate("KPRPMZ", 383)
Return

:?:/Пер::
    SendTemplate("KPRPMZ", 384)
Return

:?:/Грудь_1::
    SendTemplate("KPRPMZ", 385)
Return

:?:/Грудь_2::
    SendTemplate("KPRPMZ", 386)
Return

:?:/Раст::
    SendTemplate("KPRPMZ", 387)
Return

:?:/Ожоги_1::
    SendTemplate("KPRPMZ", 388)
Return

:?:/Ожоги_2::
    SendTemplate("KPRPMZ", 389)
Return

:?:/Пересадка_1::
    SendTemplate("KPRPMZ", 390)
Return

:?:/Пересадка_2::
    SendTemplate("KPRPMZ", 391)
Return

:?:/Рассечение_г::
    SendTemplate("KPRPMZ", 392)
Return

:?:/Кровь_1::
    SendTemplate("KPRPMZ", 393)
Return

:?:/Кровь_2::
    SendTemplate("KPRPMZ", 394)
Return

:?:/Ранение::
    SendTemplate("KPRPMZ", 395)
Return

:?:/Вывих::
    SendTemplate("KPRPMZ", 396)
Return

:?:/Открытый::
    SendTemplate("KPRPMZ", 397)
Return

:?:/ГМУ_1::
    SendTemplate("KPRPMZ", 398)
Return

:?:/ЦГБ_1::
    SendTemplate("KPRPMZ", 399)
Return

:?:/ГМУ_2::
    SendTemplate("KPRPMZ", 400)
Return

:?:/ЦГБ_2::
    SendTemplate("KPRPMZ", 400)
Return

:?:/ГМУ_3::
    SendTemplate("KPRPMZ", 401)
Return

:?:/ЦГБ_3::
    SendTemplate("KPRPMZ", 401)
Return

:?:/ГМУ_4::
    SendTemplate("KPRPMZ", 402)
Return

:?:/ЦГБ_4::
    SendTemplate("KPRPMZ", 402)
Return

:?:/ГМУ_5::
    SendTemplate("KPRPMZ", 403)
Return

:?:/ЦГБ_5::
    SendTemplate("KPRPMZ", 403)
Return

:?:/ГМУ_6::
    SendTemplate("KPRPMZ", 404)
Return

:?:/ЦГБ_6::
    SendTemplate("KPRPMZ", 404)
Return

:?:/ГМУ_7::
    SendTemplate("KPRPMZ", 405)
Return

:?:/ГМУ_8::
    SendTemplate("KPRPMZ", 424)
Return

:?:/ЦГБ_7::
    SendTemplate("KPRPMZ", 405)
Return

:?:/ЦГБ_8::
    SendTemplate("KPRPMZ", 406)
Return

:?:/ЦГБ_9::
    SendTemplate("KPRPMZ", 407)
Return

:?:/ГМУ_9::
    SendTemplate("KPRPMZ", 409)
Return

:?:/ЦГБ_10::
    SendTemplate("KPRPMZ", 408)
Return

:?:/ЦГБ_11::
    SendTemplate("KPRPMZ", 409)
Return


:?:/ЦГБ_12::
    SendTemplate("KPRPMZ", 410)
Return

:?:/МК_1::
    SendTemplate("KPRPMZ", 411)
	ShowRedList()
return

:?:/МК_0::
    SendTemplate("KPRPMZ", 412)
    ShowRedList()
return

:?:/МК_2::
    SendTemplate("KPRPMZ", 413)
Return

:?:/МК_3::
    SendTemplate("KPRPMZ", 414)
	Gui, ВЗ:Destroy  ; Явно указываем имя GUI
Return

:?:/МК_4::
    SendTemplate("KPRPMZ", 415)
Return

:?:/МК_5::
    SendTemplate("KPRPMZ", 416)
Return

:?:/МК_6::
    SendTemplate("KPRPMZ", 417)
Return

:?:/МК_7::
    SendTemplate("KPRPMZ", 418)
Return

:?:/МК_8::
    SendTemplate("KPRPMZ", 419)
Return

:?:/МК_9::
    SendTemplate("KPRPMZ", 420)
Return

:?:/МК_10::
    SendTemplate("KPRPMZ", 421)
Return

:?:/МК_11::
    SendTemplate("KPRPMZ", 422)
	Gui, ВЗ:Destroy  ; Явно указываем имя GUI
Return

:?:/МК_12::
    SendTemplate("KPRPMZ", 423)
Return

:?:/Трен::
    startTime := A_TickCount
    docladInterval := 300000   
    docladStart := A_TickCount
    SetTimer, UpdateTimeMP, 1000
    SendTemplate("KPRPMZ", 425)
	Gui, Destroy
Return

:?:/Трен_0::
    SendTemplate("KPRPMZ", 426)
Return

:?:/МП::
    startTime := A_TickCount
    docladInterval := 300000   
    docladStart := A_TickCount
    SetTimer, UpdateTimeMP, 1000
    CreateAdaptiveGUI()
    SendTemplate("KPRPMZ", 427)
Return

:?:/МП_0::
    SendTemplate("KPRPMZ", 428)
	Gui, Destroy
Return

:?:/Аллергия_1::
    SendTemplate("KPRPMZ", 429)
Return

:?:/Аллергия_1::
    SendTemplate("KPRPMZ", 430)
Return

:?:/Аллергия_2::
    SendTemplate("KPRPMZ", 431)
Return

:?:/Аллергия_3::
    SendTemplate("KPRPMZ", 432)
Return

:?:/Аллергия_4::
    SendTemplate("KPRPMZ", 433)
Return

:?:/Глаз_1::
    SendTemplate("KPRPMZ", 434)
Return

:?:/Глаз_2::
    SendTemplate("KPRPMZ", 435)
Return

:?:/Ухо_1::
    SendTemplate("KPRPMZ", 436)
Return

:?:/Ухо_2::
    SendTemplate("KPRPMZ", 437)
Return

:?:/Почки_1::
    SendTemplate("KPRPMZ", 438)
Return

:?:/Почки_2::
    SendTemplate("KPRPMZ", 439)
Return

:?:/Живот_1::
    SendTemplate("KPRPMZ", 440)
Return

:?:/Живот_2::
    SendTemplate("KPRPMZ", 441)
Return

:?:/Суставы_1::
    SendTemplate("KPRPMZ", 442)
Return

:?:/Суставы_2::
    SendTemplate("KPRPMZ", 443)
Return

:?:/Суставы_3::
    SendTemplate("KPRPMZ", 444)
Return

:?:/Суставы_4::
    SendTemplate("KPRPMZ", 445)
Return

:?:/Печень_1::
    SendTemplate("KPRPMZ", 446)
Return

:?:/Печень_2::
    SendTemplate("KPRPMZ", 447)
Return

:?:/Печень_3::
    SendTemplate("KPRPMZ", 448)
Return

:?:/Горло_1::
    SendTemplate("KPRPMZ", 449)
Return

:?:/Горло_3::
    SendTemplate("KPRPMZ", 450)
Return

:?:/Горло_4::
    SendTemplate("KPRPMZ", 451)
Return

:?:/Горло_5::
    SendTemplate("KPRPMZ", 452)
Return

:?:/Горло_6::
    SendTemplate("KPRPMZ", 453)
Return

:?:/Горло_7::
    SendTemplate("KPRPMZ", 454)
Return

:?:/Витамин_1::
    SendTemplate("KPRPMZ", 455)
Return

:?:/Витамин_2::
    SendTemplate("KPRPMZ", 456)
Return

:?:/Витамин_3::
    SendTemplate("KPRPMZ", 457)
Return

:?:/Геморой::
    SendTemplate("KPRPMZ", 458)
Return

:?:/Голова_1::
    SendTemplate("KPRPMZ", 459)
Return

:?:/Голова_2::
    SendTemplate("KPRPMZ", 460)
Return

:?:/Голова_3::
    SendTemplate("KPRPMZ", 461)
Return

:?:/Голова_4::
    SendTemplate("KPRPMZ", 462)
Return

:?:/Голова_5::
    SendTemplate("KPRPMZ", 463)
Return

:?:/Голова_6::
    SendTemplate("KPRPMZ", 464)
Return

:?:/Потенция_1::
    SendTemplate("KPRPMZ", 465)
Return

:?:/Потенция_2::
    SendTemplate("KPRPMZ", 466)
Return

:?:/Диарея_1::
    SendTemplate("KPRPMZ", 467)
Return

:?:/Диарея_2::
    SendTemplate("KPRPMZ", 468)
Return

:?:/Диарея_3::
    SendTemplate("KPRPMZ", 469)
Return

:?:/Диарея_4::
    SendTemplate("KPRPMZ", 470)
Return

:?:/Диабет_1::
    SendTemplate("KPRPMZ", 471)
Return

:?:/Диабет_2::
    SendTemplate("KPRPMZ", 472)
Return

:?:/Диабет_3::
    SendTemplate("KPRPMZ", 473)
Return

:?:/Диабет_4::
    SendTemplate("KPRPMZ", 474)
Return

:?:/Изжога_1::
    SendTemplate("KPRPMZ", 475)
Return

:?:/Изжога_2::
    SendTemplate("KPRPMZ", 476)
Return

:?:/Изжога_3::
    SendTemplate("KPRPMZ", 477)
Return

:?:/Изжога_4::
    SendTemplate("KPRPMZ", 478)
Return

:?:/Изжога_5::
    SendTemplate("KPRPMZ", 479)
Return

:?:/Изжога_6::
    SendTemplate("KPRPMZ", 480)
Return

:?:/Изжога_7::
    SendTemplate("KPRPMZ", 481)
Return

:?:/Кашель_1::
    SendTemplate("KPRPMZ", 482)
Return

:?:/Кашель_2::
    SendTemplate("KPRPMZ", 483)
Return

:?:/Кашель_3::
    SendTemplate("KPRPMZ", 484)
Return

:?:/Кашель_4::
    SendTemplate("KPRPMZ", 485)
Return

:?:/Кашель_5::
    SendTemplate("KPRPMZ", 486)
Return

:?:/Кашель_6::
    SendTemplate("KPRPMZ", 487)
Return

:?:/Кашель_7::
    SendTemplate("KPRPMZ", 488)
Return

:?:/Пузырь_1::
    SendTemplate("KPRPMZ", 489)
Return

:?:/Пузырь_2::
    SendTemplate("KPRPMZ", 490)
Return

:?:/Мигрень_1::
    SendTemplate("KPRPMZ", 491)
Return

:?:/Мигрень_2::
    SendTemplate("KPRPMZ", 492)
Return

:?:/Мигрень_3::
    SendTemplate("KPRPMZ", 493)
Return

:?:/Мигрень_4::
    SendTemplate("KPRPMZ", 494)
Return

:?:/Ожог_1::
    SendTemplate("KPRPMZ", 495)
Return

:?:/Ожог_2::
    SendTemplate("KPRPMZ", 496)
Return

:?:/Насморк_1::
    SendTemplate("KPRPMZ", 497)
Return

:?:/Насморк_2::
    SendTemplate("KPRPMZ", 498)
Return

:?:/Насморк_3::
    SendTemplate("KPRPMZ", 499)
Return

:?:/Повышенное_1::
    SendTemplate("KPRPMZ", 500)
Return

:?:/Пониженное_1::
    SendTemplate("KPRPMZ", 501)
Return

:?:/Пониженное_2::
    SendTemplate("KPRPMZ", 502)
Return

:?:/Жар_1::
    SendTemplate("KPRPMZ", 503)
Return

:?:/Жар_2::
    SendTemplate("KPRPMZ", 504)
Return

:?:/Жар_3::
    SendTemplate("KPRPMZ", 505)
Return

:?:/Судороги_1::
    SendTemplate("KPRPMZ", 506)
Return

:?:/Судороги_2::
    SendTemplate("KPRPMZ", 507)
Return

:?:/Сердце_1::
    SendTemplate("KPRPMZ", 508)
Return

:?:/Сердце_2::
    SendTemplate("KPRPMZ", 509)
Return

:?:/Сердце_3::
    SendTemplate("KPRPMZ", 510)
Return

:?:/Тошнота_1::
    SendTemplate("KPRPMZ", 511)
Return

:?:/Тошнота_2::
    SendTemplate("KPRPMZ", 512)
Return

:?:/Тошнота_3::
    SendTemplate("KPRPMZ", 513)
Return

:?:/Тошнота_4::
    SendTemplate("KPRPMZ", 514)
Return

:?:/Успокоительное_1::
    SendTemplate("KPRPMZ", 515)
Return

:?:/Успокоительное_2::
    SendTemplate("KPRPMZ", 516)
Return

:?:/Успокоительное_3::
    SendTemplate("KPRPMZ", 517)
Return

:?:/Обезбол_1::
    SendTemplate("KPRPMZ", 518)
Return

:?:/Обезбол_2::
    SendTemplate("KPRPMZ", 519)
Return

:?:/Обезбол_3::
    SendTemplate("KPRPMZ", 520)
Return

:?:/Обезбол_4::
    SendTemplate("KPRPMZ", 521)
Return

:?:/Успокоительное_1::
    SendTemplate("KPRPMZ", 522)
Return

:?:/Успокоительное_2::
    SendTemplate("KPRPMZ", 523)
Return

:?:/Успокоительное_3::
    SendTemplate("KPRPMZ", 524)
Return

:?:/Стресс_1::
    SendTemplate("KPRPMZ", 525)
Return

:?:/Стресс_2::
    SendTemplate("KPRPMZ", 526)
Return

:?:/Стресс_3::
    SendTemplate("KPRPMZ", 527)
Return

:?:/Температура_4::
    SendTemplate("KPRPMZ", 528)
Return

:?:/Температура_5::
    SendTemplate("KPRPMZ", 529)
Return

:?:/Температура_6::
    SendTemplate("KPRPMZ", 530)
Return

:?:/Температура_7::
    SendTemplate("KPRPMZ", 531)
Return

:?:/Астма_1::
    SendTemplate("KPRPMZ", 532)
Return

:?:/Астма_2::
    SendTemplate("KPRPMZ", 533)
Return

:?:/Понос_1::
    SendTemplate("KPRPMZ", 534)
Return

:?:/Понос_2::
    SendTemplate("KPRPMZ", 535)
Return

:?:/Понос_3::
    SendTemplate("KPRPMZ", 536)
Return

:?:/Язва_1::
    SendTemplate("KPRPMZ", 537)
Return

:?:/Язва_2::
    SendTemplate("KPRPMZ", 538)
Return

:?:/Язва_3::
    SendTemplate("KPRPMZ", 539)
Return

:?:/Молочница_1::
    SendTemplate("KPRPMZ", 540)
Return

:?:/Молочница_2::
    SendTemplate("KPRPMZ", 541)
Return

:?:/Молочница_3::
    SendTemplate("KPRPMZ", 542)
Return

:?:/Молочница_4::
    SendTemplate("KPRPMZ", 543)
Return

:?:/Инфаркт_1::
    SendTemplate("KPRPMZ", 544)
Return

:?:/Инфаркт_2::
    SendTemplate("KPRPMZ", 545)
Return

:?:/Головокружение_1::
    SendTemplate("KPRPMZ", 546)
Return

:?:/Головокружение_2::
    SendTemplate("KPRPMZ", 547)
Return

:?:/Головокружение_3::
    SendTemplate("KPRPMZ", 548)
Return

:?:/Головокружение_4::
    SendTemplate("KPRPMZ", 549)
Return

:?:/Головокружение_5::
    SendTemplate("KPRPMZ", 550)
Return

:?:/Гастрит_1::
    SendTemplate("KPRPMZ", 551)
Return

:?:/Гастрит_2::
    SendTemplate("KPRPMZ", 552)
Return

:?:/Гастрит_3::
    SendTemplate("KPRPMZ", 553)
Return

:?:/Гастрит_4::
    SendTemplate("KPRPMZ", 554)
Return

:?:/Зубная_1::
    SendTemplate("KPRPMZ", 555)
Return

:?:/Зубная_2::
    SendTemplate("KPRPMZ", 556)
Return

:?:/Зубная_3::
    SendTemplate("KPRPMZ", 557)
Return

:?:/Глисты_5::
    SendTemplate("KPRPMZ", 558)
Return

:?:/Глисты_6::
    SendTemplate("KPRPMZ", 559)
Return

:?:/Глисты_7::
    SendTemplate("KPRPMZ", 560)
Return

:?:/Глисты_8::
    SendTemplate("KPRPMZ", 561)
Return

:?:/Глисты_9::
    SendTemplate("KPRPMZ", 562)
Return

:?:/Противовирусные_1::
    SendTemplate("KPRPMZ", 563)
Return

:?:/Противовирусные_2::
    SendTemplate("KPRPMZ", 564)
Return

:?:/Противовирусные_3::
    SendTemplate("KPRPMZ", 565)
Return

:?:/Противовирусные_4::
    SendTemplate("KPRPMZ", 566)
Return

:?:/Инсульт_1::
    SendTemplate("KPRPMZ", 567)
Return

:?:/Инсульт_2::
    SendTemplate("KPRPMZ", 568)
Return

:?:/Антисептики_1::
    SendTemplate("KPRPMZ", 569)
Return

:?:/Антисептики_2::
    SendTemplate("KPRPMZ", 570)
Return

:?:/Антисептики_3::
    SendTemplate("KPRPMZ", 571)
Return

:?:/Антисептики_4::
    SendTemplate("KPRPMZ", 572)
Return

:?:/Вздутие_1::
    SendTemplate("KPRPMZ", 573)
Return

:?:/Вздутие_2::
    SendTemplate("KPRPMZ", 574)
Return

:?:/Вздутие_3::
    SendTemplate("KPRPMZ", 575)
Return

:?:/Вздутие_4::
    SendTemplate("KPRPMZ", 576)
Return

:?:/Вздутие_5::
    SendTemplate("KPRPMZ", 577)
Return

:?:/Вздутие_6::
    SendTemplate("KPRPMZ", 578)
Return

:?:/Вздутие_7::
    SendTemplate("KPRPMZ", 579)
Return

:?:/Грибок_1::
    SendTemplate("KPRPMZ", 580)
Return

:?:/Грибок_2::
    SendTemplate("KPRPMZ", 581)
Return

:?:/Чесотка_1::
    SendTemplate("KPRPMZ", 582)
Return

:?:/Чесотка_2::
    SendTemplate("KPRPMZ", 583)
Return

:?:/Член_1::
    SendTemplate("KPRPMZ", 584)
Return

:?:/Член_2::
    SendTemplate("KPRPMZ", 585)
Return

:?:/Член_3::
    SendTemplate("KPRPMZ", 586)
Return

:?:/Член_4::
    SendTemplate("KPRPMZ", 587)
Return

:?:/Менструация_1::
    SendTemplate("KPRPMZ", 588)
Return

:?:/Менструация_2::
    SendTemplate("KPRPMZ", 589)
Return

:?:/Менструация_3::
    SendTemplate("KPRPMZ", 590)
Return

:?:/Менструация_4::
    SendTemplate("KPRPMZ", 591)
Return

:?:/Такси::
   SendTemplate("KPRPMZ", 592)
Return


:?:/ПО::
    GetMinutes()
    WinWaitActive, ahk_exe gta_sa.exe
    CreateAdaptiveGUI()

    startTime := A_TickCount
    docladInterval := 590000
    docladStart := A_TickCount
    SetTimer, UpdateTime, 1000

    SendTemplate("KPRPMZ", 593)
    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_1.mp3
    Loop, %Skolko% {
        Sleep, 590000
        SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_2.mp3
        
        if (A_Index = Skolko) {
            break
        }
        
        SendTemplate("KPRPMZ", 594)
    }

    SendTemplate("KPRPMZ", 595)
    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_3.mp3
    Gui, Destroy
Return


:?:/ПО_1::
    SendTemplate("KPRPMZ", 595)
    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_4.mp3
    Gui, Destroy
    Sleep, 15000
    Reload
Return


:?:/Пост::
    GetMinutes()
    GetPatrolName()
    GetPostName()
    WinWaitActive, ahk_exe gta_sa.exe
    CreateAdaptiveGUI()
    
    startTime := A_TickCount
    docladInterval := 590000
    docladStart := A_TickCount
    SetTimer, UpdateTime, 1000

    If (Patrol != "") {
        SendTemplate("KPRPMZ", 596)
    } Else {
        SendTemplate("KPRPMZ", 597)
    }
    
    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_1.mp3

    Loop, %Skolko% {
        Sleep, 590000
        
        SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_2.mp3
        
        if (A_Index = Skolko) {
            break
        }

        If (Patrol != "") {
            SendTemplate("KPRPMZ", 598)
        } Else {
            SendTemplate("KPRPMZ", 599)
        }
    }

    If (Patrol != "") {
        SendTemplate("KPRPMZ", 600)
    } Else {
        SendTemplate("KPRPMZ", 601)
    }

    Gui, Destroy
    Sleep, 1000
    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_3.mp3
Return

:?:/Пост_1::
    If (Patrol != "") {
        SendTemplate("KPRPMZ", 600)
    } Else {
        SendTemplate("KPRPMZ", 601)
    }

    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_4.mp3
    Sleep, 15000
    Gui, Destroy
    Reload
Return

:?:/Город::
    GetMinutes()
    GetPatrolName()
    WinWaitActive, ahk_exe gta_sa.exe

    CreateAdaptiveGUI()
    startTime := A_TickCount
    docladInterval := 590000
    docladStart := A_TickCount
    SetTimer, UpdateTime, 1000

    If (Patrol != "") {
        SendTemplate("KPRPMZ", 602)
    } Else {
        SendTemplate("KPRPMZ", 603)
    }

    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_1.mp3

    Loop, %Skolko% {
        Sleep, 590000
        SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_2.mp3

        if (A_Index = Skolko) {
            break
        }

        If (Patrol != "") {
            SendTemplate("KPRPMZ", 604)
        } Else {
            SendTemplate("KPRPMZ", 605)
        }
    }

    If (Patrol != "") {
        SendTemplate("KPRPMZ", 606)
    } Else {
        SendTemplate("KPRPMZ", 607)
    }

    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_3.mp3
    Gui, Destroy
Return


:?:/Город_1::
    If (Patrol != "") {
        SendTemplate("KPRPMZ", 606)
    } Else {
        SendTemplate("KPRPMZ", 607)
    }

    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_4.mp3
    Gui, Destroy
    Sleep, 15000
    Reload
Return

:?:/Республика::
    GetMinutes()
    GetPatrolName()
    WinWaitActive, ahk_exe gta_sa.exe
    CreateAdaptiveGUI()

    startTime := A_TickCount
    docladInterval := 590000
    docladStart := A_TickCount
    SetTimer, UpdateTime, 1000

    If (Patrol_1 != "") {
        SendTemplate("KPRPMZ", 608)
    } Else {
        SendTemplate("KPRPMZ", 609)
    }

    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_1.mp3

    Loop, %Skolko% {
        Sleep, 590000
        SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_2.mp3

        if (A_Index = Skolko) {
            break
        }

        If (Patrol_1 != "") {
            SendTemplate("KPRPMZ", 610)
        } Else {
            SendTemplate("KPRPMZ", 611)
        }
    }

    If (Patrol_1 != "") {
        SendTemplate("KPRPMZ", 612)
    } Else {
        SendTemplate("KPRPMZ", 613)
    }

    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_3.mp3
    Gui, Destroy
    Sleep, 1000
Return


:?:/Республика_1::
    If (Patrol_1 != "") {
        SendTemplate("KPRPMZ", 612)
    } Else {
        SendTemplate("KPRPMZ", 613)
    }

    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_4.mp3
    Gui, Destroy
    Sleep, 15000
    Reload
Return

:?:/Город_0::
    GetMinutes()
    GetPatrolName()
    WinWaitActive, ahk_exe gta_sa.exe
    CreateAdaptiveGUI()

    startTime := A_TickCount
    docladInterval := 590000
    docladStart := A_TickCount
    SetTimer, UpdateTime, 1000

    If (Patrol != "") {
        SendTemplate("KPRPMZ", 614)
    } Else {
        SendTemplate("KPRPMZ", 615)
    }

    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_1.mp3

    Loop, %Skolko% {
        Sleep, 590000
        SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Doklad_Mariya_2.mp3

        if (A_Index = Skolko) {
            break
        }

        If (Patrol != "") {
            SendTemplate("KPRPMZ", 616)
        } Else {
            SendTemplate("KPRPMZ", 617)
        }
    }

    If (Patrol != "") {
        SendTemplate("KPRPMZ", 618)
    } Else {
        SendTemplate("KPRPMZ", 619)
    }

    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_3.mp3
    Gui, Destroy
    Sleep, 1000
Return


:?:/Город_2::
    If (Patrol != "") {
        SendTemplate("KPRPMZ", 618)
    } Else {
        SendTemplate("KPRPMZ", 619)
    }

    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_4.mp3
    Gui, Destroy
    Sleep, 15000
    Reload
Return

:?:/Республика_0::
    GetMinutes()
    GetPatrolName()
    WinWaitActive, ahk_exe gta_sa.exe
    CreateAdaptiveGUI()

    startTime := A_TickCount
    docladInterval := 590000
    docladStart := A_TickCount
    SetTimer, UpdateTime, 1000

    If (Patrol_1 != "") {
        SendTemplate("KPRPMZ", 620)
    } Else {
        SendTemplate("KPRPMZ", 621)
    }

    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_1.mp3

    Loop, %Skolko% {
        Sleep, 590000
        SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_2.mp3

        if (A_Index = Skolko) {
            break
        }

        If (Patrol_1 != "") {
            SendTemplate("KPRPMZ", 622)
        } Else {
            SendTemplate("KPRPMZ", 623)
        }
    }

    If (Patrol_1 != "") {
        SendTemplate("KPRPMZ", 624)
    } Else {
        SendTemplate("KPRPMZ", 625)
    }

    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_3.mp3
    Gui, Destroy
    Sleep, 1000
Return


:?:/Республика_2::
    If (Patrol_1 != "") {
        SendTemplate("KPRPMZ", 624)
    } Else {
        SendTemplate("KPRPMZ", 625)
    }

    SoundPlay, C:\ProgramData\KPRP\KPRP-main\KPRPMP3\Doklad_Mariya_4.mp3
    Gui, Destroy
    Sleep, 15000
    Reload
Return

:?:/Вызов_1::
    GetCallNumber()
    GetPatrolName()
    WinWaitActive, ahk_exe gta_sa.exe

    If (Patrol != "") {
        SendTemplate("KPRPMZ", 626)
    } Else {
        SendTemplate("KPRPMZ", 627)
    }
Return

:?:/Вызов_2::
    If (Patrol != "") {
        SendTemplate("KPRPMZ", 628)
    } Else {
        SendTemplate("KPRPMZ", 629)
    }
Return

:?:/Вызов_3::
    If (Patrol != "") {
        SendTemplate("KPRPMZ", 630)
    } Else {
        SendTemplate("KPRPMZ", 631)
    }
Return

:?:/Вызов_4::
    If (Patrol != "") {
        SendTemplate("KPRPMZ", 632)
    } Else {
        SendTemplate("KPRPMZ", 633)
    }
Return


Pause::Pause ; Assign the toggle-pause function to the "pause" key...
!p::Pause ; ... or assign it to Win+p or some other hotkey.
return


:?:/Врменя::
    GetMinutes()
return

:?:/Напарник::
    GetPatrolName()
return

:?:/Пост_0::
    GetPostName()
return

:?:/Вызов_0::
    GetCallNumber()
return

:?:/ВЗ+::
ShowRedList()
return

:?:/ВЗ-::
SendPlay {Enter}
Gui, ВЗ:Destroy  ; Явно указываем имя GUI
return


:?:/Гов_1::
CreateAdaptiveGUI()
startTime := A_TickCount
SetTimer, UpdateTimeGov, 1000
SetTimer, CheckTimeSobes, 60000 ; Проверка каждую минуту
return

:?:/Гов_2::
CreateAdaptiveGUI()
startTime := A_TickCount
SetTimer, UpdateTimeGov, 1000
SetTimer, CheckTimeMedkarty, 60000 ; Проверка каждую минуту
return


CheckTimeSobes:
    FormatTime, CurrentTime,, mm
    CurrentMinute := CurrentTime + 0
	
	
    ; Перезапуск в :54
    if (CurrentMinute = 54) {
        Reload
        Sleep, 1000 ;
        return
    }
    
    ; Срабатывание в :00
    if (CurrentMinute = 0) {
        if (Bol_ro = "Приволжск")
            SendTemplate("KPRPMZ", 637)
        else if (Bol_ro = "Мирный")
            SendTemplate("KPRPMZ", 638)
        else if (Bol_ro = "Невский")
            SendTemplate("KPRPMZ", 639)
    }
    ; Каждые 10 минут
    else if (CurrentMinute = 10) {
        if (Bol_ro = "Приволжск")
            SendTemplate("KPRPMZ", 640)
        else if (Bol_ro = "Мирный")
            SendTemplate("KPRPMZ", 641)
        else if (Bol_ro = "Невский")
            SendTemplate("KPRPMZ", 642)
    }
	
	; Каждые 20 минут
    else if (CurrentMinute = 20) {
        if (Bol_ro = "Приволжск")
            SendTemplate("KPRPMZ", 643)
        else if (Bol_ro = "Мирный")
            SendTemplate("KPRPMZ", 644)
        else if (Bol_ro = "Невский")
            SendTemplate("KPRPMZ", 645)
    }
	
	; Каждые 30 минут
    else if (CurrentMinute = 30) {
        if (Bol_ro = "Приволжск")
            SendTemplate("KPRPMZ", 646)
        else if (Bol_ro = "Мирный")
            SendTemplate("KPRPMZ", 647)
        else if (Bol_ro = "Невский")
            SendTemplate("KPRPMZ", 648)
    }
	
	; Каждые 40 минут
    else if (CurrentMinute = 40) {
        if (Bol_ro = "Приволжск")
            SendTemplate("KPRPMZ", 649)
        else if (Bol_ro = "Мирный")
            SendTemplate("KPRPMZ", 650)
        else if (Bol_ro = "Невский")
            SendTemplate("KPRPMZ", 651)
    }
	
	; Каждые 50 минут
    else if (CurrentMinute = 50) {
        if (Bol_ro = "Приволжск")
            SendTemplate("KPRPMZ", 652)
        else if (Bol_ro = "Мирный")
            SendTemplate("KPRPMZ", 653)
        else if (Bol_ro = "Невский")
            SendTemplate("KPRPMZ", 654)
    }

    ; Каждые 8 минут
    else if (CurrentMinute = 8 || CurrentMinute = 18 || CurrentMinute = 28 || CurrentMinute = 38 || CurrentMinute = 48 || CurrentMinute = 58) {
        if (Bol_ro = "Приволжск")
            SendTemplate("KPRPMZ", 634)
        else if (Bol_ro = "Мирный")
            SendTemplate("KPRPMZ", 635)
        else if (Bol_ro = "Невский")
            SendTemplate("KPRPMZ", 636)
    }
return


CheckTimeMedkarty:
    FormatTime, CurrentTime,, mm
    CurrentMinute := CurrentTime + 0
	
	; Перезапуск в :54
    if (CurrentMinute = 54) {
        Reload
        Sleep, 1000 ;
        return
    }
    
    ; Срабатывание в :00
    if (CurrentMinute = 0) {
        if (Bol_ro = "Приволжск")
            SendTemplate("KPRPMZ", 655)
        else if (Bol_ro = "Мирный")
            SendTemplate("KPRPMZ", 656)
        else if (Bol_ro = "Невский")
            SendTemplate("KPRPMZ", 657)
    }
    ; Каждые 10 минут
    else if (CurrentMinute = 10) {
        if (Bol_ro = "Приволжск")
            SendTemplate("KPRPMZ", 658)
        else if (Bol_ro = "Мирный")
            SendTemplate("KPRPMZ", 659)
        else if (Bol_ro = "Невский")
            SendTemplate("KPRPMZ", 660)
    }
	
	; Каждые 20 минут
    else if (CurrentMinute = 20) {
        if (Bol_ro = "Приволжск")
            SendTemplate("KPRPMZ", 661)
        else if (Bol_ro = "Мирный")
            SendTemplate("KPRPMZ", 662)
        else if (Bol_ro = "Невский")
            SendTemplate("KPRPMZ", 663)
    }
	
	; Каждые 30 минут
    else if (CurrentMinute = 30) {
        if (Bol_ro = "Приволжск")
            SendTemplate("KPRPMZ", 664)
        else if (Bol_ro = "Мирный")
            SendTemplate("KPRPMZ", 665)
        else if (Bol_ro = "Невский")
            SendTemplate("KPRPMZ", 666)
    }
	
	; Каждые 40 минут
    else if (CurrentMinute = 40) {
        if (Bol_ro = "Приволжск")
            SendTemplate("KPRPMZ", 667)
        else if (Bol_ro = "Мирный")
            SendTemplate("KPRPMZ", 668)
        else if (Bol_ro = "Невский")
            SendTemplate("KPRPMZ", 669)
    }
	
	; Каждые 50 минут
    else if (CurrentMinute = 50) {
        if (Bol_ro = "Приволжск")
            SendTemplate("KPRPMZ", 670)
        else if (Bol_ro = "Мирный")
            SendTemplate("KPRPMZ", 671)
        else if (Bol_ro = "Невский")
            SendTemplate("KPRPMZ", 672)
    }

    ; Каждые 8 минут
    else if (CurrentMinute = 8 || CurrentMinute = 18 || CurrentMinute = 28 || CurrentMinute = 38 || CurrentMinute = 48 || CurrentMinute = 58) {
        if (Bol_ro = "Приволжск")
            SendTemplate("KPRPMZ", 634)
        else if (Bol_ro = "Мирный")
            SendTemplate("KPRPMZ", 635)
        else if (Bol_ro = "Невский")
            SendTemplate("KPRPMZ", 636)
    }
return


global AFK_Active := false

:?:/-афк::
    SendPlay {Enter}
    AFK_Active := true  ; Включаем режим АФК

    Loop {
        if not AFK_Active {
            break
        }

        Random, Rand, 0, 30
        Random, Rand1, 0, 60
        MouseClick, left, 800 + Rand, 600 + Rand1, 1, 2
        Sleep, 7000
    }
Return


:?:/+афк::
    SendPlay {Enter}
    AFK_Active := false  ; Выключаем режим АФК
    ToolTip, АФК-режим выключен, 500, 500
    SetTimer, RemoveToolTip, 2000
Return

:?:/работа::
    SendPlay {Enter}
    Gui, +AlwaysOnTop -Caption +LastFound -SysMenu +ToolWindow -DPIScale
    Gui, Color, 12345
    Gui, Font, s25

    startTime := A_TickCount

    SetTimer, 1UpdateTime, 1000

    WinSet, TransColor, %CustomColor3% 215
    Gui, Add, Text, vTimerText c%Tsvet_3% Center, 00:00:00
    Gui, Show, NoActivate xCenter y0 w200 h70
Return


:?:/работа_::
    ;SendPlay {Enter}
    Gui, Destroy
Return


RemoveToolTip:
    ToolTip
    SetTimer, RemoveToolTip, Off
Return

1UpdateTime:
    elapsedTime := A_TickCount - startTime 
    seconds := Floor(elapsedTime / 1000) 
    hours := Floor(seconds / 3600) ; Часы
    minutes := Floor((seconds - hours * 3600) / 60) 
    seconds := Mod(seconds, 60) ; Секунды
    formattedTime := Format("{:02}:{:02}:{:02}", hours, minutes, seconds) 
    
    GuiControl,, TimerText, %formattedTime%
    

Return


UpdateTime:
    global count   ; используем глобальную переменную
    
    ; Время дежурства — с момента запуска (не сбрасывается)
    elapsedDuty := A_TickCount - startTime
    elapsedDutySec := Floor(elapsedDuty / 1000)
    hoursDuty := Floor(elapsedDutySec / 3600)
    minutesDuty := Floor((elapsedDutySec - hoursDuty * 3600) / 60)
    secondsDuty := Mod(elapsedDutySec, 60)
    formattedDuty := Format("{:02}:{:02}:{:02}", hoursDuty, minutesDuty, secondsDuty)

    ; Время до доклада — обратный отсчёт от 10 минут
    elapsedDoclad := A_TickCount - docladStart
    if (elapsedDoclad >= docladInterval) {
        docladStart := A_TickCount  ; сброс обратного отсчёта
        elapsedDoclad := 0
    }
    remaining := docladInterval - elapsedDoclad
    remainingSec := Floor(remaining / 1000)
    hoursRem := Floor(remainingSec / 3600)
    minutesRem := Floor((remainingSec - hoursRem * 3600) / 60)
    secondsRem := Mod(remainingSec, 60)
    formattedRemaining := Format("{:02}:{:02}:{:02}", hoursRem, minutesRem, secondsRem)

    ; обновляем GUI с добавлением счётчика скриншотов
    GuiControl,, TimerText, Дежурство: %formattedDuty%`nДо доклада: %formattedRemaining%`nСкриншотов:%count%
return


UpdateTimeMP:
    global count   ; используем глобальную переменную
    
    ; Время дежурства — с момента запуска (не сбрасывается)
    elapsedDuty := A_TickCount - startTime
    elapsedDutySec := Floor(elapsedDuty / 1000)
    hoursDuty := Floor(elapsedDutySec / 3600)
    minutesDuty := Floor((elapsedDutySec - hoursDuty * 3600) / 60)
    secondsDuty := Mod(elapsedDutySec, 60)
    formattedDuty := Format("{:02}:{:02}:{:02}", hoursDuty, minutesDuty, secondsDuty)

    ; Время до доклада — обратный отсчёт от 5 минут
    elapsedDoclad := A_TickCount - docladStart
    if (elapsedDoclad >= docladInterval) {
        docladStart := A_TickCount  ; сброс обратного отсчёта
        elapsedDoclad := 0
    }
    remaining := docladInterval - elapsedDoclad
    remainingSec := Floor(remaining / 1000)
    hoursRem := Floor(remainingSec / 3600)
    minutesRem := Floor((remainingSec - hoursRem * 3600) / 60)
    secondsRem := Mod(remainingSec, 60)
    formattedRemaining := Format("{:02}:{:02}:{:02}", hoursRem, minutesRem, secondsRem)

    ; обновляем GUI с добавлением счётчика скриншотов
    GuiControl,, TimerText, Прошло: %formattedDuty%`n Осталось: %formattedRemaining%`nСкриншотов: %count%
return

UpdateTimeGov:
    global count

    now := A_Now
    marksDuty := [8, 18, 28, 38, 48, 58]  ; Отметки для "репорта"
    marksDoc  := [0, 10, 20, 30, 40, 50]   ; Отметки для "Gov"

    ; --- Функция для поиска ближайшей отметки ---
    GetNextMark(marksArray) {
        currentTime := A_Now
        ; Получаем текущие час и минуту как числа
        FormatTime, currentMin,  %currentTime%, mm
        FormatTime, currentHour, %currentTime%, HH
        currentMin := currentMin + 0
        currentHour := currentHour + 0
        currentDateStr := SubStr(currentTime, 1, 8) ; Получаем дату в формате ГГГГММДД

        ; Ищем следующую отметку в текущем часу
        for index, mark in marksArray {
            if (currentMin < mark) {
                ; Нашли отметку в этом часу
                targetTime := currentDateStr . Format("{:02}{:02}00", currentHour, mark)
                return targetTime
            }
        }
        ; Если не нашли в этом часу, берём первую отметку следующего часа
        nextHour := currentHour + 1
        nextDateStr := currentDateStr
        if (nextHour >= 24) {
            nextHour := 0
            ; Переходим на следующий день
            nextDate := currentTime
            nextDate += 1, Days
            FormatTime, nextDateStr, %nextDate%, yyyyMMdd
        }
        targetTime := nextDateStr . Format("{:02}{:02}00", nextHour, marksArray[1])
        return targetTime
    }

    ; --- Рассчитываем целевое время ---
    dutyTarget := GetNextMark(marksDuty)
    docTarget  := GetNextMark(marksDoc)

    ; --- Вычисляем разницу в секундах ---
    dutyDiff := dutyTarget
    dutyDiff -= now, Seconds
    docDiff := docTarget
    docDiff -= now, Seconds

    ; --- Переводим разницу в читаемый вид ЧЧ:ММ:СС ---
    dutyHr  := dutyDiff // 3600
    dutyMin := Mod(dutyDiff // 60, 60)
    dutySec := Mod(dutyDiff, 60)

    docHr  := docDiff // 3600
    docMin := Mod(docDiff // 60, 60)
    docSec := Mod(docDiff, 60)

    formattedDuty := Format("{1:02}:{2:02}:{3:02}", dutyHr, dutyMin, dutySec)
    formattedDoc  := Format("{1:02}:{2:02}:{3:02}", docHr, docMin, docSec)

    ; --- Выводим результат на GUI ---
    GuiControl,, TimerText, До репорта: %formattedDuty%`nДо gov: %formattedDoc%`nСкриншотов: %count%
return








Medicine1:
Return


;--------------------------------------------------------------------------------


Medicine2:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Сахар_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Сахар_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Сахар_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Сахар_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Анализ сахара в крови]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [Анализ сахара в крови]
Gui, 3:Add, Text, x100 y125 h500 w370 +BackgroundTrans, [Анализ сахара в крови ответ да]
Gui, 3:Add, Text, x100 y175 h500 w370 +BackgroundTrans, [Анализ сахара в крови ответ нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ94,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ94,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ95,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ95,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ96,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ96,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ97,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ97,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w550, Проверка на сахар
Return


;--------------------------------------------------------------------------------


Medicine3:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Шприц

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x195 y15 h20 w500 +BackgroundTrans, [Аллергический приступ]


Gui, 3:Add, Picture, x430 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ33,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x500 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ33,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png



Gui, 3:show, center h60 w590, Аллергический приступ
Return



;--------------------------------------------------------------------------------


Medicine4:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w330,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Вакцинация

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y25 h500 w370 +BackgroundTrans, [Вакцинация]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ38,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ38,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h60 w460, Вакцинация
Return

;--------------------------------------------------------------------------------


Medicine5:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Кровь_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Кровь_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Внутреннее кровотечение]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Внутреннее кровотечение]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ393,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ393,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ394,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ394,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Внутреннее кровотечение
Return



;--------------------------------------------------------------------------------


Medicine6:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Зонд_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Зонд_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Зонд_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Зонд_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Взятие мазка]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [Взятие мазка]
Gui, 3:Add, Text, x100 y125 h500 w370 +BackgroundTrans, [Взятие ответ да]
Gui, 3:Add, Text, x100 y175 h500 w370 +BackgroundTrans, [Взятие ответ нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ133,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ133,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ134,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ134,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ135,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ135,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ136,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ136,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w550, Взятие мазка
Return



;--------------------------------------------------------------------------------


Medicine7:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Вена_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Вена_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Взятие крови из вены]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Взятие крови из вены]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ307,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ307,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ308,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ308,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Взятие крови из вены
Return

;--------------------------------------------------------------------------------

Medicine8:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Палец_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Палец_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Палец_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Взятие крови из пальца]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [Взятие крови из пальца]
Gui, 3:Add, Text, x100 y125 h500 w370 +BackgroundTrans, [Взятие крови из пальца]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ91,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ91,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ92,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ92,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ93,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ93,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h180 w550, Взятие крови из пальца
Return


;--------------------------------------------------------------------------------




Medicine9:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w330,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /ВМС_1
Gui, 3:Add, Text, x10 y85 h200 w120 +BackgroundTrans, /ВМС_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [Внутриматочная спираль]
Gui, 3:Add, Text, x100 y85 h500 w370 +BackgroundTrans, [Внутриматочная спираль]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ29,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ29,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:Add, Picture, x330 y70 w48 h48 +BackgroundTrans gSelectKPRPMZ30,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y70 w48 h48 +BackgroundTrans gNotebookKPRPMZ30,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w480, Внутриматочная спираль
Return


;--------------------------------------------------------------------------------

Medicine10:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w320 +BackgroundTrans, /ФГДС_1
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /ФГДС_2
Gui, 3:Add, Text, x10 y125 h200 w320 +BackgroundTrans, /ФГДС_3
Gui, 3:Add, Text, x10 y175 h200 w320 +BackgroundTrans, /ФГДС_4
Gui, 3:Add, Text, x10 y225 h200 w320 +BackgroundTrans, /ФГДС_5


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Гастроскопия]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [Гастроскопия]
Gui, 3:Add, Text, x125 y125 h500 w370 +BackgroundTrans, [Гастроскопия]
Gui, 3:Add, Text, x125 y175 h500 w370 +BackgroundTrans, [Гастроскопия]
Gui, 3:Add, Text, x125 y225 h200 w320 +BackgroundTrans, [Гастроскопия]


Gui, 3:Add, Picture, x390 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ137,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ137,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ138,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ138,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ139,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ139,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ140,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ140,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ141,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ141,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h280 w540, Гастроскопия
Return

;--------------------------------------------------------------------------------

Medicine11:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w330,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Матка_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Матка_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x115 y25 h500 w370 +BackgroundTrans, [Гистероскопия]
Gui, 3:Add, Text, x115 y75 h500 w370 +BackgroundTrans, [Гистероскопия]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ82,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ82,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ83,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ83,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w540, Гистероскопия
Return


;--------------------------------------------------------------------------------


Medicine12:

Return


;--------------------------------------------------------------------------------

Medicine13:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /АВД_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /АВД_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x80 y25 h500 w370 +BackgroundTrans, [Снять одежду с человека, если она есть]
Gui, 3:Add, Text, x80 y75 h500 w370 +BackgroundTrans, [Дефибриллятор]

Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ377,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x480 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ377,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x400 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ378,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x480 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ378,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w570,  Дефибриллятор
Return



;--------------------------------------------------------------------------------

Medicine14:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Змея_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Змея_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Действия при укусе змеи]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Действия при укусе змеи]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ225,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ225,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ226,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ226,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Действия при укусе змеи
Return

;--------------------------------------------------------------------------------


Medicine15:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w300,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /ЭКГ_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /ЭКГ_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /ЭКГ_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /ЭКГ_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [ЭКГ]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [ЭКГ]
Gui, 3:Add, Text, x100 y125 h500 w370 +BackgroundTrans, [ЭКГ ответ да]
Gui, 3:Add, Text, x100 y175 h500 w370 +BackgroundTrans, [ЭКГ ответ нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ73,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ73,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ74,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ74,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ75,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ75,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ76,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ76,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png



Gui, 3:show, center h220 w540, ЭКГ
Return


;--------------------------------------------------------------------------------


Medicine16:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w480,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Температура_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Температура_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Температура_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Температура_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y25 h500 w370 +BackgroundTrans, [Измерить температуру]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Измерить температуру]
Gui, 3:Add, Text, x145 y125 h500 w370 +BackgroundTrans, [Ответ да]
Gui, 3:Add, Text, x145 y175 h500 w370 +BackgroundTrans, [Ответ нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ57,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ57,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ58,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ58,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ59,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ59,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ60,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ60,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w540, Измерить температуру
Return

;--------------------------------------------------------------------------------

Medicine17:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Капельница_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Капельница_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Капельница]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Капельница]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ314,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ314,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ315,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ315,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Капельница
Return

;--------------------------------------------------------------------------------


Medicine18:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w320 +BackgroundTrans, /ФКС_1
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /ФКС_2
Gui, 3:Add, Text, x10 y125 h200 w320 +BackgroundTrans, /ФКС_3
Gui, 3:Add, Text, x10 y175 h200 w320 +BackgroundTrans, /ФКС_4
Gui, 3:Add, Text, x10 y225 h200 w320 +BackgroundTrans, /ФКС_5


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Колоноскопия]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [Колоноскопия]
Gui, 3:Add, Text, x125 y125 h500 w370 +BackgroundTrans, [Колоноскопия]
Gui, 3:Add, Text, x125 y175 h500 w370 +BackgroundTrans, [Колоноскопия ответ да]
Gui, 3:Add, Text, x125 y225 h200 w320 +BackgroundTrans, [Колоноскопия ответ нет]


Gui, 3:Add, Picture, x390 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ142,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ142,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ143,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ143,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ144,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ144,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ145,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ145,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ146,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ146,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h280 w540, Колоноскопия
Return



;--------------------------------------------------------------------------------

Medicine19:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Клизма_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Клизма_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Клизма]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Клизма]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ207,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ207,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ208,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ208,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h120 w550, Клизма
Return


;--------------------------------------------------------------------------------


Medicine22:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w320 +BackgroundTrans, /МРТ_1
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /МРТ_2
Gui, 3:Add, Text, x10 y125 h200 w320 +BackgroundTrans, /МРТ_3
Gui, 3:Add, Text, x10 y175 h200 w320 +BackgroundTrans, /МРТ_4
Gui, 3:Add, Text, x10 y225 h200 w320 +BackgroundTrans, /МРТ_5


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [МРТ]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [МРТ]
Gui, 3:Add, Text, x125 y125 h500 w370 +BackgroundTrans, [МРТ]
Gui, 3:Add, Text, x125 y175 h500 w370 +BackgroundTrans, [МРТ ответ нет]
Gui, 3:Add, Text, x125 y225 h200 w320 +BackgroundTrans, [МРТ ответ да]


Gui, 3:Add, Picture, x390 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ123,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ123,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ124,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ124,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ125,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ125,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ126,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ126,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ127,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ127,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h280 w540, МРТ
Return


;--------------------------------------------------------------------------------


Medicine23:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Нож_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Нож_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Ножевое ранение]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Ножевое ранение]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ330,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ330,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ331,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ331,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h120 w550, Ножевое ранение
Return



;--------------------------------------------------------------------------------



Medicine24:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Нос

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Носовое кровотечени]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ381,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ381,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h60 w460, Носовое кровотечени
Return



;--------------------------------------------------------------------------------


Medicine25:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Ожоги_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Ожоги_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Ожоги]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Ожоги]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ388,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ388,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ389,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ389,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Ожоги
Return


;--------------------------------------------------------------------------------



Medicine26:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Желудок


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y15 h500 w370 +BackgroundTrans, [Отравление желудка]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ32,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ32,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h60 w500, Отравление желудка
Return



;--------------------------------------------------------------------------------



Medicine27:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Открытый

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Открытый перелом]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ397,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ397,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h60 w460, Открытый перелом
Return




;--------------------------------------------------------------------------------


Medicine28:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Вши_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Вши_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Вши_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Вши_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Попросить снять головной убор]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [Проверка на вши]
Gui, 3:Add, Text, x100 y125 h500 w370 +BackgroundTrans, [Проверка на вши ответ да]
Gui, 3:Add, Text, x100 y175 h500 w370 +BackgroundTrans, [Проверка на вши ответ нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ48,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ48,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ49,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ49,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ50,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ50,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ51,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ51,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w550, Проверка на вши
Return



;--------------------------------------------------------------------------------

Medicine29:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w440,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Глисты_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Глисты_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Глисты_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Глисты_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y25 h500 w370 +BackgroundTrans, [Проверка на глисты]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Проверка на глисты]
Gui, 3:Add, Text, x145 y125 h500 w370 +BackgroundTrans, [Проверка на глисты ответ да]
Gui, 3:Add, Text, x145 y175 h500 w370 +BackgroundTrans, [Проверка на глисты ответ нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ69,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ69,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ70,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ70,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ71,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ71,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ72,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ72,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w540, Проверка на глисты
Return

;--------------------------------------------------------------------------------

Medicine30:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h200 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Алкоголь_1
Gui, 3:Add, Text, x10 y85 h200 w120 +BackgroundTrans, /Алкоголь_2
Gui, 3:Add, Text, x10 y145 h200 w120 +BackgroundTrans, /Алкоголь_3
Gui, 3:Add, Text, x10 y205 h200 w120 +BackgroundTrans, /Алкоголь_4
Gui, 3:Add, Text, x10 y265 h200 w120 +BackgroundTrans, /Алкоголь_5
Gui, 3:Add, Text, x10 y325 h200 w120 +BackgroundTrans, /Алкоголь_6
Gui, 3:Add, Text, x10 y380 h200 w120 +BackgroundTrans, /Алкоголь_7
Gui, 3:Add, Text, x10 y440 h200 w120 +BackgroundTrans, /Алкоголь_8


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y25 h700 w570 +BackgroundTrans, [НАЧАЛО СОСТАВЛЕНИЯ АКТА]
Gui, 3:Add, Text, x145 y85 h700 w570 +BackgroundTrans, [СОСТАВЛЕНИЕ АКТА]
Gui, 3:Add, Text, x145 y145 h700 w570 +BackgroundTrans, [СОСТАВЛЕНИЕ АКТА]
Gui, 3:Add, Text, x145 y205 h700 w570 +BackgroundTrans, [АЛКОТЕСТЕР]
Gui, 3:Add, Text, x145 y260 h700 w570 +BackgroundTrans, [ВЗЯТИЕ КРОВИ]
Gui, 3:Add, Text, x145 y325 h700 w570 +BackgroundTrans, [ЗАКЛЮЧЕНИЕ превышена норма в 0,3 промилле]
Gui, 3:Add, Text, x145 y385 h700 w570 +BackgroundTrans, [ЗАКЛЮЧЕНИЕ не превышена норма в 0,3 промилле]
Gui, 3:Add, Text, x145 y445 h700 w570 +BackgroundTrans, [Проверка на алкоголь Акт отказа]


Gui, 3:Add, Picture, x630 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ172, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ172,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y70 w48 h48 +BackgroundTrans gSelectKPRPMZ173,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y70 w48 h48 +BackgroundTrans gNotebookKPRPMZ173,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y130 w48 h48 +BackgroundTrans gSelectKPRPMZ174,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y130 w48 h48 +BackgroundTrans gNotebookKPRPMZ174,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y190 w48 h48 +BackgroundTrans gSelectKPRPMZ175,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y190 w48 h48 +BackgroundTrans gNotebookKPRPMZ175,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y250 w48 h48 +BackgroundTrans gSelectKPRPMZ176,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y250 w48 h48 +BackgroundTrans gNotebookKPRPMZ176,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y310 w48 h48 +BackgroundTrans gSelectKPRPMZ177,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y310 w48 h48 +BackgroundTrans gNotebookKPRPMZ177,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y370 w48 h48 +BackgroundTrans gSelectKPRPMZ178,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y370 w48 h48 +BackgroundTrans gNotebookKPRPMZ178,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y430 w48 h48 +BackgroundTrans gSelectKPRPMZ179,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y430 w48 h48 +BackgroundTrans gNotebookKPRPMZ179,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png



Gui, 3:show, center h500 w800, Проверка на алкоголь
Return

;--------------------------------------------------------------------------------

Medicine31:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h200 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Наркотики_1
Gui, 3:Add, Text, x10 y85 h200 w120 +BackgroundTrans, /Наркотики_2
Gui, 3:Add, Text, x10 y145 h200 w120 +BackgroundTrans, /Наркотики_3
Gui, 3:Add, Text, x10 y205 h200 w120 +BackgroundTrans, /Наркотики_4
Gui, 3:Add, Text, x10 y265 h200 w120 +BackgroundTrans, /Наркотики_5
Gui, 3:Add, Text, x10 y325 h200 w120 +BackgroundTrans, /Наркотики_6
Gui, 3:Add, Text, x10 y380 h200 w120 +BackgroundTrans, /Наркотики_7
Gui, 3:Add, Text, x10 y440 h200 w120 +BackgroundTrans, /Наркотики_8


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y25 h700 w570 +BackgroundTrans, [НАЧАЛО СОСТАВЛЕНИЯ АКТА]
Gui, 3:Add, Text, x145 y85 h700 w570 +BackgroundTrans, [СОСТАВЛЕНИЕ АКТА]
Gui, 3:Add, Text, x145 y145 h700 w570 +BackgroundTrans, [СОСТАВЛЕНИЕ АКТА]
Gui, 3:Add, Text, x145 y205 h700 w570 +BackgroundTrans, [ПРОВЕДЕНИЕ ПРОЦЕДУРЫ]
Gui, 3:Add, Text, x145 y260 h700 w570 +BackgroundTrans, [ПРОВЕДЕНИЕ ПРОЦЕДУРЫ]
Gui, 3:Add, Text, x145 y325 h700 w570 +BackgroundTrans, [ЗАКЛЮЧЕНИЕ в моче не были найдены следы наркотиков]
Gui, 3:Add, Text, x145 y385 h700 w570 +BackgroundTrans, [ЗАКЛЮЧЕНИЕ в моче были обнаружены наркотики]
Gui, 3:Add, Text, x145 y445 h700 w570 +BackgroundTrans, [Проверка на Наркотики акт отказа]


Gui, 3:Add, Picture, x630 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ180, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ180,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y70 w48 h48 +BackgroundTrans gSelectKPRPMZ181,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y70 w48 h48 +BackgroundTrans gNotebookKPRPMZ181,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y130 w48 h48 +BackgroundTrans gSelectKPRPMZ182,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y130 w48 h48 +BackgroundTrans gNotebookKPRPMZ182,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y190 w48 h48 +BackgroundTrans gSelectKPRPMZ183,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y190 w48 h48 +BackgroundTrans gNotebookKPRPMZ183,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y250 w48 h48 +BackgroundTrans gSelectKPRPMZ184,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y250 w48 h48 +BackgroundTrans gNotebookKPRPMZ184,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y310 w48 h48 +BackgroundTrans gSelectKPRPMZ185,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y310 w48 h48 +BackgroundTrans gNotebookKPRPMZ185,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y370 w48 h48 +BackgroundTrans gSelectKPRPMZ186,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y370 w48 h48 +BackgroundTrans gNotebookKPRPMZ186,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y430 w48 h48 +BackgroundTrans gSelectKPRPMZ187,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y430 w48 h48 +BackgroundTrans gNotebookKPRPMZ187,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h500 w800, Проверка на наркотики
Return


;--------------------------------------------------------------------------------

Medicine33:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h130 w595,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Чувства_0
Gui, 3:Add, Text, x10 y85 h200 w120 +BackgroundTrans, /Чувства_1
Gui, 3:Add, Text, x10 y145 h200 w120 +BackgroundTrans, /Чувства_2
Gui, 3:Add, Text, x10 y205 h200 w120 +BackgroundTrans, /Чувства_3
Gui, 3:Add, Text, x10 y265 h200 w120 +BackgroundTrans, /Чувства_4
Gui, 3:Add, Text, x10 y325 h200 w120 +BackgroundTrans, /Чувства_5
Gui, 3:Add, Text, x10 y380 h200 w120 +BackgroundTrans, /Чувства_6

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w570 +BackgroundTrans, [Освободить артерию от одежды если она есть]
Gui, 3:Add, Text, x135 y85 h500 w570 +BackgroundTrans, [Проверка пульса на сонной артерии]
Gui, 3:Add, Text, x135 y145 h500 w570 +BackgroundTrans, [Убрать руку от соной артерии]
Gui, 3:Add, Text, x135 y205 h500 w570 +BackgroundTrans, [Пульс есть - использование нашатыря]
Gui, 3:Add, Text, x135 y260 h500 w570 +BackgroundTrans, [Снять одежду с человека, если она есть, для проведения реанимации]
Gui, 3:Add, Text, x135 y325 h500 w570 +BackgroundTrans, [Пульса нет - проведения СЛР]
Gui, 3:Add, Text, x135 y385 h500 w570 +BackgroundTrans, [Пульса нет - в случае, если не помогло СЛР]


Gui, 3:Add, Picture, x730 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ84, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x800 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ84,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x730 y70 w48 h48 +BackgroundTrans gSelectKPRPMZ85,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x800 y70 w48 h48 +BackgroundTrans gNotebookKPRPMZ85,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x730 y130 w48 h48 +BackgroundTrans gSelectKPRPMZ86,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x800 y130 w48 h48 +BackgroundTrans gNotebookKPRPMZ86,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x730 y190 w48 h48 +BackgroundTrans gSelectKPRPMZ87,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x800 y190 w48 h48 +BackgroundTrans gNotebookKPRPMZ87,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x730 y250 w48 h48 +BackgroundTrans gSelectKPRPMZ88,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x800 y250 w48 h48 +BackgroundTrans gNotebookKPRPMZ88,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x730 y310 w48 h48 +BackgroundTrans gSelectKPRPMZ89,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x800 y310 w48 h48 +BackgroundTrans gNotebookKPRPMZ89,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x730 y370 w48 h48 +BackgroundTrans gSelectKPRPMZ90,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x800 y370 w48 h48 +BackgroundTrans gNotebookKPRPMZ90,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h430 w895, Приведение в чувства
Return


;--------------------------------------------------------------------------------

Medicine34:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Сколиоз_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Сколиоз_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Сколиоз_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Проверка на сколиоз]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [Проверка на сколиоз ответ да]
Gui, 3:Add, Text, x100 y125 h500 w370 +BackgroundTrans, [Проверка на сколиоз ответ нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ91,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ91,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ92,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ92,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ93,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ93,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h180 w550, Проверка на сколиоз
Return




;--------------------------------------------------------------------------------

Medicine35:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Роды_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Роды_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Роды_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Роды_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Принятие родов]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [Принятие родов]
Gui, 3:Add, Text, x125 y125 h500 w370 +BackgroundTrans, [Принятие родов]
Gui, 3:Add, Text, x125 y175 h500 w370 +BackgroundTrans, [Принятие родов]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ348,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ348,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ349,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ349,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ350,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ350,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ351,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ351,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w550, Принятие родов
Return



;--------------------------------------------------------------------------------

Medicine36:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Позв_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Позв_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Позв_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Перелом позвоночника]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [Перелом позвоночника]
Gui, 3:Add, Text, x125 y125 h500 w370 +BackgroundTrans, [Перелом позвоночника]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ371,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ371,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ372,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ372,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ373,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ373,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h180 w550, Перелом позвоночника
Return


;--------------------------------------------------------------------------------

Medicine37:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Ребро_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Ребро_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Ребро_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Перелом рёбер]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [Перелом рёбер ответ да]
Gui, 3:Add, Text, x100 y125 h500 w370 +BackgroundTrans, [Перелом рёбер рёбер ответ нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ374,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ374,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ375,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ375,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ376,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ376,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h180 w550, Перелом рёбер
Return



;--------------------------------------------------------------------------------


Medicine38:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Пуля

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Пулевое ранение]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ32,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ32,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h60 w460, Пулевое ранение
Return


;--------------------------------------------------------------------------------

Medicine39:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Рентген_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Рентген_2
Gui, 3:Add, Text, x10 y55 h200 w120 +BackgroundTrans, /Рентген_3
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Рентген_4

Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w320 +BackgroundTrans, /Рентген_1
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /Рентген_2
Gui, 3:Add, Text, x10 y125 h200 w320 +BackgroundTrans, /Рентген_3
Gui, 3:Add, Text, x10 y175 h200 w320 +BackgroundTrans, /Рентген_4
Gui, 3:Add, Text, x10 y225 h200 w320 +BackgroundTrans, /Рентген_5


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Рентген конечности]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [Рентген конечности]
Gui, 3:Add, Text, x100 y125 h500 w370 +BackgroundTrans, [Рентген конечности лангетка]
Gui, 3:Add, Text, x100 y175 h500 w370 +BackgroundTrans, [Рентген конечности гипс]
Gui, 3:Add, Text, x100 y225 h200 w320 +BackgroundTrans, [Рентген конечности мазь]

Gui, 3:Add, Picture, x390 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ271,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ271,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ272,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ272,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ273,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ273,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ274,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ274,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ275,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ275,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h280 w540, Рентген конечности
Return



;--------------------------------------------------------------------------------


Medicine40:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Стер_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Стер_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Стерилизация женщины]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Стерилизация женщины]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ352,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ352,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ353,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ353,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Стерилизация женщины
Return



Medicine41:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w380,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Прибор_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Прибор_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Прибор_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Прибор_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y25 h500 w370 +BackgroundTrans, [Томография]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Томография]
Gui, 3:Add, Text, x145 y125 h500 w370 +BackgroundTrans, [Томография ответ да]
Gui, 3:Add, Text, x145 y175 h500 w370 +BackgroundTrans, [Томография ответ нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ65,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ65,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ66,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ66,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ67,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ67,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ68,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ68,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w540, Томография
Return


;--------------------------------------------------------------------------------

Medicine42:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Аппендикс_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Аппендикс_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Удаление аппендицита]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Удаление аппендицита]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ332,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ332,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ333,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ333,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Удаление аппендицита
Return


;--------------------------------------------------------------------------------

Medicine43:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /УЗИ_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /УЗИ_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [УЗИ]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [УЗИ]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ301,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ301,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ302,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ302,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  УЗИ
Return

;--------------------------------------------------------------------------------

Medicine44:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Грудь_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Грудь_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Увеличение груди]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Увеличение груди]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ385,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ385,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ386,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ386,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Увеличение груди
Return


;--------------------------------------------------------------------------------

Medicine45:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Грыжа_1

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x115 y15 h500 w370 +BackgroundTrans, [Уёёдаление позвоночной грыжи]
Gui, 3:show, center h60 w400, Уёёдаление позвоночной грыжи
Return


;--------------------------------------------------------------------------------

Medicine46:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h200 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Флюшка_1
Gui, 3:Add, Text, x10 y85 h200 w120 +BackgroundTrans, /Флюшка_2
Gui, 3:Add, Text, x10 y145 h200 w120 +BackgroundTrans, /Флюшка_3
Gui, 3:Add, Text, x10 y205 h200 w120 +BackgroundTrans, /Флюшка_4
Gui, 3:Add, Text, x10 y265 h200 w120 +BackgroundTrans, /Флюшка_5


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Флюрография]
Gui, 3:Add, Text, x125 y85 h500 w370 +BackgroundTrans, [Флюрография]
Gui, 3:Add, Text, x125 y145 h500 w370 +BackgroundTrans, [Флюрография]
Gui, 3:Add, Text, x125 y205 h500 w370 +BackgroundTrans, [Флюрография ответ да]
Gui, 3:Add, Text, x125 y265 h500 w370 +BackgroundTrans, [Флюрография ответ нет]


Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ52, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ52,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y70 w48 h48 +BackgroundTrans gSelectKPRPMZ53,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y70 w48 h48 +BackgroundTrans gNotebookKPRPMZ53,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y130 w48 h48 +BackgroundTrans gSelectKPRPMZ54,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y130 w48 h48 +BackgroundTrans gNotebookKPRPMZ54,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y190 w48 h48 +BackgroundTrans gSelectKPRPMZ55,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y190 w48 h48 +BackgroundTrans gNotebookKPRPMZ55,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y250 w48 h48 +BackgroundTrans gSelectKPRPMZ56,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y250 w48 h48 +BackgroundTrans gNotebookKPRPMZ56,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png



Gui, 3:show, center h300 w500, Флюрография
Return

;--------------------------------------------------------------------------------

Medicine47:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w320 +BackgroundTrans, /Плод_1
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /Плод_2
Gui, 3:Add, Text, x10 y125 h200 w320 +BackgroundTrans, /Плод_3
Gui, 3:Add, Text, x10 y175 h200 w320 +BackgroundTrans, /Плод_4
Gui, 3:Add, Text, x10 y225 h200 w320 +BackgroundTrans, /Плод_5


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Фетоскопия]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [Фетоскопия]
Gui, 3:Add, Text, x125 y125 h500 w370 +BackgroundTrans, [Фетоскопия]
Gui, 3:Add, Text, x125 y175 h500 w370 +BackgroundTrans, [Фетоскопия ответ да]
Gui, 3:Add, Text, x125 y225 h200 w320 +BackgroundTrans, [Фетоскопия ответ нет]


Gui, 3:Add, Picture, x390 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ167,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ167,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ168,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ168,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ169,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ169,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ170,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ170,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ171,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ171,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h280 w540, Фетоскопия
Return

;--------------------------------------------------------------------------------

Medicine48:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Цистоскоп_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Цистоскоп_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Цистоскоп_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Цистоскоп_4



Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y25 h500 w370 +BackgroundTrans, [Цистоскопия]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Цистоскопия]
Gui, 3:Add, Text, x145 y125 h500 w370 +BackgroundTrans, [Цистоскопия ответ да]
Gui, 3:Add, Text, x145 y175 h500 w370 +BackgroundTrans, [Цистоскопия ответ нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ34,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ34,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ35,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ35,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ35,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ35,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ35,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ35,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h230 w550,Цистоскопия
Return

;--------------------------------------------------------------------------------

Medicine49:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w320 +BackgroundTrans, /ЭЭГ_1
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /ЭЭГ_2
Gui, 3:Add, Text, x10 y125 h200 w320 +BackgroundTrans, /ЭЭГ_3
Gui, 3:Add, Text, x10 y175 h200 w320 +BackgroundTrans, /ЭЭГ_4
Gui, 3:Add, Text, x10 y225 h200 w320 +BackgroundTrans, /ЭЭГ_5


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Электро-энцефалограмма]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [Электро-энцефалограмма]
Gui, 3:Add, Text, x100 y125 h500 w370 +BackgroundTrans, [Электро-энцефалограмма]
Gui, 3:Add, Text, x100 y175 h500 w370 +BackgroundTrans, [Электро-энцефалограмма ответ да]
Gui, 3:Add, Text, x100 y225 h200 w320 +BackgroundTrans, [Электро-энцефалограмма ответ нет]

Gui, 3:Add, Picture, x390 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ255,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ255,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ256,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ256,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ257,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ257,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ258,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ258,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ259,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ259,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h280 w540, Электро-энцефалограмма головного мозга
Return

;--------------------------------------------------------------------------------

Medicine50:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Вывих

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Действия при вывихе]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ396,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ396,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h60 w460, Действия при вывихе
Return



;--------------------------------------------------------------------------------

Medicine51:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Кард_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Кард_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Имплантация кардиостимулятора]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [Имплантация кардиостимулятора]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ340,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ340,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ341,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ341,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Имплантация кардиостимулятора
Return

;--------------------------------------------------------------------------------

Medicine52:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Бешенство_4
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Бешенство_5

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Вакцинация от бешенства]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Вакцинация от бешенства]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ299,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ299,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ300,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ300,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Вакцинация от бешенства
Return


Medicine53:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Родинка_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Родинка_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Родинка_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Удаление родинки]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Удаление родинки]
Gui, 3:Add, Text, x135 y125 h500 w370 +BackgroundTrans, [Удаление родинки]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ337,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ337,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ338,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ338,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ339,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ339,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h180 w550,  Удаление родинки
Return


;--------------------------------------------------------------------------------

Medicine54:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w320 +BackgroundTrans, /ОПТГ_1
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /ОПТГ_2
Gui, 3:Add, Text, x10 y125 h200 w320 +BackgroundTrans, /ОПТГ_3
Gui, 3:Add, Text, x10 y175 h200 w320 +BackgroundTrans, /ОПТГ_4
Gui, 3:Add, Text, x10 y225 h200 w320 +BackgroundTrans, /ОПТГ_5


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Панорамный снимок]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [Если нет]
Gui, 3:Add, Text, x125 y125 h500 w370 +BackgroundTrans, [Продолжение]
Gui, 3:Add, Text, x125 y175 h500 w370 +BackgroundTrans, [Продолжение]
Gui, 3:Add, Text, x125 y225 h200 w320 +BackgroundTrans, [Окончание]


Gui, 3:Add, Picture, x390 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ150,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ150,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ151,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ151,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ152,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ152,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ153,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ153,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ154,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ154,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h280 w540, Панорамный снимок он же Рентген всех зубов
Return


;--------------------------------------------------------------------------------

Medicine55:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Мудрости_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Мудрости_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Мудрости_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Мудрости_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Удаление зуба мудрости]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [Продолжение]
Gui, 3:Add, Text, x125 y125 h500 w370 +BackgroundTrans, [Продолжение]
Gui, 3:Add, Text, x125 y175 h500 w370 +BackgroundTrans, [Если нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ231,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ231,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ232,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ232,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ233,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ233,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ234,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ234,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w550, Удаление зуба мудрости
Return

;--------------------------------------------------------------------------------

Medicine56:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Кариес_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Кариес_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Кариес_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Удаление коренного зуба]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [Продолжение]
Gui, 3:Add, Text, x125 y125 h500 w370 +BackgroundTrans, [Если нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ235,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ235,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ236,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ236,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ237,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ237,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h180 w550, Удаление коренного зуба
Return

;--------------------------------------------------------------------------------

Medicine57:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Молочный_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Молочный_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Удаление молочного зуба]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Продолжение]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ238,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ238,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ239,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ239,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Удаление молочного зуба
Return


;--------------------------------------------------------------------------------

Medicine58:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Рем_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Рем_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Реминерализирующая терапия]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Реминерализирующая терапия]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ305,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ305,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ2306,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ306,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Реминерализирующая терапия
Return



;--------------------------------------------------------------------------------

Medicine59:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Стетоскоп_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Стетоскоп_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Стетоскоп_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Стетоскоп_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x130 y25 h500 w370 +BackgroundTrans, [Проверка шумов в лёгких]
Gui, 3:Add, Text, x130 y75 h500 w370 +BackgroundTrans, [Проверка шумов в лёгких]
Gui, 3:Add, Text, x130 y125 h500 w370 +BackgroundTrans, [Проверка шумов в лёгких]
Gui, 3:Add, Text, x130 y175 h500 w370 +BackgroundTrans, [Проверка шумов в лёгких]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ119,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ119,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ120,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ120,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ121,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ121,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ122,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ122,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w550, Проверка шумов в лёгких
Return


;--------------------------------------------------------------------------------

Medicine60:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Сердце_4
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Сердце_5
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Сердце_6
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Сердце_7


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x120 y25 h500 w370 +BackgroundTrans, [Проверка шумов в сердце]
Gui, 3:Add, Text, x120 y75 h500 w370 +BackgroundTrans, [Проверка шумов в сердце]
Gui, 3:Add, Text, x120 y125 h500 w370 +BackgroundTrans, [Проверка шумов в сердце]
Gui, 3:Add, Text, x120 y175 h500 w370 +BackgroundTrans, [Проверка шумов в сердце]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ199,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ199,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ200,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ200,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ201,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ201,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ202,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ202,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w550, Проверка на вши
Return




;--------------------------------------------------------------------------------

Medicine61:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Давление_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Давление_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Давление_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Проверка давления]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Проверка давления]
Gui, 3:Add, Text, x135 y125 h500 w370 +BackgroundTrans, [Проверка давления]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ188,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ188,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ189,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ189,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ190,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ190,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h180 w550, Проверка давления
Return

;--------------------------------------------------------------------------------

Medicine62:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Рост_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Рост_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Рост_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Рост_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Взвешивание, измерение роста]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [Взвешивание, измерение роста]
Gui, 3:Add, Text, x100 y125 h500 w370 +BackgroundTrans, [Взвешивание, измерение роста]
Gui, 3:Add, Text, x100 y175 h500 w370 +BackgroundTrans, [Взвешивание, измерение роста]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ191,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ191,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ192,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ192,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ193,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ193,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ194,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ194,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w550, Взвешивание, измерение роста
Return
;--------------------------------------------------------------------------------

Medicine63:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Радиация_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Радиация_2
Gui, 3:Add, Text, x10 y55 h200 w120 +BackgroundTrans, /Радиация_3

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Радиационные ожоги]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Радиационные ожоги]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Радиационные ожоги]
Return


;--------------------------------------------------------------------------------

Medicine64:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Виз_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Виз_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Виз_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Виз_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x70 y25 h500 w370 +BackgroundTrans, [Визиографическое исследование зуба]
Gui, 3:Add, Text, x70 y75 h500 w370 +BackgroundTrans, [Визиографическое исследование зуба]
Gui, 3:Add, Text, x70 y125 h500 w370 +BackgroundTrans, [Визиографическое исследование зуба]
Gui, 3:Add, Text, x70 y175 h500 w370 +BackgroundTrans, [Визиографическое исследование зуба]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ288,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ288,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ289,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ289,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ290,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ290,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ291,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ291,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w550, Визиографическое исследование зуба (Рентген зуба)
Return


;--------------------------------------------------------------------------------

Medicine65:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Отбел_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Отбел_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Отбел_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Отбеливание зубов]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [Отбеливание зубов]
Gui, 3:Add, Text, x125 y125 h500 w370 +BackgroundTrans, [Отбеливание зубов]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ292,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ292,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ293,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ293,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ294,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ294,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h180 w550, Отбеливание зубов
Return


;--------------------------------------------------------------------------------

Medicine66:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Ранение

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Ранение операция]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ395,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ95,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h60 w460, Ранение операция
Return



;--------------------------------------------------------------------------------

Medicine67:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Рассечение_г

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Рассечение головы]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ392,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ392,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h60 w460, Рассечение головы
Return


;--------------------------------------------------------------------------------

Medicine68:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Раст

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Растяжение]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ387,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ387,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h60 w460, Растяжение
Return



;--------------------------------------------------------------------------------

Medicine69:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Коронавирус_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Коронавирус_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Коронавирус_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Коронавирус_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Тест на коронавирус]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [Тест на коронавирус]
Gui, 3:Add, Text, x100 y125 h500 w370 +BackgroundTrans, [Тест на коронавирус ответ да]
Gui, 3:Add, Text, x100 y175 h500 w370 +BackgroundTrans, [Тест на коронавирус ответ нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ195,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ195,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ196,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ196,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ197,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ197,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ198,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ198,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w550, Тест на коронавирус
Return

;--------------------------------------------------------------------------------

Medicine70:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w380,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Маммограф_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Маммограф_1
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Маммограф_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Маммограф_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y25 h500 w370 +BackgroundTrans, [Маммография]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Маммография]
Gui, 3:Add, Text, x145 y125 h500 w370 +BackgroundTrans, [Маммография ответ да]
Gui, 3:Add, Text, x145 y175 h500 w370 +BackgroundTrans, [Маммография ответ нет]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ61,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ61,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ62,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ62,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ63,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ63,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ64,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ64,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w540, Маммография
Return


;--------------------------------------------------------------------------------

Medicine71:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w380,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Томосинтез_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Томосинтез_2
Gui, 3:Add, Text, x10 y55 h200 w120 +BackgroundTrans, /Томосинтез_3
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Томосинтез_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Томосинтез]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Томосинтез]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Томосинтез ответ да]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Томосинтез ответ нет]
Gui, 3:show, center h120 w380, Томосинтез
Return


;--------------------------------------------------------------------------------

Medicine72:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /ОФЭКТ_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /ОФЭКТ_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /ОФЭКТ_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /ОФЭКТ_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [ОФЭКТ]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [ОФЭКТ]
Gui, 3:Add, Text, x100 y125 h500 w370 +BackgroundTrans, [ОФЭКТ ответ да]
Gui, 3:Add, Text, x100 y175 h500 w370 +BackgroundTrans, [ОФЭКТ ответ нет]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ265,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ265,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ266,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ266,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ267,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ267,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ268,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ268,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h220 w550, ОФЭКТ
Return
;--------------------------------------------------------------------------------

Medicine73:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Хим_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Хим_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Химиотерапия]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Химиотерапия]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ303,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ303,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ304,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ304,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Химиотерапия
Return


;--------------------------------------------------------------------------------

Medicine74:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Спутник_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Спутник_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x120 y25 h500 w370 +BackgroundTrans, [Вакцинация от коронавируса]
Gui, 3:Add, Text, x120 y75 h500 w370 +BackgroundTrans, [Вакцинация от коронавируса]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ295,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ295,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ296,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ296,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Вакцинация от коронавируса
Return


;--------------------------------------------------------------------------------

Medicine75:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /ЗЧМТ_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /ЗЧМТ_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x80 y25 h500 w370 +BackgroundTrans, [Закрытая черепно-мозговая травма]
Gui, 3:Add, Text, x80 y75 h500 w370 +BackgroundTrans, [Закрытая черепно-мозговая травма]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ356,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ356,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ357,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ357,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Закрытая черепно-мозговая травма
Return

;--------------------------------------------------------------------------------

Medicine76:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Пересадка_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Пересадка_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Пересадка органов]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Пересадка органов]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ390,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ390,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ391,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ391,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Пересадка органов
Return


;--------------------------------------------------------------------------------

Medicine77:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Нос_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Нос_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x90 y25 h500 w370 +BackgroundTrans, [Если перелом со смещением]
Gui, 3:Add, Text, x90 y75 h500 w370 +BackgroundTrans, [Если перелом без смещения]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ307,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ307,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ308,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ308,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Нос перелом
Return

;--------------------------------------------------------------------------------

Medicine78:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Пер

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Перевязывание раны]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ384,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ384,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h60 w460, Перевязывание раны
Return



;--------------------------------------------------------------------------------

Medicine79:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Клятва

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Клятва]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ309,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ309,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h60 w460, Клятва
Return


;--------------------------------------------------------------------------------


Medicine80:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Нога_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Подвернул ногу]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ382,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ382,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h60 w460, Подвернул ногу
Return



;--------------------------------------------------------------------------------

Medicine81:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h200 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /МК_0
Gui, 3:Add, Text, x10 y85 h200 w120 +BackgroundTrans, /МК_1
Gui, 3:Add, Text, x10 y145 h200 w120 +BackgroundTrans, /МК_2
Gui, 3:Add, Text, x10 y205 h200 w120 +BackgroundTrans, /МК_3
Gui, 3:Add, Text, x10 y265 h200 w120 +BackgroundTrans, /МК_4
Gui, 3:Add, Text, x10 y325 h200 w120 +BackgroundTrans, /МК_5
Gui, 3:Add, Text, x10 y380 h200 w120 +BackgroundTrans, /МК_6
Gui, 3:Add, Text, x10 y440 h200 w120 +BackgroundTrans, /МК_7
Gui, 3:Add, Text, x10 y505 h200 w120 +BackgroundTrans, /МК_8
Gui, 3:Add, Text, x10 y565 h200 w120 +BackgroundTrans, /МК_9
Gui, 3:Add, Text, x10 y625 h200 w120 +BackgroundTrans, /МК_10
Gui, 3:Add, Text, x10 y685 h200 w120 +BackgroundTrans, /МК_11
Gui, 3:Add, Text, x10 y745 h200 w120 +BackgroundTrans, /МК_12

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x110 y25 h500 w370 +BackgroundTrans, [Попросить /ud]
Gui, 3:Add, Text, x110 y85 h500 w370 +BackgroundTrans, [Попросить паспорт]
Gui, 3:Add, Text, x110 y145 h500 w370 +BackgroundTrans, [Изучение паспорта]
Gui, 3:Add, Text, x110 y205 h500 w370 +BackgroundTrans, [Назовите ваш вес]
Gui, 3:Add, Text, x110 y260 h500 w370 +BackgroundTrans, [Назовите ваш рост]
Gui, 3:Add, Text, x110 y325 h500 w370 +BackgroundTrans, [Дайте руку]
Gui, 3:Add, Text, x110 y385 h500 w370 +BackgroundTrans, [Давление в норме?]
Gui, 3:Add, Text, x110 y445 h500 w370 +BackgroundTrans, [Давление понижено?]
Gui, 3:Add, Text, x110 y505 h500 w370 +BackgroundTrans, [Психическая проверка]
Gui, 3:Add, Text, x110 y565 h500 w370 +BackgroundTrans, [Термины]
Gui, 3:Add, Text, x110 y625 h500 w370 +BackgroundTrans, [Психическая проверка]
Gui, 3:Add, Text, x110 y685 h500 w370 +BackgroundTrans, [Выдать медкарту] 
Gui, 3:Add, Text, x110 y745 h500 w370 +BackgroundTrans, [Отказ 3/3] 

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ412, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ412,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y70 w48 h48 +BackgroundTrans gSelectKPRPMZ411,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y70 w48 h48 +BackgroundTrans gNotebookKPRPMZ411,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y130 w48 h48 +BackgroundTrans gSelectKPRPMZ413,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y130 w48 h48 +BackgroundTrans gNotebookKPRPMZ413,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y190 w48 h48 +BackgroundTrans gSelectKPRPMZ414,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y190 w48 h48 +BackgroundTrans gNotebookKPRPMZ414,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y250 w48 h48 +BackgroundTrans gSelectKPRPMZ415,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y250 w48 h48 +BackgroundTrans gNotebookKPRPMZ415,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y310 w48 h48 +BackgroundTrans gSelectKPRPMZ416,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y310 w48 h48 +BackgroundTrans gNotebookKPRPMZ416,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y370 w48 h48 +BackgroundTrans gSelectKPRPMZ417,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y370 w48 h48 +BackgroundTrans gNotebookKPRPMZ417,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y430 w48 h48 +BackgroundTrans gSelectKPRPMZ418,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y430 w48 h48 +BackgroundTrans gNotebookKPRPMZ418,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y490 w48 h48 +BackgroundTrans gSelectKPRPMZ419,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y490 w48 h48 +BackgroundTrans gNotebookKPRPMZ419,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y550 w48 h48 +BackgroundTrans gSelectKPRPMZ420,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y550 w48 h48 +BackgroundTrans gNotebookKPRPMZ420,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y610 w48 h48 +BackgroundTrans gSelectKPRPMZ421,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y610 w48 h48 +BackgroundTrans gNotebookKPRPMZ421,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y670 w48 h48 +BackgroundTrans gSelectKPRPMZ422,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y670 w48 h48 +BackgroundTrans gNotebookKPRPMZ422,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y730 w48 h48 +BackgroundTrans gSelectKPRPMZ423,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y730 w48 h48 +BackgroundTrans gNotebookKPRPMZ423,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h780 w470, Медицинская карта
Return



;--------------------------------------------------------------------------------

Medicine32:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h200 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Зрения_1
Gui, 3:Add, Text, x10 y85 h200 w120 +BackgroundTrans, /Зрения_2
Gui, 3:Add, Text, x10 y145 h200 w120 +BackgroundTrans, /Зрения_3
Gui, 3:Add, Text, x10 y205 h200 w120 +BackgroundTrans, /Зрения_4
Gui, 3:Add, Text, x10 y265 h200 w120 +BackgroundTrans, /Зрения_5
Gui, 3:Add, Text, x10 y325 h200 w120 +BackgroundTrans, /Зрения_6
Gui, 3:Add, Text, x10 y380 h200 w120 +BackgroundTrans, /Зрения_7
Gui, 3:Add, Text, x10 y440 h200 w120 +BackgroundTrans, /Зрения_8
Gui, 3:Add, Text, x10 y505 h200 w120 +BackgroundTrans, /Зрения_9

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y25 h500 w370 +BackgroundTrans, [Проверка Зрения]
Gui, 3:Add, Text, x145 y85 h500 w370 +BackgroundTrans, [Проверка Зрения]
Gui, 3:Add, Text, x145 y145 h500 w370 +BackgroundTrans, [Проверка Зрения]
Gui, 3:Add, Text, x145 y205 h500 w370 +BackgroundTrans, [Проверка Зрения]
Gui, 3:Add, Text, x145 y260 h500 w370 +BackgroundTrans, [Проверка Зрения]
Gui, 3:Add, Text, x145 y325 h500 w370 +BackgroundTrans, [Проверка Зрения]
Gui, 3:Add, Text, x145 y385 h500 w370 +BackgroundTrans, [Проверка Зрения]
Gui, 3:Add, Text, x145 y445 h500 w370 +BackgroundTrans, [Проверка Зрения]
Gui, 3:Add, Text, x145 y505 h500 w370 +BackgroundTrans, [Проверка Зрения]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ39, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ39,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y70 w48 h48 +BackgroundTrans gSelectKPRPMZ40,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y70 w48 h48 +BackgroundTrans gNotebookKPRPMZ40,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y130 w48 h48 +BackgroundTrans gSelectKPRPMZ41,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y130 w48 h48 +BackgroundTrans gNotebookKPRPMZ41,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y190 w48 h48 +BackgroundTrans gSelectKPRPMZ42,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y190 w48 h48 +BackgroundTrans gNotebookKPRPMZ42,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y250 w48 h48 +BackgroundTrans gSelectKPRPMZ43,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y250 w48 h48 +BackgroundTrans gNotebookKPRPMZ43,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y310 w48 h48 +BackgroundTrans gSelectKPRPMZ44,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y310 w48 h48 +BackgroundTrans gNotebookKPRPMZ44,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y370 w48 h48 +BackgroundTrans gSelectKPRPMZ45,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y370 w48 h48 +BackgroundTrans gNotebookKPRPMZ45,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y430 w48 h48 +BackgroundTrans gSelectKPRPMZ46,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y430 w48 h48 +BackgroundTrans gNotebookKPRPMZ46,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y490 w48 h48 +BackgroundTrans gSelectKPRPMZ47,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y490 w48 h48 +BackgroundTrans gNotebookKPRPMZ47,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h540 w500, Проверка Зрения
Return

;--------------------------------------------------------------------------------

Medicine82:
Return

;--------------------------------------------------------------------------------

Medicine83:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Годность

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Проверка срока годности препаратов]

Gui, 3:Add, Picture, x430 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ276,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x500 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ276,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h60 w560, Проверка срока годности препаратов
Return



;--------------------------------------------------------------------------------

Medicine84:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Хранение

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Проверка условий хранения препаратов]

Gui, 3:Add, Picture, x430 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ277,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x500 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ277,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h60 w560, Проверка условий хранения препаратов
Return
;--------------------------------------------------------------------------------

Medicine85:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Пул_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Пул_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Пульсоксиметр]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [Пульсоксиметр]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ269,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ269,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ270,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ270,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Пульсоксиметр
Return


;--------------------------------------------------------------------------------

Medicine86:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Белье

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x120 y25 h500 w370 +BackgroundTrans, [Замена белья]


Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ278,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ278,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h60 w460, Замена белья
Return


;--------------------------------------------------------------------------------

Medicine87:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Докум

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x80 y25 h500 w370 +BackgroundTrans, [Проверка наличия необходимой документации]

Gui, 3:Add, Picture, x450 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ281,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x520 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ281,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h60 w580, Проверка наличия необходимой документации
Return


;--------------------------------------------------------------------------------

Medicine88:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Наркоман_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Наркоман_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x110 y25 h500 w370 +BackgroundTrans, [Вакцинация от наркозависимости]
Gui, 3:Add, Text, x110 y75 h500 w370 +BackgroundTrans, [Вакцинация от наркозависимости]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ297,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ297,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ298,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ298,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Вакцинация от наркозависимости
Return



;--------------------------------------------------------------------------------



Medicine93:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w330,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Ингалятор

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y25 h500 w370 +BackgroundTrans, [Ингалятор]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ250,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ250,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h60 w460, Ингалятор
Return


;--------------------------------------------------------------------------------

Medicine94:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Миос_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Миос_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Миос_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Миостимулятор]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [Миостимулятор]
Gui, 3:Add, Text, x125 y125 h500 w370 +BackgroundTrans, [Миостимулятор]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ285,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ285,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ286,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ286,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ287,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ287,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h180 w550, Миостимулятор
Return

;--------------------------------------------------------------------------------

Medicine95:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /ЭндоУЗИ_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /ЭндоУЗИ_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /ЭндоУЗИ_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Эндосонография]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Эндосонография]
Gui, 3:Add, Text, x135 y125 h500 w370 +BackgroundTrans, [Эндосонография]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ245,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ245,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ246,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ246,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ247,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ247,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h180 w550, Эндосонография
Return



;--------------------------------------------------------------------------------

Medicine96:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Тату_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Тату_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Тату_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Лазерное удаление тату]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [Лазерное удаление тату]
Gui, 3:Add, Text, x125 y125 h500 w370 +BackgroundTrans, [Лазерное удаление тату]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ222,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ222,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ223,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ223,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ224,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ224,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h180 w550, Лазерное удаление тату
Return


;--------------------------------------------------------------------------------

Medicine97:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Ангина_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Ангина_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Ангина_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Ангина_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x120 y25 h500 w370 +BackgroundTrans, [Тест на ангину]
Gui, 3:Add, Text, x120 y75 h500 w370 +BackgroundTrans, [Тест на ангину]
Gui, 3:Add, Text, x120 y125 h500 w370 +BackgroundTrans, [Тест на ангину ответ да]
Gui, 3:Add, Text, x120 y175 h500 w370 +BackgroundTrans, [Тест на ангину ответ нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ203,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ203,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ204,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ204,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ205,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ205,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ206,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ206,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w550, Тест на ангину
Return

;--------------------------------------------------------------------------------

Medicine98:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Гвоздь_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Гвоздь_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Извлечение гвоздя]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Извлечение гвоздя]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ214,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ214,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ215,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ215,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Извлечение гвоздя
Return



;--------------------------------------------------------------------------------

Medicine99:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Мозоль_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Мозоль_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Костная мозоль]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Костная мозоль]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ216,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ216,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ217,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ217,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Костная мозоль
Return





;--------------------------------------------------------------------------------

Medicine100:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Бородавка_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Бородавка_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Бородавка удаление]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Бородавка удаление]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ218,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ218,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ219,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ219,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Бородавка удаление
Return



;--------------------------------------------------------------------------------

Medicine101:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Соринка_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Соринка_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Соринка_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Соринка удаление]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Соринка удаление]
Gui, 3:Add, Text, x135 y125 h500 w370 +BackgroundTrans, [Соринка удаление]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ209,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ209,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ210,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ210,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ211,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ211,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h180 w550,  Соринка удаление
Return



;--------------------------------------------------------------------------------

Medicine102:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Заноза_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Заноза_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Заноза извлечение]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Заноза извлечение]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ212,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ212,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ213,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ213,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Заноза извлечение
Return


;--------------------------------------------------------------------------------

Medicine103:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Пчела_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Пчела_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Укус пчелы]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Укус пчелы]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ220,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ220,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ221,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ221,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Укус пчелы
Return


;--------------------------------------------------------------------------------

Medicine104:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Донор_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Донор_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Донор_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Донор_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Донор крови]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [Донор крови]
Gui, 3:Add, Text, x125 y125 h500 w370 +BackgroundTrans, [Донор крови]
Gui, 3:Add, Text, x125 y175 h500 w370 +BackgroundTrans, [Донор крови]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ251,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ251,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ252,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ252,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ253,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ253,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ254,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ254,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w550, Донор крови
Return


;--------------------------------------------------------------------------------

Medicine105:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /М>Ж
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Ж>М

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [С Мужского пола на женский пол]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [С Женского пола на мужской пол]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ248,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ248,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ249,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ249,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Хирургическая коррекция пола
Return



;--------------------------------------------------------------------------------

Medicine107:

Return

;--------------------------------------------------------------------------------

Medicine108:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Кварц_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Кварц_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Кварцевание начать]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Кварцевание закончить]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ279,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ279,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ280,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ280,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h120 w550, Кварцевание
Return

;--------------------------------------------------------------------------------

Medicine109:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /ПХД_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /ПХД_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [ПХД начать]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [ПХД закончить]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ283,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ283,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ284,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ284,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h120 w550, ПХД
Return

;--------------------------------------------------------------------------------

Medicine110:

Return


;--------------------------------------------------------------------------------

Medicine111:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w320 +BackgroundTrans, /ВИЧ_1
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /ВИЧ_2
Gui, 3:Add, Text, x10 y125 h200 w320 +BackgroundTrans, /ВИЧ_3
Gui, 3:Add, Text, x10 y175 h200 w320 +BackgroundTrans, /ВИЧ_4
Gui, 3:Add, Text, x10 y225 h200 w320 +BackgroundTrans, /ВИЧ_5


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Тест на вич]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [Тест на вич]
Gui, 3:Add, Text, x125 y125 h500 w370 +BackgroundTrans, [Тест на вич]
Gui, 3:Add, Text, x125 y175 h500 w370 +BackgroundTrans, [Если да]
Gui, 3:Add, Text, x125 y225 h200 w320 +BackgroundTrans, [Если нет]


Gui, 3:Add, Picture, x390 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ155,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ155,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ156,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ156,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ157,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ157,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ158,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ158,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ159,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ159,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h280 w540, Тест на ВИЧ
Return


;--------------------------------------------------------------------------------

Medicine112:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Туберкулёз_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Туберкулёз_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Туберкулёз_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Туберкулёз_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Тест на туберкулёз]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Тест на туберкулёз]
Gui, 3:Add, Text, x135 y125 h500 w370 +BackgroundTrans, [Тест на туберкулёз ответ да]
Gui, 3:Add, Text, x135 y175 h500 w370 +BackgroundTrans, [Тест на туберкулёз ответ нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ160,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ160,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ161,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ161,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ162,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ162,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ163,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ163,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w550, Тест на туберкулёз
Return

;--------------------------------------------------------------------------------

Medicine113:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Дифтерия_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Дифтерия_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Дифтерия_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Тест на дифтерию]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Тест на дифтерию eсли да]
Gui, 3:Add, Text, x135 y125 h500 w370 +BackgroundTrans, [Тест на дифтерию если нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ147,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ147,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ148,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ148,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ149,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ149,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h180 w550, Тест на дифтерию
Return


;--------------------------------------------------------------------------------

Medicine114:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Бешенство_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Бешенство_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Бешенство_3
Gui, 3:Add, Text, x10 y175 h20 w120 +BackgroundTrans, /Бешенство_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Тест на бешенство]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [Тест на бешенство]
Gui, 3:Add, Text, x125 y125 h500 w370 +BackgroundTrans, [Тест на бешенство ответ да]
Gui, 3:Add, Text, x125 y175 h500 w370 +BackgroundTrans, [Тест на бешенство ответ нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ227,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ227,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ228,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ228,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ229,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ229,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ230,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ230,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h220 w550, Тест на бешенство
Return

;--------------------------------------------------------------------------------

Medicine115:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Гем_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Гем_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Выведение геморроя]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Выведение геморроя]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ328,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ328,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ329,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ329,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Выведение геморроя
Return


;--------------------------------------------------------------------------------

Medicine116:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w320 +BackgroundTrans, /КТ_1
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /КТ_2
Gui, 3:Add, Text, x10 y125 h200 w320 +BackgroundTrans, /КТ_3
Gui, 3:Add, Text, x10 y175 h200 w320 +BackgroundTrans, /КТ_4
Gui, 3:Add, Text, x10 y225 h200 w320 +BackgroundTrans, /КТ_5
Gui, 3:Add, Text, x10 y275 h200 w320 +BackgroundTrans, /КТ_6

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x75 y25 h500 w370 +BackgroundTrans, [Компьютерная томография]
Gui, 3:Add, Text, x75 y75 h500 w370 +BackgroundTrans, [Компьютерная томография]
Gui, 3:Add, Text, x75 y125 h500 w370 +BackgroundTrans, [Компьютерная томография]
Gui, 3:Add, Text, x75 y175 h500 w370 +BackgroundTrans, [Компьютерная томография ответ да]
Gui, 3:Add, Text, x75 y225 h200 w320 +BackgroundTrans, [Компьютерная томография ответ да]
Gui, 3:Add, Text, x75 y275 h200 w320 +BackgroundTrans, [Компьютерная томография ответ нет]


Gui, 3:Add, Picture, x390 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ113,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ113,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ114,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ114,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ115,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ115,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ116,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ116,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ117,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ117,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y260 w48 h48 +BackgroundTrans gSelectKPRPMZ118,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y260 w48 h48 +BackgroundTrans gNotebookKPRPMZ118,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h320 w540, Компьютерная томография
Return


;--------------------------------------------------------------------------------

Medicine117:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w320 +BackgroundTrans, /Шейка_1
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /Шейка_2
Gui, 3:Add, Text, x10 y125 h200 w320 +BackgroundTrans, /Шейка_3
Gui, 3:Add, Text, x10 y175 h200 w320 +BackgroundTrans, /Шейка_4
Gui, 3:Add, Text, x10 y225 h200 w320 +BackgroundTrans, /Шейка_5


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Кольпоскопия]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Кольпоскопия]
Gui, 3:Add, Text, x135 y125 h500 w370 +BackgroundTrans, [Кольпоскопия]
Gui, 3:Add, Text, x135 y175 h500 w370 +BackgroundTrans, [Кольпоскопия]
Gui, 3:Add, Text, x135 y225 h200 w320 +BackgroundTrans, [Кольпоскопия]

Gui, 3:Add, Picture, x390 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ240,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ240,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ241,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ241,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ242,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ242,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ243,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ243,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ244,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ244,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h280 w540, Кольпоскопия
Return



;--------------------------------------------------------------------------------

Medicine118:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w320 +BackgroundTrans, /Гинек_1
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /Гинек_2
Gui, 3:Add, Text, x10 y125 h200 w320 +BackgroundTrans, /Гинек_3
Gui, 3:Add, Text, x10 y175 h200 w320 +BackgroundTrans, /Гинек_4
Gui, 3:Add, Text, x10 y225 h200 w320 +BackgroundTrans, /Гинек_5

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x105 y25 h500 w370 +BackgroundTrans, [Гинекологическое обследование]
Gui, 3:Add, Text, x105 y75 h500 w370 +BackgroundTrans, [Гинекологическое обследование]
Gui, 3:Add, Text, x105 y125 h500 w370 +BackgroundTrans, [Гинекологическое обследование]
Gui, 3:Add, Text, x105 y175 h500 w370 +BackgroundTrans, [Гинекологическое обследование]
Gui, 3:Add, Text, x105 y225 h200 w320 +BackgroundTrans, [Гинекологическое обследование]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ77,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ77,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ78,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ78,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ79,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ79,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ80,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ80,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ81,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ81,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h280 w540, Гинекологическое обследование
Return

;--------------------------------------------------------------------------------

Medicine119:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w320 +BackgroundTrans, /Глю_1
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /Глю_2
Gui, 3:Add, Text, x10 y125 h200 w320 +BackgroundTrans, /Глю_3
Gui, 3:Add, Text, x10 y175 h200 w320 +BackgroundTrans, /Глю_4
Gui, 3:Add, Text, x10 y225 h200 w320 +BackgroundTrans, /Глю_5


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [Глюкометр]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [Глюкометр]
Gui, 3:Add, Text, x125 y125 h500 w370 +BackgroundTrans, [Глюкометр]
Gui, 3:Add, Text, x125 y175 h500 w370 +BackgroundTrans, [Глюкометр норма]
Gui, 3:Add, Text, x125 y225 h200 w320 +BackgroundTrans, [Глюкометр не в норме]

Gui, 3:Add, Picture, x390 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ260,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ260,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ261,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ261,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ262,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ262,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ263,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ263,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ264,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ264,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h280 w540, Глюкометр
Return



;--------------------------------------------------------------------------------

Medicine120:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w320 +BackgroundTrans, /МРА_1
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /МРА_2
Gui, 3:Add, Text, x10 y125 h200 w320 +BackgroundTrans, /МРА_3
Gui, 3:Add, Text, x10 y175 h200 w320 +BackgroundTrans, /МРА_4
Gui, 3:Add, Text, x10 y225 h200 w320 +BackgroundTrans, /МРА_5


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y25 h500 w370 +BackgroundTrans, [МРА]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans, [МРА]
Gui, 3:Add, Text, x125 y125 h500 w370 +BackgroundTrans, [МРА]
Gui, 3:Add, Text, x125 y175 h500 w370 +BackgroundTrans, [МРА ответ нет]
Gui, 3:Add, Text, x125 y225 h200 w320 +BackgroundTrans, [МРА ответ да]


Gui, 3:Add, Picture, x390 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ128,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ128,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ129,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ129,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ130,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ130,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ131,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ131,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ132,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ132,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h280 w540, МРА метод получения изображения кровеносных сосудов
Return



;--------------------------------------------------------------------------------

Medicine121:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w320 +BackgroundTrans, /КТГ_1
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /КТГ_2
Gui, 3:Add, Text, x10 y125 h200 w320 +BackgroundTrans, /КТГ_3
Gui, 3:Add, Text, x10 y175 h200 w320 +BackgroundTrans, /КТГ_4
Gui, 3:Add, Text, x10 y225 h200 w320 +BackgroundTrans, /КТГ_5

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x105 y25 h500 w370 +BackgroundTrans, [КТГ]
Gui, 3:Add, Text, x105 y75 h500 w370 +BackgroundTrans, [КТГ]
Gui, 3:Add, Text, x105 y125 h500 w370 +BackgroundTrans, [КТГ]
Gui, 3:Add, Text, x105 y175 h500 w370 +BackgroundTrans, [КТГ ответ да]
Gui, 3:Add, Text, x105 y225 h200 w320 +BackgroundTrans, [КТГ ответ нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ101,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ101,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ102,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ102,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ103,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ103,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ104,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ104,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ105,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ105,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h280 w540, КТГ плода


Return

;--------------------------------------------------------------------------------

Medicine122:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w320 +BackgroundTrans, /Берм_1
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /Берм_2
Gui, 3:Add, Text, x10 y125 h200 w320 +BackgroundTrans, /Берм_3
Gui, 3:Add, Text, x10 y175 h200 w320 +BackgroundTrans, /Берм_4
Gui, 3:Add, Text, x10 y225 h200 w320 +BackgroundTrans, /Берм_5

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x105 y25 h500 w370 +BackgroundTrans, [Тест беременность]
Gui, 3:Add, Text, x105 y75 h500 w370 +BackgroundTrans, [Тест беременность]
Gui, 3:Add, Text, x105 y125 h500 w370 +BackgroundTrans, [Тест беременность]
Gui, 3:Add, Text, x105 y175 h500 w370 +BackgroundTrans, [Тест беременность ответ да]
Gui, 3:Add, Text, x105 y225 h200 w320 +BackgroundTrans, [Тест беременность ответ да]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ106,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ106,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ107,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ107,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ108,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ108,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ109,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ109,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ110,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ110,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h280 w540, Тест беременность
Return

;--------------------------------------------------------------------------------

Medicine123:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w320 +BackgroundTrans, /ЛЛ_1
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /ЛЛ_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x105 y25 h500 w370 +BackgroundTrans, [Лазерная липосакция]
Gui, 3:Add, Text, x105 y75 h500 w370 +BackgroundTrans, [Лазерная липосакция]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ106,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ106,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ107,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ107,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h120 w540,  Лазерная липосакция
Return





;--------------------------------------------------------------------------------

Medicine124:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /УВТ_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /УВТ_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Камень в почках малых размеров]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [Камень в почках малых размеров]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ326,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ326,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ327,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ327,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Камень в почках малых размеров
Return

;--------------------------------------------------------------------------------

Medicine125:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Матка_У_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Матка_у_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Удаление через влагалищя]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Удаление через влагалищя]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ324,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ324,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ325,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ325,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Гистерэктомия
Return


;--------------------------------------------------------------------------------

Medicine126:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Легкое_У_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Легкое_У_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Удаление легкого]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Удаление легкого]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ316,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ316,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ317,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ317,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Удаление легкого
Return


;--------------------------------------------------------------------------------

Medicine127:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Пло_Х_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Пло_Х_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x90 y25 h500 w370 +BackgroundTrans, [Хирургическое лечение плоскостопия]
Gui, 3:Add, Text, x90 y75 h500 w370 +BackgroundTrans, [Хирургическое лечение плоскостопия]

Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ320,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x480 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ320,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x400 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ321,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x480 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ321,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w580,  Хирургическое лечение плоскостопия
Return


;--------------------------------------------------------------------------------

Medicine128:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Грудь_УУ_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Грудь_УУ_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Удаление груди]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Удаление груди]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ318,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ318,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ319,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ319,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Удаление груди
Return

;--------------------------------------------------------------------------------

Medicine129:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Грудь_У_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Грудь_У_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Уменьшение груди]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Уменьшение груди]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ322,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ322,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ323,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ323,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550,  Уменьшение груди
Return



;--------------------------------------------------------------------------------


Laziness1:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h250 w450,

Gui, 3:Font, S11 CFF0000 Bold, Comic Sans MS
Gui, 3:Add, Text, x10 y15  w300 h20 cRed +BackgroundTrans , /Пост
Gui, 3:Add, Text, x10 y35 w300 h20 cRed +BackgroundTrans ,  /Пост_1

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x120  y15 w300 h20 +BackgroundTrans , [Заступил%Floor% на пост]
Gui, 3:Add, Text, x120  y35 w300 h20 +BackgroundTrans , [Завершить пост раньше времени]

Gui, 3:show, center h80 w400, Пост АСМП

Return

;--------------------------------------------------------------------------------

Laziness2:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h250 w450,

Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10  y15 w300 h20 +BackgroundTrans , /Вызов_1
Gui, 3:Add, Text, x10  y35 w300 h20 +BackgroundTrans , /Вызов_2
Gui, 3:Add, Text, x10  y55 w300 h20 +BackgroundTrans , /Вызов_3
Gui, 3:Add, Text, x10  y75 w300 h20 +BackgroundTrans , /Вызов_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x120  y15 w300 h20 +BackgroundTrans , [Вызов принят]
Gui, 3:Add, Text, x120  y35 w300 h20 +BackgroundTrans , [Госпитализирован]
Gui, 3:Add, Text, x120  y55 w300 h20 +BackgroundTrans , [Вызов ложный]
Gui, 3:Add, Text, x120  y75 w300 h20 +BackgroundTrans , [Обработан на месте]

Gui, 3:show, center h120 w300, Вызов АСМП

Return

;--------------------------------------------------------------------------------

Laziness3:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h130 w350,

Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Напарник
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Пост_0
Gui, 3:Add, Text, x10 y55 h200 w120 +BackgroundTrans, /Вызов_0
Gui, 3:Add, Text, x10 y75 h500 w370 +BackgroundTrans, /Врменя

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x150  y15 w300 h20 +BackgroundTrans , [Смена напарника]
Gui, 3:Add, Text, x150  y35 w300 h20 +BackgroundTrans , [Смена поста]
Gui, 3:Add, Text, x150  y55 w300 h20 +BackgroundTrans , [Смена вызова]
Gui, 3:Add, Text, x150  y75 w300 h20 +BackgroundTrans , [Смена времени на дежурстве]

Gui, 3:show, center h130 w350, Смена данных в докладах
Return


;--------------------------------------------------------------------------------

Laziness4:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h130 w350,

Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /ВЗ+
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /ВЗ-

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x70  y15 w450 h20 +BackgroundTrans , [Показать черный список запрета и красный список]
Gui, 3:Add, Text, x70  y35 w450 h20 +BackgroundTrans , [Скрыть временный список запрета и красный список]

Gui, 3:show, center h80 w490, ВЗ и КС
Return

;--------------------------------------------------------------------------------

Laziness7:
Gui, 3:Destroy,

Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /ЦГБ_1 
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /ЦГБ_2 
Gui, 3:Add, Text, x10 y55 h200 w120 +BackgroundTrans, /ЦГБ_3 
Gui, 3:Add, Text, x10 y75 h500 w370 +BackgroundTrans, /ЦГБ_4
Gui, 3:Add, Text, x10 y95 h500 w370 +BackgroundTrans, /ЦГБ_5
Gui, 3:Add, Text, x10 y115 h500 w370 +BackgroundTrans, /ЦГБ_6
Gui, 3:Add, Text, x10 y135 h500 w370 +BackgroundTrans, /ЦГБ_7
Gui, 3:Add, Text, x10 y155 h500 w370 +BackgroundTrans, /ЦГБ_8
Gui, 3:Add, Text, x10 y175 h500 w370 +BackgroundTrans, /ЦГБ_9
Gui, 3:Add, Text, x10 y195  h500 w370 +BackgroundTrans, /ЦГБ_10
Gui, 3:Add, Text, x10 y215  h500 w370 +BackgroundTrans, /ЦГБ_11
Gui, 3:Add, Text, x10 y235  h500 w370 +BackgroundTrans, /ЦГБ_12

Gui, 3:Add, Text, x10 y275  h500 w370 +BackgroundTrans, /ГМУ_1
Gui, 3:Add, Text, x10 y295  h500 w370 +BackgroundTrans, /ГМУ_2
Gui, 3:Add, Text, x10 y315  h500 w370 +BackgroundTrans, /ГМУ_3
Gui, 3:Add, Text, x10 y335  h500 w370 +BackgroundTrans, /ГМУ_4
Gui, 3:Add, Text, x10 y355  h500 w370 +BackgroundTrans, /ГМУ_5
Gui, 3:Add, Text, x10 y375  h500 w370 +BackgroundTrans, /ГМУ_6
Gui, 3:Add, Text, x10 y395  h500 w370 +BackgroundTrans, /ГМУ_7
Gui, 3:Add, Text, x10 y415  h500 w370 +BackgroundTrans, /ГМУ_8
Gui, 3:Add, Text, x10 y435  h500 w370 +BackgroundTrans, /ГМУ_9


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x90 y15 h500 w370 +BackgroundTrans, [Собес - ФИО, возраст, образование]
Gui, 3:Add, Text, x90 y35 h500 w370 +BackgroundTrans, [Запрос паспорта]
Gui, 3:Add, Text, x90 y55 h500 w370 +BackgroundTrans, [Изучение паспорта]
Gui, 3:Add, Text, x90 y75 h500 w370 +BackgroundTrans, [Запрос трудовой книжки]
Gui, 3:Add, Text, x90 y95 h500 w370 +BackgroundTrans, [Изучение трудовой книжки]
Gui, 3:Add, Text, x90 y115 h500 w370 +BackgroundTrans,  [Запрос медкарты]
Gui, 3:Add, Text, x90 y135 h500 w370 +BackgroundTrans,  [Изучение медкарты]
Gui, 3:Add, Text, x90 y155 h500 w370 +BackgroundTrans,  [Запрос диплома]
Gui, 3:Add, Text, x90 y175 h500 w370 +BackgroundTrans,  [Изучение диплома]
Gui, 3:Add, Text, x90 y195  h500 w370 +BackgroundTrans, [Собес - РП термины в РП чат]
Gui, 3:Add, Text, x90 y215  h500 w370 +BackgroundTrans, [Собес - РП термины в b чат]
Gui, 3:Add, Text, x90 y235  h500 w370 +BackgroundTrans, [Собес - Психическая проверка]


Gui, 3:Add, Text, x90 y275  h500 w370 +BackgroundTrans, [Собес ГМУ - ФИО, возраст]
Gui, 3:Add, Text, x90 y295  h500 w370 +BackgroundTrans, [Собес ГМУ - Запрос паспорта]
Gui, 3:Add, Text, x90 y315  h500 w370 +BackgroundTrans, [Собес ГМУ - Изучение паспорта]
Gui, 3:Add, Text, x90 y335 h500 w370 +BackgroundTrans, [Собес ГМУ - Запрос трудовой книжки]
Gui, 3:Add, Text, x90 y355 h500 w370 +BackgroundTrans, [Собес ГМУ - Изучение трудовой книжки]
Gui, 3:Add, Text, x90 y375 h500 w370 +BackgroundTrans,  [Собес ГМУ - Запрос медкарты]
Gui, 3:Add, Text, x90 y395 h500 w370 +BackgroundTrans,  [Собес ГМУ - Изучение медкарты]
Gui, 3:Add, Text, x90 y415  h500 w370 +BackgroundTrans, [Собес ГМУ - РП термины в РП чат]
Gui, 3:Add, Text, x90 y435  h500 w370 +BackgroundTrans, [Собес ГМУ - РП термины в b чат]

Gui, 3:show, center h460 w430, Собеседования в ЦГБ и ГМУ
Return


;--------------------------------------------------------------------------------

Laziness31:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h280 w380,

Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /МП
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /МП_0
Gui, 3:Add, Text, x10 y55 h200 w120 +BackgroundTrans, /Трен
Gui, 3:Add, Text, x10 y75 h500 w370 +BackgroundTrans, /Трен_0


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y15 h500 w500 +BackgroundTrans, [Рандомное мероприятия]
Gui, 3:Add, Text, x100 y35 h500 w500 +BackgroundTrans, [Конец]
Gui, 3:Add, Text, x100 y55 h500 w500 +BackgroundTrans, [Рандомная тренировка]
Gui, 3:Add, Text, x100 y75 h500 w500 +BackgroundTrans, [Конец]


Gui, 3:show, center h120 w380, Радном
Return


;--------------------------------------------------------------------------------


Laziness14:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w550,

Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Республика
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Республика_1


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x150 y15 h500 w500 +BackgroundTrans, [Патруль республики - Заступил%Floor%]
Gui, 3:Add, Text, x150 y35 h500 w500 +BackgroundTrans, [Патруль республики - Завершить раньше времени]

Gui, 3:show, center h80 w550, Патруль AСМП
Return

;--------------------------------------------------------------------------------

Laziness13:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w550,

Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Республика_0
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Республика_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x150 y15 h500 w500 +BackgroundTrans, [Патруль республики - Заступил%Floor%]
Gui, 3:Add, Text, x150 y35 h500 w500 +BackgroundTrans, [Патруль республики - Завершить раньше времени]

Gui, 3:show, center h80 w550, Патруль ВСМП

Return

;--------------------------------------------------------------------------------

Laziness8:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w550,

Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Город
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Город_1

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x150 y15 h500 w500 +BackgroundTrans, [Патруль города - Заступил%Floor%]
Gui, 3:Add, Text, x150 y35 h500 w500 +BackgroundTrans, [Патруль города - Завершить раньше времени]

Gui, 3:show, center h80 w550, Патруль AСМП


Return


;--------------------------------------------------------------------------------

Laziness12:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h280 w1060,

Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Город_0
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Город_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y15 h500 w500 +BackgroundTrans, [Патруль города - Заступил%Floor%]
Gui, 3:Add, Text, x100 y35 h500 w500 +BackgroundTrans, [Патруль города - Завершить раньше времени]

Gui, 3:show, center h80 w550, Патруль ВСМП
Return


;--------------------------------------------------------------------------------




Laziness20:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Мойка

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Стерилизация медицинских предметов]

Gui, 3:Add, Picture, x430 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ282,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x500 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ282,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h60 w560, Стерилизация медицинских предметов
Return


;--------------------------------------------------------------------------------



Laziness25:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h350 w550,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Гов_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Гов_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x90 y15 h500 w570 +BackgroundTrans, [Оповещение о наборе + репорт]
Gui, 3:Add, Text, x90 y35 h500 w570 +BackgroundTrans, [Оповещение массовой выдачи медкарт + репорт]


Gui, 3:show, center h70 w500, Автоматическое оповещение через gov
Return


Laziness26:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w400,

Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /ПО
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /ПО_1


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x90 y15 h500 w370 +BackgroundTrans, [Заступил%Floor% на пост]
Gui, 3:Add, Text, x90 y35 h500 w370 +BackgroundTrans, [Завершить пост раньше времени]

Gui, 3:show, center h80 w400, Пост Регистратура
Return




;--------------------------------------------------------------------------------



PMP1:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Рана

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Остановить кровотечения]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ383,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ383,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h60 w460, Остановить кровотечения
Return



PMP2:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Венозное
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Артериальное

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x155 y25 h500 w380 +BackgroundTrans, [ПМП при венозном кровотечении]
Gui, 3:Add, Text, x155 y75 h500 w380 +BackgroundTrans, [ПМП при артериальном кровотечении]

Gui, 3:Add, Picture, x480 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ354,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x560 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ354,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x480 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ355,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x560 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ355,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w650, ПМП при кровотечении
Return


PMP3:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Мороз_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Мороз_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [ПМП при обморожении в больнице]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [ПМП при обморожении в АСМП]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ369,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ369,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ370,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ370,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550, ПМП при обморожении
Return



PMP4:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Ожог_3
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Ожог_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [ПМП при ожогах 1-2 степени]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [ПМП при ожогах 3-4 степени]

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ362,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ362,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ363,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ363,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h120 w550, ПМП при ожогах
Return



PMP5:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Пуля_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Пуля_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Пуля_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x80 y25 h500 w370 +BackgroundTrans, [ПМП при пулевом ранение]
Gui, 3:Add, Text, x80 y75 h500 w370 +BackgroundTrans, [ПМП при пулевом ранение ответ нет]
Gui, 3:Add, Text, x80 y125 h500 w370 +BackgroundTrans, [ПМП при пулевом ранение ответ да]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ364,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ364,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ365,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ365,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ366,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ366,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h180 w550, ПМП при пулевом ранение
Return




PMP6:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w300,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /У_ПМП


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [ПМП при удушье]
Gui, 3:show, center h60 w300, ПМП при удушье
Return


PMP7:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Челюс

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [ПМП при вывихе челюсти]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ379,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ379,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h60 w460, ПМП при вывихе челюсти
Return



PMP8:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Нога_1

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [Вывих ноги]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ367,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ367,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h60 w460, Вывих ноги
Return


PMP9:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Соз_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Соз_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Соз_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [ПМП при потере сознания]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Если нет]
Gui, 3:Add, Text, x135 y125 h500 w370 +BackgroundTrans, [Если да]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ334,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ334,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ335,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ335,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ336,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ336,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h180 w550,  ПМП при потере сознания
Return



PMP10:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Закр

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x80 y25 h500 w370 +BackgroundTrans, [ПМП при закрытом переломе]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ360,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ360,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h60 w460, ПМП при закрытом переломе
Return



PMP11:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Откр

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x80 y25 h500 w370 +BackgroundTrans, [ПМП при открытом переломе]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ360,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ360,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 3:show, center h60 w460, ПМП при открытом переломе
Return


PMP12:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Нос_ПМП

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [ПМП при переломе носа]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ380,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ380,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h60 w460, ПМП при переломе носа
Return



PMP13:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Сотряс_1
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Сотряс_2
Gui, 3:Add, Text, x10 y125 h20 w120 +BackgroundTrans, /Сотряс_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y25 h500 w370 +BackgroundTrans, [ПМП при сотрясении]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Если /do Да]
Gui, 3:Add, Text, x135 y125 h500 w370 +BackgroundTrans, [Если /do Нет]


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ164,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ164,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ165,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ165,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ166,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ166,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h180 w550, ПМП при сотрясении
Return


PMP14:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h200 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Инфаркт_1
Gui, 3:Add, Text, x10 y85 h200 w120 +BackgroundTrans, /Инфаркт_2
Gui, 3:Add, Text, x10 y145 h200 w120 +BackgroundTrans, /Инфаркт_3
Gui, 3:Add, Text, x10 y205 h200 w120 +BackgroundTrans, /Инфаркт_4
Gui, 3:Add, Text, x10 y265 h200 w120 +BackgroundTrans, /Инфаркт_5
Gui, 3:Add, Text, x10 y325 h200 w120 +BackgroundTrans, /Инфаркт_6


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y25 h500 w770 +BackgroundTrans, [ПМП при инфаркте]
Gui, 3:Add, Text, x145 y85 h500 w770 +BackgroundTrans, [Пациент ответил, что у него высокое или низкое давление]
Gui, 3:Add, Text, x145 y145 h500 w770 +BackgroundTrans, [Пациент ответил, что у него нормальное давление]
Gui, 3:Add, Text, x145 y205 h500 w770 +BackgroundTrans, [Продолжение процесса]
Gui, 3:Add, Text, x145 y260 h500 w770 +BackgroundTrans, [Пациент отыграл, что у него нормальный пульс]
Gui, 3:Add, Text, x145 y325 h500 w770 +BackgroundTrans, [Пациент отыграл, что у него высокий или низкий пульс]


Gui, 3:Add, Picture, x630 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ342, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ342,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y70 w48 h48 +BackgroundTrans gSelectKPRPMZ343,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y70 w48 h48 +BackgroundTrans gNotebookKPRPMZ343,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y130 w48 h48 +BackgroundTrans gSelectKPRPMZ344,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y130 w48 h48 +BackgroundTrans gNotebookKPRPMZ344,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y190 w48 h48 +BackgroundTrans gSelectKPRPMZ345,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y190 w48 h48 +BackgroundTrans gNotebookKPRPMZ345,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y250 w48 h48 +BackgroundTrans gSelectKPRPMZ346,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y250 w48 h48 +BackgroundTrans gNotebookKPRPMZ346,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 3:Add, Picture, x630 y310 w48 h48 +BackgroundTrans gSelectKPRPMZ347,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x700 y310 w48 h48 +BackgroundTrans gNotebookKPRPMZ347,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 3:show, center h380 w780, ПМП при инфаркте
Return



;--------------------------------------------------------------------------------


Lekarstva1:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Аллергия_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Аллергия_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Аллергия_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans, /Аллергия_4
Gui, 3:Add, Text, x10 y95 h20 w120 +BackgroundTrans, /Аллергия_5

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Цетрин]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Эриус ]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Кларитин]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Выписать:Зодак]
Gui, 3:Add, Text, x145 y95 h500 w370 +BackgroundTrans, [Выписать:Лоратадин]
Return

;--------------------------------------------------------------------------------


Lekarstva2:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Глаз_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Глаз_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Визин]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Альбуцид]
Return

;--------------------------------------------------------------------------------


Lekarstva3:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Ухо_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Ухо_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Отинум]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Отипакс]
Return

;--------------------------------------------------------------------------------



Lekarstva4:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Почки_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Почки_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Уролесан]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать: Урохол]
Return

;--------------------------------------------------------------------------------



Lekarstva5:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Живот_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Живот_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Но-шпу]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Дротаверин]
Return

;--------------------------------------------------------------------------------


Lekarstva6:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Суставы_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Суставы_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Суставы_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans, /Суставы_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Фастум-гель]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Кетонал ]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Долгит]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Выписать:Капсикам]
Return

;--------------------------------------------------------------------------------


Lekarstva7:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Печень_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Печень_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Печень_3

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Карсил-Форте]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Гепабене]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Урсофальк]
Return

;--------------------------------------------------------------------------------

Lekarstva8:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Горло_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Горло_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Горло_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans, /Горло_4
Gui, 3:Add, Text, x10 y95 h20 w120 +BackgroundTrans, /Горло_5
Gui, 3:Add, Text, x10 y115 h20 w120 +BackgroundTrans, /Горло_6
Gui, 3:Add, Text, x10 y135 h20 w120 +BackgroundTrans,  /Горло_7

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Гексорал]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Стопангин]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Леголь]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Выписать:Ингалипт]
Gui, 3:Add, Text, x145 y95 h500 w370 +BackgroundTrans, [Выписать:Стрепсилс]
Gui, 3:Add, Text, x145 y115 h500 w370 +BackgroundTrans, [Выписать:Септолетте]
Gui, 3:Add, Text, x145 y135 h500 w370 +BackgroundTrans, [Выписать:Септефрил]
Return

;--------------------------------------------------------------------------------


Lekarstva9:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Витамин_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Витамин_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Витамин_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Унивит]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Витамикс]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Алфавит]
Return


;--------------------------------------------------------------------------------

Lekarstva10:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Геморой

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Релиф]
Return

;--------------------------------------------------------------------------------


Lekarstva11:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Голова_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Голова_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Голова_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans, /Голова_4
Gui, 3:Add, Text, x10 y95 h20 w120 +BackgroundTrans, /Голова_5
Gui, 3:Add, Text, x10 y115 h20 w120 +BackgroundTrans, /Голова_6

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Миг]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Цитрамон]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Анальгин]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Выписать:Спазмолгон]
Gui, 3:Add, Text, x145 y95 h500 w370 +BackgroundTrans, [Выписать:Спазмантон]
Gui, 3:Add, Text, x145 y115 h500 w370 +BackgroundTrans, [Выписать:Но-шпу]
Return

;--------------------------------------------------------------------------------



Lekarstva12:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Потенция_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Потенция_2



Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Сиалекс]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Виагру]
Return

;--------------------------------------------------------------------------------


Lekarstva13:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Диарея_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Диарея_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Диарея_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans, /Диарея_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Энтеросгель]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Полисорб]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Лоперамид]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Выписать:Активированный уголь]
Return

;--------------------------------------------------------------------------------

Lekarstva14:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Диабет_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Диабет_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Диабет_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans, /Диабет_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Виктоза]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Диабетон]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Глиформин]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Выписать:Глюкофаж]
Return

;--------------------------------------------------------------------------------

Lekarstva15:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Изжога_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Изжога_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Изжога_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans, /Изжога_4
Gui, 3:Add, Text, x10 y95 h20 w120 +BackgroundTrans, /Изжога_5
Gui, 3:Add, Text, x10 y115 h20 w120 +BackgroundTrans, /Изжога_6
Gui, 3:Add, Text, x10 y135 h20 w120 +BackgroundTrans,  /Изжога_7

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Ренни]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Маалокс]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Алмагель]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Выписать:Гастал]
Gui, 3:Add, Text, x145 y95 h500 w370 +BackgroundTrans, [Выписать:Гастрацид]
Gui, 3:Add, Text, x145 y115 h500 w370 +BackgroundTrans, [Выписать:Мотилиума]
Gui, 3:Add, Text, x145 y135 h500 w370 +BackgroundTrans,  [Выписать:Омепразол]
Return

;--------------------------------------------------------------------------------


Lekarstva16:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Кашель_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Кашель_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Кашель_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans, /Кашель_4
Gui, 3:Add, Text, x10 y95 h20 w120 +BackgroundTrans, /Кашель_5
Gui, 3:Add, Text, x10 y115 h20 w120 +BackgroundTrans, /Кашель_6
Gui, 3:Add, Text, x10 y135 h20 w120 +BackgroundTrans,  /Кашель_7

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Лазолван]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Гербион]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Стоптуссин]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Выписать:Омнитус]
Gui, 3:Add, Text, x145 y95 h500 w370 +BackgroundTrans, [Выписать:Амбробене]
Gui, 3:Add, Text, x145 y115 h500 w370 +BackgroundTrans, [Выписать:Флюдитек]
Gui, 3:Add, Text, x145 y135 h500 w370 +BackgroundTrans,  [Выписать:Геделикс]
Return

;--------------------------------------------------------------------------------


Lekarstva17:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Пузырь_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Пузырь_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Цистон]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Нолицин]
Return

;--------------------------------------------------------------------------------


Lekarstva18:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Мигрень_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Мигрень_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Мигрень_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans, /Мигрень_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Амигренин]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Суматриптан]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Релпакс]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Выписать:Сумамигрен]
Return

;--------------------------------------------------------------------------------


Lekarstva19:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Насморк_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Насморк_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Насморк_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Снуп]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Отривин]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Аква Марис]
Return

;--------------------------------------------------------------------------------



Lekarstva20:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Ожог_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Ожог_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Бепантен]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Пантенол]
Return

;--------------------------------------------------------------------------------


Lekarstva21:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Повышенное_1

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Андипал]
Return


;--------------------------------------------------------------------------------


Lekarstva22:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Пониженное_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Пониженное_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Норадреналин]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Кордиамин]
Return

;--------------------------------------------------------------------------------


Lekarstva23:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Жар_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Жар_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Жар_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Терафлю]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Колдрекс]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Антигриппин]
Return

;--------------------------------------------------------------------------------


Lekarstva24:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Судороги_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Судороги_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Магнелис]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Аспаркам]
Return

;--------------------------------------------------------------------------------


Lekarstva25:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Сердце_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Сердце_2
Gui, 3:Add, Text, x10 y55 h500 w370 +BackgroundTrans, /Сердце_3

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Кардиомагнил]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Нитроглицерин]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Корвалол]
Return

;--------------------------------------------------------------------------------


Lekarstva26:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Тошнота_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Тошнота_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Тошнота_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans, /Тошнота_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Церукалн]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Метоклопрамид]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Драмина]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Выписать:Авиамарин]
Return


Lekarstva27:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,


Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Обезбол_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Обезбол_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Обезбол_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans, /Обезбол_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Нурофен]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Ибупрофен]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Бонифен]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Выписать:Нурофактор]
Return



Lekarstva28:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,


Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Успокоительное_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Успокоительное_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Успокоительное_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Валериану Лекарственную]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Пустырник]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Фенибут]
Return


Lekarstva29:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Бессонница_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Бессонница_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Найтвелл]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Мелаксен]
Return


Lekarstva30:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Стресс_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Стресс_2
Gui, 3:Add, Text, x10 y55 h500 w370 +BackgroundTrans, /Стресс_3

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Афобазол]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Деприм]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Дезипрамин]
Return


Lekarstva31:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Температура_4
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Температура_5
Gui, 3:Add, Text, x10 y55 h500 w370 +BackgroundTrans, /Температура_6
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans,   /Температура_7

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Найз]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Диклофенак]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Ибупрофен]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Выписать:Ибуклин]
Return

Lekarstva32:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Астма_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Астма_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x90 y15 h500 w370 +BackgroundTrans, [Выписать:Сальбутамол (аэрозоль)]
Gui, 3:Add, Text, x90 y35 h500 w370 +BackgroundTrans, [Выписать:Преднизолон (Внутривенно)]
Return


Lekarstva33:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Понос_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Понос_2
Gui, 3:Add, Text, x10 y55 h500 w370 +BackgroundTrans, /Понос_3

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x90 y15 h500 w370 +BackgroundTrans, [Выписать:Лоперамид]
Gui, 3:Add, Text, x90 y35 h500 w370 +BackgroundTrans, [Выписать:Сульгин]
Gui, 3:Add, Text, x90 y55 h500 w370 +BackgroundTrans, [Выписать:Имодиум]
Return

Lekarstva34:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Язва_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Язва_2
Gui, 3:Add, Text, x10 y55 h500 w370 +BackgroundTrans, /Язва_3

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Сукральфат]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Де-Нол]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Вентрисол]
Gui, 3:Add, Text, x50 y95 h500 w370 +BackgroundTrans, [Для лечения нужно подтвердить диагноз]
Return

Lekarstva35:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Молочница_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Молочница_2
Gui, 3:Add, Text, x10 y55 h500 w120 +BackgroundTrans, /Молочница_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans,  /Молочница_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Нистатин]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Пимафуцин]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Ливарол]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans,  [Выписать:Клотримазол]
Return

Lekarstva36:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Инфаркт_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Инфаркт_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Антенолол]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Омакор]
Gui, 3:Add, Text, x50 y75 h500 w370 +BackgroundTrans, [Для лечения нужно подтвердить диагноз]
Return

Lekarstva37:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w370 +BackgroundTrans, /Головокружение_1
Gui, 3:Add, Text, x10 y35 h200 w370 +BackgroundTrans, /Головокружение_2
Gui, 3:Add, Text, x10 y55 h500 w370 +BackgroundTrans, /Головокружение_3
Gui, 3:Add, Text, x10 y75 h500 w370 +BackgroundTrans,  /Головокружение_4
Gui, 3:Add, Text, x10 y95 h500 w370 +BackgroundTrans, /Головокружение_5

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x175 y15 h500 w370 +BackgroundTrans, [Выписать:Вестибо]
Gui, 3:Add, Text, x175 y35 h500 w370 +BackgroundTrans, [Выписать:Фенибут]
Gui, 3:Add, Text, x175 y55 h500 w370 +BackgroundTrans, [Выписать:Бетасерк]
Gui, 3:Add, Text, x175 y75 h500 w370 +BackgroundTrans,[Выписать:Циннаризин]
Gui, 3:Add, Text, x175 y95 h500 w370 +BackgroundTrans, [Выписать:Танакан]
Return


Lekarstva38:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Гастрит_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Гастрит_2
Gui, 3:Add, Text, x10 y55 h500 w120 +BackgroundTrans, /Гастрит_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans,  /Гастрит_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x125 y15 h500 w370 +BackgroundTrans, [Выписать:Рабепразол]
Gui, 3:Add, Text, x125 y35 h500 w370 +BackgroundTrans, [Выписать:Азитромицин]
Gui, 3:Add, Text, x125 y55 h500 w370 +BackgroundTrans, [Выписать:Антибиотик:тетрациклин]
Gui, 3:Add, Text, x125 y75 h500 w370 +BackgroundTrans,  [Выписать:Антибиотик:Амоксициллин]
Gui, 3:Add, Text, x45 y115 h500 w370 +BackgroundTrans, [Для лечения нужно подтвердить диагноз]
Return


Lekarstva39:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Зубная_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Зубная_2
Gui, 3:Add, Text, x10 y55 h500 w370 +BackgroundTrans, /Зубная_3

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Кеторол]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Дексонал]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Некст]
Return


Lekarstva40:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Глисты_5
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Глисты_6
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Глисты_7
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans, /Глисты_8
Gui, 3:Add, Text, x10 y95 h20 w120 +BackgroundTrans, /Глисты_8

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Немозол]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Пиперазин]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Пирантел]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Выписать:Вермокс]
Gui, 3:Add, Text, x145 y95 h500 w370 +BackgroundTrans, [Выписать:Декарис]
Return

Lekarstva41:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w370 +BackgroundTrans, /Противовирусные_1
Gui, 3:Add, Text, x10 y35 h200 w370 +BackgroundTrans, /Противовирусные_2
Gui, 3:Add, Text, x10 y55 h200 w370 +BackgroundTrans, /Противовирусные_3
Gui, 3:Add, Text, x10 y75 h200 w370 +BackgroundTrans, /Противовирусные_4



Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x175 y15 h500 w370 +BackgroundTrans, [Выписать:Ациклавир]
Gui, 3:Add, Text, x175 y35 h500 w370 +BackgroundTrans, [Выписать:Полиоксидоний]
Gui, 3:Add, Text, x175 y55 h500 w370 +BackgroundTrans, [Выписать:Амиксин]
Gui, 3:Add, Text, x175 y75 h500 w370 +BackgroundTrans, [Выписать:Циклоферон]
Return


Lekarstva42:
Gui, 3:Destroy,
Gui, 3:show, center h200 w420,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w370 +BackgroundTrans, /Инсульт_1
Gui, 3:Add, Text, x10 y35 h200 w370 +BackgroundTrans, /Инсульт_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [Выписать:Гаммалон (внутривенно)]
Gui, 3:Add, Text, x100 y35 h500 w370 +BackgroundTrans, [Выписать:Пентоксифиллин (внутривенно)]
Return

Lekarstva43:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w370 +BackgroundTrans, /Антисептики_1
Gui, 3:Add, Text, x10 y35 h200 w370 +BackgroundTrans, /Антисептики_2
Gui, 3:Add, Text, x10 y55 h500 w370 +BackgroundTrans, /Антисептики_3
Gui, 3:Add, Text, x10 y75 h500 w370 +BackgroundTrans,  /Антисептики_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x175 y15 h500 w370 +BackgroundTrans, [Выписать:Бетадин]
Gui, 3:Add, Text, x175 y35 h500 w370 +BackgroundTrans, [Выписать:Драполен]
Gui, 3:Add, Text, x175 y55 h500 w370 +BackgroundTrans, [Выписать:Хлоргексидин]
Gui, 3:Add, Text, x175 y75 h500 w370 +BackgroundTrans,[Выписать:Бепантен]
Return


Lekarstva44:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w370 +BackgroundTrans,  /Вздутие_1
Gui, 3:Add, Text, x10 y35 h200 w370 +BackgroundTrans,  /Вздутие_2
Gui, 3:Add, Text, x10 y55 h500 w370 +BackgroundTrans,  /Вздутие_3
Gui, 3:Add, Text, x10 y75 h500 w370 +BackgroundTrans,  /Вздутие_4
Gui, 3:Add, Text, x10 y95 h500 w370 +BackgroundTrans,  /Вздутие_5
Gui, 3:Add, Text, x10 y115 h500 w370 +BackgroundTrans, /Вздутие_6
Gui, 3:Add, Text, x10 y135 h500 w370 +BackgroundTrans,  /Вздутие_7


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Активированный уголь]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Смекта]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Полисорб]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Выписать:Эспумизан]
Gui, 3:Add, Text, x145 y95 h500 w370 +BackgroundTrans,  [Выписать:Линекс]
Gui, 3:Add, Text, x145 y115 h500 w370 +BackgroundTrans, [Выписать:Лактофильтрум]
Gui, 3:Add, Text, x145 y135 h500 w370 +BackgroundTrans, [Выписать:Дротаверин]
Return


Lekarstva45:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w370 +BackgroundTrans, /Грибок_1
Gui, 3:Add, Text, x10 y35 h200 w370 +BackgroundTrans, /Грибок_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Дифлукортолон]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Изоконазол]
Return


Lekarstva46:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w370 +BackgroundTrans, /Чесотка_1
Gui, 3:Add, Text, x10 y35 h200 w370 +BackgroundTrans, /Чесотка_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Перметрин]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Бензилбензоат]
Return



Lekarstva47:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w370 +BackgroundTrans, /Член_1
Gui, 3:Add, Text, x10 y35 h200 w370 +BackgroundTrans, /Член_2
Gui, 3:Add, Text, x10 y55 h500 w370 +BackgroundTrans, /Член_3
Gui, 3:Add, Text, x10 y75 h500 w370 +BackgroundTrans,  /Член_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Финастерид]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Простаплант]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Импаза]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans,[Выписать:Простамол]
Return


Lekarstva48:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w370 +BackgroundTrans, /Менструация_1
Gui, 3:Add, Text, x10 y35 h200 w370 +BackgroundTrans, /Менструация_2
Gui, 3:Add, Text, x10 y55 h500 w370 +BackgroundTrans, /Менструация_3
Gui, 3:Add, Text, x10 y75 h500 w370 +BackgroundTrans,  /Менструация_4


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Выписать:Ибупрофен]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Выписать:Диклофенак ретард]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Выписать:Нимесулид]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans,[Выписать:Мелоксикам]
Return

;--------------------------------------------------------------------------------

Info:
SoundPlay,  C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_14.mp3

Gui, 7:Destroy,
Gui, 7:Add, Picture, x0 y10 w475   h672 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Vod_MZ.png
Gui, 7:Add, Picture, x470 y600 w64 h64   +BackgroundTrans gChangeMZ, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Ok_64.png

Gui, 7:Font, S15 C%Tsvet_1% Bold, Consolas
Gui, 7:Add, ComboBox, x90 y40  w425  vJWI, %JWI%||Интерн|Фельдшер|Лаборант|Врач-стажер|Врач-участковый|Врач-терапевт|Врач-хирург|Заведующая Отделением|Заведующий Отделением|Заместитель Главного Врача|Главный врач|Ректор ГМУ|Проректор по учебной работе|Проректор по административной работе|Преподаватель|Cтудент
Gui, 7:Add, ComboBox, x90 y130 w425 vTAG, %TAG%||ГМУ|МЦО|ЗГВ|ГВ
Gui, 7:Add, Edit, x90 y230 w425 vName, %Name%
Gui, 7:Add, Edit, x90 y320 w425 vSurname, %Surname%
Gui, 7:Add, Edit, x90 y420 w425 vMiddle_Name, %Middle_Name%
Gui, 7:Add, DropDownList, x90 y510 w425 vBol_ro, %Bol_ro%||Мирный|Невский|Приволжск
Gui, 7:Add, DropDownList, x90 y610  w225 vpol,%pol%||Мужской|Женский

Gui, 7:show, center , Данные
Return




EditMZ:
SoundPlay,   C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_14.mp3

Gui, 4:Destroy,

IniRead, 11MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 11MZ7
IniRead, 21MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 21MZ7
IniRead, 31MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 31MZ7
IniRead, 41MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 41MZ7
IniRead, 51MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 51MZ7
IniRead, 61MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 61MZ7
IniRead, 71MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 71MZ7
IniRead, 81MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 81MZ7
IniRead, 91MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 91MZ7
IniRead, 101MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 101MZ7
IniRead, 111MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 111MZ7
IniRead, 121MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 121MZ7
IniRead, 131MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 131MZ7
IniRead, 141MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 141MZ7
IniRead, 151MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 151MZ7
IniRead, 161MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 161MZ7
IniRead, 171MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 171MZ7
IniRead, 181MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 181MZ7
IniRead, 191MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 191MZ7
IniRead, 201MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 201MZ7
IniRead, 211MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 211MZ7
IniRead, 221MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 221MZ7
IniRead, 231MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 231MZ7
IniRead, 241MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 241MZ7
IniRead, 251MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 251MZ7
IniRead, 261MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 261MZ7
IniRead, 271MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 271MZ7
IniRead, 281MZ7,  C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Raskladka_MZ.ini, Edit, 281MZ7


Gui, 4:Font, S11 C%Tsvet_1% Bold, Arial

Gui, 4:Add, Hotkey, x10 y26 w150 v11MZ7, %odinMZ7%
Gui, 4:Add, Hotkey, x10 y86 w150 v21MZ7, %dvaMZ7%
Gui, 4:Add, Hotkey, x10 y146 w150 v31MZ7, %triMZ7%
Gui, 4:Add, Hotkey, x10 y206 w150 v41MZ7, %chetireMZ7%
Gui, 4:Add, Hotkey, x10 y266 w150 v51MZ7, %pyatMZ7%
Gui, 4:Add, Hotkey, x10 y326 w150 v61MZ7, %shestMZ7%
Gui, 4:Add, Hotkey, x10 y386 w150 v71MZ7, %semMZ7%
Gui, 4:Add, Hotkey, x10 y446 w150 v81MZ7, %vosemMZ7%
Gui, 4:Add, Hotkey, x10 y506 w150 v91MZ7, %devyatMZ7%
Gui, 4:Add, Hotkey, x10 y566 w150 v101MZ7, %desyatMZ7%
Gui, 4:Add, Hotkey, x10 y626 w150 v111MZ7, %odinadcatMZ7%
Gui, 4:Add, Hotkey, x10 y686 w150 v121MZ7, %dvinadcatMZ7%
Gui, 4:Add, Hotkey, x10 y746 w150  v251MZ7, %dvadcatpyatMZ7%




Gui, 4:Add, Hotkey, x500 y26 w150 v131MZ7, %trinadcatMZ7%
Gui, 4:Add, Hotkey, x500 y86 w150 v141MZ7, %chetirnadcatMZ7%
Gui, 4:Add, Hotkey, x500 y146 w150 v151MZ7, %pyatnadcatMZ7%
Gui, 4:Add, Hotkey, x500 y206 w150 v161MZ7, %shestnadcatMZ7%
Gui, 4:Add, Hotkey, x500 y266 w150 v171MZ7, %semnagcatMZ7%
Gui, 4:Add, Hotkey, x500 y326 w150 v181MZ7, %vosemnagcatMZ7%
Gui, 4:Add, Hotkey, x500 y386 w150 v191MZ7, %devyatnadcatMZ7%
Gui, 4:Add, Hotkey, x500 y446 w150 v201MZ7, %dvadcatMZ7%
Gui, 4:Add, Hotkey, x500 y506 w150 v211MZ7, %dvadcatodinMZ7%
Gui, 4:Add, Hotkey, x500 y566 w150 v221MZ7, %dvadcatdvaMZ7%
Gui, 4:Add, Hotkey, x500 y626 w150 v231MZ7, %dvadcattriMZ7%
Gui, 4:Add, Hotkey, x500 y686 w150 v241MZ7, %dvadcatchetireMZ7%
Gui, 4:Add, Edit, x500 y746  w150 Disabled, Alt+P 


Gui, 4:Add, Edit, x170 y26 w180 vSvoyeМZ_1, %SvoyeМZ_1%
Gui, 4:Add, Edit, x170 y86 w180 vSvoyeМZ_2, %SvoyeМZ_2%
Gui, 4:Add, Edit, x170 y146 w180 vSvoyeМZ_3, %SvoyeМZ_3%
Gui, 4:Add, Edit, x170 y206 w180 vSvoyeМZ_4, %SvoyeМZ_4%
Gui, 4:Add, Edit, x170 y266 w180 vSvoyeМZ_5, %SvoyeМZ_5%
Gui, 4:Add, Edit, x170 y326 w180 vSvoyeМZ_6, %SvoyeМZ_6%
Gui, 4:Add, Edit, x170 y386 w180 vSvoyeМZ_7, %SvoyeМZ_7%
Gui, 4:Add, Edit, x170 y446 w180 vSvoyeМZ_8, %SvoyeМZ_8%
Gui, 4:Add, Edit, x170 y506 w180 vSvoyeМZ_9, %SvoyeМZ_9%
Gui, 4:Add, Edit, x170 y566 w180 vSvoyeМZ_10, %SvoyeМZ_10%
Gui, 4:Add, Edit, x170 y626 w180 vSvoyeМZ_11, %SvoyeМZ_11%
Gui, 4:Add, Edit, x170 y686 w180 vSvoyeМZ_12, %SvoyeМZ_12%
Gui, 4:Add, Edit, x170 y746 w280 Disabled, Радиальное меню (быстрое меню)

Gui, 4:Add, Edit, x660 y26 w180 vSvoyeМZ_13, %SvoyeМZ_13%
Gui, 4:Add, Edit, x660 y86 w180 vSvoyeМZ_14, %SvoyeМZ_14%
Gui, 4:Add, Edit, x660 y146 w180 vSvoyeМZ_15, %SvoyeМZ_15%
Gui, 4:Add, Edit, x660 y206 w180 vSvoyeМZ_16, %SvoyeМZ_16%
Gui, 4:Add, Edit, x660 y266 w180 vSvoyeМZ_17, %SvoyeМZ_17%
Gui, 4:Add, Edit, x660 y326 w180 vSvoyeМZ_18, %SvoyeМZ_18%
Gui, 4:Add, Edit, x660 y386 w180 vSvoyeМZ_19, %SvoyeМZ_19%
Gui, 4:Add, Edit, x660 y446 w180 vSvoyeМZ_20, %SvoyeМZ_20%
Gui, 4:Add, Edit, x660 y506 w180 vSvoyeМZ_21, %SvoyeМZ_21%
Gui, 4:Add, Edit, x660 y566 w320 Disabled, Создать альбом на imgchest.com
Gui, 4:Add, Edit, x660 y626 w320 Disabled, Добавить скриншоты в альбом до 20 штук.
Gui, 4:Add, Edit, x660 y686 w320 Disabled, Загрузить альбом на imgchest.com 
Gui, 4:Add, Edit, x660 y746 w70  Disabled, пауза


Gui, 4:Add, Picture, x370 y16 w48 h48 +BackgroundTrans gSelectKPRPMZ1,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y76 w48 h48 +BackgroundTrans gSelectKPRPMZ2,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y136 w48 h48 +BackgroundTrans gSelectKPRPMZ3,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y196 w48 h48 +BackgroundTrans gSelectKPRPMZ4 ,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y256 w48 h48 +BackgroundTrans gSelectKPRPMZ5,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y316 w48 h48 +BackgroundTrans gSelectKPRPMZ6,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y376 w48 h48 +BackgroundTrans gSelectKPRPMZ7,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y436 w48 h48 +BackgroundTrans gSelectKPRPMZ8,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y496 w48 h48 +BackgroundTrans gSelectKPRPMZ9,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y556 w48 h48 +BackgroundTrans gSelectKPRPMZ10,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y616 w48 h48 +BackgroundTrans gSelectKPRPMZ11,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y676 w48 h48 +BackgroundTrans gSelectKPRPMZ12,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
;Gui, 4:Add, Picture, x370 y736 w48 h48 +BackgroundTrans gSelectKPRPMZ25,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png

Gui, 4:Add, Picture, x860 y16 w48 h48 +BackgroundTrans gSelectKPRPMZ13,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y76 w48 h48 +BackgroundTrans gSelectKPRPMZ14,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y136 w48 h48 +BackgroundTrans gSelectKPRPMZ15,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y196 w48 h48 +BackgroundTrans gSelectKPRPMZ16,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y256 w48 h48 +BackgroundTrans gSelectKPRPMZ17,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y316 w48 h48 +BackgroundTrans gSelectKPRPMZ18,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y376 w48 h48 +BackgroundTrans gSelectKPRPMZ19,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y436 w48 h48 +BackgroundTrans gSelectKPRPMZ20,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y496 w48 h48 +BackgroundTrans gSelectKPRPMZ21,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
;Gui, 4:Add, Picture, x860 y556 w48 h48 +BackgroundTrans gSelectKPRPMZ22,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
;Gui, 4:Add, Picture, x860 y616 w48 h48 +BackgroundTrans gSelectKPRPMZ23,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
;Gui, 4:Add, Picture, x860 y676 w48 h48 +BackgroundTrans gSelectKPRPMZ24,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png

Gui, 4:Add, Picture, x440 y16 w48 h48 +BackgroundTrans gNotebookKPRPMZ1,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y76 w48 h48 +BackgroundTrans gNotebookKPRPMZ2,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y136 w48 h48 +BackgroundTrans gNotebookKPRPMZ3,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y196 w48 h48 +BackgroundTrans gNotebookKPRPMZ4 ,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y256 w48 h48 +BackgroundTrans gNotebookKPRPMZ5,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y316 w48 h48 +BackgroundTrans gNotebookKPRPMZ6,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y376 w48 h48 +BackgroundTrans gNotebookKPRPMZ7,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y436 w48 h48 +BackgroundTrans gNotebookKPRPMZ8,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y496 w48 h48 +BackgroundTrans gNotebookKPRPMZ9,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y556 w48 h48 +BackgroundTrans gNotebookKPRPMZ10,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y616 w48 h48 +BackgroundTrans gNotebookKPRPMZ11,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y676 w48 h48 +BackgroundTrans gNotebookKPRPMZ12,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
;Gui, 4:Add, Picture, x440 y736 w48 h48 +BackgroundTrans gNotebookKPRPMZ25,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png

Gui, 4:Add, Picture, x930 y16 w48 h48 +BackgroundTrans gNotebookKPRPMZ13,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y76 w48 h48 +BackgroundTrans gNotebookKPRPMZ14,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y136 w48 h48 +BackgroundTrans gNotebookKPRPMZ15,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y196 w48 h48 +BackgroundTrans gNotebookKPRPMZ16,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y256 w48 h48 +BackgroundTrans gNotebookKPRPMZ17,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y316 w48 h48 +BackgroundTrans gNotebookKPRPMZ18,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y376 w48 h48 +BackgroundTrans gNotebookKPRPMZ19,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y436 w48 h48 +BackgroundTrans gNotebookKPRPMZ20,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y496 w48 h48 +BackgroundTrans gNotebookKPRPMZ21,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


;Gui, 4:Add, Picture, x930 y556 w48 h48 +BackgroundTrans gNotebookKPRPMZ22,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
;Gui, 4:Add, Picture, x930 y616 w48 h48 +BackgroundTrans gNotebookKPRPMZ23,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
;Gui, 4:Add, Picture, x930 y676 w48 h48 +BackgroundTrans gNotebookKPRPMZ24,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png


Gui, 4:Add, Picture, x930 y725 w64 h64  +BackgroundTrans gChangeRaskladka_MZ,   C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Ok_64.png
Gui, 4:Add, Picture, x850 y725 w64 h64  +BackgroundTrans gInfovariableMZ,   C:\ProgramData\KPRP\KPRP-main\KPRPPNG\InfovariableMZ.png
Gui, 4:Add, Picture, x770 y725 w64 h64  +BackgroundTrans gVoprosKPRPMZ,   C:\ProgramData\KPRP\KPRP-main\KPRPPNG\VoprosKPRPMZ.png


Gui, 4:Show, w1000 h790, Редактор раскладки сочетания клавиш
Return



VoprosKPRPMZ:
Gui, 17:Font, S11 C000000 Bold, Arial
Gui, 17:Add, Edit, x10 y10  w150  Disabled, Первое поле.
Gui, 17:Add, Edit, x180 y10  w230  Disabled, Комбинация клавиш.
Gui, 17:Add, Edit, x10 y40  w150  Disabled, Второе поле.
Gui, 17:Add, Edit, x180 y40  w230  Disabled, Описание действия.
Gui, 17:Add, Picture, x10 y80 w48 h48 +BackgroundTrans ,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\PapkaMZ_dobavit.png
Gui, 17:Add, Edit, x180 y80  w230  Disabled, Путь к файлу можно менять на свой.
Gui, 17:Add, Picture, x10 y140 w48 h48 +BackgroundTrans ,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\FolderMZ_file.png
Gui, 17:Add, Edit, x180 y140  w230  Disabled,  Просмотр текста в файле и его редактирование.
Gui, 17:Add, Picture, x10 y200 w48 h48 +BackgroundTrans ,C:\ProgramData\KPRP\KPRP-main\KPRPPNG\InfovariableMZ.png
Gui, 17:Add, Edit, x180 y200  w230  Disabled,  Переменные можно указывать в вашем файле.



Gui, 17:Show, w420 h260, Разбор функций работы

Return


InfovariableMZ:
 MsgBox, 64, Информация, % "
(
Значения переменных:

%floor%: " floor " - Добавляет а на конце.
%Female%: " Female " - Добавляет ла на конце.
%Var%: " Var " - Доброго времени суток, в зависимости от времени на ПК.
%Name%: " Name " - Имя. 
%Surname%: " Surname " - Фамилия.
%Middle_Name%: " Middle_Name " - Отчество.
%Bol_ro_1%: " Bol_ro_3 " - Тег вашей больницы в /ro или /d.
%Bol_ro_3%: " Bol_ro_3 " - Город работы.
%JWI%: " JWI " - Должность.
%TAG%: " TAG " - Ваш тег(отдел).
%Skrin_1%: " Skrin_1 " - Делает скриншот.
%stol%: " stol " - Стол.
)"
  
Return


NotebookKPRPMZ1: 
Run, notepad.exe "%KPRPMZ1%" 
return
NotebookKPRPMZ2: 
Run, notepad.exe "%KPRPMZ2%"
 return
NotebookKPRPMZ3:
Run, notepad.exe "%KPRPMZ3%" 
return
NotebookKPRPMZ4: 
Run, notepad.exe "%KPRPMZ4%" 
return
NotebookKPRPMZ5: 
Run, notepad.exe "%KPRPMZ5%" 
return
NotebookKPRPMZ6: 
Run, notepad.exe "%KPRPMZ6%" 
return
NotebookKPRPMZ7:
Run, notepad.exe "%KPRPMZ7%" 
return
NotebookKPRPMZ8: 
Run, notepad.exe "%KPRPMZ8%" 
return
NotebookKPRPMZ9: 
Run, notepad.exe "%KPRPMZ9%" 
return
NotebookKPRPMZ10: 
Run, notepad.exe "%KPRPMZ10%"
return
NotebookKPRPMZ11: 
Run, notepad.exe "%KPRPMZ11%" 
return
NotebookKPRPMZ12: 
Run, notepad.exe "%KPRPMZ12%" 
return
NotebookKPRPMZ13: 
Run, notepad.exe "%KPRPMZ13%" 
return
NotebookKPRPMZ14: 
Run, notepad.exe "%KPRPMZ14%" 
return
NotebookKPRPMZ15: 
Run, notepad.exe "%KPRPMZ15%" 
return
NotebookKPRPMZ16: 
Run, notepad.exe "%KPRPMZ16%" 
return
NotebookKPRPMZ17: 
Run, notepad.exe "%KPRPMZ17%" 
return
NotebookKPRPMZ18: 
Run, notepad.exe "%KPRPMZ18%" 
return
NotebookKPRPMZ19: 
Run, notepad.exe "%KPRPMZ19%" 
return
NotebookKPRPMZ20: 
Run, notepad.exe "%KPRPMZ20%" 
return
NotebookKPRPMZ21: 
Run, notepad.exe "%KPRPMZ21%" 
return
NotebookKPRPMZ22: 
Run, notepad.exe "%KPRPMZ22%" 
return
NotebookKPRPMZ23: 
Run, notepad.exe "%KPRPMZ23%" 
return
NotebookKPRPMZ24: 
Run, notepad.exe "%KPRPMZ24%" 
return
NotebookKPRPMZ25: 
Run, notepad.exe "%KPRPMZ25%" 
return
NotebookKPRPMZ26: 
Run, notepad.exe "%KPRPMZ26%" 
return
NotebookKPRPMZ27: 
Run, notepad.exe "%KPRPMZ27%" 
return
NotebookKPRPMZ28: 
Run, notepad.exe "%KPRPMZ28%" 
return
NotebookKPRPMZ29: 
Run, notepad.exe "%KPRPMZ29%" 
return
NotebookKPRPMZ30: 
Run, notepad.exe "%KPRPMZ30%" 
return
NotebookKPRPMZ31: 
Run, notepad.exe "%KPRPMZ31%" 
return
NotebookKPRPMZ32: 
Run, notepad.exe "%KPRPMZ32%" 
return
NotebookKPRPMZ33:
Run, notepad.exe "%KPRPMZ33%"
return
NotebookKPRPMZ34:
Run, notepad.exe "%KPRPMZ34%"
return
NotebookKPRPMZ35:
Run, notepad.exe "%KPRPMZ35%"
return
NotebookKPRPMZ36:
Run, notepad.exe "%KPRPMZ36%"
return
NotebookKPRPMZ37:
Run, notepad.exe "%KPRPMZ37%"
return
NotebookKPRPMZ38:
Run, notepad.exe "%KPRPMZ38%"
return
NotebookKPRPMZ39:
Run, notepad.exe "%KPRPMZ39%"
return
NotebookKPRPMZ40:
Run, notepad.exe "%KPRPMZ40%"
return
NotebookKPRPMZ41:
Run, notepad.exe "%KPRPMZ41%"
return
NotebookKPRPMZ42:
Run, notepad.exe "%KPRPMZ42%"
return
NotebookKPRPMZ43:
Run, notepad.exe "%KPRPMZ43%"
return
NotebookKPRPMZ44:
Run, notepad.exe "%KPRPMZ44%"
return
NotebookKPRPMZ45:
Run, notepad.exe "%KPRPMZ45%"
return
NotebookKPRPMZ46:
Run, notepad.exe "%KPRPMZ46%"
return
NotebookKPRPMZ47:
Run, notepad.exe "%KPRPMZ47%"
return
NotebookKPRPMZ48:
Run, notepad.exe "%KPRPMZ48%"
return
NotebookKPRPMZ49:
Run, notepad.exe "%KPRPMZ49%"
return
NotebookKPRPMZ50:
Run, notepad.exe "%KPRPMZ50%"
return
NotebookKPRPMZ51:
Run, notepad.exe "%KPRPMZ51%"
return
NotebookKPRPMZ52:
Run, notepad.exe "%KPRPMZ52%"
return
NotebookKPRPMZ53:
Run, notepad.exe "%KPRPMZ53%"
return
NotebookKPRPMZ54:
Run, notepad.exe "%KPRPMZ54%"
return
NotebookKPRPMZ55:
Run, notepad.exe "%KPRPMZ55%"
return
NotebookKPRPMZ56:
Run, notepad.exe "%KPRPMZ56%"
return
NotebookKPRPMZ57:
Run, notepad.exe "%KPRPMZ57%"
return
NotebookKPRPMZ58:
Run, notepad.exe "%KPRPMZ58%"
return
NotebookKPRPMZ59:
Run, notepad.exe "%KPRPMZ59%"
return
NotebookKPRPMZ60:
Run, notepad.exe "%KPRPMZ60%"
return
NotebookKPRPMZ61:
Run, notepad.exe "%KPRPMZ61%"
return
NotebookKPRPMZ62:
Run, notepad.exe "%KPRPMZ62%"
return
NotebookKPRPMZ63:
Run, notepad.exe "%KPRPMZ63%"
return
NotebookKPRPMZ64:
Run, notepad.exe "%KPRPMZ64%"
return
NotebookKPRPMZ65:
Run, notepad.exe "%KPRPMZ65%"
return
NotebookKPRPMZ66:
Run, notepad.exe "%KPRPMZ66%"
return
NotebookKPRPMZ67:
Run, notepad.exe "%KPRPMZ67%"
return
NotebookKPRPMZ68:
Run, notepad.exe "%KPRPMZ68%"
return
NotebookKPRPMZ69:
Run, notepad.exe "%KPRPMZ69%"
return
NotebookKPRPMZ70:
Run, notepad.exe "%KPRPMZ70%"
return
NotebookKPRPMZ71:
Run, notepad.exe "%KPRPMZ71%"
return
NotebookKPRPMZ72:
Run, notepad.exe "%KPRPMZ72%"
return
NotebookKPRPMZ73:
Run, notepad.exe "%KPRPMZ73%"
return
NotebookKPRPMZ74:
Run, notepad.exe "%KPRPMZ74%"
return
NotebookKPRPMZ75:
Run, notepad.exe "%KPRPMZ75%"
return
NotebookKPRPMZ76:
Run, notepad.exe "%KPRPMZ76%"
return
NotebookKPRPMZ77:
Run, notepad.exe "%KPRPMZ77%"
return
NotebookKPRPMZ78:
Run, notepad.exe "%KPRPMZ78%"
return
NotebookKPRPMZ79:
Run, notepad.exe "%KPRPMZ79%"
return
NotebookKPRPMZ80:
Run, notepad.exe "%KPRPMZ80%"
return
NotebookKPRPMZ81:
Run, notepad.exe "%KPRPMZ81%"
return
NotebookKPRPMZ82:
Run, notepad.exe "%KPRPMZ82%"
return
NotebookKPRPMZ83:
Run, notepad.exe "%KPRPMZ83%"
return
NotebookKPRPMZ84:
Run, notepad.exe "%KPRPMZ84%"
return
NotebookKPRPMZ85:
Run, notepad.exe "%KPRPMZ85%"
return
NotebookKPRPMZ86:
Run, notepad.exe "%KPRPMZ86%"
return
NotebookKPRPMZ87:
Run, notepad.exe "%KPRPMZ87%"
return
NotebookKPRPMZ88:
Run, notepad.exe "%KPRPMZ88%"
return
NotebookKPRPMZ89:
Run, notepad.exe "%KPRPMZ89%"
return
NotebookKPRPMZ90:
Run, notepad.exe "%KPRPMZ90%"
return
NotebookKPRPMZ91:
Run, notepad.exe "%KPRPMZ91%"
return
NotebookKPRPMZ92:
Run, notepad.exe "%KPRPMZ92%"
return
NotebookKPRPMZ93:
Run, notepad.exe "%KPRPMZ93%"
return
NotebookKPRPMZ94:
Run, notepad.exe "%KPRPMZ94%"
return
NotebookKPRPMZ95:
Run, notepad.exe "%KPRPMZ95%"
return
NotebookKPRPMZ96:
Run, notepad.exe "%KPRPMZ96%"
return
NotebookKPRPMZ97:
Run, notepad.exe "%KPRPMZ97%"
return
NotebookKPRPMZ98:
Run, notepad.exe "%KPRPMZ98%"
return
NotebookKPRPMZ99:
Run, notepad.exe "%KPRPMZ99%"
return
NotebookKPRPMZ100:
    Run, notepad.exe "%KPRPMZ100%"
return

NotebookKPRPMZ101:
    Run, notepad.exe "%KPRPMZ101%"
return

NotebookKPRPMZ102:
    Run, notepad.exe "%KPRPMZ102%"
return

NotebookKPRPMZ103:
    Run, notepad.exe "%KPRPMZ103%"
return

NotebookKPRPMZ104:
    Run, notepad.exe "%KPRPMZ104%"
return

NotebookKPRPMZ105:
    Run, notepad.exe "%KPRPMZ105%"
return

NotebookKPRPMZ106:
    Run, notepad.exe "%KPRPMZ106%"
return

NotebookKPRPMZ107:
    Run, notepad.exe "%KPRPMZ107%"
return

NotebookKPRPMZ108:
    Run, notepad.exe "%KPRPMZ108%"
return

NotebookKPRPMZ109:
    Run, notepad.exe "%KPRPMZ109%"
return

NotebookKPRPMZ110:
    Run, notepad.exe "%KPRPMZ110%"
return

NotebookKPRPMZ111:
    Run, notepad.exe "%KPRPMZ111%"
return

NotebookKPRPMZ112:
    Run, notepad.exe "%KPRPMZ112%"
return

NotebookKPRPMZ113:
    Run, notepad.exe "%KPRPMZ113%"
return

NotebookKPRPMZ114:
    Run, notepad.exe "%KPRPMZ114%"
return

NotebookKPRPMZ115:
    Run, notepad.exe "%KPRPMZ115%"
return

NotebookKPRPMZ116:
    Run, notepad.exe "%KPRPMZ116%"
return

NotebookKPRPMZ117:
    Run, notepad.exe "%KPRPMZ117%"
return

NotebookKPRPMZ118:
    Run, notepad.exe "%KPRPMZ118%"
return

NotebookKPRPMZ119:
    Run, notepad.exe "%KPRPMZ119%"
return

NotebookKPRPMZ120:
    Run, notepad.exe "%KPRPMZ120%"
return

NotebookKPRPMZ121:
    Run, notepad.exe "%KPRPMZ121%"
return

NotebookKPRPMZ122:
    Run, notepad.exe "%KPRPMZ122%"
return

NotebookKPRPMZ123:
    Run, notepad.exe "%KPRPMZ123%"
return

NotebookKPRPMZ124:
    Run, notepad.exe "%KPRPMZ124%"
return

NotebookKPRPMZ125:
    Run, notepad.exe "%KPRPMZ125%"
return

NotebookKPRPMZ126:
    Run, notepad.exe "%KPRPMZ126%"
return

NotebookKPRPMZ127:
    Run, notepad.exe "%KPRPMZ127%"
return

NotebookKPRPMZ128:
    Run, notepad.exe "%KPRPMZ128%"
return

NotebookKPRPMZ129:
    Run, notepad.exe "%KPRPMZ129%"
return

NotebookKPRPMZ130:
    Run, notepad.exe "%KPRPMZ130%"
return

NotebookKPRPMZ131:
    Run, notepad.exe "%KPRPMZ131%"
return

NotebookKPRPMZ132:
    Run, notepad.exe "%KPRPMZ132%"
return

NotebookKPRPMZ133:
    Run, notepad.exe "%KPRPMZ133%"
return

NotebookKPRPMZ134:
    Run, notepad.exe "%KPRPMZ134%"
return

NotebookKPRPMZ135:
    Run, notepad.exe "%KPRPMZ135%"
return

NotebookKPRPMZ136:
    Run, notepad.exe "%KPRPMZ136%"
return

NotebookKPRPMZ137:
    Run, notepad.exe "%KPRPMZ137%"
return

NotebookKPRPMZ138:
    Run, notepad.exe "%KPRPMZ138%"
return

NotebookKPRPMZ139:
    Run, notepad.exe "%KPRPMZ139%"
return

NotebookKPRPMZ140:
    Run, notepad.exe "%KPRPMZ140%"
return

NotebookKPRPMZ141:
    Run, notepad.exe "%KPRPMZ141%"
return

NotebookKPRPMZ142:
    Run, notepad.exe "%KPRPMZ142%"
return

NotebookKPRPMZ143:
    Run, notepad.exe "%KPRPMZ143%"
return

NotebookKPRPMZ144:
    Run, notepad.exe "%KPRPMZ144%"
return

NotebookKPRPMZ145:
    Run, notepad.exe "%KPRPMZ145%"
return

NotebookKPRPMZ146:
    Run, notepad.exe "%KPRPMZ146%"
return

NotebookKPRPMZ147:
    Run, notepad.exe "%KPRPMZ147%"
return

NotebookKPRPMZ148:
    Run, notepad.exe "%KPRPMZ148%"
return

NotebookKPRPMZ149:
    Run, notepad.exe "%KPRPMZ149%"
return

NotebookKPRPMZ150:
    Run, notepad.exe "%KPRPMZ150%"
return

NotebookKPRPMZ151:
    Run, notepad.exe "%KPRPMZ151%"
return

NotebookKPRPMZ152:
    Run, notepad.exe "%KPRPMZ152%"
return

NotebookKPRPMZ153:
    Run, notepad.exe "%KPRPMZ153%"
return

NotebookKPRPMZ154:
    Run, notepad.exe "%KPRPMZ154%"
return

NotebookKPRPMZ155:
    Run, notepad.exe "%KPRPMZ155%"
return

NotebookKPRPMZ156:
    Run, notepad.exe "%KPRPMZ156%"
return

NotebookKPRPMZ157:
    Run, notepad.exe "%KPRPMZ157%"
return

NotebookKPRPMZ158:
    Run, notepad.exe "%KPRPMZ158%"
return

NotebookKPRPMZ159:
    Run, notepad.exe "%KPRPMZ159%"
return

NotebookKPRPMZ160:
    Run, notepad.exe "%KPRPMZ160%"
return

NotebookKPRPMZ161:
    Run, notepad.exe "%KPRPMZ161%"
return

NotebookKPRPMZ162:
    Run, notepad.exe "%KPRPMZ162%"
return

NotebookKPRPMZ163:
    Run, notepad.exe "%KPRPMZ163%"
return

NotebookKPRPMZ164:
    Run, notepad.exe "%KPRPMZ164%"
return

NotebookKPRPMZ165:
    Run, notepad.exe "%KPRPMZ165%"
return

NotebookKPRPMZ166:
    Run, notepad.exe "%KPRPMZ166%"
return

NotebookKPRPMZ167:
    Run, notepad.exe "%KPRPMZ167%"
return

NotebookKPRPMZ168:
    Run, notepad.exe "%KPRPMZ168%"
return

NotebookKPRPMZ169:
    Run, notepad.exe "%KPRPMZ169%"
return

NotebookKPRPMZ170:
    Run, notepad.exe "%KPRPMZ170%"
return

NotebookKPRPMZ171:
    Run, notepad.exe "%KPRPMZ171%"
return

NotebookKPRPMZ172:
    Run, notepad.exe "%KPRPMZ172%"
return

NotebookKPRPMZ173:
    Run, notepad.exe "%KPRPMZ173%"
return

NotebookKPRPMZ174:
    Run, notepad.exe "%KPRPMZ174%"
return

NotebookKPRPMZ175:
    Run, notepad.exe "%KPRPMZ175%"
return

NotebookKPRPMZ176:
    Run, notepad.exe "%KPRPMZ176%"
return

NotebookKPRPMZ177:
    Run, notepad.exe "%KPRPMZ177%"
return

NotebookKPRPMZ178:
    Run, notepad.exe "%KPRPMZ178%"
return

NotebookKPRPMZ179:
    Run, notepad.exe "%KPRPMZ179%"
return

NotebookKPRPMZ180:
    Run, notepad.exe "%KPRPMZ180%"
return

NotebookKPRPMZ181:
    Run, notepad.exe "%KPRPMZ181%"
return

NotebookKPRPMZ182:
    Run, notepad.exe "%KPRPMZ182%"
return

NotebookKPRPMZ183:
    Run, notepad.exe "%KPRPMZ183%"
return

NotebookKPRPMZ184:
    Run, notepad.exe "%KPRPMZ184%"
return

NotebookKPRPMZ185:
    Run, notepad.exe "%KPRPMZ185%"
return

NotebookKPRPMZ186:
    Run, notepad.exe "%KPRPMZ186%"
return

NotebookKPRPMZ187:
    Run, notepad.exe "%KPRPMZ187%"
return

NotebookKPRPMZ188:
    Run, notepad.exe "%KPRPMZ188%"
return

NotebookKPRPMZ189:
    Run, notepad.exe "%KPRPMZ189%"
return

NotebookKPRPMZ190:
    Run, notepad.exe "%KPRPMZ190%"
return

NotebookKPRPMZ191:
    Run, notepad.exe "%KPRPMZ191%"
return

NotebookKPRPMZ192:
    Run, notepad.exe "%KPRPMZ192%"
return

NotebookKPRPMZ193:
    Run, notepad.exe "%KPRPMZ193%"
return

NotebookKPRPMZ194:
    Run, notepad.exe "%KPRPMZ194%"
return

NotebookKPRPMZ195:
    Run, notepad.exe "%KPRPMZ195%"
return

NotebookKPRPMZ196:
    Run, notepad.exe "%KPRPMZ196%"
return

NotebookKPRPMZ197:
    Run, notepad.exe "%KPRPMZ197%"
return

NotebookKPRPMZ198:
    Run, notepad.exe "%KPRPMZ198%"
return

NotebookKPRPMZ199:
    Run, notepad.exe "%KPRPMZ199%"
return

NotebookKPRPMZ200:
    Run, notepad.exe "%KPRPMZ200%"
return

NotebookKPRPMZ201:
    Run, notepad.exe "%KPRPMZ201%"
return

NotebookKPRPMZ202:
    Run, notepad.exe "%KPRPMZ202%"
return

NotebookKPRPMZ203:
    Run, notepad.exe "%KPRPMZ203%"
return

NotebookKPRPMZ204:
    Run, notepad.exe "%KPRPMZ204%"
return

NotebookKPRPMZ205:
    Run, notepad.exe "%KPRPMZ205%"
return

NotebookKPRPMZ206:
    Run, notepad.exe "%KPRPMZ206%"
return

NotebookKPRPMZ207:
    Run, notepad.exe "%KPRPMZ207%"
return

NotebookKPRPMZ208:
    Run, notepad.exe "%KPRPMZ208%"
return

NotebookKPRPMZ209:
    Run, notepad.exe "%KPRPMZ209%"
return

NotebookKPRPMZ210:
    Run, notepad.exe "%KPRPMZ210%"
return

NotebookKPRPMZ211:
    Run, notepad.exe "%KPRPMZ211%"
return

NotebookKPRPMZ212:
    Run, notepad.exe "%KPRPMZ212%"
return

NotebookKPRPMZ213:
    Run, notepad.exe "%KPRPMZ213%"
return

NotebookKPRPMZ214:
    Run, notepad.exe "%KPRPMZ214%"
return

NotebookKPRPMZ215:
    Run, notepad.exe "%KPRPMZ215%"
return

NotebookKPRPMZ216:
    Run, notepad.exe "%KPRPMZ216%"
return

NotebookKPRPMZ217:
    Run, notepad.exe "%KPRPMZ217%"
return

NotebookKPRPMZ218:
    Run, notepad.exe "%KPRPMZ218%"
return

NotebookKPRPMZ219:
    Run, notepad.exe "%KPRPMZ219%"
return

NotebookKPRPMZ220:
    Run, notepad.exe "%KPRPMZ220%"
return

NotebookKPRPMZ221:
    Run, notepad.exe "%KPRPMZ221%"
return

NotebookKPRPMZ222:
    Run, notepad.exe "%KPRPMZ222%"
return

NotebookKPRPMZ223:
    Run, notepad.exe "%KPRPMZ223%"
return

NotebookKPRPMZ224:
    Run, notepad.exe "%KPRPMZ224%"
return

NotebookKPRPMZ225:
    Run, notepad.exe "%KPRPMZ225%"
return

NotebookKPRPMZ226:
    Run, notepad.exe "%KPRPMZ226%"
return

NotebookKPRPMZ227:
    Run, notepad.exe "%KPRPMZ227%"
return

NotebookKPRPMZ228:
    Run, notepad.exe "%KPRPMZ228%"
return

NotebookKPRPMZ229:
    Run, notepad.exe "%KPRPMZ229%"
return

NotebookKPRPMZ230:
    Run, notepad.exe "%KPRPMZ230%"
return

NotebookKPRPMZ231:
    Run, notepad.exe "%KPRPMZ231%"
return

NotebookKPRPMZ232:
    Run, notepad.exe "%KPRPMZ232%"
return

NotebookKPRPMZ233:
    Run, notepad.exe "%KPRPMZ233%"
return

NotebookKPRPMZ234:
    Run, notepad.exe "%KPRPMZ234%"
return

NotebookKPRPMZ235:
    Run, notepad.exe "%KPRPMZ235%"
return

NotebookKPRPMZ236:
    Run, notepad.exe "%KPRPMZ236%"
return

NotebookKPRPMZ237:
    Run, notepad.exe "%KPRPMZ237%"
return

NotebookKPRPMZ238:
    Run, notepad.exe "%KPRPMZ238%"
return

NotebookKPRPMZ239:
    Run, notepad.exe "%KPRPMZ239%"
return

NotebookKPRPMZ240:
    Run, notepad.exe "%KPRPMZ240%"
return

NotebookKPRPMZ241:
    Run, notepad.exe "%KPRPMZ241%"
return

NotebookKPRPMZ242:
    Run, notepad.exe "%KPRPMZ242%"
return

NotebookKPRPMZ243:
    Run, notepad.exe "%KPRPMZ243%"
return

NotebookKPRPMZ244:
    Run, notepad.exe "%KPRPMZ244%"
return

NotebookKPRPMZ245:
    Run, notepad.exe "%KPRPMZ245%"
return

NotebookKPRPMZ246:
    Run, notepad.exe "%KPRPMZ246%"
return

NotebookKPRPMZ247:
    Run, notepad.exe "%KPRPMZ247%"
return

NotebookKPRPMZ248:
    Run, notepad.exe "%KPRPMZ248%"
return

NotebookKPRPMZ249:
    Run, notepad.exe "%KPRPMZ249%"
return

NotebookKPRPMZ250:
    Run, notepad.exe "%KPRPMZ250%"
return

NotebookKPRPMZ251:
    Run, notepad.exe "%KPRPMZ251%"
return

NotebookKPRPMZ252:
    Run, notepad.exe "%KPRPMZ252%"
return

NotebookKPRPMZ253:
    Run, notepad.exe "%KPRPMZ253%"
return

NotebookKPRPMZ254:
    Run, notepad.exe "%KPRPMZ254%"
return

NotebookKPRPMZ255:
    Run, notepad.exe "%KPRPMZ255%"
return

NotebookKPRPMZ256:
    Run, notepad.exe "%KPRPMZ256%"
return

NotebookKPRPMZ257:
    Run, notepad.exe "%KPRPMZ257%"
return

NotebookKPRPMZ258:
    Run, notepad.exe "%KPRPMZ258%"
return

NotebookKPRPMZ259:
    Run, notepad.exe "%KPRPMZ259%"
return

NotebookKPRPMZ260:
    Run, notepad.exe "%KPRPMZ260%"
return

NotebookKPRPMZ261:
    Run, notepad.exe "%KPRPMZ261%"
return

NotebookKPRPMZ262:
    Run, notepad.exe "%KPRPMZ262%"
return

NotebookKPRPMZ263:
    Run, notepad.exe "%KPRPMZ263%"
return

NotebookKPRPMZ264:
    Run, notepad.exe "%KPRPMZ264%"
return

NotebookKPRPMZ265:
    Run, notepad.exe "%KPRPMZ265%"
return

NotebookKPRPMZ266:
    Run, notepad.exe "%KPRPMZ266%"
return

NotebookKPRPMZ267:
    Run, notepad.exe "%KPRPMZ267%"
return

NotebookKPRPMZ268:
    Run, notepad.exe "%KPRPMZ268%"
return

NotebookKPRPMZ269:
    Run, notepad.exe "%KPRPMZ269%"
return

NotebookKPRPMZ270:
    Run, notepad.exe "%KPRPMZ270%"
return

NotebookKPRPMZ271:
    Run, notepad.exe "%KPRPMZ271%"
return

NotebookKPRPMZ272:
    Run, notepad.exe "%KPRPMZ272%"
return

NotebookKPRPMZ273:
    Run, notepad.exe "%KPRPMZ273%"
return

NotebookKPRPMZ274:
    Run, notepad.exe "%KPRPMZ274%"
return

NotebookKPRPMZ275:
    Run, notepad.exe "%KPRPMZ275%"
return

NotebookKPRPMZ276:
    Run, notepad.exe "%KPRPMZ276%"
return

NotebookKPRPMZ277:
    Run, notepad.exe "%KPRPMZ277%"
return

NotebookKPRPMZ278:
    Run, notepad.exe "%KPRPMZ278%"
return

NotebookKPRPMZ279:
    Run, notepad.exe "%KPRPMZ279%"
return

NotebookKPRPMZ280:
    Run, notepad.exe "%KPRPMZ280%"
return

NotebookKPRPMZ281:
    Run, notepad.exe "%KPRPMZ281%"
return

NotebookKPRPMZ282:
    Run, notepad.exe "%KPRPMZ282%"
return

NotebookKPRPMZ283:
    Run, notepad.exe "%KPRPMZ283%"
return

NotebookKPRPMZ284:
    Run, notepad.exe "%KPRPMZ284%"
return

NotebookKPRPMZ285:
    Run, notepad.exe "%KPRPMZ285%"
return

NotebookKPRPMZ286:
    Run, notepad.exe "%KPRPMZ286%"
return

NotebookKPRPMZ287:
    Run, notepad.exe "%KPRPMZ287%"
return

NotebookKPRPMZ288:
    Run, notepad.exe "%KPRPMZ288%"
return

NotebookKPRPMZ289:
    Run, notepad.exe "%KPRPMZ289%"
return

NotebookKPRPMZ290:
    Run, notepad.exe "%KPRPMZ290%"
return

NotebookKPRPMZ291:
    Run, notepad.exe "%KPRPMZ291%"
return

NotebookKPRPMZ292:
    Run, notepad.exe "%KPRPMZ292%"
return

NotebookKPRPMZ293:
    Run, notepad.exe "%KPRPMZ293%"
return

NotebookKPRPMZ294:
    Run, notepad.exe "%KPRPMZ294%"
return

NotebookKPRPMZ295:
    Run, notepad.exe "%KPRPMZ295%"
return

NotebookKPRPMZ296:
    Run, notepad.exe "%KPRPMZ296%"
return

NotebookKPRPMZ297:
    Run, notepad.exe "%KPRPMZ297%"
return

NotebookKPRPMZ298:
    Run, notepad.exe "%KPRPMZ298%"
return

NotebookKPRPMZ299:
    Run, notepad.exe "%KPRPMZ299%"
return

NotebookKPRPMZ300:
    Run, notepad.exe "%KPRPMZ300%"
return

NotebookKPRPMZ301:
    Run, notepad.exe "%KPRPMZ301%"
return

NotebookKPRPMZ302:
    Run, notepad.exe "%KPRPMZ302%"
return

NotebookKPRPMZ303:
    Run, notepad.exe "%KPRPMZ303%"
return

NotebookKPRPMZ304:
    Run, notepad.exe "%KPRPMZ304%"
return

NotebookKPRPMZ305:
    Run, notepad.exe "%KPRPMZ305%"
return

NotebookKPRPMZ306:
    Run, notepad.exe "%KPRPMZ306%"
return

NotebookKPRPMZ307:
    Run, notepad.exe "%KPRPMZ307%"
return

NotebookKPRPMZ308:
    Run, notepad.exe "%KPRPMZ308%"
return

NotebookKPRPMZ309:
    Run, notepad.exe "%KPRPMZ309%"
return

NotebookKPRPMZ310:
    Run, notepad.exe "%KPRPMZ310%"
return

NotebookKPRPMZ311:
    Run, notepad.exe "%KPRPMZ311%"
return

NotebookKPRPMZ312:
    Run, notepad.exe "%KPRPMZ312%"
return

NotebookKPRPMZ313:
    Run, notepad.exe "%KPRPMZ313%"
return

NotebookKPRPMZ314:
    Run, notepad.exe "%KPRPMZ314%"
return

NotebookKPRPMZ315:
    Run, notepad.exe "%KPRPMZ315%"
return

NotebookKPRPMZ316:
    Run, notepad.exe "%KPRPMZ316%"
return

NotebookKPRPMZ317:
    Run, notepad.exe "%KPRPMZ317%"
return

NotebookKPRPMZ318:
    Run, notepad.exe "%KPRPMZ318%"
return

NotebookKPRPMZ319:
    Run, notepad.exe "%KPRPMZ319%"
return

NotebookKPRPMZ320:
    Run, notepad.exe "%KPRPMZ320%"
return

NotebookKPRPMZ321:
    Run, notepad.exe "%KPRPMZ321%"
return

NotebookKPRPMZ322:
    Run, notepad.exe "%KPRPMZ322%"
return

NotebookKPRPMZ323:
    Run, notepad.exe "%KPRPMZ323%"
return

NotebookKPRPMZ324:
    Run, notepad.exe "%KPRPMZ324%"
return

NotebookKPRPMZ325:
    Run, notepad.exe "%KPRPMZ325%"
return

NotebookKPRPMZ326:
    Run, notepad.exe "%KPRPMZ326%"
return

NotebookKPRPMZ327:
    Run, notepad.exe "%KPRPMZ327%"
return

NotebookKPRPMZ328:
    Run, notepad.exe "%KPRPMZ328%"
return

NotebookKPRPMZ329:
    Run, notepad.exe "%KPRPMZ329%"
return

NotebookKPRPMZ330:
    Run, notepad.exe "%KPRPMZ330%"
return

NotebookKPRPMZ331:
    Run, notepad.exe "%KPRPMZ331%"
return

NotebookKPRPMZ332:
    Run, notepad.exe "%KPRPMZ332%"
return

NotebookKPRPMZ333:
    Run, notepad.exe "%KPRPMZ333%"
return

NotebookKPRPMZ334:
    Run, notepad.exe "%KPRPMZ334%"
return

NotebookKPRPMZ335:
    Run, notepad.exe "%KPRPMZ335%"
return

NotebookKPRPMZ336:
    Run, notepad.exe "%KPRPMZ336%"
return

NotebookKPRPMZ337:
    Run, notepad.exe "%KPRPMZ337%"
return

NotebookKPRPMZ338:
    Run, notepad.exe "%KPRPMZ338%"
return

NotebookKPRPMZ339:
    Run, notepad.exe "%KPRPMZ339%"
return

NotebookKPRPMZ340:
    Run, notepad.exe "%KPRPMZ340%"
return

NotebookKPRPMZ341:
    Run, notepad.exe "%KPRPMZ341%"
return

NotebookKPRPMZ342:
    Run, notepad.exe "%KPRPMZ342%"
return

NotebookKPRPMZ343:
    Run, notepad.exe "%KPRPMZ343%"
return

NotebookKPRPMZ344:
    Run, notepad.exe "%KPRPMZ344%"
return

NotebookKPRPMZ345:
    Run, notepad.exe "%KPRPMZ345%"
return

NotebookKPRPMZ346:
    Run, notepad.exe "%KPRPMZ346%"
return

NotebookKPRPMZ347:
    Run, notepad.exe "%KPRPMZ347%"
return

NotebookKPRPMZ348:
    Run, notepad.exe "%KPRPMZ348%"
return

NotebookKPRPMZ349:
    Run, notepad.exe "%KPRPMZ349%"
return

NotebookKPRPMZ350:
    Run, notepad.exe "%KPRPMZ350%"
return

NotebookKPRPMZ351:
    Run, notepad.exe "%KPRPMZ351%"
return

NotebookKPRPMZ352:
    Run, notepad.exe "%KPRPMZ352%"
return

NotebookKPRPMZ353:
    Run, notepad.exe "%KPRPMZ353%"
return

NotebookKPRPMZ354:
    Run, notepad.exe "%KPRPMZ354%"
return

NotebookKPRPMZ355:
    Run, notepad.exe "%KPRPMZ355%"
return

NotebookKPRPMZ356:
    Run, notepad.exe "%KPRPMZ356%"
return

NotebookKPRPMZ357:
    Run, notepad.exe "%KPRPMZ357%"
return

NotebookKPRPMZ358:
    Run, notepad.exe "%KPRPMZ358%"
return

NotebookKPRPMZ359:
    Run, notepad.exe "%KPRPMZ359%"
return

NotebookKPRPMZ360:
    Run, notepad.exe "%KPRPMZ360%"
return

NotebookKPRPMZ361:
    Run, notepad.exe "%KPRPMZ361%"
return

NotebookKPRPMZ362:
    Run, notepad.exe "%KPRPMZ362%"
return

NotebookKPRPMZ363:
    Run, notepad.exe "%KPRPMZ363%"
return

NotebookKPRPMZ364:
    Run, notepad.exe "%KPRPMZ364%"
return

NotebookKPRPMZ365:
    Run, notepad.exe "%KPRPMZ365%"
return

NotebookKPRPMZ366:
    Run, notepad.exe "%KPRPMZ366%"
return

NotebookKPRPMZ367:
    Run, notepad.exe "%KPRPMZ367%"
return

NotebookKPRPMZ368:
    Run, notepad.exe "%KPRPMZ368%"
return

NotebookKPRPMZ369:
    Run, notepad.exe "%KPRPMZ369%"
return

NotebookKPRPMZ370:
    Run, notepad.exe "%KPRPMZ370%"
return

NotebookKPRPMZ371:
    Run, notepad.exe "%KPRPMZ371%"
return

NotebookKPRPMZ372:
    Run, notepad.exe "%KPRPMZ372%"
return

NotebookKPRPMZ373:
    Run, notepad.exe "%KPRPMZ373%"
return

NotebookKPRPMZ374:
    Run, notepad.exe "%KPRPMZ374%"
return

NotebookKPRPMZ375:
    Run, notepad.exe "%KPRPMZ375%"
return

NotebookKPRPMZ376:
    Run, notepad.exe "%KPRPMZ376%"
return

NotebookKPRPMZ377:
    Run, notepad.exe "%KPRPMZ377%"
return

NotebookKPRPMZ378:
    Run, notepad.exe "%KPRPMZ378%"
return

NotebookKPRPMZ379:
    Run, notepad.exe "%KPRPMZ379%"
return

NotebookKPRPMZ380:
    Run, notepad.exe "%KPRPMZ380%"
return

NotebookKPRPMZ381:
    Run, notepad.exe "%KPRPMZ381%"
return

NotebookKPRPMZ382:
    Run, notepad.exe "%KPRPMZ382%"
return

NotebookKPRPMZ383:
    Run, notepad.exe "%KPRPMZ383%"
return

NotebookKPRPMZ384:
    Run, notepad.exe "%KPRPMZ384%"
return

NotebookKPRPMZ385:
    Run, notepad.exe "%KPRPMZ385%"
return

NotebookKPRPMZ386:
    Run, notepad.exe "%KPRPMZ386%"
return

NotebookKPRPMZ387:
    Run, notepad.exe "%KPRPMZ387%"
return

NotebookKPRPMZ388:
    Run, notepad.exe "%KPRPMZ388%"
return

NotebookKPRPMZ389:
    Run, notepad.exe "%KPRPMZ389%"
return

NotebookKPRPMZ390:
    Run, notepad.exe "%KPRPMZ390%"
return

NotebookKPRPMZ391:
    Run, notepad.exe "%KPRPMZ391%"
return

NotebookKPRPMZ392:
    Run, notepad.exe "%KPRPMZ392%"
return

NotebookKPRPMZ393:
    Run, notepad.exe "%KPRPMZ393%"
return

NotebookKPRPMZ394:
    Run, notepad.exe "%KPRPMZ394%"
return

NotebookKPRPMZ395:
    Run, notepad.exe "%KPRPMZ395%"
return

NotebookKPRPMZ396:
    Run, notepad.exe "%KPRPMZ396%"
return

NotebookKPRPMZ397:
    Run, notepad.exe "%KPRPMZ397%"
return

NotebookKPRPMZ398:
    Run, notepad.exe "%KPRPMZ398%"
return

NotebookKPRPMZ399:
    Run, notepad.exe "%KPRPMZ399%"
return

NotebookKPRPMZ400:
    Run, notepad.exe "%KPRPMZ400%"
return

NotebookKPRPMZ401:
    Run, notepad.exe "%KPRPMZ401%"
return

NotebookKPRPMZ402:
    Run, notepad.exe "%KPRPMZ402%"
return

NotebookKPRPMZ403:
    Run, notepad.exe "%KPRPMZ403%"
return

NotebookKPRPMZ404:
    Run, notepad.exe "%KPRPMZ404%"
return

NotebookKPRPMZ405:
    Run, notepad.exe "%KPRPMZ405%"
return

NotebookKPRPMZ406:
    Run, notepad.exe "%KPRPMZ406%"
return

NotebookKPRPMZ407:
    Run, notepad.exe "%KPRPMZ407%"
return

NotebookKPRPMZ408:
    Run, notepad.exe "%KPRPMZ408%"
return

NotebookKPRPMZ409:
    Run, notepad.exe "%KPRPMZ409%"
return

NotebookKPRPMZ410:
    Run, notepad.exe "%KPRPMZ410%"
return

NotebookKPRPMZ411:
    Run, notepad.exe "%KPRPMZ411%"
return

NotebookKPRPMZ412:
    Run, notepad.exe "%KPRPMZ412%"
return

NotebookKPRPMZ413:
    Run, notepad.exe "%KPRPMZ413%"
return

NotebookKPRPMZ414:
    Run, notepad.exe "%KPRPMZ414%"
return

NotebookKPRPMZ415:
    Run, notepad.exe "%KPRPMZ415%"
return

NotebookKPRPMZ416:
    Run, notepad.exe "%KPRPMZ416%"
return

NotebookKPRPMZ417:
    Run, notepad.exe "%KPRPMZ417%"
return

NotebookKPRPMZ418:
    Run, notepad.exe "%KPRPMZ418%"
return

NotebookKPRPMZ419:
    Run, notepad.exe "%KPRPMZ419%"
return

NotebookKPRPMZ420:
    Run, notepad.exe "%KPRPMZ420%"
return

NotebookKPRPMZ421:
    Run, notepad.exe "%KPRPMZ421%"
return

NotebookKPRPMZ422:
    Run, notepad.exe "%KPRPMZ422%"
return

NotebookKPRPMZ423:
    Run, notepad.exe "%KPRPMZ423%"
return

NotebookKPRPMZ424:
    Run, notepad.exe "%KPRPMZ424%"
return

NotebookKPRPMZ425:
    Run, notepad.exe "%KPRPMZ425%"
return

NotebookKPRPMZ426:
    Run, notepad.exe "%KPRPMZ426%"
return

NotebookKPRPMZ427:
    Run, notepad.exe "%KPRPMZ427%"
return

NotebookKPRPMZ428:
    Run, notepad.exe "%KPRPMZ428%"
return

NotebookKPRPMZ429:
    Run, notepad.exe "%KPRPMZ429%"
return

NotebookKPRPMZ430:
    Run, notepad.exe "%KPRPMZ430%"
return

NotebookKPRPMZ431:
    Run, notepad.exe "%KPRPMZ431%"
return

NotebookKPRPMZ432:
    Run, notepad.exe "%KPRPMZ432%"
return

NotebookKPRPMZ433:
    Run, notepad.exe "%KPRPMZ433%"
return

NotebookKPRPMZ434:
    Run, notepad.exe "%KPRPMZ434%"
return

NotebookKPRPMZ435:
    Run, notepad.exe "%KPRPMZ435%"
return

NotebookKPRPMZ436:
    Run, notepad.exe "%KPRPMZ436%"
return

NotebookKPRPMZ437:
    Run, notepad.exe "%KPRPMZ437%"
return

NotebookKPRPMZ438:
    Run, notepad.exe "%KPRPMZ438%"
return

NotebookKPRPMZ439:
    Run, notepad.exe "%KPRPMZ439%"
return

NotebookKPRPMZ440:
    Run, notepad.exe "%KPRPMZ440%"
return

NotebookKPRPMZ441:
    Run, notepad.exe "%KPRPMZ441%"
return

NotebookKPRPMZ442:
    Run, notepad.exe "%KPRPMZ442%"
return

NotebookKPRPMZ443:
    Run, notepad.exe "%KPRPMZ443%"
return

NotebookKPRPMZ444:
    Run, notepad.exe "%KPRPMZ444%"
return

NotebookKPRPMZ445:
    Run, notepad.exe "%KPRPMZ445%"
return

NotebookKPRPMZ446:
    Run, notepad.exe "%KPRPMZ446%"
return

NotebookKPRPMZ447:
    Run, notepad.exe "%KPRPMZ447%"
return

NotebookKPRPMZ448:
    Run, notepad.exe "%KPRPMZ448%"
return

NotebookKPRPMZ449:
    Run, notepad.exe "%KPRPMZ449%"
return

NotebookKPRPMZ450:
    Run, notepad.exe "%KPRPMZ450%"
return

NotebookKPRPMZ451:
    Run, notepad.exe "%KPRPMZ451%"
return

NotebookKPRPMZ452:
    Run, notepad.exe "%KPRPMZ452%"
return

NotebookKPRPMZ453:
    Run, notepad.exe "%KPRPMZ453%"
return

NotebookKPRPMZ454:
    Run, notepad.exe "%KPRPMZ454%"
return

NotebookKPRPMZ455:
    Run, notepad.exe "%KPRPMZ455%"
return

NotebookKPRPMZ456:
    Run, notepad.exe "%KPRPMZ456%"
return

NotebookKPRPMZ457:
    Run, notepad.exe "%KPRPMZ457%"
return

NotebookKPRPMZ458:
    Run, notepad.exe "%KPRPMZ458%"
return

NotebookKPRPMZ459:
    Run, notepad.exe "%KPRPMZ459%"
return

NotebookKPRPMZ460:
    Run, notepad.exe "%KPRPMZ460%"
return

NotebookKPRPMZ461:
    Run, notepad.exe "%KPRPMZ461%"
return

NotebookKPRPMZ462:
    Run, notepad.exe "%KPRPMZ462%"
return

NotebookKPRPMZ463:
    Run, notepad.exe "%KPRPMZ463%"
return

NotebookKPRPMZ464:
    Run, notepad.exe "%KPRPMZ464%"
return

NotebookKPRPMZ465:
    Run, notepad.exe "%KPRPMZ465%"
return

NotebookKPRPMZ466:
    Run, notepad.exe "%KPRPMZ466%"
return

NotebookKPRPMZ467:
    Run, notepad.exe "%KPRPMZ467%"
return

NotebookKPRPMZ468:
    Run, notepad.exe "%KPRPMZ468%"
return

NotebookKPRPMZ469:
    Run, notepad.exe "%KPRPMZ469%"
return

NotebookKPRPMZ470:
    Run, notepad.exe "%KPRPMZ470%"
return

NotebookKPRPMZ471:
    Run, notepad.exe "%KPRPMZ471%"
return

NotebookKPRPMZ472:
    Run, notepad.exe "%KPRPMZ472%"
return

NotebookKPRPMZ473:
    Run, notepad.exe "%KPRPMZ473%"
return

NotebookKPRPMZ474:
    Run, notepad.exe "%KPRPMZ474%"
return

NotebookKPRPMZ475:
    Run, notepad.exe "%KPRPMZ475%"
return

NotebookKPRPMZ476:
    Run, notepad.exe "%KPRPMZ476%"
return

NotebookKPRPMZ477:
    Run, notepad.exe "%KPRPMZ477%"
return

NotebookKPRPMZ478:
    Run, notepad.exe "%KPRPMZ478%"
return

NotebookKPRPMZ479:
    Run, notepad.exe "%KPRPMZ479%"
return

NotebookKPRPMZ480:
    Run, notepad.exe "%KPRPMZ480%"
return

NotebookKPRPMZ481:
    Run, notepad.exe "%KPRPMZ481%"
return

NotebookKPRPMZ482:
    Run, notepad.exe "%KPRPMZ482%"
return

NotebookKPRPMZ483:
    Run, notepad.exe "%KPRPMZ483%"
return

NotebookKPRPMZ484:
    Run, notepad.exe "%KPRPMZ484%"
return

NotebookKPRPMZ485:
    Run, notepad.exe "%KPRPMZ485%"
return

NotebookKPRPMZ486:
    Run, notepad.exe "%KPRPMZ486%"
return

NotebookKPRPMZ487:
    Run, notepad.exe "%KPRPMZ487%"
return

NotebookKPRPMZ488:
    Run, notepad.exe "%KPRPMZ488%"
return

NotebookKPRPMZ489:
    Run, notepad.exe "%KPRPMZ489%"
return

NotebookKPRPMZ490:
    Run, notepad.exe "%KPRPMZ490%"
return

NotebookKPRPMZ491:
    Run, notepad.exe "%KPRPMZ491%"
return

NotebookKPRPMZ492:
    Run, notepad.exe "%KPRPMZ492%"
return

NotebookKPRPMZ493:
    Run, notepad.exe "%KPRPMZ493%"
return

NotebookKPRPMZ494:
    Run, notepad.exe "%KPRPMZ494%"
return

NotebookKPRPMZ495:
    Run, notepad.exe "%KPRPMZ495%"
return

NotebookKPRPMZ496:
    Run, notepad.exe "%KPRPMZ496%"
return

NotebookKPRPMZ497:
    Run, notepad.exe "%KPRPMZ497%"
return

NotebookKPRPMZ498:
    Run, notepad.exe "%KPRPMZ498%"
return

NotebookKPRPMZ499:
    Run, notepad.exe "%KPRPMZ499%"
return

NotebookKPRPMZ500:
    Run, notepad.exe "%KPRPMZ500%"
return

NotebookKPRPMZ601:
    Run, notepad.exe "%KPRPMZ601%"
return

NotebookKPRPMZ602:
    Run, notepad.exe "%KPRPMZ602%"
return

NotebookKPRPMZ603:
    Run, notepad.exe "%KPRPMZ603%"
return

NotebookKPRPMZ604:
    Run, notepad.exe "%KPRPMZ604%"
return

NotebookKPRPMZ605:
    Run, notepad.exe "%KPRPMZ605%"
return

NotebookKPRPMZ606:
    Run, notepad.exe "%KPRPMZ606%"
return

NotebookKPRPMZ607:
    Run, notepad.exe "%KPRPMZ607%"
return

NotebookKPRPMZ608:
    Run, notepad.exe "%KPRPMZ608%"
return

NotebookKPRPMZ609:
    Run, notepad.exe "%KPRPMZ609%"
return

NotebookKPRPMZ610:
    Run, notepad.exe "%KPRPMZ610%"
return

NotebookKPRPMZ611:
    Run, notepad.exe "%KPRPMZ611%"
return

NotebookKPRPMZ612:
    Run, notepad.exe "%KPRPMZ612%"
return

NotebookKPRPMZ613:
    Run, notepad.exe "%KPRPMZ613%"
return

NotebookKPRPMZ614:
    Run, notepad.exe "%KPRPMZ614%"
return

NotebookKPRPMZ615:
    Run, notepad.exe "%KPRPMZ615%"
return

NotebookKPRPMZ616:
    Run, notepad.exe "%KPRPMZ616%"
return

NotebookKPRPMZ617:
    Run, notepad.exe "%KPRPMZ617%"
return

NotebookKPRPMZ618:
    Run, notepad.exe "%KPRPMZ618%"
return

NotebookKPRPMZ619:
    Run, notepad.exe "%KPRPMZ619%"
return

NotebookKPRPMZ620:
    Run, notepad.exe "%KPRPMZ620%"
return

NotebookKPRPMZ621:
    Run, notepad.exe "%KPRPMZ621%"
return

NotebookKPRPMZ622:
    Run, notepad.exe "%KPRPMZ622%"
return

NotebookKPRPMZ623:
    Run, notepad.exe "%KPRPMZ623%"
return

NotebookKPRPMZ624:
    Run, notepad.exe "%KPRPMZ624%"
return

NotebookKPRPMZ625:
    Run, notepad.exe "%KPRPMZ625%"
return

NotebookKPRPMZ626:
    Run, notepad.exe "%KPRPMZ626%"
return

NotebookKPRPMZ627:
    Run, notepad.exe "%KPRPMZ627%"
return

NotebookKPRPMZ628:
    Run, notepad.exe "%KPRPMZ628%"
return

NotebookKPRPMZ629:
    Run, notepad.exe "%KPRPMZ629%"
return

NotebookKPRPMZ630:
    Run, notepad.exe "%KPRPMZ630%"
return

NotebookKPRPMZ631:
    Run, notepad.exe "%KPRPMZ631%"
return

NotebookKPRPMZ632:
    Run, notepad.exe "%KPRPMZ632%"
return

NotebookKPRPMZ633:
    Run, notepad.exe "%KPRPMZ633%"
return

NotebookKPRPMZ634:
    Run, notepad.exe "%KPRPMZ634%"
return

NotebookKPRPMZ635:
    Run, notepad.exe "%KPRPMZ635%"
return

NotebookKPRPMZ636:
    Run, notepad.exe "%KPRPMZ636%"
return

NotebookKPRPMZ637:
    Run, notepad.exe "%KPRPMZ637%"
return

NotebookKPRPMZ638:
    Run, notepad.exe "%KPRPMZ638%"
return

NotebookKPRPMZ639:
    Run, notepad.exe "%KPRPMZ639%"
return

NotebookKPRPMZ640:
    Run, notepad.exe "%KPRPMZ640%"
return

NotebookKPRPMZ641:
    Run, notepad.exe "%KPRPMZ641%"
return

NotebookKPRPMZ642:
    Run, notepad.exe "%KPRPMZ642%"
return

NotebookKPRPMZ643:
    Run, notepad.exe "%KPRPMZ643%"
return

NotebookKPRPMZ644:
    Run, notepad.exe "%KPRPMZ644%"
return

NotebookKPRPMZ645:
    Run, notepad.exe "%KPRPMZ645%"
return

NotebookKPRPMZ646:
    Run, notepad.exe "%KPRPMZ646%"
return

NotebookKPRPMZ647:
    Run, notepad.exe "%KPRPMZ647%"
return

NotebookKPRPMZ648:
    Run, notepad.exe "%KPRPMZ648%"
return

NotebookKPRPMZ649:
    Run, notepad.exe "%KPRPMZ649%"
return

NotebookKPRPMZ650:
    Run, notepad.exe "%KPRPMZ650%"
return

NotebookKPRPMZ651:
    Run, notepad.exe "%KPRPMZ651%"
return

NotebookKPRPMZ652:
    Run, notepad.exe "%KPRPMZ652%"
return

NotebookKPRPMZ653:
    Run, notepad.exe "%KPRPMZ653%"
return

NotebookKPRPMZ654:
    Run, notepad.exe "%KPRPMZ654%"
return

NotebookKPRPMZ655:
    Run, notepad.exe "%KPRPMZ655%"
return

NotebookKPRPMZ656:
    Run, notepad.exe "%KPRPMZ656%"
return

NotebookKPRPMZ657:
    Run, notepad.exe "%KPRPMZ657%"
return

NotebookKPRPMZ658:
    Run, notepad.exe "%KPRPMZ658%"
return

NotebookKPRPMZ659:
    Run, notepad.exe "%KPRPMZ659%"
return

NotebookKPRPMZ660:
    Run, notepad.exe "%KPRPMZ660%"
return

NotebookKPRPMZ661:
    Run, notepad.exe "%KPRPMZ661%"
return

NotebookKPRPMZ662:
    Run, notepad.exe "%KPRPMZ662%"
return

NotebookKPRPMZ663:
    Run, notepad.exe "%KPRPMZ663%"
return

NotebookKPRPMZ664:
    Run, notepad.exe "%KPRPMZ664%"
return

NotebookKPRPMZ665:
    Run, notepad.exe "%KPRPMZ665%"
return

NotebookKPRPMZ666:
    Run, notepad.exe "%KPRPMZ666%"
return

NotebookKPRPMZ667:
    Run, notepad.exe "%KPRPMZ667%"
return

NotebookKPRPMZ668:
    Run, notepad.exe "%KPRPMZ668%"
return

NotebookKPRPMZ669:
    Run, notepad.exe "%KPRPMZ669%"
return

NotebookKPRPMZ670:
    Run, notepad.exe "%KPRPMZ670%"
return

NotebookKPRPMZ671:
    Run, notepad.exe "%KPRPMZ671%"
return

NotebookKPRPMZ672:
    Run, notepad.exe "%KPRPMZ672%"
return

NotebookKPRPMZ673:
    Run, notepad.exe "%KPRPMZ673%"
return

NotebookKPRPMZ674:
    Run, notepad.exe "%KPRPMZ674%"
return

NotebookKPRPMZ675:
    Run, notepad.exe "%KPRPMZ675%"
return

NotebookKPRPMZ676:
    Run, notepad.exe "%KPRPMZ676%"
return

NotebookKPRPMZ677:
    Run, notepad.exe "%KPRPMZ677%"
return

NotebookKPRPMZ678:
    Run, notepad.exe "%KPRPMZ678%"
return

NotebookKPRPMZ679:
    Run, notepad.exe "%KPRPMZ679%"
return

NotebookKPRPMZ680:
    Run, notepad.exe "%KPRPMZ680%"
return

NotebookKPRPMZ681:
    Run, notepad.exe "%KPRPMZ681%"
return

NotebookKPRPMZ682:
    Run, notepad.exe "%KPRPMZ682%"
return

NotebookKPRPMZ683:
    Run, notepad.exe "%KPRPMZ683%"
return

NotebookKPRPMZ684:
    Run, notepad.exe "%KPRPMZ684%"
return

NotebookKPRPMZ685:
    Run, notepad.exe "%KPRPMZ685%"
return

NotebookKPRPMZ686:
    Run, notepad.exe "%KPRPMZ686%"
return

NotebookKPRPMZ687:
    Run, notepad.exe "%KPRPMZ687%"
return

NotebookKPRPMZ688:
    Run, notepad.exe "%KPRPMZ688%"
return

NotebookKPRPMZ689:
    Run, notepad.exe "%KPRPMZ689%"
return

NotebookKPRPMZ690:
    Run, notepad.exe "%KPRPMZ690%"
return

NotebookKPRPMZ691:
    Run, notepad.exe "%KPRPMZ691%"
return

NotebookKPRPMZ692:
    Run, notepad.exe "%KPRPMZ692%"
return

NotebookKPRPMZ693:
    Run, notepad.exe "%KPRPMZ693%"
return

NotebookKPRPMZ694:
    Run, notepad.exe "%KPRPMZ694%"
return

NotebookKPRPMZ695:
    Run, notepad.exe "%KPRPMZ695%"
return

NotebookKPRPMZ696:
    Run, notepad.exe "%KPRPMZ696%"
return

NotebookKPRPMZ697:
    Run, notepad.exe "%KPRPMZ697%"
return

NotebookKPRPMZ698:
    Run, notepad.exe "%KPRPMZ698%"
return

NotebookKPRPMZ699:
    Run, notepad.exe "%KPRPMZ699%"
return

NotebookKPRPMZ700:
    Run, notepad.exe "%KPRPMZ700%"
return


SelectKPRPMZ1:
    SelectKPRPMZ(1)
return
SelectKPRPMZ2:
    SelectKPRPMZ(2)
return
SelectKPRPMZ3:
    SelectKPRPMZ(3)
return
SelectKPRPMZ4:
    SelectKPRPMZ(4)
return
SelectKPRPMZ5:
    SelectKPRPMZ(5)
return
SelectKPRPMZ6:
    SelectKPRPMZ(6)
return
SelectKPRPMZ7:
    SelectKPRPMZ(7)
return
SelectKPRPMZ8:
    SelectKPRPMZ(8)
return
SelectKPRPMZ9:
    SelectKPRPMZ(9)
return
SelectKPRPMZ10:
    SelectKPRPMZ(10)
return
SelectKPRPMZ11:
    SelectKPRPMZ(11)
return
SelectKPRPMZ12:
    SelectKPRPMZ(12)
return
SelectKPRPMZ13:
    SelectKPRPMZ(13)
return
SelectKPRPMZ14:
    SelectKPRPMZ(14)
return
SelectKPRPMZ15:
    SelectKPRPMZ(15)
return
SelectKPRPMZ16:
    SelectKPRPMZ(16)
return
SelectKPRPMZ17:
    SelectKPRPMZ(17)
return
SelectKPRPMZ18:
    SelectKPRPMZ(18)
return
SelectKPRPMZ19:
    SelectKPRPMZ(19)
return
SelectKPRPMZ20:
    SelectKPRPMZ(20)
return
SelectKPRPMZ21:
    SelectKPRPMZ(21)
return
SelectKPRPMZ22:
    SelectKPRPMZ(22)
return
SelectKPRPMZ23:
    SelectKPRPMZ(23)
return
SelectKPRPMZ24:
    SelectKPRPMZ(24)
return
SelectKPRPMZ25:
    SelectKPRPMZ(25)
return
SelectKPRPMZ26:
    SelectKPRPMZ(26)
return
SelectKPRPMZ27:
    SelectKPRPMZ(27)
return
SelectKPRPMZ28:
    SelectKPRPMZ(28)
return
SelectKPRPMZ29:
    SelectKPRPMZ(29)
return
SelectKPRPMZ30:
    SelectKPRPMZ(30)
return
SelectKPRPMZ31:
    SelectKPRPMZ(31)
return
SelectKPRPMZ32:
    SelectKPRPMZ(32)
return
SelectKPRPMZ33:
    SelectKPRPMZ(33)
return
SelectKPRPMZ34:
    SelectKPRPMZ(34)
return
SelectKPRPMZ35:
    SelectKPRPMZ(35)
return
SelectKPRPMZ36:
    SelectKPRPMZ(36)
return
SelectKPRPMZ37:
    SelectKPRPMZ(37)
return
SelectKPRPMZ38:
    SelectKPRPMZ(38)
return
SelectKPRPMZ39:
    SelectKPRPMZ(39)
return
SelectKPRPMZ40:
    SelectKPRPMZ(40)
return
SelectKPRPMZ41:
    SelectKPRPMZ(41)
return
SelectKPRPMZ42:
    SelectKPRPMZ(42)
return
SelectKPRPMZ43:
    SelectKPRPMZ(43)
return
SelectKPRPMZ44:
    SelectKPRPMZ(44)
return
SelectKPRPMZ45:
    SelectKPRPMZ(45)
return
SelectKPRPMZ46:
    SelectKPRPMZ(46)
return
SelectKPRPMZ47:
    SelectKPRPMZ(47)
return
SelectKPRPMZ48:
    SelectKPRPMZ(48)
return
SelectKPRPMZ49:
    SelectKPRPMZ(49)
return
SelectKPRPMZ50:
    SelectKPRPMZ(50)
return
SelectKPRPMZ51:
    SelectKPRPMZ(51)
return
SelectKPRPMZ52:
    SelectKPRPMZ(52)
return
SelectKPRPMZ53:
    SelectKPRPMZ(53)
return
SelectKPRPMZ54:
    SelectKPRPMZ(54)
return
SelectKPRPMZ55:
    SelectKPRPMZ(55)
return
SelectKPRPMZ56:
    SelectKPRPMZ(56)
return
SelectKPRPMZ57:
    SelectKPRPMZ(57)
return
SelectKPRPMZ58:
    SelectKPRPMZ(58)
return
SelectKPRPMZ59:
    SelectKPRPMZ(59)
return
SelectKPRPMZ60:
    SelectKPRPMZ(60)
return
SelectKPRPMZ61:
    SelectKPRPMZ(61)
return
SelectKPRPMZ62:
    SelectKPRPMZ(62)
return
SelectKPRPMZ63:
    SelectKPRPMZ(63)
return
SelectKPRPMZ64:
    SelectKPRPMZ(64)
return
SelectKPRPMZ65:
    SelectKPRPMZ(65)
return
SelectKPRPMZ66:
    SelectKPRPMZ(66)
return
SelectKPRPMZ67:
    SelectKPRPMZ(67)
return
SelectKPRPMZ68:
    SelectKPRPMZ(68)
return
SelectKPRPMZ69:
    SelectKPRPMZ(69)
return
SelectKPRPMZ70:
    SelectKPRPMZ(70)
return
SelectKPRPMZ71:
    SelectKPRPMZ(71)
return
SelectKPRPMZ72:
    SelectKPRPMZ(72)
return
SelectKPRPMZ73:
    SelectKPRPMZ(73)
return
SelectKPRPMZ74:
    SelectKPRPMZ(74)
return
SelectKPRPMZ75:
    SelectKPRPMZ(75)
return
SelectKPRPMZ76:
    SelectKPRPMZ(76)
return
SelectKPRPMZ77:
    SelectKPRPMZ(77)
return
SelectKPRPMZ78:
    SelectKPRPMZ(78)
return
SelectKPRPMZ79:
    SelectKPRPMZ(79)
return
SelectKPRPMZ80:
    SelectKPRPMZ(80)
return
SelectKPRPMZ81:
    SelectKPRPMZ(81)
return
SelectKPRPMZ82:
    SelectKPRPMZ(82)
return
SelectKPRPMZ83:
    SelectKPRPMZ(83)
return
SelectKPRPMZ84:
    SelectKPRPMZ(84)
return
SelectKPRPMZ85:
    SelectKPRPMZ(85)
return
SelectKPRPMZ86:
    SelectKPRPMZ(86)
return
SelectKPRPMZ87:
    SelectKPRPMZ(87)
return
SelectKPRPMZ88:
    SelectKPRPMZ(88)
return
SelectKPRPMZ89:
    SelectKPRPMZ(89)
return
SelectKPRPMZ90:
    SelectKPRPMZ(90)
return
SelectKPRPMZ91:
    SelectKPRPMZ(91)
return
SelectKPRPMZ92:
    SelectKPRPMZ(92)
return
SelectKPRPMZ93:
    SelectKPRPMZ(93)
return
SelectKPRPMZ94:
    SelectKPRPMZ(94)
return
SelectKPRPMZ95:
    SelectKPRPMZ(95)
return
SelectKPRPMZ96:
    SelectKPRPMZ(96)
return

SelectKPRPMZ97:
    SelectKPRPMZ(97)
return

SelectKPRPMZ98:
    SelectKPRPMZ(98)
return

SelectKPRPMZ99:
    SelectKPRPMZ(99)
return

SelectKPRPMZ100:
    SelectKPRPMZ(100)
return

SelectKPRPMZ101:
    SelectKPRPMZ(101)
return

SelectKPRPMZ102:
    SelectKPRPMZ(102)
return

SelectKPRPMZ103:
    SelectKPRPMZ(103)
return

SelectKPRPMZ104:
    SelectKPRPMZ(104)
return

SelectKPRPMZ105:
    SelectKPRPMZ(105)
return

SelectKPRPMZ106:
    SelectKPRPMZ(106)
return

SelectKPRPMZ107:
    SelectKPRPMZ(107)
return

SelectKPRPMZ108:
    SelectKPRPMZ(108)
return

SelectKPRPMZ109:
    SelectKPRPMZ(109)
return

SelectKPRPMZ110:
    SelectKPRPMZ(110)
return

SelectKPRPMZ111:
    SelectKPRPMZ(111)
return

SelectKPRPMZ112:
    SelectKPRPMZ(112)
return

SelectKPRPMZ113:
    SelectKPRPMZ(113)
return

SelectKPRPMZ114:
    SelectKPRPMZ(114)
return

SelectKPRPMZ115:
    SelectKPRPMZ(115)
return

SelectKPRPMZ116:
    SelectKPRPMZ(116)
return

SelectKPRPMZ117:
    SelectKPRPMZ(117)
return

SelectKPRPMZ118:
    SelectKPRPMZ(118)
return

SelectKPRPMZ119:
    SelectKPRPMZ(119)
return

SelectKPRPMZ120:
    SelectKPRPMZ(120)
return

SelectKPRPMZ121:
    SelectKPRPMZ(121)
return

SelectKPRPMZ122:
    SelectKPRPMZ(122)
return

SelectKPRPMZ123:
    SelectKPRPMZ(123)
return

SelectKPRPMZ124:
    SelectKPRPMZ(124)
return

SelectKPRPMZ125:
    SelectKPRPMZ(125)
return

SelectKPRPMZ126:
    SelectKPRPMZ(126)
return

SelectKPRPMZ127:
    SelectKPRPMZ(127)
return

SelectKPRPMZ128:
    SelectKPRPMZ(128)
return

SelectKPRPMZ129:
    SelectKPRPMZ(129)
return

SelectKPRPMZ130:
    SelectKPRPMZ(130)
return

SelectKPRPMZ131:
    SelectKPRPMZ(131)
return

SelectKPRPMZ132:
    SelectKPRPMZ(132)
return

SelectKPRPMZ133:
    SelectKPRPMZ(133)
return

SelectKPRPMZ134:
    SelectKPRPMZ(134)
return

SelectKPRPMZ135:
    SelectKPRPMZ(135)
return

SelectKPRPMZ136:
    SelectKPRPMZ(136)
return

SelectKPRPMZ137:
    SelectKPRPMZ(137)
return

SelectKPRPMZ138:
    SelectKPRPMZ(138)
return

SelectKPRPMZ139:
    SelectKPRPMZ(139)
return

SelectKPRPMZ140:
    SelectKPRPMZ(140)
return

SelectKPRPMZ141:
    SelectKPRPMZ(141)
return

SelectKPRPMZ142:
    SelectKPRPMZ(142)
return

SelectKPRPMZ143:
    SelectKPRPMZ(143)
return

SelectKPRPMZ144:
    SelectKPRPMZ(144)
return

SelectKPRPMZ145:
    SelectKPRPMZ(145)
return

SelectKPRPMZ146:
    SelectKPRPMZ(146)
return

SelectKPRPMZ147:
    SelectKPRPMZ(147)
return

SelectKPRPMZ148:
    SelectKPRPMZ(148)
return

SelectKPRPMZ149:
    SelectKPRPMZ(149)
return

SelectKPRPMZ150:
    SelectKPRPMZ(150)
return

SelectKPRPMZ151:
    SelectKPRPMZ(151)
return

SelectKPRPMZ152:
    SelectKPRPMZ(152)
return

SelectKPRPMZ153:
    SelectKPRPMZ(153)
return

SelectKPRPMZ154:
    SelectKPRPMZ(154)
return

SelectKPRPMZ155:
    SelectKPRPMZ(155)
return

SelectKPRPMZ156:
    SelectKPRPMZ(156)
return

SelectKPRPMZ157:
    SelectKPRPMZ(157)
return

SelectKPRPMZ158:
    SelectKPRPMZ(158)
return

SelectKPRPMZ159:
    SelectKPRPMZ(159)
return

SelectKPRPMZ160:
    SelectKPRPMZ(160)
return

SelectKPRPMZ161:
    SelectKPRPMZ(161)
return

SelectKPRPMZ162:
    SelectKPRPMZ(162)
return

SelectKPRPMZ163:
    SelectKPRPMZ(163)
return

SelectKPRPMZ164:
    SelectKPRPMZ(164)
return

SelectKPRPMZ165:
    SelectKPRPMZ(165)
return

SelectKPRPMZ166:
    SelectKPRPMZ(166)
return

SelectKPRPMZ167:
    SelectKPRPMZ(167)
return

SelectKPRPMZ168:
    SelectKPRPMZ(168)
return

SelectKPRPMZ169:
    SelectKPRPMZ(169)
return

SelectKPRPMZ170:
    SelectKPRPMZ(170)
return

SelectKPRPMZ171:
    SelectKPRPMZ(171)
return

SelectKPRPMZ172:
    SelectKPRPMZ(172)
return

SelectKPRPMZ173:
    SelectKPRPMZ(173)
return

SelectKPRPMZ174:
    SelectKPRPMZ(174)
return

SelectKPRPMZ175:
    SelectKPRPMZ(175)
return

SelectKPRPMZ176:
    SelectKPRPMZ(176)
return

SelectKPRPMZ177:
    SelectKPRPMZ(177)
return

SelectKPRPMZ178:
    SelectKPRPMZ(178)
return

SelectKPRPMZ179:
    SelectKPRPMZ(179)
return

SelectKPRPMZ180:
    SelectKPRPMZ(180)
return

SelectKPRPMZ181:
    SelectKPRPMZ(181)
return

SelectKPRPMZ182:
    SelectKPRPMZ(182)
return

SelectKPRPMZ183:
    SelectKPRPMZ(183)
return

SelectKPRPMZ184:
    SelectKPRPMZ(184)
return

SelectKPRPMZ185:
    SelectKPRPMZ(185)
return

SelectKPRPMZ186:
    SelectKPRPMZ(186)
return

SelectKPRPMZ187:
    SelectKPRPMZ(187)
return

SelectKPRPMZ188:
    SelectKPRPMZ(188)
return

SelectKPRPMZ189:
    SelectKPRPMZ(189)
return

SelectKPRPMZ190:
    SelectKPRPMZ(190)
return

SelectKPRPMZ191:
    SelectKPRPMZ(191)
return

SelectKPRPMZ192:
    SelectKPRPMZ(192)
return

SelectKPRPMZ193:
    SelectKPRPMZ(193)
return

SelectKPRPMZ194:
    SelectKPRPMZ(194)
return

SelectKPRPMZ195:
    SelectKPRPMZ(195)
return

SelectKPRPMZ196:
    SelectKPRPMZ(196)
return

SelectKPRPMZ197:
    SelectKPRPMZ(197)
return

SelectKPRPMZ198:
    SelectKPRPMZ(198)
return

SelectKPRPMZ199:
    SelectKPRPMZ(199)
return

SelectKPRPMZ200:
    SelectKPRPMZ(200)
return

SelectKPRPMZ201:
    SelectKPRPMZ(201)
return

SelectKPRPMZ202:
    SelectKPRPMZ(202)
return

SelectKPRPMZ203:
    SelectKPRPMZ(203)
return

SelectKPRPMZ204:
    SelectKPRPMZ(204)
return

SelectKPRPMZ205:
    SelectKPRPMZ(205)
return

SelectKPRPMZ206:
    SelectKPRPMZ(206)
return

SelectKPRPMZ207:
    SelectKPRPMZ(207)
return

SelectKPRPMZ208:
    SelectKPRPMZ(208)
return

SelectKPRPMZ209:
    SelectKPRPMZ(209)
return

SelectKPRPMZ210:
    SelectKPRPMZ(210)
return

SelectKPRPMZ211:
    SelectKPRPMZ(211)
return

SelectKPRPMZ212:
    SelectKPRPMZ(212)
return

SelectKPRPMZ213:
    SelectKPRPMZ(213)
return

SelectKPRPMZ214:
    SelectKPRPMZ(214)
return

SelectKPRPMZ215:
    SelectKPRPMZ(215)
return

SelectKPRPMZ216:
    SelectKPRPMZ(216)
return

SelectKPRPMZ217:
    SelectKPRPMZ(217)
return

SelectKPRPMZ218:
    SelectKPRPMZ(218)
return

SelectKPRPMZ219:
    SelectKPRPMZ(219)
return

SelectKPRPMZ220:
    SelectKPRPMZ(220)
return

SelectKPRPMZ221:
    SelectKPRPMZ(221)
return

SelectKPRPMZ222:
    SelectKPRPMZ(222)
return

SelectKPRPMZ223:
    SelectKPRPMZ(223)
return

SelectKPRPMZ224:
    SelectKPRPMZ(224)
return

SelectKPRPMZ225:
    SelectKPRPMZ(225)
return

SelectKPRPMZ226:
    SelectKPRPMZ(226)
return

SelectKPRPMZ227:
    SelectKPRPMZ(227)
return

SelectKPRPMZ228:
    SelectKPRPMZ(228)
return

SelectKPRPMZ229:
    SelectKPRPMZ(229)
return

SelectKPRPMZ230:
    SelectKPRPMZ(230)
return

SelectKPRPMZ231:
    SelectKPRPMZ(231)
return

SelectKPRPMZ232:
    SelectKPRPMZ(232)
return

SelectKPRPMZ233:
    SelectKPRPMZ(233)
return

SelectKPRPMZ234:
    SelectKPRPMZ(234)
return

SelectKPRPMZ235:
    SelectKPRPMZ(235)
return

SelectKPRPMZ236:
    SelectKPRPMZ(236)
return

SelectKPRPMZ237:
    SelectKPRPMZ(237)
return

SelectKPRPMZ238:
    SelectKPRPMZ(238)
return

SelectKPRPMZ239:
    SelectKPRPMZ(239)
return

SelectKPRPMZ240:
    SelectKPRPMZ(240)
return

SelectKPRPMZ241:
    SelectKPRPMZ(241)
return

SelectKPRPMZ242:
    SelectKPRPMZ(242)
return

SelectKPRPMZ243:
    SelectKPRPMZ(243)
return

SelectKPRPMZ244:
    SelectKPRPMZ(244)
return

SelectKPRPMZ245:
    SelectKPRPMZ(245)
return

SelectKPRPMZ246:
    SelectKPRPMZ(246)
return

SelectKPRPMZ247:
    SelectKPRPMZ(247)
return

SelectKPRPMZ248:
    SelectKPRPMZ(248)
return

SelectKPRPMZ249:
    SelectKPRPMZ(249)
return

SelectKPRPMZ250:
    SelectKPRPMZ(250)
return

SelectKPRPMZ251:
    SelectKPRPMZ(251)
return

SelectKPRPMZ252:
    SelectKPRPMZ(252)
return

SelectKPRPMZ253:
    SelectKPRPMZ(253)
return

SelectKPRPMZ254:
    SelectKPRPMZ(254)
return

SelectKPRPMZ255:
    SelectKPRPMZ(255)
return

SelectKPRPMZ256:
    SelectKPRPMZ(256)
return

SelectKPRPMZ257:
    SelectKPRPMZ(257)
return

SelectKPRPMZ258:
    SelectKPRPMZ(258)
return

SelectKPRPMZ259:
    SelectKPRPMZ(259)
return

SelectKPRPMZ260:
    SelectKPRPMZ(260)
return

SelectKPRPMZ261:
    SelectKPRPMZ(261)
return

SelectKPRPMZ262:
    SelectKPRPMZ(262)
return

SelectKPRPMZ263:
    SelectKPRPMZ(263)
return

SelectKPRPMZ264:
    SelectKPRPMZ(264)
return

SelectKPRPMZ265:
    SelectKPRPMZ(265)
return

SelectKPRPMZ266:
    SelectKPRPMZ(266)
return

SelectKPRPMZ267:
    SelectKPRPMZ(267)
return

SelectKPRPMZ268:
    SelectKPRPMZ(268)
return

SelectKPRPMZ269:
    SelectKPRPMZ(269)
return

SelectKPRPMZ270:
    SelectKPRPMZ(270)
return

SelectKPRPMZ271:
    SelectKPRPMZ(271)
return

SelectKPRPMZ272:
    SelectKPRPMZ(272)
return

SelectKPRPMZ273:
    SelectKPRPMZ(273)
return

SelectKPRPMZ274:
    SelectKPRPMZ(274)
return

SelectKPRPMZ275:
    SelectKPRPMZ(275)
return

SelectKPRPMZ276:
    SelectKPRPMZ(276)
return

SelectKPRPMZ277:
    SelectKPRPMZ(277)
return

SelectKPRPMZ278:
    SelectKPRPMZ(278)
return

SelectKPRPMZ279:
    SelectKPRPMZ(279)
return

SelectKPRPMZ280:
    SelectKPRPMZ(280)
return

SelectKPRPMZ281:
    SelectKPRPMZ(281)
return

SelectKPRPMZ282:
    SelectKPRPMZ(282)
return

SelectKPRPMZ283:
    SelectKPRPMZ(283)
return

SelectKPRPMZ284:
    SelectKPRPMZ(284)
return

SelectKPRPMZ285:
    SelectKPRPMZ(285)
return

SelectKPRPMZ286:
    SelectKPRPMZ(286)
return

SelectKPRPMZ287:
    SelectKPRPMZ(287)
return

SelectKPRPMZ288:
    SelectKPRPMZ(288)
return

SelectKPRPMZ289:
    SelectKPRPMZ(289)
return

SelectKPRPMZ290:
    SelectKPRPMZ(290)
return

SelectKPRPMZ291:
    SelectKPRPMZ(291)
return

SelectKPRPMZ292:
    SelectKPRPMZ(292)
return

SelectKPRPMZ293:
    SelectKPRPMZ(293)
return

SelectKPRPMZ294:
    SelectKPRPMZ(294)
return

SelectKPRPMZ295:
    SelectKPRPMZ(295)
return

SelectKPRPMZ296:
    SelectKPRPMZ(296)
return

SelectKPRPMZ297:
    SelectKPRPMZ(297)
return

SelectKPRPMZ298:
    SelectKPRPMZ(298)
return

SelectKPRPMZ299:
    SelectKPRPMZ(299)
return

SelectKPRPMZ300:
    SelectKPRPMZ(300)
return

SelectKPRPMZ301:
    SelectKPRPMZ(301)
return

SelectKPRPMZ302:
    SelectKPRPMZ(302)
return

SelectKPRPMZ303:
    SelectKPRPMZ(303)
return

SelectKPRPMZ304:
    SelectKPRPMZ(304)
return

SelectKPRPMZ305:
    SelectKPRPMZ(305)
return

SelectKPRPMZ306:
    SelectKPRPMZ(306)
return

SelectKPRPMZ307:
    SelectKPRPMZ(307)
return

SelectKPRPMZ308:
    SelectKPRPMZ(308)
return

SelectKPRPMZ309:
    SelectKPRPMZ(309)
return

SelectKPRPMZ310:
    SelectKPRPMZ(310)
return

SelectKPRPMZ311:
    SelectKPRPMZ(311)
return

SelectKPRPMZ312:
    SelectKPRPMZ(312)
return

SelectKPRPMZ313:
    SelectKPRPMZ(313)
return

SelectKPRPMZ314:
    SelectKPRPMZ(314)
return

SelectKPRPMZ315:
    SelectKPRPMZ(315)
return

SelectKPRPMZ316:
    SelectKPRPMZ(316)
return

SelectKPRPMZ317:
    SelectKPRPMZ(317)
return

SelectKPRPMZ318:
    SelectKPRPMZ(318)
return

SelectKPRPMZ319:
    SelectKPRPMZ(319)
return

SelectKPRPMZ320:
    SelectKPRPMZ(320)
return

SelectKPRPMZ321:
    SelectKPRPMZ(321)
return

SelectKPRPMZ322:
    SelectKPRPMZ(322)
return

SelectKPRPMZ323:
    SelectKPRPMZ(323)
return

SelectKPRPMZ324:
    SelectKPRPMZ(324)
return

SelectKPRPMZ325:
    SelectKPRPMZ(325)
return

SelectKPRPMZ326:
    SelectKPRPMZ(326)
return

SelectKPRPMZ327:
    SelectKPRPMZ(327)
return

SelectKPRPMZ328:
    SelectKPRPMZ(328)
return

SelectKPRPMZ329:
    SelectKPRPMZ(329)
return

SelectKPRPMZ330:
    SelectKPRPMZ(330)
return

SelectKPRPMZ331:
    SelectKPRPMZ(331)
return

SelectKPRPMZ332:
    SelectKPRPMZ(332)
return

SelectKPRPMZ333:
    SelectKPRPMZ(333)
return

SelectKPRPMZ334:
    SelectKPRPMZ(334)
return

SelectKPRPMZ335:
    SelectKPRPMZ(335)
return

SelectKPRPMZ336:
    SelectKPRPMZ(336)
return

SelectKPRPMZ337:
    SelectKPRPMZ(337)
return

SelectKPRPMZ338:
    SelectKPRPMZ(338)
return

SelectKPRPMZ339:
    SelectKPRPMZ(339)
return

SelectKPRPMZ340:
    SelectKPRPMZ(340)
return

SelectKPRPMZ341:
    SelectKPRPMZ(341)
return

SelectKPRPMZ342:
    SelectKPRPMZ(342)
return

SelectKPRPMZ343:
    SelectKPRPMZ(343)
return

SelectKPRPMZ344:
    SelectKPRPMZ(344)
return

SelectKPRPMZ345:
    SelectKPRPMZ(345)
return

SelectKPRPMZ346:
    SelectKPRPMZ(346)
return

SelectKPRPMZ347:
    SelectKPRPMZ(347)
return

SelectKPRPMZ348:
    SelectKPRPMZ(348)
return

SelectKPRPMZ349:
    SelectKPRPMZ(349)
return

SelectKPRPMZ350:
    SelectKPRPMZ(350)
return

SelectKPRPMZ351:
    SelectKPRPMZ(351)
return

SelectKPRPMZ352:
    SelectKPRPMZ(352)
return

SelectKPRPMZ353:
    SelectKPRPMZ(353)
return

SelectKPRPMZ354:
    SelectKPRPMZ(354)
return

SelectKPRPMZ355:
    SelectKPRPMZ(355)
return

SelectKPRPMZ356:
    SelectKPRPMZ(356)
return

SelectKPRPMZ357:
    SelectKPRPMZ(357)
return

SelectKPRPMZ358:
    SelectKPRPMZ(358)
return

SelectKPRPMZ359:
    SelectKPRPMZ(359)
return

SelectKPRPMZ360:
    SelectKPRPMZ(360)
return

SelectKPRPMZ361:
    SelectKPRPMZ(361)
return

SelectKPRPMZ362:
    SelectKPRPMZ(362)
return

SelectKPRPMZ363:
    SelectKPRPMZ(363)
return

SelectKPRPMZ364:
    SelectKPRPMZ(364)
return

SelectKPRPMZ365:
    SelectKPRPMZ(365)
return

SelectKPRPMZ366:
    SelectKPRPMZ(366)
return

SelectKPRPMZ367:
    SelectKPRPMZ(367)
return

SelectKPRPMZ368:
    SelectKPRPMZ(368)
return

SelectKPRPMZ369:
    SelectKPRPMZ(369)
return

SelectKPRPMZ370:
    SelectKPRPMZ(370)
return

SelectKPRPMZ371:
    SelectKPRPMZ(371)
return

SelectKPRPMZ372:
    SelectKPRPMZ(372)
return

SelectKPRPMZ373:
    SelectKPRPMZ(373)
return

SelectKPRPMZ374:
    SelectKPRPMZ(374)
return

SelectKPRPMZ375:
    SelectKPRPMZ(375)
return

SelectKPRPMZ376:
    SelectKPRPMZ(376)
return

SelectKPRPMZ377:
    SelectKPRPMZ(377)
return

SelectKPRPMZ378:
    SelectKPRPMZ(378)
return

SelectKPRPMZ379:
    SelectKPRPMZ(379)
return

SelectKPRPMZ380:
    SelectKPRPMZ(380)
return

SelectKPRPMZ381:
    SelectKPRPMZ(381)
return

SelectKPRPMZ382:
    SelectKPRPMZ(382)
return

SelectKPRPMZ383:
    SelectKPRPMZ(383)
return

SelectKPRPMZ384:
    SelectKPRPMZ(384)
return

SelectKPRPMZ385:
    SelectKPRPMZ(385)
return

SelectKPRPMZ386:
    SelectKPRPMZ(386)
return

SelectKPRPMZ387:
    SelectKPRPMZ(387)
return

SelectKPRPMZ388:
    SelectKPRPMZ(388)
return

SelectKPRPMZ389:
    SelectKPRPMZ(389)
return

SelectKPRPMZ390:
    SelectKPRPMZ(390)
return

SelectKPRPMZ391:
    SelectKPRPMZ(391)
return

SelectKPRPMZ392:
    SelectKPRPMZ(392)
return

SelectKPRPMZ393:
    SelectKPRPMZ(393)
return

SelectKPRPMZ394:
    SelectKPRPMZ(394)
return

SelectKPRPMZ395:
    SelectKPRPMZ(395)
return

SelectKPRPMZ396:
    SelectKPRPMZ(396)
return

SelectKPRPMZ397:
    SelectKPRPMZ(397)
return

SelectKPRPMZ398:
    SelectKPRPMZ(398)
return

SelectKPRPMZ399:
    SelectKPRPMZ(399)
return

SelectKPRPMZ400:
    SelectKPRPMZ(400)
return

SelectKPRPMZ401:
    SelectKPRPMZ(401)
return

SelectKPRPMZ402:
    SelectKPRPMZ(402)
return

SelectKPRPMZ403:
    SelectKPRPMZ(403)
return

SelectKPRPMZ404:
    SelectKPRPMZ(404)
return

SelectKPRPMZ405:
    SelectKPRPMZ(405)
return

SelectKPRPMZ406:
    SelectKPRPMZ(406)
return

SelectKPRPMZ407:
    SelectKPRPMZ(407)
return

SelectKPRPMZ408:
    SelectKPRPMZ(408)
return

SelectKPRPMZ409:
    SelectKPRPMZ(409)
return

SelectKPRPMZ410:
    SelectKPRPMZ(410)
return

SelectKPRPMZ411:
    SelectKPRPMZ(411)
return

SelectKPRPMZ412:
    SelectKPRPMZ(412)
return

SelectKPRPMZ413:
    SelectKPRPMZ(413)
return

SelectKPRPMZ414:
    SelectKPRPMZ(414)
return

SelectKPRPMZ415:
    SelectKPRPMZ(415)
return

SelectKPRPMZ416:
    SelectKPRPMZ(416)
return

SelectKPRPMZ417:
    SelectKPRPMZ(417)
return

SelectKPRPMZ418:
    SelectKPRPMZ(418)
return

SelectKPRPMZ419:
    SelectKPRPMZ(419)
return

SelectKPRPMZ420:
    SelectKPRPMZ(420)
return

SelectKPRPMZ421:
    SelectKPRPMZ(421)
return

SelectKPRPMZ422:
    SelectKPRPMZ(422)
return

SelectKPRPMZ423:
    SelectKPRPMZ(423)
return

SelectKPRPMZ424:
    SelectKPRPMZ(424)
return

SelectKPRPMZ425:
    SelectKPRPMZ(425)
return

SelectKPRPMZ426:
    SelectKPRPMZ(426)
return

SelectKPRPMZ427:
    SelectKPRPMZ(427)
return

SelectKPRPMZ428:
    SelectKPRPMZ(428)
return

SelectKPRPMZ429:
    SelectKPRPMZ(429)
return

SelectKPRPMZ430:
    SelectKPRPMZ(430)
return

SelectKPRPMZ431:
    SelectKPRPMZ(431)
return

SelectKPRPMZ432:
    SelectKPRPMZ(432)
return

SelectKPRPMZ433:
    SelectKPRPMZ(433)
return

SelectKPRPMZ434:
    SelectKPRPMZ(434)
return

SelectKPRPMZ435:
    SelectKPRPMZ(435)
return

SelectKPRPMZ436:
    SelectKPRPMZ(436)
return

SelectKPRPMZ437:
    SelectKPRPMZ(437)
return

SelectKPRPMZ438:
    SelectKPRPMZ(438)
return

SelectKPRPMZ439:
    SelectKPRPMZ(439)
return

SelectKPRPMZ440:
    SelectKPRPMZ(440)
return

SelectKPRPMZ441:
    SelectKPRPMZ(441)
return

SelectKPRPMZ442:
    SelectKPRPMZ(442)
return

SelectKPRPMZ443:
    SelectKPRPMZ(443)
return

SelectKPRPMZ444:
    SelectKPRPMZ(444)
return

SelectKPRPMZ445:
    SelectKPRPMZ(445)
return

SelectKPRPMZ446:
    SelectKPRPMZ(446)
return

SelectKPRPMZ447:
    SelectKPRPMZ(447)
return

SelectKPRPMZ448:
    SelectKPRPMZ(448)
return

SelectKPRPMZ449:
    SelectKPRPMZ(449)
return

SelectKPRPMZ450:
    SelectKPRPMZ(450)
return

SelectKPRPMZ451:
    SelectKPRPMZ(451)
return

SelectKPRPMZ452:
    SelectKPRPMZ(452)
return

SelectKPRPMZ453:
    SelectKPRPMZ(453)
return

SelectKPRPMZ454:
    SelectKPRPMZ(454)
return

SelectKPRPMZ455:
    SelectKPRPMZ(455)
return

SelectKPRPMZ456:
    SelectKPRPMZ(456)
return

SelectKPRPMZ457:
    SelectKPRPMZ(457)
return

SelectKPRPMZ458:
    SelectKPRPMZ(458)
return

SelectKPRPMZ459:
    SelectKPRPMZ(459)
return

SelectKPRPMZ460:
    SelectKPRPMZ(460)
return

SelectKPRPMZ461:
    SelectKPRPMZ(461)
return

SelectKPRPMZ462:
    SelectKPRPMZ(462)
return

SelectKPRPMZ463:
    SelectKPRPMZ(463)
return

SelectKPRPMZ464:
    SelectKPRPMZ(464)
return

SelectKPRPMZ465:
    SelectKPRPMZ(465)
return

SelectKPRPMZ466:
    SelectKPRPMZ(466)
return

SelectKPRPMZ467:
    SelectKPRPMZ(467)
return

SelectKPRPMZ468:
    SelectKPRPMZ(468)
return

SelectKPRPMZ469:
    SelectKPRPMZ(469)
return

SelectKPRPMZ470:
    SelectKPRPMZ(470)
return

SelectKPRPMZ471:
    SelectKPRPMZ(471)
return

SelectKPRPMZ472:
    SelectKPRPMZ(472)
return

SelectKPRPMZ473:
    SelectKPRPMZ(473)
return

SelectKPRPMZ474:
    SelectKPRPMZ(474)
return

SelectKPRPMZ475:
    SelectKPRPMZ(475)
return

SelectKPRPMZ476:
    SelectKPRPMZ(476)
return

SelectKPRPMZ477:
    SelectKPRPMZ(477)
return

SelectKPRPMZ478:
    SelectKPRPMZ(478)
return

SelectKPRPMZ479:
    SelectKPRPMZ(479)
return

SelectKPRPMZ480:
    SelectKPRPMZ(480)
return

SelectKPRPMZ481:
    SelectKPRPMZ(481)
return

SelectKPRPMZ482:
    SelectKPRPMZ(482)
return

SelectKPRPMZ483:
    SelectKPRPMZ(483)
return

SelectKPRPMZ484:
    SelectKPRPMZ(484)
return

SelectKPRPMZ485:
    SelectKPRPMZ(485)
return

SelectKPRPMZ486:
    SelectKPRPMZ(486)
return

SelectKPRPMZ487:
    SelectKPRPMZ(487)
return

SelectKPRPMZ488:
    SelectKPRPMZ(488)
return

SelectKPRPMZ489:
    SelectKPRPMZ(489)
return

SelectKPRPMZ490:
    SelectKPRPMZ(490)
return

SelectKPRPMZ491:
    SelectKPRPMZ(491)
return

SelectKPRPMZ492:
    SelectKPRPMZ(492)
return

SelectKPRPMZ493:
    SelectKPRPMZ(493)
return

SelectKPRPMZ494:
    SelectKPRPMZ(494)
return

SelectKPRPMZ495:
    SelectKPRPMZ(495)
return

SelectKPRPMZ496:
    SelectKPRPMZ(496)
return

SelectKPRPMZ497:
    SelectKPRPMZ(497)
return

SelectKPRPMZ498:
    SelectKPRPMZ(498)
return

SelectKPRPMZ499:
    SelectKPRPMZ(499)
return

SelectKPRPMZ500:
    SelectKPRPMZ(500)
return

SelectKPRPMZ501:
    SelectKPRPMZ(501)
return

SelectKPRPMZ502:
    SelectKPRPMZ(502)
return

SelectKPRPMZ503:
    SelectKPRPMZ(503)
return

SelectKPRPMZ504:
    SelectKPRPMZ(504)
return

SelectKPRPMZ505:
    SelectKPRPMZ(505)
return

SelectKPRPMZ506:
    SelectKPRPMZ(506)
return

SelectKPRPMZ507:
    SelectKPRPMZ(507)
return

SelectKPRPMZ508:
    SelectKPRPMZ(508)
return

SelectKPRPMZ509:
    SelectKPRPMZ(509)
return

SelectKPRPMZ510:
    SelectKPRPMZ(510)
return

SelectKPRPMZ511:
    SelectKPRPMZ(511)
return

SelectKPRPMZ512:
    SelectKPRPMZ(512)
return

SelectKPRPMZ513:
    SelectKPRPMZ(513)
return

SelectKPRPMZ514:
    SelectKPRPMZ(514)
return

SelectKPRPMZ515:
    SelectKPRPMZ(515)
return

SelectKPRPMZ516:
    SelectKPRPMZ(516)
return

SelectKPRPMZ517:
    SelectKPRPMZ(517)
return

SelectKPRPMZ518:
    SelectKPRPMZ(518)
return

SelectKPRPMZ519:
    SelectKPRPMZ(519)
return

SelectKPRPMZ520:
    SelectKPRPMZ(520)
return

SelectKPRPMZ521:
    SelectKPRPMZ(521)
return

SelectKPRPMZ522:
    SelectKPRPMZ(522)
return

SelectKPRPMZ523:
    SelectKPRPMZ(523)
return

SelectKPRPMZ524:
    SelectKPRPMZ(524)
return

SelectKPRPMZ525:
    SelectKPRPMZ(525)
return

SelectKPRPMZ526:
    SelectKPRPMZ(526)
return

SelectKPRPMZ527:
    SelectKPRPMZ(527)
return

SelectKPRPMZ528:
    SelectKPRPMZ(528)
return

SelectKPRPMZ529:
    SelectKPRPMZ(529)
return

SelectKPRPMZ530:
    SelectKPRPMZ(530)
return

SelectKPRPMZ531:
    SelectKPRPMZ(531)
return

SelectKPRPMZ532:
    SelectKPRPMZ(532)
return

SelectKPRPMZ533:
    SelectKPRPMZ(533)
return

SelectKPRPMZ534:
    SelectKPRPMZ(534)
return

SelectKPRPMZ535:
    SelectKPRPMZ(535)
return

SelectKPRPMZ536:
    SelectKPRPMZ(536)
return

SelectKPRPMZ537:
    SelectKPRPMZ(537)
return

SelectKPRPMZ538:
    SelectKPRPMZ(538)
return

SelectKPRPMZ539:
    SelectKPRPMZ(539)
return

SelectKPRPMZ540:
    SelectKPRPMZ(540)
return

SelectKPRPMZ541:
    SelectKPRPMZ(541)
return

SelectKPRPMZ542:
    SelectKPRPMZ(542)
return

SelectKPRPMZ543:
    SelectKPRPMZ(543)
return

SelectKPRPMZ544:
    SelectKPRPMZ(544)
return

SelectKPRPMZ545:
    SelectKPRPMZ(545)
return

SelectKPRPMZ546:
    SelectKPRPMZ(546)
return

SelectKPRPMZ547:
    SelectKPRPMZ(547)
return

SelectKPRPMZ548:
    SelectKPRPMZ(548)
return

SelectKPRPMZ549:
    SelectKPRPMZ(549)
return

SelectKPRPMZ550:
    SelectKPRPMZ(550)
return

SelectKPRPMZ551:
    SelectKPRPMZ(551)
return

SelectKPRPMZ552:
    SelectKPRPMZ(552)
return

SelectKPRPMZ553:
    SelectKPRPMZ(553)
return

SelectKPRPMZ554:
    SelectKPRPMZ(554)
return

SelectKPRPMZ555:
    SelectKPRPMZ(555)
return

SelectKPRPMZ556:
    SelectKPRPMZ(556)
return

SelectKPRPMZ557:
    SelectKPRPMZ(557)
return

SelectKPRPMZ558:
    SelectKPRPMZ(558)
return

SelectKPRPMZ559:
    SelectKPRPMZ(559)
return

SelectKPRPMZ560:
    SelectKPRPMZ(560)
return

SelectKPRPMZ561:
    SelectKPRPMZ(561)
return

SelectKPRPMZ562:
    SelectKPRPMZ(562)
return

SelectKPRPMZ563:
    SelectKPRPMZ(563)
return

SelectKPRPMZ564:
    SelectKPRPMZ(564)
return

SelectKPRPMZ565:
    SelectKPRPMZ(565)
return

SelectKPRPMZ566:
    SelectKPRPMZ(566)
return

SelectKPRPMZ567:
    SelectKPRPMZ(567)
return

SelectKPRPMZ568:
    SelectKPRPMZ(568)
return

SelectKPRPMZ569:
    SelectKPRPMZ(569)
return

SelectKPRPMZ570:
    SelectKPRPMZ(570)
return

SelectKPRPMZ571:
    SelectKPRPMZ(571)
return

SelectKPRPMZ572:
    SelectKPRPMZ(572)
return

SelectKPRPMZ573:
    SelectKPRPMZ(573)
return

SelectKPRPMZ574:
    SelectKPRPMZ(574)
return

SelectKPRPMZ575:
    SelectKPRPMZ(575)
return

SelectKPRPMZ576:
    SelectKPRPMZ(576)
return

SelectKPRPMZ577:
    SelectKPRPMZ(577)
return

SelectKPRPMZ578:
    SelectKPRPMZ(578)
return

SelectKPRPMZ579:
    SelectKPRPMZ(579)
return

SelectKPRPMZ580:
    SelectKPRPMZ(580)
return

SelectKPRPMZ581:
    SelectKPRPMZ(581)
return

SelectKPRPMZ582:
    SelectKPRPMZ(582)
return

SelectKPRPMZ583:
    SelectKPRPMZ(583)
return

SelectKPRPMZ584:
    SelectKPRPMZ(584)
return

SelectKPRPMZ585:
    SelectKPRPMZ(585)
return

SelectKPRPMZ586:
    SelectKPRPMZ(586)
return

SelectKPRPMZ587:
    SelectKPRPMZ(587)
return

SelectKPRPMZ588:
    SelectKPRPMZ(588)
return

SelectKPRPMZ589:
    SelectKPRPMZ(589)
return

SelectKPRPMZ590:
    SelectKPRPMZ(590)
return

SelectKPRPMZ591:
    SelectKPRPMZ(591)
return

SelectKPRPMZ592:
    SelectKPRPMZ(592)
return

SelectKPRPMZ593:
    SelectKPRPMZ(593)
return

SelectKPRPMZ594:
    SelectKPRPMZ(594)
return

SelectKPRPMZ595:
    SelectKPRPMZ(595)
return

SelectKPRPMZ596:
    SelectKPRPMZ(596)
return

SelectKPRPMZ597:
    SelectKPRPMZ(597)
return

SelectKPRPMZ598:
    SelectKPRPMZ(598)
return

SelectKPRPMZ599:
    SelectKPRPMZ(599)
return

SelectKPRPMZ600:
    SelectKPRPMZ(600)
return

SelectKPRPMZ601:
    SelectKPRPMZ(601)
return

SelectKPRPMZ602:
    SelectKPRPMZ(602)
return

SelectKPRPMZ603:
    SelectKPRPMZ(603)
return

SelectKPRPMZ604:
    SelectKPRPMZ(604)
return

SelectKPRPMZ605:
    SelectKPRPMZ(605)
return

SelectKPRPMZ606:
    SelectKPRPMZ(606)
return

SelectKPRPMZ607:
    SelectKPRPMZ(607)
return

SelectKPRPMZ608:
    SelectKPRPMZ(608)
return

SelectKPRPMZ609:
    SelectKPRPMZ(609)
return

SelectKPRPMZ610:
    SelectKPRPMZ(610)
return

SelectKPRPMZ611:
    SelectKPRPMZ(611)
return

SelectKPRPMZ612:
    SelectKPRPMZ(612)
return

SelectKPRPMZ613:
    SelectKPRPMZ(613)
return

SelectKPRPMZ614:
    SelectKPRPMZ(614)
return

SelectKPRPMZ615:
    SelectKPRPMZ(615)
return

SelectKPRPMZ616:
    SelectKPRPMZ(616)
return

SelectKPRPMZ617:
    SelectKPRPMZ(617)
return

SelectKPRPMZ618:
    SelectKPRPMZ(618)
return

SelectKPRPMZ619:
    SelectKPRPMZ(619)
return

SelectKPRPMZ620:
    SelectKPRPMZ(620)
return

SelectKPRPMZ621:
    SelectKPRPMZ(621)
return

SelectKPRPMZ622:
    SelectKPRPMZ(622)
return

SelectKPRPMZ623:
    SelectKPRPMZ(623)
return

SelectKPRPMZ624:
    SelectKPRPMZ(624)
return

SelectKPRPMZ625:
    SelectKPRPMZ(625)
return

SelectKPRPMZ626:
    SelectKPRPMZ(626)
return

SelectKPRPMZ627:
    SelectKPRPMZ(627)
return

SelectKPRPMZ628:
    SelectKPRPMZ(628)
return

SelectKPRPMZ629:
    SelectKPRPMZ(629)
return

SelectKPRPMZ630:
    SelectKPRPMZ(630)
return

SelectKPRPMZ631:
    SelectKPRPMZ(631)
return

SelectKPRPMZ632:
    SelectKPRPMZ(632)
return

SelectKPRPMZ633:
    SelectKPRPMZ(633)
return

SelectKPRPMZ634:
    SelectKPRPMZ(634)
return

SelectKPRPMZ635:
    SelectKPRPMZ(635)
return

SelectKPRPMZ636:
    SelectKPRPMZ(636)
return

SelectKPRPMZ637:
    SelectKPRPMZ(637)
return

SelectKPRPMZ638:
    SelectKPRPMZ(638)
return

SelectKPRPMZ639:
    SelectKPRPMZ(639)
return

SelectKPRPMZ640:
    SelectKPRPMZ(640)
return

SelectKPRPMZ641:
    SelectKPRPMZ(641)
return

SelectKPRPMZ642:
    SelectKPRPMZ(642)
return

SelectKPRPMZ643:
    SelectKPRPMZ(643)
return

SelectKPRPMZ644:
    SelectKPRPMZ(644)
return

SelectKPRPMZ645:
    SelectKPRPMZ(645)
return

SelectKPRPMZ646:
    SelectKPRPMZ(646)
return

SelectKPRPMZ647:
    SelectKPRPMZ(647)
return

SelectKPRPMZ648:
    SelectKPRPMZ(648)
return

SelectKPRPMZ649:
    SelectKPRPMZ(649)
return

SelectKPRPMZ650:
    SelectKPRPMZ(650)
return

SelectKPRPMZ651:
    SelectKPRPMZ(651)
return

SelectKPRPMZ652:
    SelectKPRPMZ(652)
return

SelectKPRPMZ653:
    SelectKPRPMZ(653)
return

SelectKPRPMZ654:
    SelectKPRPMZ(654)
return

SelectKPRPMZ655:
    SelectKPRPMZ(655)
return

SelectKPRPMZ656:
    SelectKPRPMZ(656)
return

SelectKPRPMZ657:
    SelectKPRPMZ(657)
return

SelectKPRPMZ658:
    SelectKPRPMZ(658)
return

SelectKPRPMZ659:
    SelectKPRPMZ(659)
return

SelectKPRPMZ660:
    SelectKPRPMZ(660)
return

SelectKPRPMZ661:
    SelectKPRPMZ(661)
return

SelectKPRPMZ662:
    SelectKPRPMZ(662)
return

SelectKPRPMZ663:
    SelectKPRPMZ(663)
return

SelectKPRPMZ664:
    SelectKPRPMZ(664)
return

SelectKPRPMZ665:
    SelectKPRPMZ(665)
return

SelectKPRPMZ666:
    SelectKPRPMZ(666)
return

SelectKPRPMZ667:
    SelectKPRPMZ(667)
return

SelectKPRPMZ668:
    SelectKPRPMZ(668)
return

SelectKPRPMZ669:
    SelectKPRPMZ(669)
return

SelectKPRPMZ670:
    SelectKPRPMZ(670)
return

SelectKPRPMZ671:
    SelectKPRPMZ(671)
return

SelectKPRPMZ672:
    SelectKPRPMZ(672)
return

SelectKPRPMZ673:
    SelectKPRPMZ(673)
return

SelectKPRPMZ674:
    SelectKPRPMZ(674)
return

SelectKPRPMZ675:
    SelectKPRPMZ(675)
return

SelectKPRPMZ676:
    SelectKPRPMZ(676)
return

SelectKPRPMZ677:
    SelectKPRPMZ(677)
return

SelectKPRPMZ678:
    SelectKPRPMZ(678)
return

SelectKPRPMZ679:
    SelectKPRPMZ(679)
return

SelectKPRPMZ680:
    SelectKPRPMZ(680)
return

SelectKPRPMZ681:
    SelectKPRPMZ(681)
return

SelectKPRPMZ682:
    SelectKPRPMZ(682)
return

SelectKPRPMZ683:
    SelectKPRPMZ(683)
return

SelectKPRPMZ684:
    SelectKPRPMZ(684)
return

SelectKPRPMZ685:
    SelectKPRPMZ(685)
return

SelectKPRPMZ686:
    SelectKPRPMZ(686)
return

SelectKPRPMZ687:
    SelectKPRPMZ(687)
return

SelectKPRPMZ688:
    SelectKPRPMZ(688)
return

SelectKPRPMZ689:
    SelectKPRPMZ(689)
return

SelectKPRPMZ690:
    SelectKPRPMZ(690)
return

SelectKPRPMZ691:
    SelectKPRPMZ(691)
return

SelectKPRPMZ692:
    SelectKPRPMZ(692)
return

SelectKPRPMZ693:
    SelectKPRPMZ(693)
return

SelectKPRPMZ694:
    SelectKPRPMZ(694)
return

SelectKPRPMZ695:
    SelectKPRPMZ(695)
return

SelectKPRPMZ696:
    SelectKPRPMZ(696)
return

SelectKPRPMZ697:
    SelectKPRPMZ(697)
return

SelectKPRPMZ698:
    SelectKPRPMZ(698)
return

SelectKPRPMZ699:
    SelectKPRPMZ(699)
return

SelectKPRPMZ700:
    SelectKPRPMZ(700)
return



; ---- Универсальная функция ----
SelectKPRPMZ(num) {
    global
    varName := "KPRPMZ" num
    LastPath := %varName%

    FileSelectFile, selectedFile, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (selectedFile = "") {
        %varName% := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    %varName% := selectedFile
    MsgBox, 64, Файл выбран, % %varName%
    Gosub, ChangeRaskladka_MZ
}
return

