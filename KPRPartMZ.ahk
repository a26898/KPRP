; --- Проигрываем звук (опционально) ---
SoundPlay, C:\ProgramData\KPRP\KPRP-main\muzyka_14.mp3

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

Gui, 5:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\Clear.png
Gui, 5:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfo,  C:\ProgramData\KPRP\KPRP-main\Dannyye_MZ.png
Gui, 5:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditMZ, C:\ProgramData\KPRP\KPRP-main\Raskladka.png
Gui, 5:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\Editor.png
Gui, 5:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\Offers.png
Gui, 5:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\Bug_report.png
Gui, 5:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\Uluchsheniya.png
Gui, 5:Add, Picture, x720 y600 w48 w48   +BackgroundTrans gHelp, C:\ProgramData\KPRP\KPRP-main\Tekhpodderzhka.png
Gui, 5:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\Smena_fraktsii.png
Gui, 5:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\Help.png
Gui, 5:Add, Picture, x1020 y600 w48 w48   +BackgroundTrans  gLektsii_MZ, C:\ProgramData\KPRP\KPRP-main\Infa_Lepktsii.png
Gui, 5:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\restart.png

Gui, 5:Add, Picture, x10 y40 w128 w96  +BackgroundTrans gLaziness7, C:\ProgramData\KPRP\KPRP-main\Sobes.png
Gui, 5:Add, Picture, x10 y260 w128 w96 +BackgroundTrans gMedicine81, C:\ProgramData\KPRP\KPRP-main\Cards.png
Gui, 5:Add, Picture, x10 y370 w128 w96 +BackgroundTrans gMedicine79, C:\ProgramData\KPRP\KPRP-main\Oath.png
Gui, 5:Add, Picture, x10 y480 w128 w96 +BackgroundTrans gMedicine33, C:\ProgramData\KPRP\KPRP-main\Feelings.png
Gui, 5:Add, Picture, x10 y150 w128 w96 +BackgroundTrans gLaziness25, C:\ProgramData\KPRP\KPRP-main\Prizyvpng.png
Gui, 5:Add, Picture, x130 y40 w128 w96  +BackgroundTrans gMedicine13, C:\ProgramData\KPRP\KPRP-main\Defibrillator.png


Gui, 5:Add, Picture, x370 y40 w128 w96  +BackgroundTrans gLaziness2, C:\ProgramData\KPRP\KPRP-main\Fast.png

Gui, 5:Add, Picture, x490 y40 w128 w96  +BackgroundTrans gLaziness8, C:\ProgramData\KPRP\KPRP-main\Patrol.png
Gui, 5:Add, Picture, x970 y40 w128 w96  +BackgroundTrans gLaziness14, C:\ProgramData\KPRP\KPRP-main\Patrol_r.png
Gui, 5:Add, Picture, x610 y40 w128 w96  +BackgroundTrans gLaziness12, C:\ProgramData\KPRP\KPRP-main\Patrol_V.png
Gui, 5:Add, Picture, x1090 y40 w128 w96  +BackgroundTrans gLaziness13, C:\ProgramData\KPRP\KPRP-main\Patrol_rr.png
Gui, 5:Add, Picture, x730 y40 w128 w96  +BackgroundTrans gLaziness3, C:\ProgramData\KPRP\KPRP-main\Change.png
Gui, 5:Add, Picture, x850 y40 w128 w96  +BackgroundTrans gLaziness26, C:\ProgramData\KPRP\KPRP-main\Registry.png
Gui, 5:Add, Picture, x250 y40 w128 w96  +BackgroundTrans gLaziness1, C:\ProgramData\KPRP\KPRP-main\Call.png

Gui, 5:Add, Picture, x130 y150 w128 w96 +BackgroundTrans gLaziness31, C:\ProgramData\KPRP\KPRP-main\Random.png
Gui, 5:Add, Picture, x130 y260 w128 w96 +BackgroundTrans gLaziness4, C:\ProgramData\KPRP\KPRP-main\VZ.png


Gui, 5:Add, Picture, x1000 y370 w150 h150 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\%Bol_ro_2%
Gui, 5:Add, Picture, x1000 y190 w150 h150 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\KPRP.png



Gui, 5: Tab, 3
if (FonVybor != "ERROR" && FonVybor != "") {
    Gui, 5:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
}

Gui, 5:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\Clear.png
Gui, 5:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfo,  C:\ProgramData\KPRP\KPRP-main\Dannyye_MZ.png
Gui, 5:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditMZ, C:\ProgramData\KPRP\KPRP-main\Raskladka.png
Gui, 5:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\Editor.png
Gui, 5:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\Offers.png
Gui, 5:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\Bug_report.png
Gui, 5:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\Uluchsheniya.png
Gui, 5:Add, Picture, x720 y600 w48 w48   +BackgroundTrans gHelp, C:\ProgramData\KPRP\KPRP-main\Tekhpodderzhka.png
Gui, 5:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\Smena_fraktsii.png
Gui, 5:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\Help.png
Gui, 5:Add, Picture, x1020 y600 w48 w48   +BackgroundTrans  gLektsii_MZ, C:\ProgramData\KPRP\KPRP-main\Infa_Lepktsii.png
Gui, 5:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\restart.png

Gui, 5:Add, Picture, x10 y40 w128 w96  +BackgroundTrans gPMP2, C:\ProgramData\KPRP\KPRP-main\Bleeding_PMP.png
Gui, 5:Add, Picture, x10 y150 w128 w96 +BackgroundTrans gPMP3, C:\ProgramData\KPRP\KPRP-main\Frostbite_PMP.png
Gui, 5:Add, Picture, x10 y260 w128 w96 +BackgroundTrans gPMP8, C:\ProgramData\KPRP\KPRP-main\Leg_PMP.png
Gui, 5:Add, Picture, x10 y370 w128 w96 +BackgroundTrans gPMP7, C:\ProgramData\KPRP\KPRP-main\Membership_PMP.png
Gui, 5:Add, Picture, x10 y480 w128 w96 +BackgroundTrans gPMP14, C:\ProgramData\KPRP\KPRP-main\Infarkt_PMP.png

Gui, 5:Add, Picture, x130 y40 w128 w96  +BackgroundTrans gPMP12, C:\ProgramData\KPRP\KPRP-main\Nos_PMP.png

Gui, 5:Add, Picture, x250 y40 w128 w96  +BackgroundTrans gPMP4, C:\ProgramData\KPRP\KPRP-main\Ozhog_PMP.png

Gui, 5:Add, Picture, x370 y40 w128 w96  +BackgroundTrans gPMP5, C:\ProgramData\KPRP\KPRP-main\Pulya_PMP.png

Gui, 5:Add, Picture, x490 y40 w128 w96  +BackgroundTrans gPMP1, C:\ProgramData\KPRP\KPRP-main\Rana_PMP.png

;Gui, 5:Add, Picture, x610 y40 w128 w96  +BackgroundTrans gPMP6, C:\ProgramData\KPRP\KPRP-main\Choking_PMP.png

Gui, 5:Add, Picture, x730 y40 w128 w96  +BackgroundTrans gPMP13, C:\ProgramData\KPRP\KPRP-main\Sotryaseniye_PMP.png

Gui, 5:Add, Picture, x850 y40 w128 w96  +BackgroundTrans gPMP9, C:\ProgramData\KPRP\KPRP-main\Soznaniye_PMP.png

Gui, 5:Add, Picture, x970 y40 w128 w96  +BackgroundTrans gPMP10, C:\ProgramData\KPRP\KPRP-main\Zakrytiy_PMP.png

Gui, 5:Add, Picture, x1090 y40 w128 w96  +BackgroundTrans gPMP11, C:\ProgramData\KPRP\KPRP-main\Otkrytyy_PMP.png


Gui, 5:Tab, 4
if (FonVybor != "ERROR" && FonVybor != "") {
    Gui, 5:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
}


Gui, 5:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\Clear.png
Gui, 5:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfo,  C:\ProgramData\KPRP\KPRP-main\Dannyye_MZ.png
Gui, 5:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditMZ, C:\ProgramData\KPRP\KPRP-main\Raskladka.png
Gui, 5:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\Editor.png
Gui, 5:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\Offers.png
Gui, 5:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\Bug_report.png
Gui, 5:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\Uluchsheniya.png
Gui, 5:Add, Picture, x720 y600 w48 w48   +BackgroundTrans gHelp, C:\ProgramData\KPRP\KPRP-main\Tekhpodderzhka.png
Gui, 5:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\Smena_fraktsii.png
Gui, 5:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\Help.png
Gui, 5:Add, Picture, x1020 y600 w48 w48   +BackgroundTrans  gLektsii_MZ, C:\ProgramData\KPRP\KPRP-main\Infa_Lepktsii.png
Gui, 5:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\restart.png


Gui, 5:Add, Picture, x10 y40 w128 w96  +BackgroundTrans gMedicine30, C:\ProgramData\KPRP\KPRP-main\Alcohol.png
Gui, 5:Add, Picture, x10 y150 w128 w96 +BackgroundTrans gMedicine62, C:\ProgramData\KPRP\KPRP-main\Ves.png
Gui, 5:Add, Picture, x10 y260 w128 w96 +BackgroundTrans gMedicine69, C:\ProgramData\KPRP\KPRP-main\Coronavirus.png


Gui, 5:Add, Picture, x130 y40 w128 w96  +BackgroundTrans gMedicine31, C:\ProgramData\KPRP\KPRP-main\Narkotiki.png

Gui, 5:Add, Picture, x250 y40 w128 w96  +BackgroundTrans gMedicine28, C:\ProgramData\KPRP\KPRP-main\Vshi.png

Gui, 5:Add, Picture, x370 y40 w128 w96  +BackgroundTrans gMedicine29, C:\ProgramData\KPRP\KPRP-main\Listy.png

Gui, 5:Add, Picture, x490 y40 w128 w96  +BackgroundTrans gMedicine34, C:\ProgramData\KPRP\KPRP-main\Skolioz.png

Gui, 5:Add, Picture, x610 y40 w128 w96  +BackgroundTrans gMedicine59, C:\ProgramData\KPRP\KPRP-main\Legkiyee.png

Gui, 5:Add, Picture, x730 y40 w128 w96  +BackgroundTrans gMedicine60, C:\ProgramData\KPRP\KPRP-main\Serdtseye.png

Gui, 5:Add, Picture, x850 y40 w128 w96  +BackgroundTrans gMedicine61, C:\ProgramData\KPRP\KPRP-main\Davleniye.png

Gui, 5:Add, Picture, x970 y40 w128 w96  +BackgroundTrans gMedicine32, C:\ProgramData\KPRP\KPRP-main\Glaz5.png

Gui, 5:Add, Picture, x1090 y40 w128 w96  +BackgroundTrans gMedicine16, C:\ProgramData\KPRP\KPRP-main\Temperatura.png


Gui, 5:Tab, 5
if (FonVybor != "ERROR" && FonVybor != "") {
    Gui, 5:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
}

Gui, 5:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\Clear.png
Gui, 5:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfo,  C:\ProgramData\KPRP\KPRP-main\Dannyye_MZ.png
Gui, 5:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditMZ, C:\ProgramData\KPRP\KPRP-main\Raskladka.png
Gui, 5:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\Editor.png
Gui, 5:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\Offers.png
Gui, 5:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\Bug_report.png
Gui, 5:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\Uluchsheniya.png
Gui, 5:Add, Picture, x720 y600 w48 w48   +BackgroundTrans gHelp, C:\ProgramData\KPRP\KPRP-main\Tekhpodderzhka.png
Gui, 5:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\Smena_fraktsii.png
Gui, 5:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\Help.png
Gui, 5:Add, Picture, x1020 y600 w48 w48   +BackgroundTrans  gLektsii_MZ, C:\ProgramData\KPRP\KPRP-main\Infa_Lepktsii.png
Gui, 5:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\restart.png


Gui, 5:Add, Picture, x10 y40 w128 w96  +BackgroundTrans gMedicine41, C:\ProgramData\KPRP\KPRP-main\Tomografiya.png
Gui, 5:Add, Picture, x10 y150 w128 w96 +BackgroundTrans gMedicine49, C:\ProgramData\KPRP\KPRP-main\EEG.png
Gui, 5:Add, Picture, x10 y260 w128 w96 +BackgroundTrans gMedicine54, C:\ProgramData\KPRP\KPRP-main\OPTG.png
Gui, 5:Add, Picture, x10 y370 w128 w96 +BackgroundTrans gMedicine2, C:\ProgramData\KPRP\KPRP-main\Sahara.png
Gui, 5:Add, Picture, x10 y480 w128 w96 +BackgroundTrans gMedicine6, C:\ProgramData\KPRP\KPRP-main\Mazka.png

Gui, 5:Add, Picture, x130 y40 w128 w96  +BackgroundTrans gMedicine43, C:\ProgramData\KPRP\KPRP-main\UZI.png
Gui, 5:Add, Picture, x130 y150 w128 w96 +BackgroundTrans gMedicine70, C:\ProgramData\KPRP\KPRP-main\Mammography.png
Gui, 5:Add, Picture, x130 y260 w128 w96 +BackgroundTrans gMedicine73, C:\ProgramData\KPRP\KPRP-main\Chemotherapy.png
Gui, 5:Add, Picture, x130 y370 w128 w96 +BackgroundTrans gMedicine88, C:\ProgramData\KPRP\KPRP-main\Narkozavisimost.png
Gui, 5:Add, Picture, x130 y480 w128 w96 +BackgroundTrans gMedicine74, C:\ProgramData\KPRP\KPRP-main\Coron.png

Gui, 5:Add, Picture, x250 y40 w128 w96  +BackgroundTrans gMedicine46, C:\ProgramData\KPRP\KPRP-main\Fluorography.png
Gui, 5:Add, Picture, x250 y150 w128 w96 +BackgroundTrans gMedicine4, C:\ProgramData\KPRP\KPRP-main\Vaccination.png
Gui, 5:Add, Picture, x250 y260 w128 w96 +BackgroundTrans gMedicine52, C:\ProgramData\KPRP\KPRP-main\Rabies.png
Gui, 5:Add, Picture, x250 y370 w128 w96 +BackgroundTrans gMedicine17, C:\ProgramData\KPRP\KPRP-main\Kapel.png
Gui, 5:Add, Picture, x250 y480 w128 w96 +BackgroundTrans gMedicine58, C:\ProgramData\KPRP\KPRP-main\Remineralizing.png

Gui, 5:Add, Picture, x370 y40 w128 w96  +BackgroundTrans gMedicine47, C:\ProgramData\KPRP\KPRP-main\Fetoscopy.png
Gui, 5:Add, Picture, x370 y150 w128 w96 +BackgroundTrans gMedicine26, C:\ProgramData\KPRP\KPRP-main\Poisoning.png
Gui, 5:Add, Picture, x370 y260 w128 w96 +BackgroundTrans gMedicine64, C:\ProgramData\KPRP\KPRP-main\Visiographic.png
Gui, 5:Add, Picture, x370 y370 w128 w96 +BackgroundTrans gMedicine65, C:\ProgramData\KPRP\KPRP-main\Whitening.png
Gui, 5:Add, Picture, x370 y480 w128 w96 +BackgroundTrans gMedicine8, C:\ProgramData\KPRP\KPRP-main\Fingers.png

Gui, 5:Add, Picture, x490 y40 w128 w96  +BackgroundTrans gMedicine48, C:\ProgramData\KPRP\KPRP-main\Cystoscopy.png
Gui, 5:Add, Picture, x490 y150 w128 w96 +BackgroundTrans gMedicine7 , C:\ProgramData\KPRP\KPRP-main\Vienna.png
Gui, 5:Add, Picture, x490 y260 w128 w96 +BackgroundTrans gMedicine72, C:\ProgramData\KPRP\KPRP-main\OFE.png
Gui, 5:Add, Picture, x490 y370 w128 w96 +BackgroundTrans gMedicine85, C:\ProgramData\KPRP\KPRP-main\Pul_soksymetr.png
Gui, 5:Add, Picture, x490 y480 w128 w96 +BackgroundTrans gMedicine93, C:\ProgramData\KPRP\KPRP-main\Inhaler.png


Gui, 5:Add, Picture, x610 y40 w128 w96  +BackgroundTrans gMedicine19, C:\ProgramData\KPRP\KPRP-main\Enema.png
Gui, 5:Add, Picture, x610 y150 w128 w96  +BackgroundTrans gMedicine94, C:\ProgramData\KPRP\KPRP-main\Myostimulator.png
Gui, 5:Add, Picture, x610 y260 w128 w96  +BackgroundTrans gMedicine95, C:\ProgramData\KPRP\KPRP-main\Endosonography.png
Gui, 5:Add, Picture, x610 y370 w128 w96  +BackgroundTrans gMedicine96, C:\ProgramData\KPRP\KPRP-main\Tatu.png
Gui, 5:Add, Picture, x610 y480 w128 w96  +BackgroundTrans gMedicine97,  C:\ProgramData\KPRP\KPRP-main\Angina.png

Gui, 5:Add, Picture, x730 y40 w128 w96  +BackgroundTrans gMedicine18, C:\ProgramData\KPRP\KPRP-main\Colonoscopy.png
Gui, 5:Add, Picture, x730 y150 w128 w96 +BackgroundTrans gMedicine101, C:\ProgramData\KPRP\KPRP-main\Mote.png
Gui, 5:Add, Picture, x730 y260 w128 w96 +BackgroundTrans gMedicine102, C:\ProgramData\KPRP\KPRP-main\Slinter.png
Gui, 5:Add, Picture, x730 y370 w128 w96  +BackgroundTrans gMedicine103, C:\ProgramData\KPRP\KPRP-main\Ukus_pchely.png
Gui, 5:Add, Picture, x730 y480 w128 w96  +BackgroundTrans gMedicine104,  C:\ProgramData\KPRP\KPRP-main\Donor_krovi.png

Gui, 5:Add, Picture, x850 y40 w128 w96  +BackgroundTrans gMedicine15, C:\ProgramData\KPRP\KPRP-main\EKG.png
Gui, 5:Add, Picture, x850 y150 w128 w96 +BackgroundTrans gMedicine111, C:\ProgramData\KPRP\KPRP-main\Vich.png
Gui, 5:Add, Picture, x850 y260 w128 w96 +BackgroundTrans gMedicine112, C:\ProgramData\KPRP\KPRP-main\Tuberculosis.png
Gui, 5:Add, Picture, x850 y370 w128 w96  +BackgroundTrans gMedicine113, C:\ProgramData\KPRP\KPRP-main\Diphtheria.png
Gui, 5:Add, Picture, x850 y480 w128 w96  +BackgroundTrans gMedicine114,  C:\ProgramData\KPRP\KPRP-main\Beshenstvo.png

Gui, 5:Add, Picture, x970 y40 w128 w96  +BackgroundTrans gMedicine10, C:\ProgramData\KPRP\KPRP-main\Gastroscopy.png
Gui, 5:Add, Picture, x970 y150 w128 w96 +BackgroundTrans gMedicine14, C:\ProgramData\KPRP\KPRP-main\Zmeya_1.png
Gui, 5:Add, Picture, x970 y260 w128 w96 +BackgroundTrans gMedicine116, C:\ProgramData\KPRP\KPRP-main\CT.png
Gui, 5:Add, Picture, x970 y370 w128 w96 +BackgroundTrans gMedicine117, C:\ProgramData\KPRP\KPRP-main\Colposcopy.png
Gui, 5:Add, Picture, x970 y480 w128 w96 +BackgroundTrans gMedicine118, C:\ProgramData\KPRP\KPRP-main\Gynecologically.png

Gui, 5:Add, Picture, x1090 y40 w128 w96  +BackgroundTrans gMedicine22, C:\ProgramData\KPRP\KPRP-main\MRT.png
Gui, 5:Add, Picture, x1090 y150 w128 w96 +BackgroundTrans gMedicine119, C:\ProgramData\KPRP\KPRP-main\Glucometer.png
Gui, 5:Add, Picture, x1090 y260 w128 w96 +BackgroundTrans gMedicine120, C:\ProgramData\KPRP\KPRP-main\MRA.png
Gui, 5:Add, Picture, x1090 y370 w128 w96 +BackgroundTrans gMedicine121, C:\ProgramData\KPRP\KPRP-main\KTG.png
Gui, 5:Add, Picture, x1090 y480 w128 w96 +BackgroundTrans gMedicine122, C:\ProgramData\KPRP\KPRP-main\Test_KPRPMZennos.png


Gui, 5:Tab, 6
if (FonVybor != "ERROR" && FonVybor != "") {
    Gui, 5:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
}

Gui, 5:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\Clear.png
Gui, 5:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfo,  C:\ProgramData\KPRP\KPRP-main\Dannyye_MZ.png
Gui, 5:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditMZ, C:\ProgramData\KPRP\KPRP-main\Raskladka.png
Gui, 5:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\Editor.png
Gui, 5:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\Offers.png
Gui, 5:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\Bug_report.png
Gui, 5:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\Uluchsheniya.png
Gui, 5:Add, Picture, x720 y600 w48 w48   +BackgroundTrans gHelp, C:\ProgramData\KPRP\KPRP-main\Tekhpodderzhka.png
Gui, 5:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\Smena_fraktsii.png
Gui, 5:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\Help.png
Gui, 5:Add, Picture, x1020 y600 w48 w48   +BackgroundTrans  gLektsii_MZ, C:\ProgramData\KPRP\KPRP-main\Infa_Lepktsii.png
Gui, 5:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\restart.png


Gui, 5:Add, Picture, x10 y40 w128 w96  +BackgroundTrans gMedicine38, C:\ProgramData\KPRP\KPRP-main\Pulya_PMP.png
Gui, 5:Add, Picture, x10 y150 w128 w96 +BackgroundTrans gMedicine5, C:\ProgramData\KPRP\KPRP-main\Vnutrenneye.png
Gui, 5:Add, Picture, x10 y260 w128 w96 +BackgroundTrans gMedicine56, C:\ProgramData\KPRP\KPRP-main\Korennoy.png
Gui, 5:Add, Picture, x10 y370 w128 w96 +BackgroundTrans gMedicine57, C:\ProgramData\KPRP\KPRP-main\Dairy.png
Gui, 5:Add, Picture, x10 y480 w128 w96 +BackgroundTrans gMedicine55, C:\ProgramData\KPRP\KPRP-main\Wisdom.png


Gui, 5:Add, Picture, x130 y40 w128 w96  +BackgroundTrans gMedicine23, C:\ProgramData\KPRP\KPRP-main\Nozhevoye.png
Gui, 5:Add, Picture, x130 y150 w128 w96 +BackgroundTrans gMedicine76, C:\ProgramData\KPRP\KPRP-main\Peresadka.png
Gui, 5:Add, Picture, x130 y260 w128 w96 +BackgroundTrans gMedicine78, C:\ProgramData\KPRP\KPRP-main\Perevyazka.png
Gui, 5:Add, Picture, x130 y370 w128 w96 +BackgroundTrans gMedicine66, C:\ProgramData\KPRP\KPRP-main\Raneniye.png
Gui, 5:Add, Picture, x130 y480 w128 w96 +BackgroundTrans gMedicine67, C:\ProgramData\KPRP\KPRP-main\Rasicheniye.png

Gui, 5:Add, Picture, x250 y40 w128 w96  +BackgroundTrans gMedicine45, C:\ProgramData\KPRP\KPRP-main\Grizha.png
Gui, 5:Add, Picture, x250 y150 w128 w96 +BackgroundTrans gMedicine25, C:\ProgramData\KPRP\KPRP-main\Ozhog_PMP.png
Gui, 5:Add, Picture, x250 y260 w128 w96 +BackgroundTrans gMedicine75, C:\ProgramData\KPRP\KPRP-main\ZMT.png
Gui, 5:Add, Picture, x250 y370 w128 w96 +BackgroundTrans gMedicine98, C:\ProgramData\KPRP\KPRP-main\Gvozd.png
Gui, 5:Add, Picture, x250 y480 w128 w96 +BackgroundTrans gMedicine99, C:\ProgramData\KPRP\KPRP-main\Kostnaya_mozo.png

Gui, 5:Add, Picture, x370 y40 w128 w96  +BackgroundTrans gMedicine42, C:\ProgramData\KPRP\KPRP-main\Appenditsit.png
Gui, 5:Add, Picture, x370 y150 w128 w96 +BackgroundTrans gMedicine100, C:\ProgramData\KPRP\KPRP-main\Wart.png
Gui, 5:Add, Picture, x370 y260 w128 w96 +BackgroundTrans gMedicine51, C:\ProgramData\KPRP\KPRP-main\EKS.png
Gui, 5:Add, Picture, x370 y370 w128 w96 +BackgroundTrans gMedicine105, C:\ProgramData\KPRP\KPRP-main\MF.png
Gui, 5:Add, Picture, x370 y480 w128 w96 +BackgroundTrans gMedicine115, C:\ProgramData\KPRP\KPRP-main\Gem.png


Gui, 5:Add, Picture, x490 y40 w128 w96  +BackgroundTrans gMedicine53, C:\ProgramData\KPRP\KPRP-main\Rodinka.png
Gui, 5:Add, Picture, x490 y150 w128 w96 +BackgroundTrans gMedicine123, C:\ProgramData\KPRP\KPRP-main\Liposuction.png
Gui, 5:Add, Picture, x490 y260 w128 w96 +BackgroundTrans gMedicine124, C:\ProgramData\KPRP\KPRP-main\UHT_stone.png
Gui, 5:Add, Picture, x490 y370 w128 w96 +BackgroundTrans gMedicine125, C:\ProgramData\KPRP\KPRP-main\Hysterectomy.png
Gui, 5:Add, Picture, x490 y480 w128 w96 +BackgroundTrans gMedicine126, C:\ProgramData\KPRP\KPRP-main\Legkiye.png

Gui, 5:Add, Picture, x610 y40 w128 w96  +BackgroundTrans gMedicine44, C:\ProgramData\KPRP\KPRP-main\Uvelicheniye.png
Gui, 5:Add, Picture, x610 y150 w128 w96 +BackgroundTrans gMedicine127, C:\ProgramData\KPRP\KPRP-main\Ploskostopiya.png
Gui, 5:Add, Picture, x610 y260 w128 w96 +BackgroundTrans gMedicine128, C:\ProgramData\KPRP\KPRP-main\Grud.png
Gui, 5:Add, Picture,x610  y370 w128 w96 +BackgroundTrans gMedicine129, C:\ProgramData\KPRP\KPRP-main\Hrudy.png

Gui, 5:Add, Picture, x730 y40 w128 w96  +BackgroundTrans gMedicine35, C:\ProgramData\KPRP\KPRP-main\Rody.png

Gui, 5:Add, Picture, x850 y40 w128 w96  +BackgroundTrans gMedicine9, C:\ProgramData\KPRP\KPRP-main\VMS.png

Gui, 5:Add, Picture, x970 y40 w128 w96  +BackgroundTrans gMedicine40, C:\ProgramData\KPRP\KPRP-main\Sterilizatsiya.png

Gui, 5:Add, Picture, x1090 y40 w128 w96  +BackgroundTrans gMedicine11, C:\ProgramData\KPRP\KPRP-main\Hysteroscopy.png



Gui, 5:Tab, 7
if (FonVybor != "ERROR" && FonVybor != "") {
    Gui, 5:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
}

Gui, 5:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\Clear.png
Gui, 5:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfo,  C:\ProgramData\KPRP\KPRP-main\Dannyye_MZ.png
Gui, 5:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditMZ, C:\ProgramData\KPRP\KPRP-main\Raskladka.png
Gui, 5:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\Editor.png
Gui, 5:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\Offers.png
Gui, 5:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\Bug_report.png
Gui, 5:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\Uluchsheniya.png
Gui, 5:Add, Picture, x720 y600 w48 w48   +BackgroundTrans gHelp, C:\ProgramData\KPRP\KPRP-main\Tekhpodderzhka.png
Gui, 5:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\Smena_fraktsii.png
Gui, 5:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\Help.png
Gui, 5:Add, Picture, x1020 y600 w48 w48   +BackgroundTrans  gLektsii_MZ, C:\ProgramData\KPRP\KPRP-main\Infa_Lepktsii.png
Gui, 5:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\restart.png

Gui, 5:Add, Picture, x10 y40 w128 w96  +BackgroundTrans gMedicine36, C:\ProgramData\KPRP\KPRP-main\Spine.png

Gui, 5:Add, Picture, x130 y40 w128 w96  +BackgroundTrans gMedicine37, C:\ProgramData\KPRP\KPRP-main\Edge.png

Gui, 5:Add, Picture, x250 y40 w128 w96  +BackgroundTrans gMedicine39, C:\ProgramData\KPRP\KPRP-main\Rentgen.png

Gui, 5:Add, Picture, x370 y40 w128 w96  +BackgroundTrans gMedicine27, C:\ProgramData\KPRP\KPRP-main\Otkrytyy_PMP.png

Gui, 5:Add, Picture, x490 y40 w128 w96  +BackgroundTrans gMedicine50, C:\ProgramData\KPRP\KPRP-main\Exit.png

Gui, 5:Add, Picture, x610 y40 w128 w96  +BackgroundTrans gMedicine68, C:\ProgramData\KPRP\KPRP-main\stretching.png

Gui, 5:Add, Picture, x730 y40 w128 w96  +BackgroundTrans gMedicine77, C:\ProgramData\KPRP\KPRP-main\Noss.png

Gui, 5:Add, Picture, x850 y40 w128 w96  +BackgroundTrans gMedicine80, C:\ProgramData\KPRP\KPRP-main\Podvernul.png

Gui, 5:Add, Picture, x970 y40 w128 w96  +BackgroundTrans gMedicine24, C:\ProgramData\KPRP\KPRP-main\Quo.png


Gui, 5:Tab, 8
if (FonVybor != "ERROR" && FonVybor != "") {
    Gui, 5:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
}

Gui, 5:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\Clear.png
Gui, 5:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfo,  C:\ProgramData\KPRP\KPRP-main\Dannyye_MZ.png
Gui, 5:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditMZ, C:\ProgramData\KPRP\KPRP-main\Raskladka.png
Gui, 5:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\Editor.png
Gui, 5:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\Offers.png
Gui, 5:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\Bug_report.png
Gui, 5:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\Uluchsheniya.png
Gui, 5:Add, Picture, x720 y600 w48 w48   +BackgroundTrans gHelp, C:\ProgramData\KPRP\KPRP-main\Tekhpodderzhka.png
Gui, 5:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\Smena_fraktsii.png
Gui, 5:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\Help.png
Gui, 5:Add, Picture, x1020 y600 w48 w48   +BackgroundTrans  gLektsii_MZ, C:\ProgramData\KPRP\KPRP-main\Infa_Lepktsii.png
Gui, 5:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\restart.png

Gui, 5:Add, Picture, x10 y40 w128 w96 +BackgroundTrans gLekarstva1, C:\ProgramData\KPRP\KPRP-main\Allergiya.png
Gui, 5:Add, Picture, x10 y150 w128 w96 +BackgroundTrans gLekarstva11, C:\ProgramData\KPRP\KPRP-main\Golovnaya_png
Gui, 5:Add, Picture, x10 y260 w128 w96 +BackgroundTrans gLekarstva12, C:\ProgramData\KPRP\KPRP-main\Potentsiya.png
Gui, 5:Add, Picture, x10 y370 w128 w96 +BackgroundTrans gLekarstva13, C:\ProgramData\KPRP\KPRP-main\Diareya.png
Gui, 5:Add, Picture, x10 y480 w128 w96 +BackgroundTrans gLekarstva14, C:\ProgramData\KPRP\KPRP-main\Diabet1.png

Gui, 5:Add, Picture, x130 y40 w128 w96 +BackgroundTrans gLekarstva2, C:\ProgramData\KPRP\KPRP-main\Glazakh.png
Gui, 5:Add, Picture, x130 y150 w128 w96 +BackgroundTrans gLekarstva15, C:\ProgramData\KPRP\KPRP-main\Izzhoga.png
Gui, 5:Add, Picture, x130 y260 w128 w96 +BackgroundTrans gLekarstva16, C:\ProgramData\KPRP\KPRP-main\Kashel.png
Gui, 5:Add, Picture, x130 y370 w128 w96 +BackgroundTrans gLekarstva17, C:\ProgramData\KPRP\KPRP-main\Mochevoy.png
Gui, 5:Add, Picture, x130 y480 w128 w96 +BackgroundTrans gLekarstva18, C:\ProgramData\KPRP\KPRP-main\Migraine.png

Gui, 5:Add, Picture, x250 y40 w128 w96 +BackgroundTrans gLekarstva3, C:\ProgramData\KPRP\KPRP-main\Ushakh.png
Gui, 5:Add, Picture, x250 y150 w128 w96 +BackgroundTrans gLekarstva19, C:\ProgramData\KPRP\KPRP-main\Nasmork.png
Gui, 5:Add, Picture, x250 y260 w128 w96 +BackgroundTrans gLekarstva20, C:\ProgramData\KPRP\KPRP-main\
Gui, 5:Add, Picture, x250 y370 w128 w96 +BackgroundTrans gLekarstva23, C:\ProgramData\KPRP\KPRP-main\Prostuda.png
Gui, 5:Add, Picture, x250 y480 w128 w96 +BackgroundTrans gLekarstva24, C:\ProgramData\KPRP\KPRP-main\Sudorogi.png

Gui, 5:Add, Picture, x370 y40 w128 w96 +BackgroundTrans gLekarstva4, C:\ProgramData\KPRP\KPRP-main\Pochkakh.png
Gui, 5:Add, Picture, x370 y150 w128 w96 +BackgroundTrans gLekarstva25, C:\ProgramData\KPRP\KPRP-main\Serdechnaya.png
Gui, 5:Add, Picture, x370 y260 w128 w96 +BackgroundTrans gLekarstva26, C:\ProgramData\KPRP\KPRP-main\Toshnota.png
Gui, 5:Add, Picture, x370 y370 w128 w96 +BackgroundTrans gLekarstva27, C:\ProgramData\KPRP\KPRP-main\Painkillers.png
Gui, 5:Add, Picture, x370 y480 w128 w96 +BackgroundTrans gLekarstva28, C:\ProgramData\KPRP\KPRP-main\Uspokoitel.png

Gui, 5:Add, Picture, x490 y40 w128 w96 +BackgroundTrans gLekarstva5, C:\ProgramData\KPRP\KPRP-main\Zhivote.png
Gui, 5:Add, Picture, x490 y150 w128 w96 +BackgroundTrans gLekarstva29, C:\ProgramData\KPRP\KPRP-main\Bessonnitsa.png
Gui, 5:Add, Picture, x490 y260 w128 w96 +BackgroundTrans gLekarstva30, C:\ProgramData\KPRP\KPRP-main\Stress.png
Gui, 5:Add, Picture, x490 y370 w128 w96 +BackgroundTrans gLekarstva31, C:\ProgramData\KPRP\KPRP-main\Temperature.png
Gui, 5:Add, Picture, x490 y480 w128 w96 +BackgroundTrans gLekarstva32, C:\ProgramData\KPRP\KPRP-main\Asthma.png

Gui, 5:Add, Picture, x610 y40 w128 w96 +BackgroundTrans gLekarstva6, C:\ProgramData\KPRP\KPRP-main\Back.png
Gui, 5:Add, Picture, x610 y150 w128 w96 +BackgroundTrans gLekarstva33, C:\ProgramData\KPRP\KPRP-main\Ponos.png
Gui, 5:Add, Picture, x610 y260 w128 w96 +BackgroundTrans gLekarstva34, C:\ProgramData\KPRP\KPRP-main\Ulcer.png
Gui, 5:Add, Picture, x610 y370 w128 w96 +BackgroundTrans gLekarstva35, C:\ProgramData\KPRP\KPRP-main\Thrush.png
Gui, 5:Add, Picture, x610 y480 w128 w96 +BackgroundTrans gLekarstva36, C:\ProgramData\KPRP\KPRP-main\Infarkt.png

Gui, 5:Add, Picture, x730 y40 w128 w96 +BackgroundTrans gLekarstva7, C:\ProgramData\KPRP\KPRP-main\Pecheni.png
Gui, 5:Add, Picture, x730 y150 w128 w96 +BackgroundTrans gLekarstva37, C:\ProgramData\KPRP\KPRP-main\Dizziness.png
Gui, 5:Add, Picture, x730 y260 w128 w96 +BackgroundTrans gLekarstva38, C:\ProgramData\KPRP\KPRP-main\Gastrit.png
Gui, 5:Add, Picture, x730 y370 w128 w96 +BackgroundTrans gLekarstva39, C:\ProgramData\KPRP\KPRP-main\Toothache.png
Gui, 5:Add, Picture, x730 y480 w128 w96 +BackgroundTrans gLekarstva40, C:\ProgramData\KPRP\KPRP-main\Listy.png

Gui, 5:Add, Picture, x850 y40 w128 w96 +BackgroundTrans gLekarstva8, C:\ProgramData\KPRP\KPRP-main\Gorle.png
Gui, 5:Add, Picture, x850 y150 w128 w96 +BackgroundTrans gLekarstva41, C:\ProgramData\KPRP\KPRP-main\Protivovirusnyye.png
Gui, 5:Add, Picture, x850 y260 w128 w96 +BackgroundTrans gLekarstva42, C:\ProgramData\KPRP\KPRP-main\Stroke.png
Gui, 5:Add, Picture, x850 y370 w128 w96 +BackgroundTrans gLekarstva43, C:\ProgramData\KPRP\KPRP-main\Antiseptics.png
Gui, 5:Add, Picture, x850 y480 w128 w96 +BackgroundTrans gLekarstva44, C:\ProgramData\KPRP\KPRP-main\Bloating.png

Gui, 5:Add, Picture, x970 y40 w128 w96 +BackgroundTrans gLekarstva9, C:\ProgramData\KPRP\KPRP-main\Vitaminy.png
Gui, 5:Add, Picture, x970 y150 w128 w96 +BackgroundTrans gLekarstva45, C:\ProgramData\KPRP\KPRP-main\Gribok.png
Gui, 5:Add, Picture, x970 y260 w128 w96 +BackgroundTrans gLekarstva46, C:\ProgramData\KPRP\KPRP-main\Scabies.png
Gui, 5:Add, Picture, x970 y370 w128 w96 +BackgroundTrans gLekarstva47, C:\ProgramData\KPRP\KPRP-main\Polovom.png
Gui, 5:Add, Picture, x970 y480 w128 w96 +BackgroundTrans gLekarstva48, C:\ProgramData\KPRP\KPRP-main\Menstruatsii.png

Gui, 5:Add, Picture, x10  y480 w128 w96 +BackgroundTrans gLekarstva10, C:\ProgramData\KPRP\KPRP-main\Gemoroy.png
Gui, 5:Add, Picture, x250  y260 w128 w96 +BackgroundTrans gLekarstva21, C:\ProgramData\KPRP\KPRP-main\Increased.png
Gui, 5:Add, Picture, x10   y150 w128 w96 +BackgroundTrans gLekarstva22, C:\ProgramData\KPRP\KPRP-main\Reduced.png


Gui, 5:Tab, 9
if (FonVybor != "ERROR" && FonVybor != "") {
    Gui, 5:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
}

Gui, 5:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\Clear.png
Gui, 5:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfo,  C:\ProgramData\KPRP\KPRP-main\Dannyye_MZ.png
Gui, 5:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditMZ, C:\ProgramData\KPRP\KPRP-main\Raskladka.png
Gui, 5:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\Editor.png
Gui, 5:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\Offers.png
Gui, 5:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\Bug_report.png
Gui, 5:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\Uluchsheniya.png
Gui, 5:Add, Picture, x720 y600 w48 w48   +BackgroundTrans gHelp, C:\ProgramData\KPRP\KPRP-main\Tekhpodderzhka.png
Gui, 5:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\Smena_fraktsii.png
Gui, 5:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\Help.png
Gui, 5:Add, Picture, x1020 y600 w48 w48   +BackgroundTrans  gLektsii_MZ, C:\ProgramData\KPRP\KPRP-main\Infa_Lepktsii.png
Gui, 5:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\restart.png

Gui, 5:Add, Picture, x10 y40 w128 w96 +BackgroundTrans gLaziness20, C:\ProgramData\KPRP\KPRP-main\Dezinfektsiya.png
Gui, 5:Add, Picture, x10 y150 w128 w96 +BackgroundTrans gMedicine83, C:\ProgramData\KPRP\KPRP-main\Sroka_godnosti.png
Gui, 5:Add, Picture, x10 y260 w128 w96 +BackgroundTrans gMedicine87, C:\ProgramData\KPRP\KPRP-main\Dokumentatsiya.png
Gui, 5:Add, Picture, x10 y370 w128 w96 +BackgroundTrans gMedicine84, C:\ProgramData\KPRP\KPRP-main\Khraneniya.png
Gui, 5:Add, Picture, x10 y480 w128 w96 +BackgroundTrans gMedicine86, C:\ProgramData\KPRP\KPRP-main\Zamena_belya.png

Gui, 5:Add, Picture, x130 y40  w128 w96 +BackgroundTrans gMedicine108,  C:\ProgramData\KPRP\KPRP-main\Quartzization.png
Gui, 5:Add, Picture, x130 y150  w128 w96 +BackgroundTrans gMedicine109,  C:\ProgramData\KPRP\KPRP-main\PCD.png
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


; Функция отправки КРПР-МЗ по номеру шаблона
SendKPRPMZ(num) {
    ; --- Глобальные переменные с данными для подстановки ---
    global floor, Name, Surname, Bol_ro_1, Bol_ro_3, JWI, TAG, Middle_Name, Skrin_1, Female, stol
    
    ; --- Глобальные переменные с настройками ---
    global vybor, zaderzhka
    
    ; --- Глобальные переменные с путями к файлам-шаблонам ---
    global KPRPMZ1, KPRPMZ2, KPRPMZ3, KPRPMZ4, KPRPMZ5, KPRPMZ6, KPRPMZ7, KPRPMZ8, KPRPMZ9, KPRPMZ10
    global KPRPMZ11, KPRPMZ12, KPRPMZ13, KPRPMZ14, KPRPMZ15, KPRPMZ16, KPRPMZ17, KPRPMZ18, KPRPMZ19, KPRPMZ20
    global KPRPMZ21, KPRPMZ22, KPRPMZ23, KPRPMZ24, KPRPMZ25, KPRPMZ26, KPRPMZ27, KPRPMZ28, KPRPMZ29, KPRPMZ30
    global KPRPMZ31, KPRPMZ32, KPRPMZ33, KPRPMZ34, KPRPMZ35, KPRPMZ36, KPRPMZ37, KPRPMZ38, KPRPMZ39, KPRPMZ40
    global KPRPMZ41, KPRPMZ42, KPRPMZ43, KPRPMZ44, KPRPMZ45, KPRPMZ46, KPRPMZ47, KPRPMZ48, KPRPMZ49, KPRPMZ50
    global KPRPMZ51, KPRPMZ52, KPRPMZ53, KPRPMZ54, KPRPMZ55, KPRPMZ56, KPRPMZ57, KPRPMZ58, KPRPMZ59, KPRPMZ60
    global KPRPMZ61, KPRPMZ62, KPRPMZ63, KPRPMZ64, KPRPMZ65, KPRPMZ66, KPRPMZ67, KPRPMZ68, KPRPMZ69, KPRPMZ70
    global KPRPMZ71, KPRPMZ72, KPRPMZ73, KPRPMZ74, KPRPMZ75, KPRPMZ76, KPRPMZ77, KPRPMZ78, KPRPMZ79, KPRPMZ80
    global KPRPMZ81, KPRPMZ82, KPRPMZ83, KPRPMZ84, KPRPMZ85, KPRPMZ86, KPRPMZ87, KPRPMZ88, KPRPMZ89, KPRPMZ90
    global KPRPMZ91, KPRPMZ92, KPRPMZ93, KPRPMZ94, KPRPMZ95, KPRPMZ96, KPRPMZ97, KPRPMZ98, KPRPMZ99, KPRPMZ100
    global KPRPMZ101, KPRPMZ102, KPRPMZ103, KPRPMZ104, KPRPMZ105, KPRPMZ106, KPRPMZ107, KPRPMZ108, KPRPMZ109, KPRPMZ110
    global KPRPMZ111, KPRPMZ112, KPRPMZ113, KPRPMZ114, KPRPMZ115, KPRPMZ116, KPRPMZ117, KPRPMZ118, KPRPMZ119, KPRPMZ120
    global KPRPMZ121, KPRPMZ122, KPRPMZ123, KPRPMZ124, KPRPMZ125, KPRPMZ126, KPRPMZ127, KPRPMZ128, KPRPMZ129, KPRPMZ130
    global KPRPMZ131, KPRPMZ132, KPRPMZ133, KPRPMZ134, KPRPMZ135, KPRPMZ136, KPRPMZ137, KPRPMZ138, KPRPMZ139, KPRPMZ140
    global KPRPMZ141, KPRPMZ142, KPRPMZ143, KPRPMZ144, KPRPMZ145, KPRPMZ146, KPRPMZ147, KPRPMZ148, KPRPMZ149, KPRPMZ150
    global KPRPMZ151, KPRPMZ152, KPRPMZ153, KPRPMZ154, KPRPMZ155, KPRPMZ156, KPRPMZ157, KPRPMZ158, KPRPMZ159, KPRPMZ160
    global KPRPMZ161, KPRPMZ162, KPRPMZ163, KPRPMZ164, KPRPMZ165, KPRPMZ166, KPRPMZ167, KPRPMZ168, KPRPMZ169, KPRPMZ170
    global KPRPMZ171, KPRPMZ172, KPRPMZ173, KPRPMZ174, KPRPMZ175, KPRPMZ176, KPRPMZ177, KPRPMZ178, KPRPMZ179, KPRPMZ180
    global KPRPMZ181, KPRPMZ182, KPRPMZ183, KPRPMZ184, KPRPMZ185, KPRPMZ186, KPRPMZ187, KPRPMZ188, KPRPMZ189, KPRPMZ190
    global KPRPMZ191, KPRPMZ192, KPRPMZ193, KPRPMZ194, KPRPMZ195, KPRPMZ196, KPRPMZ197, KPRPMZ198, KPRPMZ199, KPRPMZ200
    global KPRPMZ201, KPRPMZ202, KPRPMZ203, KPRPMZ204, KPRPMZ205, KPRPMZ206, KPRPMZ207, KPRPMZ208, KPRPMZ209, KPRPMZ210
    global KPRPMZ211, KPRPMZ212, KPRPMZ213, KPRPMZ214, KPRPMZ215, KPRPMZ216, KPRPMZ217, KPRPMZ218, KPRPMZ219, KPRPMZ220
    global KPRPMZ221, KPRPMZ222, KPRPMZ223, KPRPMZ224, KPRPMZ225, KPRPMZ226, KPRPMZ227, KPRPMZ228, KPRPMZ229, KPRPMZ230

    ; --- Короткая пауза перед отправкой ---
    Sleep 150
    SendPlay {Enter} ; имитация нажатия Enter
	FileEncoding, UTF-8-RAW ; Делает русский язык
	
	
    ; Получаем переменную Var из функции Greeting()
    Var := Greeting()

    ; --- Массив всех файлов-шаблонов (AutoHotkey v1) ---
    fileVars := Array(KPRPMZ1, KPRPMZ2, KPRPMZ3, KPRPMZ4, KPRPMZ5, KPRPMZ6, KPRPMZ7, KPRPMZ8, KPRPMZ9, KPRPMZ10
        , KPRPMZ11, KPRPMZ12, KPRPMZ13, KPRPMZ14, KPRPMZ15, KPRPMZ16, KPRPMZ17, KPRPMZ18, KPRPMZ19, KPRPMZ20
        , KPRPMZ21, KPRPMZ22, KPRPMZ23, KPRPMZ24, KPRPMZ25, KPRPMZ26, KPRPMZ27, KPRPMZ28, KPRPMZ29, KPRPMZ30
        , KPRPMZ31, KPRPMZ32, KPRPMZ33, KPRPMZ34, KPRPMZ35, KPRPMZ36, KPRPMZ37, KPRPMZ38, KPRPMZ39, KPRPMZ40
        , KPRPMZ41, KPRPMZ42, KPRPMZ43, KPRPMZ44, KPRPMZ45, KPRPMZ46, KPRPMZ47, KPRPMZ48, KPRPMZ49, KPRPMZ50
        , KPRPMZ51, KPRPMZ52, KPRPMZ53, KPRPMZ54, KPRPMZ55, KPRPMZ56, KPRPMZ57, KPRPMZ58, KPRPMZ59, KPRPMZ60
        , KPRPMZ61, KPRPMZ62, KPRPMZ63, KPRPMZ64, KPRPMZ65, KPRPMZ66, KPRPMZ67, KPRPMZ68, KPRPMZ69, KPRPMZ70
        , KPRPMZ71, KPRPMZ72, KPRPMZ73, KPRPMZ74, KPRPMZ75, KPRPMZ76, KPRPMZ77, KPRPMZ78, KPRPMZ79, KPRPMZ80
        , KPRPMZ81, KPRPMZ82, KPRPMZ83, KPRPMZ84, KPRPMZ85, KPRPMZ86, KPRPMZ87, KPRPMZ88, KPRPMZ89, KPRPMZ90
        , KPRPMZ91, KPRPMZ92, KPRPMZ93, KPRPMZ94, KPRPMZ95, KPRPMZ96, KPRPMZ97, KPRPMZ98, KPRPMZ99, KPRPMZ100
        , KPRPMZ101, KPRPMZ102, KPRPMZ103, KPRPMZ104, KPRPMZ105, KPRPMZ106, KPRPMZ107, KPRPMZ108, KPRPMZ109, KPRPMZ110
        , KPRPMZ111, KPRPMZ112, KPRPMZ113, KPRPMZ114, KPRPMZ115, KPRPMZ116, KPRPMZ117, KPRPMZ118, KPRPMZ119, KPRPMZ120
        , KPRPMZ121, KPRPMZ122, KPRPMZ123, KPRPMZ124, KPRPMZ125, KPRPMZ126, KPRPMZ127, KPRPMZ128, KPRPMZ129, KPRPMZ130
        , KPRPMZ131, KPRPMZ132, KPRPMZ133, KPRPMZ134, KPRPMZ135, KPRPMZ136, KPRPMZ137, KPRPMZ138, KPRPMZ139, KPRPMZ140
        , KPRPMZ141, KPRPMZ142, KPRPMZ143, KPRPMZ144, KPRPMZ145, KPRPMZ146, KPRPMZ147, KPRPMZ148, KPRPMZ149, KPRPMZ150
        , KPRPMZ151, KPRPMZ152, KPRPMZ153, KPRPMZ154, KPRPMZ155, KPRPMZ156, KPRPMZ157, KPRPMZ158, KPRPMZ159, KPRPMZ160
        , KPRPMZ161, KPRPMZ162, KPRPMZ163, KPRPMZ164, KPRPMZ165, KPRPMZ166, KPRPMZ167, KPRPMZ168, KPRPMZ169, KPRPMZ170
        , KPRPMZ171, KPRPMZ172, KPRPMZ173, KPRPMZ174, KPRPMZ175, KPRPMZ176, KPRPMZ177, KPRPMZ178, KPRPMZ179, KPRPMZ180
        , KPRPMZ181, KPRPMZ182, KPRPMZ183, KPRPMZ184, KPRPMZ185, KPRPMZ186, KPRPMZ187, KPRPMZ188, KPRPMZ189, KPRPMZ190
        , KPRPMZ191, KPRPMZ192, KPRPMZ193, KPRPMZ194, KPRPMZ195, KPRPMZ196, KPRPMZ197, KPRPMZ198, KPRPMZ199, KPRPMZ200
        , KPRPMZ201, KPRPMZ202, KPRPMZ203, KPRPMZ204, KPRPMZ205, KPRPMZ206, KPRPMZ207, KPRPMZ208, KPRPMZ209, KPRPMZ210
        , KPRPMZ211, KPRPMZ212, KPRPMZ213, KPRPMZ214, KPRPMZ215, KPRPMZ216, KPRPMZ217, KPRPMZ218, KPRPMZ219, KPRPMZ220
        , KPRPMZ221, KPRPMZ222, KPRPMZ223, KPRPMZ224, KPRPMZ225, KPRPMZ226, KPRPMZ227, KPRPMZ228, KPRPMZ229, KPRPMZ230)


    ; --- Проверка, что номер шаблона в диапазоне 1-28 ---
    if (num < 1 || num > 230)
        return  ; если номер неправильный — выходим

    ; --- Получаем путь к нужному файлу-шаблону ---
    fileVar := fileVars[num]

    ; --- Читаем файл построчно ---
    Loop, read, %fileVar%
    {
        ; --- Разделяем строку по табуляциям ---
        Loop, parse, A_LoopReadLine, %A_Tab%
        {
            line := A_LoopField  ; текущий кусок строки

            ; --- Подстановка всех переменных в текст ---
            line := StrReplace(line, "%floor%", floor)
            line := StrReplace(line, "%Var%", Var)
            line := StrReplace(line, "%Name%", Name)
            line := StrReplace(line, "%Surname%", Surname)
            line := StrReplace(line, "%Bol_ro_1%", Bol_ro_1)
            line := StrReplace(line, "%Bol_ro_3%", Bol_ro_3)
            line := StrReplace(line, "%JWI%", JWI)
            line := StrReplace(line, "%TAG%", TAG)
            line := StrReplace(line, "%Middle_Name%", Middle_Name)
            line := StrReplace(line, "%Skrin_1%", Skrin_1)
            line := StrReplace(line, "%Female%", Female)
            line := StrReplace(line, "%stol%", stol)

            ; --- Отправка строки с задержкой ---
            %vybor%(line, "  " zaderzhka " ")
        }
    }
}


0001MZ7:
    SendKPRPMZ(1)
Return

0002MZ7:
    SendKPRPMZ(2)
Return

0003MZ7:
    SendKPRPMZ(3)
Return

0004MZ7:
    SendKPRPMZ(4)
Return

0005MZ7:
    SendKPRPMZ(5)
Return

0006MZ7:
    SendKPRPMZ(6)
Return

0007MZ7:
    SendKPRPMZ(7)
Return

0008MZ7:
    SendKPRPMZ(8)
Return

0009MZ7:
    SendKPRPMZ(9)
Return

0010MZ7:
    SendKPRPMZ(10)
Return

0011MZ7:
    SendKPRPMZ(11)
Return

0012MZ7:
    SendKPRPMZ(12)
Return

0013MZ7:
    SendKPRPMZ(13)
Return

0014MZ7:
    SendKPRPMZ(14)
Return

0015MZ7:
    SendKPRPMZ(15)
Return

0016MZ7:
    SendKPRPMZ(16)
Return

0017MZ7:
    SendKPRPMZ(17)
Return

0018MZ7:
    SendKPRPMZ(18)
Return

0019MZ7:
    SendKPRPMZ(19)
Return

0020MZ7:
    SendKPRPMZ(20)
Return

0021MZ7:
    SendKPRPMZ(21)
Return

0022MZ7:
    SendKPRPMZ(22)
Return

0023MZ7:
    SendKPRPMZ(23)
Return

0024MZ7:
    SendKPRPMZ(24)
Return

0025MZ7:
    SendKPRPMZ(25)
Return

0026MZ7:
    SendKPRPMZ(26)
Return

0027MZ7:
    SendKPRPMZ(27)
Return

0028MZ7:
    SendKPRPMZ(28)
Return

:?:/Лек_1::
    SendKPRPMZ(4)
Return

:?:/Лек_2::
    SendKPRPMZ(5)
Return

:?:/Лек_3::
    SendKPRPMZ(6)
Return

:?:/Лек_4::
    SendKPRPMZ(7)
Return

:?:/Лек_5::
    SendKPRPMZ(8)
Return

:?:/Лек_6::
    SendKPRPMZ(9)
Return

:?:/Аптека::
    SendKPRPMZ(25)
Return


:?:/ВМС_1::
    SendKPRPMZ(29)  
Return

:?:/ВМС_2::
    SendKPRPMZ(30)  
Return

:?:/Желудок::
    SendKPRPMZ(31)
Return

:?:/Пуля::
    SendKPRPMZ(32)
Return

:?:/Шприц::
    SendKPRPMZ(33)
Return

:?:/Цистоскоп_1::
    SendKPRPMZ(34)  
Return

:?:/Цистоскоп_2::
    SendKPRPMZ(35)  
Return

:?:/Цистоскоп_3::
    SendKPRPMZ(36)  
Return

:?:/Цистоскоп_4::
    SendKPRPMZ(37)  
Return

:?:/Вакцинация::
    SendKPRPMZ(38)
Return

:?:/Зрения_1::
    SendKPRPMZ(39)
Return
:?:/Зрения_2::
    SendKPRPMZ(40)
Return
:?:/Зрения_3::
    SendKPRPMZ(41)
Return
:?:/Зрения_4::
    SendKPRPMZ(42)
Return
:?:/Зрения_5::
    SendKPRPMZ(43)
Return
:?:/Зрения_6::
    SendKPRPMZ(44)
Return
:?:/Зрения_7::
    SendKPRPMZ(45)
Return
:?:/Зрения_8::
    SendKPRPMZ(46)
Return
:?:/Зрения_9::
    SendKPRPMZ(47)
Return


:?:/Вши_1::
    SendKPRPMZ(48)
Return
:?:/Вши_2::
    SendKPRPMZ(49)
Return
:?:/Вши_3::
    SendKPRPMZ(50)
Return
:?:/Вши_4::
    SendKPRPMZ(51)
Return

:?:/Флюшка_1::
    SendKPRPMZ(52)
Return
:?:/Флюшка_2::
    SendKPRPMZ(53)
Return
:?:/Флюшка_3::
    SendKPRPMZ(54)
Return
:?:/Флюшка_4::
    SendKPRPMZ(55)
Return
:?:/Флюшка_5::
    SendKPRPMZ(56)
Return

:?:/Температура_1::
    SendKPRPMZ(57)
Return
:?:/Температура_2::
    SendKPRPMZ(58)
Return
:?:/Температура_3::
    SendKPRPMZ(59)
Return
:?:/Температура_4::
    SendKPRPMZ(60)
Return

:?:/Маммограф_1::
    SendKPRPMZ(61)
Return
:?:/Маммограф_2::
    SendKPRPMZ(62)
Return
:?:/Маммограф_3::
    SendKPRPMZ(63)
Return
:?:/Маммограф_4::
    SendKPRPMZ(64)
Return

:?:/Прибор_1::
    SendKPRPMZ(65)
Return
:?:/Прибор_2::
    SendKPRPMZ(66)
Return
:?:/Прибор_3::
    SendKPRPMZ(67)
Return
:?:/Прибор_4::
    SendKPRPMZ(68)
Return

:?:/Глисты_1::
    SendKPRPMZ(69)
Return
:?:/Глисты_2::
    SendKPRPMZ(70)
Return
:?:/Глисты_3::
    SendKPRPMZ(71)
Return
:?:/Глисты_4::
    SendKPRPMZ(72)
Return

:?:/ЭКГ_1::
    SendKPRPMZ(73)
Return
:?:/ЭКГ_2::
    SendKPRPMZ(74)
Return
:?:/ЭКГ_3::
    SendKPRPMZ(75)
Return
:?:/ЭКГ_4::
    SendKPRPMZ(76)
Return

:?:/Гинек_1::
    SendKPRPMZ(77)
Return
:?:/Гинек_2::
    SendKPRPMZ(78)
Return
:?:/Гинек_3::
    SendKPRPMZ(79)
Return
:?:/Гинек_4::
    SendKPRPMZ(80)
Return
:?:/Гинек_5::
    SendKPRPMZ(81)
Return

:?:/Матка_1::
    SendKPRPMZ(82)
Return
:?:/Матка_2::
    SendKPRPMZ(83)
Return

:?:/Чувства_0::
    SendKPRPMZ(84)
Return
:?:/Чувства_1::
    SendKPRPMZ(85)
Return
:?:/Чувства_2::
    SendKPRPMZ(86)
Return
:?:/Чувства_3::
    SendKPRPMZ(87)
Return
:?:/Чувства_4::
    SendKPRPMZ(88)
Return
:?:/Чувства_5::
    SendKPRPMZ(89)
Return
:?:/Чувства_6::
    SendKPRPMZ(90)
Return

:?:/Палец_1::
    SendKPRPMZ(91)
Return
:?:/Палец_2::
    SendKPRPMZ(92)
Return
:?:/Палец_3::
    SendKPRPMZ(93)
Return

:?:/Сахар_1::
    SendKPRPMZ(94)
Return
:?:/Сахар_2::
    SendKPRPMZ(95)
Return
:?:/Сахар_3::
    SendKPRPMZ(96)
Return
:?:/Сахар_4::
    SendKPRPMZ(97)
Return

:?:/Сколиоз_1::
    SendKPRPMZ(98)
Return

:?:/Сколиоз_2::
    SendKPRPMZ(99)
Return

:?:/Сколиоз_3::
    SendKPRPMZ(100)
Return

:?:/КТГ_1::
    SendKPRPMZ(101)
Return

:?:/КТГ_2::
    SendKPRPMZ(102)
Return
:?:/КТГ_3::
    SendKPRPMZ(103)
Return

:?:/КТГ_4::
    SendKPRPMZ(104)
Return

:?:/КТГ_5::
    SendKPRPMZ(105)
Return

:?:/Берм_1::
    SendKPRPMZ(106)
Return

:?:/Берм_2::
    SendKPRPMZ(107)
Return

:?:/Берм_3::
    SendKPRPMZ(108)
Return

:?:/Берм_4::
    SendKPRPMZ(109)
Return

:?:/Берм_5::
    SendKPRPMZ(110)
Return

:?:/ЛЛ_1::
    SendKPRPMZ(111)
Return

:?:/ЛЛ_2::
    SendKPRPMZ(112)
Return

:?:/КТ_1::
    SendKPRPMZ(113)
Return

:?:/КТ_2::
    SendKPRPMZ(114)
Return

:?:/КТ_3::
    SendKPRPMZ(115)
Return

:?:/КТ_4::
    SendKPRPMZ(116)
Return

:?:/КТ_5::
    SendKPRPMZ(117)
Return

:?:/КТ_6::
    SendKPRPMZ(118)
Return

:?:/Стетоскоп_1::
  SendKPRPMZ(119)
Return

:?:/Стетоскоп_2::
  SendKPRPMZ(120)
Return

:?:/Стетоскоп_3::
  SendKPRPMZ(121)
Return

:?:/Стетоскоп_4::
  SendKPRPMZ(122)
Return

:?:/МРТ_1::
  SendKPRPMZ(123)
Return

:?:/МРТ_2::
  SendKPRPMZ(124)
Return

:?:/МРТ_3::
  SendKPRPMZ(125)
Return

:?:/МРТ_4::
  SendKPRPMZ(126)
Return

:?:/МРТ_5::
  SendKPRPMZ(127)
Return

:?:/МРА_1::
  SendKPRPMZ(128)
Return

:?:/МРА_2::
  SendKPRPMZ(129)
Return

:?:/МРА_3::
  SendKPRPMZ(130)
Return

:?:/МРА_4::
  SendKPRPMZ(131)
Return

:?:/МРА_5::
  SendKPRPMZ(132)
Return

:?:/Зонд_1::
  SendKPRPMZ(133)
Return

:?:/Зонд_2::
  SendKPRPMZ(134)
Return

:?:/Зонд_3::
  SendKPRPMZ(135)
Return

:?:/Зонд_4::
  SendKPRPMZ(136)
Return


Pause::Pause ; Assign the toggle-pause function to the "pause" key...
!p::Pause ; ... or assign it to Win+p or some other hotkey.
return



:?:/Форма::
SendPlay {Enter}
%vybor%("do В медицинской сумке лежит комплект рабочей формы.", "  " zaderzhka " ")
%vybor%("me достал" floor " рабочую форму и передал" floor " сотруднику напротив", "  " zaderzhka " ")
Return

:?:/ИВЛ_ЦГБ::
SendPlay {Enter}
%vybor%("do У койки стоит выключенный аппарат ИВЛ. ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат ", "  " zaderzhka " ")
%vybor%("me взял" floor " маску в руку, надел" floor " на лицо пациента ", "  " zaderzhka " ")
%vybor%("me включил" floor " подачу кислорода ", "  " zaderzhka " ")
Return

:?:/ИВЛ_АСМП::
SendPlay {Enter}
%vybor%("do В АСМП стоит выключенный аппарат ИВЛ. ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат  ", "  " zaderzhka " ")
%vybor%("do На аппарате лежит защитная маска. ", "  " zaderzhka " ")
%vybor%("me взял" floor " маску в руку, надел" floor " на лицо пациента ", "  " zaderzhka " ")
%vybor%("me включил" floor "  подачу кислорода в маску ", "  " zaderzhka " ")
Return

:?:/ИВЛ::
SendPlay {Enter}
%vybor%("me отключил" floor " подачу кислорода в маску ", "  " zaderzhka " ")
%vybor%("me сняв маску с пациента, положил" floor " её на аппарат ИВЛ ", "  " zaderzhka " ")
%vybor%("me выключил" floor " аппарат", "  " zaderzhka " ")
Return

:?:/ПХД_1::
SendPlay {Enter}
%vybor%("do Уборочный инвентарь в шкафу.", "  " zaderzhka " ")
%vybor%("me открыл" floor " шкаф и взял" floor " ведро, швабру", "  " zaderzhka " ")
%vybor%("me закрыл" floor " шкаф ", "  " zaderzhka " ")
%vybor%("do На стене можно заметить раковину, под ней кран для набора воды. ", "  " zaderzhka " ")
%vybor%("me подставил" floor " под кран ведро  ", "  " zaderzhka " ")
%vybor%("me открыл" floor " кран   ", "  " zaderzhka " ")
%vybor%("do Ведро наполнилось.", "  " zaderzhka " ")
%vybor%("me закрыл" floor " кран и поднял" floor " ведро с пола  ", "  " zaderzhka " ")
%vybor%("me поставил" floor " ведро с водой на пол и опустил" floor " в него швабру ", "  " zaderzhka " ")
%vybor%("me достал" floor " мокрую швабру из ведра ", "  " zaderzhka " ")
%vybor%("me отжал" floor " швабру в ведро  ", "  " zaderzhka " ")
%vybor%("me моет пол  ", "  " zaderzhka " ")
%vybor%("do На швабре можно заметить грязь. ", "  " zaderzhka " ")
%vybor%("me окунул" floor " швабру в ведро и прополоскал" floor " её  ", "  " zaderzhka " ")
%vybor%("do Швабра чистая. ", "  " zaderzhka " ")
%vybor%("me достал" floor " мокрую швабру из ведра ", "  " zaderzhka " ")
%vybor%("me отжал" floor " швабру в ведро  ", "  " zaderzhka " ")
Return



:?:/ПХД_2::
SendPlay {Enter}
%vybor%("me окунул" floor " швабру в ведро прополоскал" floor " ", "  " zaderzhka " ")
%vybor%("me достал" floor " мокрую швабру из ведра", "  " zaderzhka " ")
%vybor%("me отжал" floor " швабру в ведро  ", "  " zaderzhka " ")
%vybor%("do Швабра сухая. ", "  " zaderzhka " ")
%vybor%("do Ведро с водой можно заметить на полу на полу. ", "  " zaderzhka " ")
%vybor%("me взял" floor " ведро в левую руку ", "  " zaderzhka " ")
%vybor%("do На стене можно заметить раковину. ", "  " zaderzhka " ")
%vybor%("me поставил" floor " к стене швабру   ", "  " zaderzhka " ")
%vybor%("me вылил" floor " из ведра воду в раковину     ", "  " zaderzhka " ")
%vybor%("do Ведро  пустое.   ", "  " zaderzhka " ")
%vybor%("me взял" floor " швабру  ", "  " zaderzhka " ")
%vybor%("me открыл" floor " шкаф и поставил" floor " в него швабру с ведром", "  " zaderzhka " ")
%vybor%("me закрыл" floor "  шкаф  ", "  " zaderzhka " ")
Return



:?:/Рана_1::
SendPlay {Enter}
%vybor%("do В мед. сумке лежит жгут, шприц в упаковке и ампула обезболивающего. ", "  " zaderzhka " ")
%vybor%("me достал" floor "  жгут из сумки ", "  " zaderzhka " ")
%vybor%("me затянул" floor " жгут выше кровотечения ", "  " zaderzhka " ")
%vybor%("me взял" floor " упаковку со шприцом и ампулу с обезболивающим ", "  " zaderzhka " ")
%vybor%("me достал" floor " шприц и выкинул" floor "  упаковку  ", "  " zaderzhka " ")
%vybor%("me заполнил" floor " обезболивающим шприц до нужной отметки ", "  " zaderzhka " ")
%vybor%("me вколол" floor " обезболивающее ", "  " zaderzhka " ")
%vybor%("me выкинул" floor " шприц и ампулу обезболивающего ", "  " zaderzhka " ")
Return

:?:/Сознания_ПМП::
SendPlay {Enter}
%vybor%("do В медицинской сумке лежит вата, нашатырный спирт.", " " zaderzhka " ")
%vybor%("me раскрыв сумку, достал" floor " из неё ватку и бутыль с нашатырным спиртом", "  " zaderzhka " ")
%vybor%("me раскрыв бутыль с нашатырным спиртом, смочил" floor " ватку нашатырём ", "  " zaderzhka " ")
%vybor%("me убрав ватку от бутыля, поводил" floor " ей около носа пострадавшего ", "  " zaderzhka " ")
Return

:?:/Нос::
SendPlay {Enter}
%vybor%("me открыл" floor " сумку ", "  " zaderzhka " ")
%vybor%("do В правом отделении сумки, лежит вата и бутылка с перекисью водорода. ", "  " zaderzhka " ")
%vybor%("me достал" floor " перекись водорода и вату из сумки ", "  " zaderzhka " ")
%vybor%("me смочил" floor " вату перекисью водорода  ", "  " zaderzhka " ")
%vybor%("me поднес" female " ватку к ноздре пострадавшего  ", "  " zaderzhka " ")
Return


:?:/Нос_ПМП::
SendPlay {Enter}
%vybor%("me наклонил" floor " голову пострадавшего вниз ", "  " zaderzhka " ")
%vybor%("me открыв медицинскую сумку, взял" floor " ледяной компресс  ", "  " zaderzhka " ")
%vybor%("me наложил" floor " ледяной компресс на нос пострадавшего ", "  " zaderzhka " ")
%vybor%("say Придерживайте компресс. ", "  " zaderzhka " ")
%vybor%("me взял" floor " из сумки вату и баночку с перекисью водорода ", "  " zaderzhka " ")
%vybor%("me открыв баночку с перекисью водорода, смочил" floor " вату  ", "  " zaderzhka " ")
%vybor%("me вставил" floor " вату в обе ноздри человека напротив ", "  " zaderzhka " ")
Return



:?:/Нож::
SendPlay {Enter}
%vybor%("do На столе лежат все необходимые инструменты для обработки раны.  ", "  " zaderzhka " ")
%vybor%("me осмотрел" floor " ножевое ранение пациента, проверил" floor " степень повреждения тканей. ", "  " zaderzhka " ")
%vybor%("me аккуратно очистил" floor " место ранения от грязи и остатков одежды ", "  " zaderzhka " ")
%vybor%("do В медицинской сумке лежат антисептики и ватные тампоны. ", "  " zaderzhka " ")
%vybor%("me открыл" floor " антисептик и смочил вату ", "  " zaderzhka " ")
%vybor%("me обработал" floor " рану антисептиком, очистив её от возможных инфекций ", "  " zaderzhka " ")
%vybor%("do В стеллаже лежат шприцы и обезболивающие препараты. ", "  " zaderzhka " ")
%vybor%("me взял" floor " шприц с обезболивающим средством ", "  " zaderzhka " ")
%vybor%("me ввел" floor " обезболивающее в место ранения", "  " zaderzhka " ")
%vybor%("say Сейчас вам станет легче, боль утихнет через несколько минут. ", "  " zaderzhka " ")
%vybor%("do На столе лежит иглодержатель с нитью для швов. ", "  " zaderzhka " ")
%vybor%("me взял" floor " иглодержатель и нить ", "  " zaderzhka " ")
%vybor%("me аккуратно наложил" floor " швы на рану, сшивая края кожи ", "  " zaderzhka " ")
%vybor%("me обрезал" floor " концы нитей и закрепил" floor " их ", "  " zaderzhka " ")
%vybor%("do В стеллаже есть повязки и бинты. ", "  " zaderzhka " ")
%vybor%("me взял" floor " стерильную повязку и аккуратно наложил" floor " её на рану ", "  " zaderzhka " ")
%vybor%("me закрепил" floor " повязку бинтом, фиксируя её на месте ранения ", "  " zaderzhka " ")
%vybor%("say Операция завершена, швы заживут в течение нескольких недель. ", "  " zaderzhka " ")
%vybor%("say Я вам пропишу антибиотики для предотвращения инфекции. ", "  " zaderzhka " ")
%vybor%("say Вам необходимо избегать нагрузки на раненую область и следить за состоянием раны. ", "  " zaderzhka " ")
Return

:?:/Аппендикс::
SendPlay {Enter}
%vybor%("me надел" floor " стерильные перчатки ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола шприц с обезбаливающим, и сделал" floor " укол ", "  " zaderzhka " ")
%vybor%("do Около койки стоит аппарат для наркоза. ", "  " zaderzhka " ")
%vybor%("me me взял" floor " кислородную маску и надел" floor " её на пациента ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат для наркоза  ", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель со стола, и сделал" floor " надрез ", "  " zaderzhka " ")
%vybor%("me выделил" floor " орган аппендикса щипцами, и удалил" floor " его скальпелем ", "  " zaderzhka " ")
%vybor%("me обработал" floor " полость ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола иглу с нитью и продел" floor " её ", "  " zaderzhka " ")
%vybor%("me аккуратно зашил" floor "  рану, и обрезал" floor " концы нити ", "  " zaderzhka " ")
%vybor%("me взял" floor " зелёнку со стола, и обработал" floor "  рану  ", "  " zaderzhka " ")
%vybor%("me взял" floor " бинт со стола, и перевязал" floor " рану ", "  " zaderzhka " ")
%vybor%("me выключил" floor " аппарат для наркоза ", "  " zaderzhka " ")
%vybor%("me снял" floor " маску с пациента ", "  " zaderzhka " ")
%vybor%("say тдыхайте и соблюдайте диету. Всего доброго. ", "  " zaderzhka " ")
Return

:?:/ПМП_1::
SendPlay {Enter}
%vybor%("do В медицинской сумке лежит фонарик.", "  " zaderzhka " ")
%vybor%("me открыл" floor " медицинскую сумку и достал" floor " из нее фонарик", "  " zaderzhka " ")
%vybor%("me посветил" floor " фонариком в глаз пострадавшего ", "  " zaderzhka " ")
%vybor%("b При сотрясении мозга реакция зрачка отсутствует.", "  " zaderzhka " ")
%vybor%("do Зрачок пациента реагирует на свет?", "  " zaderzhka " ")
%vybor%("b /do Да. или /do Нет.", "  " zaderzhka " ")
Return

:?:/ПМП_2::
SendPlay {Enter}
%vybor%("say У вас выявлено сотрясение мозга, вам необходимо отдохнуть, избегать яркого света и стресса.", "  " zaderzhka " ")
Return

:?:/ПМП_3::
SendPlay {Enter}
%vybor%("say Сотрясение мозга у вас не выявлено, поздравляю, но будьте осторожны.", "  " zaderzhka " ")
Return

:?:/Челюсти_ПМП::
SendPlay {Enter}
%vybor%("me открыв мед.сумку, достал" floor " впитывающую ткань  ", "  " zaderzhka " ")
%vybor%("me положил" floor " впитывающую ткань в рот пострадавшего   ", "  " zaderzhka " ")
%vybor%("me взял" floor " из мед.сумки два ледяных компресса   ", "  " zaderzhka " ")
%vybor%("me наложил" floor " ледяные компрессы на обе стороны челюсти   ", "  " zaderzhka " ")
%vybor%("me взял" floor " из мед.сумки повязку и наложил" floor " её на челюсть   ", "  " zaderzhka " ")
%vybor%("say Согласны на госпитализацию?   ", "  " zaderzhka " ")
Return


:?:/УЗИ::
SendPlay {Enter}
%vybor%("do На столе лежат гель и ультразвуковой датчик.", "  " zaderzhka " ")
%vybor%("me обработал" floor " руки антисептиком и надел" floor " стерильные перчатки", "  " zaderzhka " ")
%vybor%("me нанёс" female " немного ультразвукового геля на живот пациента", "  " zaderzhka " ")
%vybor%("me взял" floor " ультразвуковой датчик и аккуратно провёл" floor " им по животу пациента", "  " zaderzhka " ")
%vybor%("do На экране появляется изображение внутренних органов пациента.", "  " zaderzhka " ")
%vybor%("me внимательно осмотрел" floor " изображение на экране, анализируя состояние органов", "  " zaderzhka " ")
%vybor%("do В комнате стоит монитор, на котором отображаются результаты УЗИ.", "  " zaderzhka " ")
%vybor%("me увеличил" floor " изображение, чтобы более детально рассмотреть органы пациента", "  " zaderzhka " ")
%vybor%("me сделал" floor " несколько снимков внутренних органов для дальнейшего анализа", "  " zaderzhka " ")
%vybor%("do В углу стоит медицинский журнал для записи результатов.", "  " zaderzhka " ")
%vybor%("me записал" floor " результаты исследования в медицинский журнал", "  " zaderzhka " ")
Return

:?:/Плод_1::
SendPlay {Enter}
%vybor%("do В углу палаты стоит гинекологическое кресло.", "  " zaderzhka " ")
%vybor%("say Снимайте нижнее бельё и присаживайтесь.", "  " zaderzhka " ")
Return
:?:/Плод_2::
SendPlay {Enter}
%vybor%("do На столе лежат стерильные перчатки. ", "  " zaderzhka " ")
%vybor%("me взял" floor " перчатки в руки ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки ", "  " zaderzhka " ")
%vybor%("do Около  стоит аппарат для наркоза. ", "  " zaderzhka " ")
%vybor%("me взял" floor " кислородную маску  ", "  " zaderzhka " ")
%vybor%("me надел" floor " маску на пациента ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат для наркоза ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола перекись водорода и ватку, и обработал" floor " место операции ", "  " zaderzhka " ")
%vybor%("do На стойке висит фетоскоп. ", "  " zaderzhka " ")
%vybor%("me снял" floor " фетоскоп со стойки ", "  " zaderzhka " ")
%vybor%("me начал" floor " вводить фетоскоп в брюшную стенку ", "  " zaderzhka " ")
%vybor%("me начал" floor " осмотр плода ", "  " zaderzhka " ")
%vybor%("do Обнаружены отклонения? ", "  " zaderzhka " ")
Return

:?:/Плод_3::
SendPlay {Enter}
%vybor%("me начал" floor " вынимать фетоскоп ", "  " zaderzhka " ")
%vybor%("me положил" floor " фетоскоп  в аппарат для дезинфекции  ", "  " zaderzhka " ")
%vybor%("me выключил" floor " аппарат для наркоза", "  " zaderzhka " ")
%vybor%("me снял" floor " маску с человека ", "  " zaderzhka " ")
Return

:?:/Плод_4::
SendPlay {Enter}
%vybor%("say Есть пороки развития. ", " " zaderzhka " ")
Return

:?:/Плод_5::
SendPlay {Enter}
%vybor%("say Все хорошо. ", " " zaderzhka " ")
Return

:?:/Стерилизация::
SendPlay {Enter}
%vybor%("do У стены стоит шкаф. ", "  " zaderzhka " ")
%vybor%("me открыл" floor " шкаф ", "  " zaderzhka " ")
%vybor%("do На верхней полке лежат перчатки. ", "  " zaderzhka " ")
%vybor%("me взял" floor " перчатки с полки ", "  " zaderzhka " ")
%vybor%("me надел" floor "перчатки  ", "  " zaderzhka " ")
%vybor%("do Около койки стоит аппарат для наркоза. ", "  " zaderzhka " ")
%vybor%("me взял" floor " кислородную маску ", "  " zaderzhka " ")
%vybor%("me надел" floor " маску на пациента ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат для наркоза ", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель ", "  " zaderzhka " ")
%vybor%("me сделал" floor " надрез в области брюшной полости ", "  " zaderzhka " ")
%vybor%("me аккуратно расставил" floor " ткани, чтобы добраться до фаллопиевых труб", "  " zaderzhka " ")
%vybor%("me взял" floor " кольца ", "  " zaderzhka " ")
%vybor%("me начал" floor " перетягивать фаллопиевы трубы ", "  " zaderzhka " ")
%vybor%("me остановил" floor " кровотечение  ", "  " zaderzhka " ")
%vybor%("me положил" floor " скальпель на стол ", "  " zaderzhka " ")
%vybor%("me зашил" floor " рану ", "  " zaderzhka " ")
%vybor%("me выключил" floor " аппарат для наркоза ", "  " zaderzhka " ")
%vybor%("me снял" floor " маску с пациента ", "  " zaderzhka " ")
%vybor%("say Операция завершена. Отдыхайте, все будет хорошо. ", "  " zaderzhka " ")
Return


:?:/Клизма_1::
SendPlay {Enter}
%vybor%("do В шкафу необходимые вещи. ", "  " zaderzhka " ")
%vybor%("me открыл" floor " шкаф   ", "  " zaderzhka " ")
%vybor%("me взял" floor " одноразовую пелёнку  ", "  " zaderzhka " ")
%vybor%("me постелил" floor " пелёнку на койку ", "  " zaderzhka " ")
%vybor%("say Снимите всю нижнюю одежду.  ", "  " zaderzhka " ")
%vybor%("say Ложитесь на левый бок, согните ноги.  ", "  " zaderzhka " ")
Return

:?:/Клизма_2::
SendPlay {Enter}
%vybor%("me взял" floor " клизму ", "  " zaderzhka " ")
%vybor%("do В стеллаже баночка с раствором Энема клин. ", "  " zaderzhka " ")
%vybor%("me открыл" floor " стеллаж   ", "  " zaderzhka " ")
%vybor%("me взял" floor " баночку раствором   ", "  " zaderzhka " ")
%vybor%("me открыв баночку, аккуратно ввёл" floor " раствор в клизму   ", "  " zaderzhka " ")
%vybor%("me поставил" floor " баночку с оставшимся раствором в стеллаж   ", "  " zaderzhka " ")
%vybor%("me закрыл" floor " стеллаж   ", "  " zaderzhka " ")
%vybor%("me взял" floor " вазелиновое масло из шкафа   ", "  " zaderzhka " ")
%vybor%("me закрыл" floor " шкаф   ", "  " zaderzhka " ")
%vybor%("me смазал" floor " конец трубки клизмы вазелиновым маслом  ", "  " zaderzhka " ")
%vybor%("me осторожно вводит трубку в задний проход пациента   ", "  " zaderzhka " ")
%vybor%("me начал" floor " водить раствор в пациента   ", "  " zaderzhka " ")
%vybor%("me вытащил" floor " трубку из заднего прохода    ", "  " zaderzhka " ")
%vybor%("say Садитесь на туалет и ожидайте выхода каловых масс. ", "  " zaderzhka " ")
Return



:?:/Нога_1::
SendPlay {Enter}
%vybor%("do В медицинской сумке лежит вата, перекись водорода.", " " zaderzhka " ")
%vybor%("me открыв мед.сумку, достал" floor " вату и баночку с перекисью водорода  ", "  " zaderzhka " ")
%vybor%("me открыв баночку с перекисью водорода, смочил" floor " ей вату  ", "  " zaderzhka " ")
%vybor%("me поднёс" Female " вату к ране и тщательно обработал" floor "  ", "  " zaderzhka " ")
%vybor%("me выкинул" floor " вату на землю  ", "  " zaderzhka " ")
%vybor%("me закрыв баночку с перекисью водорода, убрал" floor " её на землю  ", "  " zaderzhka " ")
%vybor%("me закрыл" floor " мед.сумку  ", "  " zaderzhka " ")
Return

:?:/Нога_2::
SendPlay {Enter}
%vybor%("me открыв мед.сумку, взял" floor " ледяной компресс  ", "  " zaderzhka " ")
%vybor%("me наложил" floor " ледяной компресс на ногу пострадавшего  ", "  " zaderzhka " ")
%vybor%("say Придерживайте компресс.   ", "  " zaderzhka " ")
%vybor%("me взял" floor " из мед.сумки давящую повязку и наложил" floor " её на место вывиха  ", "  " zaderzhka " ")
%vybor%("me тщательно зафиксировал" floor " повязку   ", "  " zaderzhka " ")
Return

:?:/Венозное_1::
SendPlay {Enter}
%vybor%("do В медицинской сумке лежит жгут, перекись водорода.", " " zaderzhka " ")
%vybor%("me раскрыв мед.сумку, достал" floor " из неё жгут с ремешком и бутыль с перекисью водорода  ", "  " zaderzhka " ")
%vybor%("me раскрыв бутыль с перекисью водорода, накапал" floor " немного перекиси на рану  ", "  " zaderzhka " ")
%vybor%("me закрыл" floor " бутыль с перекисью и положил" floor " его в мед.сумку   ", "  " zaderzhka " ")
%vybor%("me расстегнув жгут до максимального значения, просунул" floor " руку пострадавшего в жгут ", "  " zaderzhka " ")
%vybor%("me застегнул" floor " ремешок жгута так, чтобы он сдавливал" floor " поверхность над раной  ", "  " zaderzhka " ")
%vybor%("me достал" floor " из мед.сумки стерильную повязку, после чего наложил" floor " её на ранение  ", "  " zaderzhka " ")
Return

:?:/Артериальное_1::
SendPlay {Enter}
%vybor%("do В медицинской сумке лежит жгут, перекись водорода.", " " zaderzhka " ")
%vybor%("me раскрыв мед.сумку, достал" floor " из неё жгут с резиновым ремешком и бутыль с перекисью водорода ", "  " zaderzhka " ")
%vybor%("me отложил" floor " бутыль с перекисью на землю, после чего сильно зажал" floor " артерию около ранения   ", "  " zaderzhka " ")
%vybor%("me держа руку на артерии, надел" floor " жгут на руку пострадавшего ", "  " zaderzhka " ")
%vybor%("me отпустил" floor " руку с артерии и сильно застегнул жгут   ", "  " zaderzhka " ")
%vybor%("me взяв" floor " бутыль с перекисью с земли, открыл" floor " его и накапал" floor " немного перекиси на ранку ", "  " zaderzhka " ")
%vybor%("me закрыл" floor " бутыль с перекисью и положил" floor " его в мед.сумку   ", "  " zaderzhka " ")
%vybor%("me достал" floor " из мед.сумки стерильную повязку, после чего наложил" floor " её на ранение ", "  " zaderzhka " ")
Return

:?:/Пуля_ПМП::
SendPlay {Enter}
%vybor%("do В медицинской сумке лежит бинт, жгут и перекись водорода.", " " zaderzhka " ")
%vybor%("me расстегнув сумку, достал" floor " из неё перекись водорода, ватку, бинт и жгут ", "  " zaderzhka " ")
%vybor%("me открыв бутыль с перекисью водорода, смочил" floor " ватку перекисью ", "  " zaderzhka " ")
%vybor%("me тщательно протёр" Female " место вхождения пули ваткой ", "  " zaderzhka " ")
%vybor%("do В медицинской сумке можно заметить небольшой пакетик для мусора. ", "  " zaderzhka " ")
%vybor%("me кинул" floor " ватку в пакетик и сложил" floor " перекись водорода в сумку ", "  " zaderzhka " ")
%vybor%("me расстегнув жгут, надел" floor " его чуть выше ранения ", "  " zaderzhka " ")
%vybor%("me затянул" floor " ремешок жгута до среднего значения ", "  " zaderzhka " ")
%vybor%("me отмотав нужное количество бинта, оторвал" floor " его ", "  " zaderzhka " ")
%vybor%("me перебинтовал" floor " ранение, после чего сложил" floor " оставшийся бинт в сумку ", "  " zaderzhka " ")
Return

:?:/Вена_1::
SendPlay {Enter}
%vybor%("do На стене висит дозатор с антисептиком.", "  " zaderzhka " ")
%vybor%("me нанёс" Female " антисептик на руки и спешно растёр" Female " его", "  " zaderzhka " ")
%vybor%("do В кармане лежит пара стерильных перчаток.", "  " zaderzhka " ")
%vybor%("me вынул" floor " из кармана перчатки и натянул" floor " их на руки", "  " zaderzhka " ")
%vybor%("do На столе лежат жгут, баночка антисептика, ватка, шприц и лоток с колбами.", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола жгут", "  " zaderzhka " ")
%vybor%("me завязал" floor " жгут на руке пациента", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола ватку и антисептик", "  " zaderzhka " ")
%vybor%("me нанёс" Female " антисептик на ватку", "  " zaderzhka " ")
%vybor%("me обработал" floor " место укола ваткой", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола шприц", "  " zaderzhka " ")
%vybor%("me обнаружив вену на руке пациента, уколол" floor " в неё шприцом", "  " zaderzhka " ")
%vybor%("me шприцом взял" floor " кровь из вены", "  " zaderzhka " ")
%vybor%("me приложил" floor "" floor " ватку на место укола", "  " zaderzhka " ")
%vybor%("me вытянул" floor " шприц из вены", "  " zaderzhka " ")
%vybor%("say Держите ватку 5 минуты.", "  " zaderzhka " ")
%vybor%("me взял" floor " из лотка чистую колбу", "  " zaderzhka " ")
%vybor%("me перелил" floor " кровь из шприца в колбу", "  " zaderzhka " ")
%vybor%("me поставил" floor " колбу в специальный раздел лотка", "  " zaderzhka " ")
%vybor%("do Какая группа крови и резус-фактор у человека?    ", "  " zaderzhka " ")
%vybor%("do Рядом стоят урны для отходов.  ", "  " zaderzhka " ")
%vybor%("me снял" floor " перчатки с рук, затем выкинул" floor " их в урну", "  " zaderzhka " ")
Return



:?:/Капельница::
SendPlay {Enter}
%vybor%("do На столе лежат ватка, Хлоргексидин, упакованный катетер и пакеты с препаратом.", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола катетер, ватку и Хлоргексидин", "  " zaderzhka " ")
%vybor%("me опрыснул" floor " Хлоргексидином ватку", "  " zaderzhka " ")
%vybor%("me обнаружив вену на руке пациента, протер" female " ваткой место укола", "  " zaderzhka " ")
%vybor%("me вытащив катетер из упаковки, снял" floor " защитный колпачок", "  " zaderzhka " ")
%vybor%("me аккуратно ввёл" floor " катетер в вену", "  " zaderzhka " ")
%vybor%("me выкинул" floor " использованную ватку в урну", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола нужный пакет для капельницы", "  " zaderzhka " ")
%vybor%("do Штатив стоит у стены.", "  " zaderzhka " ")
%vybor%("me взяв штатив в руки, поставил" floor " его рядом с пациентом ", "  " zaderzhka " ")
%vybor%("me повесил" floor " пакет на штатив", "  " zaderzhka " ")
%vybor%("me подключил" floor " капельницу к катетеру", "  " zaderzhka " ")
%vybor%("me подрегулировал" floor " скорость капельницы	 ", "  " zaderzhka " ")
%vybor%("say Следите за уровнем жидкости в пакете, сообщите, если почувствуете дискомфорт. ", "  " zaderzhka " ")
%vybor%("say Если потребуется помощь, позовите.", "  " zaderzhka " ")
Return

:?:/ФГДС_1::
SendPlay {Enter}
%vybor%("say Здравствуйте. Сейчас я проведу Вам гастроскопию.  Ложитесь на кушеткуна левый бок.  ", "  " zaderzhka " ")
%vybor%("do На столике лежит капа.  ", "  " zaderzhka " ")
%vybor%("me взял" floor " капу в руку  ", "  " zaderzhka " ")
%vybor%("Так... Вот, откройте ротзакусите капу.  ", "  " zaderzhka " ")

Return

:?:/ФГДС_2::
SendPlay {Enter}
%vybor%("me вставил" floor " капу в рот пациента  ", "  " zaderzhka " ")
%vybor%("me начал" floor " вводить гастроскоп в пищевод пациента ", "  " zaderzhka " ")
%vybor%("me начал" floor " изучать пищевод ", "  " zaderzhka " ")
%vybor%("do Обнаружены ли отклонения в пищеводе?  ", "  " zaderzhka " ")
%vybor%("me продолжил" floor " вводить гастроскоп в желудок пациента ", "  " zaderzhka " ")
%vybor%("me начал" floor " осматривать стенки желудка ", "  " zaderzhka " ")
%vybor%("do Обнаружены ли отклонения в желудке?  ", "  " zaderzhka " ")
%vybor%("me осмотрел" floor " двенадцатипёрстную кишку ", "  " zaderzhka " ")
%vybor%("do Обнаружены ли отклонения в двенадцатипёрстной кишке?  ", "  " zaderzhka " ")
%vybor%("me начал" floor " вынимать гастроскоп из желудка пациента ", "  " zaderzhka " ")
%vybor%("me положил" floor " гастроскоп в аппарат для дезинфекции ", "  " zaderzhka " ")
Return

:?:/ФКС_1::
SendPlay {Enter}
%vybor%("say Здравствуйте. Сейчас, я проведу Вам, колоноскопию. ", "  " zaderzhka " ")
%vybor%("do На столе лежат стерильные перчатки. ", "  " zaderzhka " ")
%vybor%("me взял" floor " перчатки в руки ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки  ", "  " zaderzhka " ")
%vybor%("do На стойке висит эндоскоп. ", "  " zaderzhka " ")
%vybor%("me снял" floor " эндоскоп со стойки ", "  " zaderzhka " ")
%vybor%("me взял" floor " смазку в руку ", "  " zaderzhka " ")
%vybor%("me смазал" floor " эндоскоп смазкой ", "  " zaderzhka " ")
%vybor%("me поставил" floor " смазку на стол ", "  " zaderzhka " ")
%vybor%("me начал" floor " вводить эндоскоп в ректальное отверстие пациента ", "  " zaderzhka " ")
%vybor%("me начал" floor " визуальный осмотр состояния прямой кишки ", "  " zaderzhka " ")
%vybor%("do Обнаружены ли отклонения?", "  " zaderzhka " ")
%vybor%("me начал" floor " вынимать эндоскоп из ректального отверстия пациента ", "  " zaderzhka " ")
%vybor%("me положил" floor "  эндоскоп в аппарат для дезинфекции ", "  " zaderzhka " ")
Return

:?:/ФКС_2::
SendPlay {Enter}
%vybor%("say К сожалению, у Вас есть некоторые заболевания прямой кишки. ", " " zaderzhka " ")
%vybor%("say Можете одеваться. ", " " zaderzhka " ")
Return

:?:/ФКС_3::
SendPlay {Enter}
%vybor%("say Вашей прямой кишкой всё в порядке.", " " zaderzhka " ")
%vybor%("say Можете одеваться. ", " " zaderzhka " ")
Return

:?:/Донор::
SendPlay {Enter}
%vybor%("do На столе лежат медицинские перчатки. ", "  " zaderzhka " ")
%vybor%("me взял" floor " перчатки со стола ", "  " zaderzhka " ")
%vybor%("me надел" floor " медицинские перчатки ", "  " zaderzhka " ")
%vybor%("me взял" floor " донора за руку  ", "  " zaderzhka " ")
%vybor%("me взял" floor "  клеенчатый валик  ", "  " zaderzhka " ")
%vybor%("me подложил" floor "  клеёнчатый валик под локоть донора  ", "  " zaderzhka " ")
%vybor%("me зафиксировал" floor "  руку донора ладонью к верху ", "  " zaderzhka " ")
%vybor%("me взял" floor " пробирку и иглу с переходником с мед.лотка ", "  " zaderzhka " ")
%vybor%("me присоединил" floor "  пробирку к игле ", "  " zaderzhka " ")
%vybor%("me положил" floor " собранную систему в мед.лоток ", "  " zaderzhka " ")
%vybor%("me взял" floor "  жгут и спиртовую салфетку с мед.лотка ", "  " zaderzhka " ")
%vybor%("me обработал" floor "  спиртовой салфеткой область локтевого сгиба, на руке донора ", "  " zaderzhka " ")
%vybor%("me затянул" floor "  жгут на плече донора ", "  " zaderzhka " ")
%vybor%("say Сожмите, пожалуйста кулак.", "  " zaderzhka " ")
%vybor%("me взял" floor "   из мед.лотка собранную систему ", "  " zaderzhka " ")
%vybor%("me ввел" floor "  иглу в вену ", "  " zaderzhka " ")
%vybor%("me снимает жгут с плеча донора ", "  " zaderzhka " ")
%vybor%("say Можете разжать руку.", "  " zaderzhka " ")
%vybor%("me медленно оттянул" floor " поршень шприца вверх ", "  " zaderzhka " ")
%vybor%("me приложил" floor " спиртовую салфетку к месту прокола ", "  " zaderzhka " ")
%vybor%("me вывел" floor " иглу из вены ", "  " zaderzhka " ")
%vybor%("me отсоединил" floor " пробирку от иглы ", "  " zaderzhka " ")
%vybor%("do На столе стоит держатель для пробирок. ", "  " zaderzhka " ")
%vybor%("me поместил" floor " пробирку в держатель для пробирок ", "  " zaderzhka " ")
%vybor%("me положил" floor "  использованную иглу в мед.лоток ", "  " zaderzhka " ")
%vybor%("say Спасибо за донорство. ", "  " zaderzhka " ")
Return



:?:/Открытый::
SendPlay {Enter}
%vybor%("do В углу стоит хирургический стол.   ", "  " zaderzhka " ")
%vybor%("me взял" floor " жгут со стола и наложил" floor " его выше места перелома  ", "  " zaderzhka " ")
%vybor%("me взял" floor " шприц с обезбаливающим со стола  ", "  " zaderzhka " ")
%vybor%("me ввёл" floor " обезболивающее в ногу пациента ", "  " zaderzhka " ")
%vybor%("me проталкнул" floor " кость во внутрь  ", "  " zaderzhka " ")
%vybor%("me взял" floor " иглу в руки, продел" floor " в неё нить ", "  " zaderzhka " ")
%vybor%("me зашил" floor " ранение  ", "  " zaderzhka " ")
%vybor%("me отложил" floor " нить с иглой на стол   ", "  " zaderzhka " ")
%vybor%("me взял" floor " бинты со стола и перевязал " floor "ранение  ", "  " zaderzhka " ")
%vybor%("me взял" floor " дрель со стола подключил" floor " её к розетке  ", "  " zaderzhka " ")
%vybor%("me включил" floor " дрель и сделал" floor " тонкие прорезы сквозь ногу  ", "  " zaderzhka " ")
%vybor%("me продел" floor " в ногу спицы ", "  " zaderzhka " ")
%vybor%("me наложил" floor " на каждую спицу вату с двух сторон, прижав пробкой  ", "  " zaderzhka " ")
%vybor%("do Два кольца лежат на столе. ", "  " zaderzhka " ")
%vybor%("me взял" floor " кольца ", "  " zaderzhka " ")
%vybor%("me открыл" floor " кольца и наложил" floor " их   ", "  " zaderzhka " ")
%vybor%("me закрыл" floor " кольца ", "  " zaderzhka " ")
%vybor%("me взял" floor " палки и продел" floor " их сквозь отверстия колец  ", "  " zaderzhka " ")
%vybor%("me наложил" floor " палки и зафиксировал" floor " их гайками  ", "  " zaderzhka " ")
Return

:?:/Ожоги::
SendPlay {Enter}
%vybor%("me открыл" floor " сумку  ", "  " zaderzhka " ")
%vybor%("me нащупал" floor " стерильные перчатки и взял" floor " их в руку ", "  " zaderzhka " ")
%vybor%("me достал" floor " из стерильные перчатки из сумки ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки на руки ", "  " zaderzhka " ")
%vybor%("me осмотрел" floor " пациента ", "  " zaderzhka " ")
%vybor%("me освободил" floor " место ожога от одежды ", "  " zaderzhka " ")
%vybor%("me сделал" floor " оценку площади и глубины ожога ", "  " zaderzhka " ")
%vybor%("do Бутылка с холодной, чистой водой в сумке. ", "  " zaderzhka " ")
%vybor%("me взял" floor " бутылку с чистой водой в руку и вынул" floor " из сумки ", "  " zaderzhka " ")
%vybor%("me открутил" floor " крышку на бутылке ", "  " zaderzhka " ")
%vybor%("me вылил" floor " воду на место ожога ", "  " zaderzhka " ")
%vybor%("me достал" floor " из сумки шприц с обезболивающим ", "  " zaderzhka " ")
%vybor%("me смочил" floor " шприц спиртовым раствором ватный тампон ", "  " zaderzhka " ")
%vybor%("me обработав место укола, вколол" floor " обезболивающее пациенту ", "  " zaderzhka " ")
%vybor%("me взглянул" floor "  в сумку ", "  " zaderzhka " ")
%vybor%("do В сумке балончик. ", "  " zaderzhka " ")
%vybor%("me достал" floor " из сумки баллончик с надписью Пантенол ", "  " zaderzhka " ")
%vybor%("me разбрызгал" floor " спрей на область ожога ", "  " zaderzhka " ")
%vybor%("me посмотрел" floor " а другой отдел сумки ", "  " zaderzhka " ")
%vybor%("me достал" floor " из сумки стерильную салфетку ", "  " zaderzhka " ")
%vybor%("me прикрыл" floor " салфеткой ожог ", "  " zaderzhka " ")
%vybor%("say Все, ваш ожог обработан. ", "  " zaderzhka " ")
%vybor%("say Одевайтесь и можете идти. ", "  " zaderzhka " ")
Return

:?:/Позвоночник::
SendPlay {Enter}
%vybor%(" do У стены стоит стол с необходимыми инструментами. ", "  " zaderzhka " ")
%vybor%("me взял" floor " антисептик с ватой ", "  " zaderzhka " ")
%vybor%("me обрабатывает операционное поле  ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат наркоза ", "  " zaderzhka " ")
%vybor%("me взял" floor " кислородную маску ", "  " zaderzhka " ")
%vybor%("me надел" floor " кислородную маску на пациента ", "  " zaderzhka " ")
%vybor%("me подключил" floor " пациента к аппарату искусственной вентиляции лёгких ", "  " zaderzhka " ")
%vybor%("me передвинул" floor " аппарат поближе к койке ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат подачи хирургического цемента ", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель ", "  " zaderzhka " ")
%vybor%("me сделал" floor " разрез в месте перелома позвоночника ", "  " zaderzhka " ")
%vybor%("me взял" floor " троакар ", "  " zaderzhka " ")
%vybor%("me постепенно ввел" floor " троакар в позвоночник ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат ", "  " zaderzhka " ")
%vybor%("me подсоединил" floor " трубку аппарата к троакару ", "  " zaderzhka " ")
%vybor%("me нажал" floor " кнопку 'Подать воздух' ", "  " zaderzhka " ")
%vybor%("me вытащил" floor " троакар из позвонка ", "  " zaderzhka " ")
%vybor%("me взял" floor " трубку ", "  " zaderzhka " ")
%vybor%("me засунул" floor " трубку в позвонок ", "  " zaderzhka " ")
%vybor%("me нажал" floor " на кнопку 'Запуск' ", "  " zaderzhka " ")
%vybor%("me начал" floor " заливать цемент в позвоночник ", "  " zaderzhka " ")
%vybor%("me выключил" floor " аппарат подачи хирургического цемента ", "  " zaderzhka " ")
%vybor%("me вытащил" floor " трубку из позвоночника ", "  " zaderzhka " ")
%vybor%("me положил" floor " трубку на аппарат ", "  " zaderzhka " ")
%vybor%("me начал" floor " двигать аппарат к углу комнаты ", "  " zaderzhka " ")
%vybor%("me взял" floor " в руки нитки и ножницы ", "  " zaderzhka " ")
%vybor%("me отрезал" floor " нужное количество ниток ", "  " zaderzhka " ")
%vybor%("me сшивает место разреза кожи ", "  " zaderzhka " ")
%vybor%("me взял" floor " послеоперационный пластырь ", "  " zaderzhka " ")
%vybor%("do Послеоперационный пластырь в руках. ", "  " zaderzhka " ")
%vybor%("me наклеил" floor " пластырь на место шва ", "  " zaderzhka " ")
%vybor%("me отключил" floor " пациента от аппарата искусственной вентиляции лёгких ", "  " zaderzhka " ")
%vybor%("me снял" floor " кислородную маску с человека ", "  " zaderzhka " ")
%vybor%("say Операция прошла успешно. ", "  " zaderzhka " ")
%vybor%("say Сейчас я Вам одену корсет. ", "  " zaderzhka " ")
%vybor%("me взял" floor " корсет в руку ", "  " zaderzhka " ")
%vybor%("me аккуратно одевает корсет на спину пациента ", "  " zaderzhka " ")
%vybor%("me плотно завязывает шнурки корсета ", "  " zaderzhka " ")
%vybor%("me проверяет фиксацию корсета ", "  " zaderzhka " ")
%vybor%("say Теперь необходимо носить корсет как минимум 2 месяца. ", "  " zaderzhka " ")
Return
:?:/Кровь::
SendPlay {Enter}
%vybor%("do Рядом стоит аппарат наркоза.  ", "  " zaderzhka " ")
%vybor%("me подключил" floor " апппрпт наркоза к пациенту   ", "  " zaderzhka " ")
%vybor%("do Рядом стоит стол.   ", "  " zaderzhka " ")
%vybor%("do На столе лежат перчатки.  ", "  " zaderzhka " ")
%vybor%("me взял" floor " перчатки    ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки   ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола вату и Йодонат  ", "  " zaderzhka " ")
%vybor%("me смочил" floor " вату йодонатом   ", "  " zaderzhka " ")
%vybor%("me начал" floor " обрабатывать область груди  ", "  " zaderzhka " ")
%vybor%("do На столе лежит скальпель.   ", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель   ", "  " zaderzhka " ")
%vybor%("me сделал" floor " надрез в области грудной клетки   ", "  " zaderzhka " ")
%vybor%("me делает разрезы мышц и жира  ", "  " zaderzhka " ")
%vybor%("me обнаружил" floor " легие и кровеносные сосуды   ", "  " zaderzhka " ")
%vybor%("me обнаружил" floor " повреждённый сосуд  ", "  " zaderzhka " ")
%vybor%("me взял" floor " нитки  ", "  " zaderzhka " ")
%vybor%("me начал" floor " перекрывать поврежденный сосуд нитками   ", "  " zaderzhka " ")
%vybor%("do На столе лежит катетер.  ", "  " zaderzhka " ")
%vybor%("me взял" floor " катетер в руки  ", "  " zaderzhka " ")
%vybor%("me начал" floor " выкачивать кровь из полости плевры  ", "  " zaderzhka " ")
%vybor%("do На столе лежат игла и нитки. ", "  " zaderzhka " ")
%vybor%("me взял" floor " нитки и иглу  ", "  " zaderzhka " ")
%vybor%("me начинает зашивать разрезанные мышцы  ", "  " zaderzhka " ")
%vybor%("me зашивает кожу на груди  ", "  " zaderzhka " ")
%vybor%("me взял" floor " ватку и раствор   ", "  " zaderzhka " ")
%vybor%("me смочил" floor " вату  йодовым раствором  ", "  " zaderzhka " ")
%vybor%("me обрабатывает швы  ", "  " zaderzhka " ")
%vybor%("me взял" floor "  хирургический пластырь в руки ", "  " zaderzhka " ")
%vybor%("me накладывает хирургический пластырь на швы  ", "  " zaderzhka " ")
%vybor%("me отключил" floor "  аппарат наркоза  ", "  " zaderzhka " ")
%vybor%("me отсоеденил" floor "  аппарат наркоза от пациента  ", "  " zaderzhka " ")
Return

:?:/Грыжа::
SendPlay {Enter}
%vybor%("do На столе лежат перчатки и мед.маска.  ", "  " zaderzhka " ")
%vybor%("me взял" floor " перчатки  ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки  ", "  " zaderzhka " ")
%vybor%("do Рядом стоит аппарат наркоза.  ", "  " zaderzhka " ")
%vybor%("me подключил" floor " аппарат наркоза к пациенту  ", "  " zaderzhka " ")
%vybor%("me взял" floor " датчики от аппарата  ", "  " zaderzhka " ")
%vybor%("me подключил" floor " датчики к пациенту  ", "  " zaderzhka " ")
%vybor%("me взял" floor " бутыль с Йодонатом со стойки  ", "  " zaderzhka " ")
%vybor%("me открыл" floor " бутыль с Йодонатом  ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола вату  ", "  " zaderzhka " ")
%vybor%("me смочил" floor " вату йодонатом  ", "  " zaderzhka " ")
%vybor%("me начал" floor " обрабатывать место надреза  ", "  " zaderzhka " ")
%vybor%("do На столе лежит скальпель.  ", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель  ", "  " zaderzhka " ")
%vybor%("me сделал" floor " надрез в середине позвоночника ", "  " zaderzhka " ")
%vybor%("me взял" floor " ватный тампон со стола  ", "  " zaderzhka " ")
%vybor%("me вытер" Female " аккуратно кровь  ", "  " zaderzhka " ")
%vybor%("me взял" floor " ранорасширитель с подноса  ", "  " zaderzhka " ")
%vybor%("me расширил" floor " надрез с помощью инструмента  ", "  " zaderzhka " ")
%vybor%("me посмотрел" floor " на датчик пульса пациента  ", "  " zaderzhka " ")
%vybor%("me взял" floor " зажим с подноса  ", "  " zaderzhka " ")
%vybor%("me взял" floor " инструмент для удаления связок и костей ", "  " zaderzhka " ")
%vybor%("me начал" floor " удалять участки связок и костей  ", "  " zaderzhka " ")
%vybor%("me начал" floor " оценивать степень повреждения нервов  ", "  " zaderzhka " ")
%vybor%("me взял" floor " зажим с подноса  ", "  " zaderzhka " ")
%vybor%("me взял" floor " инструмент для удаления грыжи  ", "  " zaderzhka " ")
%vybor%("me начал" floor " удалять грыжу с диска позвоночника  ", "  " zaderzhka " ")
%vybor%("do Хирургическая нить и игла лежат на столе.  ", "  " zaderzhka " ")
%vybor%("me взял" floor " с подноса хирургическую нить и иглу ", "  " zaderzhka " ")
%vybor%("me начал" floor " продевать нить в ушко иглы  ", "  " zaderzhka " ")
%vybor%("me начал" floor "  зашивать надрез на спине пациента ", "  " zaderzhka " ")
%vybor%("do На столе лежит раствор хлорида натрия и вата.  ", "  " zaderzhka " ")
%vybor%("me смочил" floor " вату раствором хлорида натрия  ", "  " zaderzhka " ")
%vybor%("me начал" floor " обрабатывать швы  ", "  " zaderzhka " ")
%vybor%("do Хирургический пластырь лежит на столе.  ", "  " zaderzhka " ")
%vybor%("me взял" floor " хирургический пластырь в руки  ", "  " zaderzhka " ")
%vybor%("me начал" floor " накладывать хирургический пластырь на швы  ", "  " zaderzhka " ")
%vybor%("me отключил" floor " аппарат наркоза  ", "  " zaderzhka " ")
%vybor%("me отсоединил" floor " аппарат наркоза от пациента  ", "  " zaderzhka " ")
%vybor%("say Операция на этом закончена.  ", "  " zaderzhka " ")
Return

:?:/Грудь::
SendPlay {Enter}
%vybor%("me открыл" floor " шкаф  ", "  " zaderzhka " ")
%vybor%("do На верхней полке лежат перчатки.  ", "  " zaderzhka " ")
%vybor%("me взял" floor " перчатки с полки   ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки   ", "  " zaderzhka " ")
%vybor%("me закрыл" floor " шкаф   ", "  " zaderzhka " ")
%vybor%("me взял" floor " маркер со стола  ", "  " zaderzhka " ")
%vybor%("me отметил" floor " места для надрезов   ", "  " zaderzhka " ")
%vybor%("me положил" floor " маркер на стол   ", "  " zaderzhka " ")
%vybor%("me взял" floor " шприц с обезболивающим со стола  ", "  " zaderzhka " ")
%vybor%("me вколол" floor " обезболивающее в плечо пациента ", "  " zaderzhka " ")
%vybor%("do Около койки стоит аппарат для наркоза.  ", "  " zaderzhka " ")
%vybor%("me взял" floor " кислородную маску  ", "  " zaderzhka " ")
%vybor%("me надел" floor " маску на пациента  ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат для наркоза  ", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель со стола  ", "  " zaderzhka " ")
%vybor%("me сделал" floor " надрезы по линиям  ", "  " zaderzhka " ")
%vybor%("do На столе лежат силиконовые импланты.  ", "  " zaderzhka " ")
%vybor%("me взял" floor " силиконовые импланты  ", "  " zaderzhka " ")
%vybor%("me аккуратно вставил" floor " импланты в надрезы ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола дезинфицирующие тампоны  ", "  " zaderzhka " ")
%vybor%("me обработал" floor " места надрезов  ", "  " zaderzhka " ")
%vybor%("me взял" floor " иголку с нитью со стола  ", "  " zaderzhka " ")
%vybor%("me зашил" floor " надрезы  ", "  " zaderzhka " ")
%vybor%("me взял" floor " ножницы со стола  ", "  " zaderzhka " ")
%vybor%("me обрезал" floor " нить ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола обработанные зеленкой ватные тампоны  ", "  " zaderzhka " ")
%vybor%("me обработал" floor " швы зеленкой  ", "  " zaderzhka " ")
%vybor%("me взял" floor " стерильную эластичную повязку со стола  ", "  " zaderzhka " ")
%vybor%("me перевязал" floor " пациента  ", "  " zaderzhka " ")
%vybor%("me выключил" floor " аппарат для наркоза  ", "  " zaderzhka " ")
%vybor%("me снял" floor " маску с человека ", "  " zaderzhka " ")
Return

:?:/ПМП_открытый::
SendPlay {Enter}
%vybor%("me расстегнув сумку, достал" floor " из неё жгут  ", "  " zaderzhka " ")
%vybor%("me развязав жгут, надел" floor " его чуть выше перелома  ", "  " zaderzhka " ")
%vybor%("me затянул" floor " ремешок жгута  ", "  " zaderzhka " ")
%vybor%("do Кровотечение из открытого перелома постепенно начало останавливаться.  ", "  " zaderzhka " ")
%vybor%("me достал" floor " из медицинской сумки шприц с обезболивающим, ватку и медицинский спирт  ", "  " zaderzhka " ")
%vybor%("me открыв медицинский спирт, смочил" floor " им ватку  ", "  " zaderzhka " ")
%vybor%("me протёр" Female " на ноге пострадавшего место для будущего укола  ", "  " zaderzhka " ")
%vybor%("do В мед.сумке можно заметить небольшой пакетик для мусора.  ", "  " zaderzhka " ")
%vybor%("me бросив ватку в пакетик, положил" floor " в сумку медицинский спирт  ", "  " zaderzhka " ")
%vybor%("me оттянув поршень шприца, подставил" floor " его к обработанному месту  ", "  " zaderzhka " ")
%vybor%("me аккуратно введя иглу в вену, надавил" floor " на поршень  ", "  " zaderzhka " ")
%vybor%("do Обезболивающее в крови пострадавшего.  ", "  " zaderzhka " ")
%vybor%("me достал" floor " шприц из вены и положил" floor " его в пакетик для мусора  ", "  " zaderzhka " ")
%vybor%("me достал" floor " из сумки перекись водорода и стерильную повязку  ", "  " zaderzhka " ")
%vybor%("me капнул" floor " перекисью водорода по краям открытого перелома ", "  " zaderzhka " ")
%vybor%("me положил" floor " её в сумку  ", "  " zaderzhka " ")
%vybor%("me размотав стерильную повязку, наложил" floor " её на открытый перелом  ", "  " zaderzhka " ")
%vybor%("me достал" floor " из медицинской сумки две небольших прямых доски и бинт  ", "  " zaderzhka " ")
%vybor%("me отмотав нужный кусок бинта, оторвал" floor " его от основного  ", "  " zaderzhka " ")
%vybor%("me приложил" floor " две прямых доски по бокам повреждённой конечности  ", "  " zaderzhka " ")
%vybor%("me перебинтовал" floor " доски так, что они прижались к ноге  ", "  " zaderzhka " ")
%vybor%("do Доски полностью иммобилизовали повреждённую конечность.  ", "  " zaderzhka " ")
Return

:?:/ПМП_закрытый::
SendPlay {Enter}
%vybor%("me расстегнув сумку, достал" floor " из неё ватку, бутыль с перекисью водорода и обезболивающую мазь ", "  " zaderzhka " ")
%vybor%("me открыв бутыль с перекисью водорода, смочил" floor " ватку перекисью ", "  " zaderzhka " ")
%vybor%("me несколько раз провёл" floor " ваткой по ранкам на повреждённой конечности  ", "  " zaderzhka " ")
%vybor%("do В сумке можно заметить небольшой пакетик для мусора. ", "  " zaderzhka " ")
%vybor%("me кинул" floor " ватку в пакетик и, закрыв бутыль с перекисью, положил" floor " её обратно в сумку ", "  " zaderzhka " ")
%vybor%("me открыл" floor " тюбик с мазью ", "  " zaderzhka " ")
%vybor%("me намазал" floor " её на месте перелома ", "  " zaderzhka " ")
%vybor%("me закрыл" floor " тюбик с мазью и положил" floor " его обратно в сумку ", "  " zaderzhka " ")
%vybor%("me достал" floor " из сумки две небольших прямых доски и бинт ", "  " zaderzhka " ")
%vybor%("me отмотав бинт до нужной длины, оторвал" floor " нужный кусок ", "  " zaderzhka " ")
%vybor%("me приложил" floor " доски по обе стороны от повреждённой конечности ", "  " zaderzhka " ")
%vybor%("me начал" floor " прибинтовывать доски, плотно прижимая их к конечности ", "  " zaderzhka " ")
%vybor%("do Через некоторое время доски зафиксировались бинтом и иммобилизировали конечность. ", "  " zaderzhka " ")
Return


:?:/Мороз_1::
SendPlay {Enter}
%vybor%("do В шкафу лежат стерильные перчатки и антисептик. ", "  " zaderzhka " ")
%vybor%("me открыв шкаф, взял" floor " стерильные перчатки и надел их ", "  " zaderzhka " ")
%vybor%("do На столе лежат бинты и салфетки. ", "  " zaderzhka " ")
%vybor%("me взял" floor " бинт и салфетку ", "  " zaderzhka " ")
%vybor%("me аккуратно снял" floor " одежду с пораженных участков тела пациента ", "  " zaderzhka " ")
%vybor%("me тщательно осмотрел" floor " кожу, проверяя, не возникли ли пузырьки или повреждения ", "  " zaderzhka " ")
%vybor%("me взял" floor " антисептик и аккуратно обработал" floor " пораженные участки кожи ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола теплую грелку и подложил" floor " ее к пораженному участку ", "  " zaderzhka " ")
%vybor%("me взял" floor " стерильные салфетки и аккуратно промокнул" floor " влажные участки кожи пациента ", "  " zaderzhka " ")
%vybor%("do На столе лежит послеоперационный пластырь. ", "  " zaderzhka " ")
%vybor%("me взял" floor " пластырь и аккуратно наклеил" floor " его на пораженные участки ", "  " zaderzhka " ")
%vybor%("me взял" floor " бинт и закрепил" floor " его поверх пластыря, чтобы обеспечить дополнительную защиту", "  " zaderzhka " ")
%vybor%("me подключил" floor " пациента к аппарату для мониторинга температуры тела", "  " zaderzhka " ")
%vybor%("say Обморожение зафиксировано. Мы обеспечили защиту от дальнейших повреждений. ", "  " zaderzhka " ")
%vybor%("say Я выпишу вам Нурофен цена 500 рублей для снятия воспаления и болевого синдрома. Согласны ли вы на лечение?", "  " zaderzhka " ")
Return


:?:/Мороз_2::
SendPlay {Enter}
%vybor%("do В СМП лежат пледы и сухие повязки.  ", "  " zaderzhka " ")
%vybor%("me взял" floor " одну из сухих повязок, намотал" floor " ее на пострадавшую конечность пациента  ", "  " zaderzhka " ")
%vybor%("me достав плед, накрыл" floor " им пострадавшую конечность поверх повязки    ", "  " zaderzhka " ")
%vybor%("do В СМП стоят небольшой чайник и несколько кружек.", "  " zaderzhka " ")
%vybor%("me включив чайник, положил" floor "  пакетик чая в одну из кружек ", "  " zaderzhka " ")
%vybor%("me выключив вскипевший чайник, налил" floor " кипяток в кружку  ", "  " zaderzhka " ")
%vybor%("me передал" floor "  кружку с чаем пострадавшему ", "  " zaderzhka " ")
Return


:?:/Ожог_ПМП::
SendPlay {Enter}
%vybor%("me убрал" floor " одежду с места ожога   ", "  " zaderzhka " ")
%vybor%("do На стене расположены кран и большая раковина. ", "  " zaderzhka " ")
%vybor%("say Так-с, теперь необходимо охладить ожог.    ", "  " zaderzhka " ")
%vybor%("me подставив место ожога к крану, включил" floor " его   ", "  " zaderzhka " ")
%vybor%("me включил" floor " холодную воду   ", "  " zaderzhka " ")
%vybor%("me выключил" floor " кран    ", "  " zaderzhka " ")
%vybor%("me достал" floor " раствор фурацилина из сумки    ", "  " zaderzhka " ")
%vybor%("say Сейчас будет немножко больно.    ", "  " zaderzhka " ")
%vybor%("me открыв флакон с жидким лекарством, аккуратно нане" Female " с его на место ожога  ", "  " zaderzhka " ")
%vybor%("me закрыв флакон с фурацилином, убрал" floor " его в мед. сумку  ", "  " zaderzhka " ")
%vybor%("me достал" floor " из сумки стерильную марлевую повязку   ", "  " zaderzhka " ")
%vybor%("say Осталось немного...    ", "  " zaderzhka " ")
%vybor%("me нанес" Female " повязку на место ожога так, чтобы она не сдавливала рану   ", "  " zaderzhka " ")
%vybor%("say На этом все. Удачи, будьте аккуратнее. ", "  " zaderzhka " ")
Return


:?:/Ожог_ПМП_1::
SendPlay {Enter}
%vybor%("me убрал" floor " одежду с места ожога   ", "  " zaderzhka " ")
%vybor%("do В СМП расположены кран и большая раковина. ", "  " zaderzhka " ")
%vybor%("say Так-с, теперь необходимо охладить ожог.    ", "  " zaderzhka " ")
%vybor%("me подставив место ожога к крану, включил" floor " его   ", "  " zaderzhka " ")
%vybor%("me включил" floor " холодную воду   ", "  " zaderzhka " ")
%vybor%("me выключил" floor " кран    ", "  " zaderzhka " ")
%vybor%("me достал" floor " раствор фурацилина из сумки    ", "  " zaderzhka " ")
%vybor%("say Сейчас будет немножко больно.    ", "  " zaderzhka " ")
%vybor%("me открыв флакон с жидким лекарством, аккуратно нане" Female " с его на место ожога ", "  " zaderzhka " ")
%vybor%("me закрыв флакон с фурацилином, убрал" floor " его в мед. сумку  ", "  " zaderzhka " ")
%vybor%("me достал" floor " из сумки стерильную марлевую повязку    ", "  " zaderzhka " ")
%vybor%("say Осталось немного...    ", "  " zaderzhka " ")
%vybor%("me нанес" Female " повязку на место ожога так, чтобы она не сдавливала рану    ", "  " zaderzhka " ")
%vybor%("say На этом все. Удачи, будьте аккуратнее. ", "  " zaderzhka " ")
Return



:?:/Алкоголь_1::
SendPlay {Enter}
%vybor%(" " stol "  ", "  " zaderzhka " ")
%vybor%("do На столе лежит чистый бланк медицинского освидетельствования и ручка. ", "  " zaderzhka " ")
%vybor%("me заполнил" floor " полученную информацию в бланк ", "  " zaderzhka " ")
%vybor%("say Назовите свое ФИО? ", "  " zaderzhka " ")
%vybor%("say А ещё где и кем работаете? ", "  " zaderzhka " ")

Return


:?:/Алкоголь_2::
SendPlay {Enter}
%vybor%("say Замечательно, кем и когда направлен на медицинское освидетельствование? ", "  " zaderzhka " ")
%vybor%("say По какой причине Вы проходите медицинское свидетельство? ", "  " zaderzhka " ")
%vybor%("me заполнил" floor " полученную информацию в бланк ", "  " zaderzhka " ")
%vybor%("do Акт заполнен на половину. ", "  " zaderzhka " ")
%vybor%("me отложил" floor " бланк и ручку на стол ", "  " zaderzhka " ")
Return

:?:/Алкоголь_3::
SendPlay {Enter}
%vybor%("do В шкафу новая насадка и алкотестер. ", "  " zaderzhka " ")
%vybor%("me достал" floor " из шкафа новую насадку и алкотестер ", "  " zaderzhka " ")
%vybor%("do Алкотестер и насадка в руке. ", "  " zaderzhka " ")
%vybor%("me поставил" floor " новую насадку ", "  " zaderzhka " ")
%vybor%("do Насадка на алкотестере.  ", "  " zaderzhka " ")
%vybor%("say Сделайте глубокий выдох в трубку.  ", "  " zaderzhka " ")
%vybor%("do На экране алкотестера значения [число].  ", "  " zaderzhka " ")

Return

:?:/Алкоголь_4::
SendPlay {Enter}
%vybor%(" " stol "  ", "  " zaderzhka " ")
%vybor%("do На столе находится упаковка медицинских перчаток, склянка медицинского спирта, вата и игла. ", "  " zaderzhka " ")
%vybor%("me открыв упаковку с медицинскими перчатками, надел" floor " их на руки ", "  " zaderzhka " ")
%vybor%("me взяв со стола склянку медицинского спирта, открыл" floor " её ", "  " zaderzhka " ")
%vybor%("me взяв вату со стола, смочил" floor " её спиртом ", "  " zaderzhka " ")
%vybor%("me отложил" floor " склянку на стол ", "  " zaderzhka " ")
%vybor%("me обработал" floor " указательный палец правой руки ", "  " zaderzhka " ")
%vybor%("do Рядом стоит урна. ", "  " zaderzhka " ")
%vybor%("me выбросил" floor " использованную вату в урну ", "  " zaderzhka " ")
%vybor%("do Упакованная полоска экспресс-теста на алкоголь лежит на столе. ", "  " zaderzhka " ")
%vybor%("me открыв упаковку, достал" floor " полоску экспресс-теста ", "  " zaderzhka " ")
%vybor%("me взяв со стола иглу, подставил" floor " её к указательному пальцу правой руки ", "  " zaderzhka " ")
%vybor%("me сделав укол, подставил" floor " полоску экспресс-теста к пальцу ", "  " zaderzhka " ")
%vybor%("do На тест-полоску капнуло необходимое количество крови. ", "  " zaderzhka " ")
%vybor%("do Экспресс-тест показал положительный результат? ", "  " zaderzhka " ")
%vybor%("b /do Да. или /do Нет.", "  " zaderzhka " ")

Return

:?:/Алкоголь_5::
SendPlay {Enter}
%vybor%("do На столе лежит акт медицинского освидетельствования для установления факта употребления алкоголя и состояния опьянения. ", "  " zaderzhka " ")
%vybor%("do Рядом с актом лежит ручка. ", "  " zaderzhka " ")
%vybor%("me взяв ручку, заполнил" floor " акт и отметил" floor ", что содержание алкоголя в организме не соответствует норме ", "  " zaderzhka " ")
%vybor%("do На столе лежит штемпель. ", "  " zaderzhka " ")
%vybor%("me взяв штемпель со стола, поставил" floor " печать «ГВРП МакКарти С. А. - Минздрав РП» на строке заключения", "  " zaderzhka " ")
%vybor%("me поставил" floor " личную подпись", "  " zaderzhka " ")
%vybor%("do Заполненный и заверенный акт лежит на столе. ", "  " zaderzhka " ")


Return

:?:/Алкоголь_6::
SendPlay {Enter}
%vybor%("do На столе лежит акт медицинского освидетельствования для установления факта употребления алкоголя и состояния опьянения. ", "  " zaderzhka " ")
%vybor%("do Рядом с актом лежит ручка. ", "  " zaderzhka " ")
%vybor%("me взяв ручку, заполнил" floor " акт и отметил" floor ", что содержание алкоголя в организме соответствует норме ", "  " zaderzhka " ")
%vybor%("do На столе лежит штемпель. ", "  " zaderzhka " ")
%vybor%("me взяв штемпель со стола, поставил" floor " печать «ГВРП МакКарти С. А. - Минздрав РП» на строке заключения", "  " zaderzhka " ")
%vybor%("me поставил" floor " личную подпись", "  " zaderzhka " ")
%vybor%("do Заполненный и заверенный акт лежит на столе. ", "  " zaderzhka " ")

Return

:?:/Алкоголь_7::
SendPlay {Enter}
%vybor%("do На столе лежит акт медицинского освидетельствования для установления факта употребления алкоголя и состояния опьянения. ", "  " zaderzhka " ")
%vybor%("do Рядом с актом лежит ручка. ", "  " zaderzhka " ")
%vybor%("me взяв ручку, составил" floor " акт и поставил" floor " отметку об отказе от медицинского освидетельствования ", "  " zaderzhka " ")
%vybor%("do На столе лежит штемпель. ", "  " zaderzhka " ")
%vybor%("me взяв штемпель со стола, поставил" floor " печать «ГВРП МакКарти С. А. - Минздрав РП» на строке заключения", "  " zaderzhka " ")
%vybor%("me поставил" floor " личную подпись", "  " zaderzhka " ")
%vybor%("do Заполненный и заверенный акт лежит на столе. ", "  " zaderzhka " ")

Return


:?:/АВД_1::
SendPlay {Enter}
%vybor%("me снял" floor " с пациента одежду ", " " zaderzhka " ")
Return

:?:/АВД_2::
SendPlay {Enter}
%vybor%("me открыл" floor "  медсумку ", "  " zaderzhka " ")
%vybor%("me отложил" floor " полотенце на стол, открыл" floor " полку, взял АВД и электроды и включил" floor " аппарат", "  " zaderzhka " ")
%vybor%("me приклеил" floor " первый электрод на тело пациента", "  " zaderzhka " ")
%vybor%("me приклеил" floor " второй электрод на тело пациента", "  " zaderzhka " ")
%vybor%("me нажал" floor " на кнопку  ", "  " zaderzhka " ")
%vybor%("do У человека есть пульс?", "  " zaderzhka " ")


Return

:?:/АВД_3::
SendPlay {Enter}
%vybor%("do АВД начал издавать звуки.  ", "  " zaderzhka " ")
%vybor%("me нажал" floor " на кнопку Пуск  ", "  " zaderzhka " ")
%vybor%("me поднес" female " руку к сонной артерии пациента ", "  " zaderzhka " ")
%vybor%("me пытается нащупать пульс  ", "  " zaderzhka " ")
%vybor%("do У человека есть пульс?  ", "  " zaderzhka " ")
Return

:?:/АВД_4::
SendPlay {Enter}
%vybor%("me выключил" floor " АВД апарат и вытащил" floor " электроды ", "  " zaderzhka " ")
%vybor%("me поставил" floor " апарат на полку  ", "  " zaderzhka " ")
Return

:?:/Наркотики_1::
SendPlay {Enter}
%vybor%(" " stol "  ", "  " zaderzhka " ")
%vybor%("do На столе лежит чистый бланк медицинского освидетельствования и ручка. ", "  " zaderzhka " ")
%vybor%("me заполнил" floor " полученную информацию в бланк ", "  " zaderzhka " ")
%vybor%("say Назовите свое ФИО? ", "  " zaderzhka " ")
%vybor%("say А ещё где и кем работаете? ", "  " zaderzhka " ")

Return

:?:/Наркотики_2::
SendPlay {Enter}
%vybor%("say Замечательно, кем и когда направлен на медицинское освидетельствование? ", "  " zaderzhka " ")
%vybor%("say По какой причине Вы проходите медицинское свидетельство? ", "  " zaderzhka " ")
%vybor%("me заполнил" floor " полученную информацию в бланк ", "  " zaderzhka " ")
%vybor%("do Акт заполнен на половину. ", "  " zaderzhka " ")
%vybor%("me отложил" floor " бланк и ручку на стол ", "  " zaderzhka " ")

Return

:?:/Наркотики_3::
SendPlay {Enter}
%vybor%("do В медицинской сумке находятся необходимые медицинские инструменты.   ", " " zaderzhka " ")
%vybor%("me открыв сумку, достал" floor " из неё баночку   ", " " zaderzhka " ")
%vybor%("say Возьмите пожалуйста баночку.   ", " " zaderzhka " ")
%vybor%("say Сейчас Вам под присмотром сотрудников полиции необходимо отойти, сходить в туалет по-маленькому и принести полученный результат сюда.   ", " " zaderzhka " ")
%vybor%("say Мочой должна быть наполнена как минимум половина баночки. Ждем Вас тут.   ", " " zaderzhka " ")
Return

:?:/Наркотики_4::
SendPlay {Enter}
%vybor%("me взяв баночку, открыл" floor " ее ", " " zaderzhka " ")
%vybor%("me достал" floor " из сумки тест-полоску для экспресс-теста на наркотики ", " " zaderzhka " ")
%vybor%("me опустил" floor " полоску в мочевую жидкость пациента ", " " zaderzhka " ")
%vybor%("do Какой результат показала тест-полоска? ", " " zaderzhka " ")
%vybor%("b /do Положительный. или /do Отрицательный.", "  " zaderzhka " ")
Return

:?:/Наркотики_5::
SendPlay {Enter}
%vybor%("do На тест-полоске отобразились две бордовые линии. ", " " zaderzhka " ")
%vybor%("say Наркотиков в моче пациента не наблюдается, все чисто. ", " " zaderzhka " ")
%vybor%("me закрыв баночку с анализами пациента, убрал" floor " ее в медицинскую сумку ", " " zaderzhka " ")
Return

:?:/Наркотики_6::
SendPlay {Enter}
%vybor%("do На тест-полоске отобразилась одна бордовая линия. ", " " zaderzhka " ")
%vybor%("say Тест показал, что Вы употребляли наркотические вещества. Проследуйте за сотрудниками полиции. ", " " zaderzhka " ")
%vybor%("me закрыв баночку с анализами пациента, убрал" floor " ее в медицинскую сумку ", " " zaderzhka " ")
Return

:?:/Наркотики_7::
SendPlay {Enter}
%vybor%("do На столе лежит акт медицинского освидетельствования для установления факта употребления наркотиков и состояния опьянения. ", "  " zaderzhka " ")
%vybor%("do Рядом с актом лежит ручка. ", "  " zaderzhka " ")
%vybor%("me взяв ручку, составил" floor " акт и поставил отметку об отказе от медицинского освидетельствования ", "  " zaderzhka " ")
%vybor%("do На столе лежит штемпель. ", "  " zaderzhka " ")
%vybor%("me взяв штемпель со стола, поставил" floor " печать «ГВРП МакКарти С. А. - Минздрав РП» на строке заключения", "  " zaderzhka " ")
%vybor%("me поставил" floor " личную подпись", "  " zaderzhka " ")
%vybor%("do Заполненный и заверенный акт лежит на столе. ", "  " zaderzhka " ")

Return


:?:/Ребро_1::
SendPlay {Enter}
%vybor%("say Сейчас проведем сканирование, выясним серьезность, ложитесь.", "  " zaderzhka " ")
%vybor%("me подключил" floor "  апппрпт наркоза к пациенту ", "  " zaderzhka " ")
%vybor%("do Рентген аппарат стоит у стены. ", "  " zaderzhka " ")
%vybor%("me выкатывает аппарат к койке пациента", "  " zaderzhka " ")
%vybor%("me включает аппарат", "  " zaderzhka " ")
%vybor%("me наклоняет аппарат прислоняя прибор к спине пациента ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола вату и Йодонат ", "  " zaderzhka " ")
%vybor%("me запускает сканирование ", "  " zaderzhka " ")
%vybor%("me вынимает снимок из аппарата ", "  " zaderzhka " ")
%vybor%("me задумчиво смотрит на снимок ", "  " zaderzhka " ")
%vybor%("do Обнаружены отклонения? ", "  " zaderzhka " ")
Return

:?:/Ребро_2::
SendPlay {Enter}
%vybor%("me отложил" floor " снимок на тумбочку ", "  " zaderzhka " ")
%vybor%("say Соболезную вам, худшие опасения подтвердились. ", "  " zaderzhka " ")
%vybor%("say Будем ставить вам корсет. ", "  " zaderzhka " ")
%vybor%("me взяв перчатки с тумбочки надел" floor "  их ", "  " zaderzhka " ")
%vybor%("me щупает место перелома ", "  " zaderzhka " ")
%vybor%("me резким движением рук вправляет кость в правильное положение ", "  " zaderzhka " ")
%vybor%("say Сейчас достану обезболивающее и корсет. ", "  " zaderzhka " ")
%vybor%("do Шкаф стоит у стены. ", "  " zaderzhka " ")
%vybor%("me открыл" floor "  дверцу шкафа ", "  " zaderzhka " ")
%vybor%("me взяв препарат в руку несет его пациенту ", "  " zaderzhka " ")
%vybor%("me потянул" floor "  препарат пациенту ", "  " zaderzhka " ")
%vybor%("say Разжуйте и проглотите, это снизит боль ", "  " zaderzhka " ")
%vybor%("me взяв корсет, несет его пациенту ", "  " zaderzhka " ")
%vybor%("me аккуратно надевает корсет на спину пациента ", "  " zaderzhka " ")
%vybor%("me завязывает шнурки фиксируя корсет плотно на месте перелома ", "  " zaderzhka " ")
%vybor%("me проверяет фиксацию корсета ", "  " zaderzhka " ")
%vybor%("say Вам с ним нужно будет проходить полторы-две недели. ", "  " zaderzhka " ")
%vybor%("say После нужно будет приехать к нам, повторно проведем сканирование. ", "  " zaderzhka " ")
%vybor%("say Вообще не снимать и не мочить. Спать только на животе. ", "  " zaderzhka " ")
%vybor%("say Сейчас я Вам вколю обезболивающее.  ", "  " zaderzhka " ")
%vybor%("do Препараты лежат на стеллаже. ", "  " zaderzhka " ")
%vybor%("me достал" floor " нужный препарат со стеллажа ", "  " zaderzhka " ")
%vybor%("me смочил" floor " ватку Хлоргексидином ", "  " zaderzhka " ")
%vybor%("me снял" floor " со шприца колпачок ", "  " zaderzhka " ")
%vybor%("me набрав Хлоргексидин в шприц ", "  " zaderzhka " ")
%vybor%("me приспустил" floor " штаны пациента ", "  " zaderzhka " ")
%vybor%("me смазывает место будущего укола мокрой ваткой ", "  " zaderzhka " ")
%vybor%("me убрал" floor " Хлоргексидин на стеллаж ", "  " zaderzhka " ")
%vybor%("do Препараты на стеллаже. ", "  " zaderzhka " ")
%vybor%("me достал" floor " нужный препарат со стеллажа ", "  " zaderzhka " ")
%vybor%("me набрал" floor " в шприц Налбуфин ", "  " zaderzhka " ")
%vybor%("do Лекарство в шприце. ", "  " zaderzhka " ")
%vybor%("me введя шприц в место укола вводит лекарство внутрь ", "  " zaderzhka " ")
%vybor%("do Урна в углу палаты. ", "  " zaderzhka " ")
%vybor%("me вытащив шприц бросил" floor " его в урну ", "  " zaderzhka " ")
%vybor%("me прислонил" floor " ватку к месту укола ", "  " zaderzhka " ")
%vybor%("say Так. Прижимайте ватку, потом просто бросьте ее в урну. ", "  " zaderzhka " ")
%vybor%("say Вам нужно полежать в таком положении минимум 1 час. ", "  " zaderzhka " ")
%vybor%("say После чего, Вы можете ехать домой.  ", "  " zaderzhka " ")
Return

:?:/Ребро_3::
SendPlay {Enter}
%vybor%("Я выпишу Вам Фастум-гель. Его стоимость 500 рублей. Вы согласны?", " " zaderzhka " ")
Return

:?:/Роды_1::
SendPlay {Enter}
%vybor%("say Успокойтесь, девушка, сейчас главное не волноваться. ", "  " zaderzhka " ")
%vybor%("me расстегнул" floor " на девушке одежду, которая стягивала живот ", "  " zaderzhka " ")
%vybor%("say Пожалуйста, согните ноги в коленях и очень сильно раздвиньте. ", "  " zaderzhka " ")
%vybor%("say Запомните: тужиться нужно только после глубокого вдоха, вне потуг нужно глубоко дышать. ", "  " zaderzhka " ")
%vybor%("say Во время потуг, пожалуйста, держитесь за свои колени и тяните их на себя, ничего не бойтесь. ", "  " zaderzhka " ")
Return
:?:/Роды_2::
SendPlay {Enter}
%vybor%("s Тужьтесь, тужьтесь. Сильнее.  ", "  " zaderzhka " ")
%vybor%("do На свет постепенно начала появляться голова новорожденного.   ", "  " zaderzhka " ")
%vybor%("todo Сделайте выдох и постарайтесь больше не тужиться*придерживая голову ребенка   ", "  " zaderzhka " ")
%vybor%("do Ребенок полностью появился на свет.  ", "  " zaderzhka " ")
%vybor%("say Спокойствие. Теперь необходимо разрезать пуповину.  ", "  " zaderzhka " ")
%vybor%("me достав нитки для бинтов, сделал" floor " 2 узла на расстоянии 5 и 10 см выше пупка ребенка   ", "  " zaderzhka " ")
%vybor%("me достав ножницы из сумки, аккуратно перерезал" floor "  пуповину между узлами  ", "  " zaderzhka " ")
%vybor%("me аккуратно похлопал" floor "  ребенка по ягодицам и спине  ", "  " zaderzhka " ")
%vybor%("me достав антисептик, продезинфицировал" floor " конец пуповины у ребенка  ", "  " zaderzhka " ")
%vybor%("me убрав антисептик в сумку, достал" floor " к бинты и обвязал" floor " к ими пуповину  ", "  " zaderzhka " ")
%vybor%("me достав салфетки из сумки, вытер" Female " слизь с носа и рта новорожденного  ", "  " zaderzhka " ")
%vybor%("todo Ну что, мамаша! Поздравляю!*достав объемную ткань из сумки  ", "  " zaderzhka " ")
%vybor%("me завернув новорожденного в ткань, положил" floor " его на грудь матери  ", "  " zaderzhka " ")
Return


:?:/ЭЭГ_1::
SendPlay {Enter}
%vybor%("say Здравствуйте, садитесь пожалуйста. ", "  " zaderzhka " ")
%vybor%("do Возле стены стоит аппарат ЭЭГ. ", "  " zaderzhka " ")
%vybor%("me пододвинул" floor " аппарат ЭЭГ к койке ", "  " zaderzhka " ")
%vybor%("do Аппарат возле койки. ", "  " zaderzhka " ")
%vybor%("do Электроды от ЭЭГ и спирт в закрытом стеллаже. ", "  " zaderzhka " ")
%vybor%("me открыв стеллаж взял" floor " в руку спирт и электроды ", "  " zaderzhka " ")
%vybor%("me открыв спирт, обработал" floor " электроды ", "  " zaderzhka " ")
%vybor%("do В закрытом шкафу лежит чистое тряпошное полотенце. ", "  " zaderzhka " ")
%vybor%("me взял" floor " полотенце в руку  ", "  " zaderzhka " ")
%vybor%("me положил" floor " тряпошное полотенце на голову человеку ", "  " zaderzhka " ")
%vybor%("me приклеил" floor " липучки полотенца к коже в области ушей ", "  " zaderzhka " ")
%vybor%("do Полотенце на голове и зафиксировано. ", "  " zaderzhka " ")
%vybor%("do В стеллаже токопроводящий гель. ", "  " zaderzhka " ")
%vybor%("me взяв гель в руку обработал" floor " электроды ", "  " zaderzhka " ")
%vybor%("do Электроды обработаны и готовы к использованию. ", "  " zaderzhka " ")
%vybor%("me присоединил" floor " электроды к голове человека ", "  " zaderzhka " ")
%vybor%("me подключил" floor " электроды к аппарату ЭЭГ ", "  " zaderzhka " ")
%vybor%("me нажал" floor " кнопку запуска аппарата ЭЭГ ", "  " zaderzhka " ")
%vybor%("say Сидите смирно и не подвижно. ", "  " zaderzhka " ")
%vybor%("do Аппарат ЭЭГ начал работу и вывел изменение графика на экран.  ", "  " zaderzhka " ")
%vybor%("me взглянул" floor " на экран прибора ", "  " zaderzhka " ")
%vybor%("say Глубоко вдохните. ", "  " zaderzhka " ")
%vybor%("say Теперь выдохните. ", "  " zaderzhka " ")
%vybor%("do Сотрудник мог увидел изменения на графике ЭЭГ. ", "  " zaderzhka " ")
%vybor%("say Закройте глаза. ", "  " zaderzhka " ")
%vybor%("me нажал" floor " кнопку включения мигания света ", "  " zaderzhka " ")
%vybor%("do Прибор начал" floor " подавать пучки света в глаза человеку. ", "  " zaderzhka " ")
%vybor%("do Прибор перистал подавать пучки света в глаза человеку. ", "  " zaderzhka " ")
%vybor%("me нажал" floor "на кнопку Результат ", "  " zaderzhka " ")
%vybor%("do Прибор закончил работу и распечатал энцефалограмму. ", "  " zaderzhka " ")
%vybor%("me взял" floor " в руки энцефалограмму ", "  " zaderzhka " ")
%vybor%("me подробно изучает энцефалограмму ", "  " zaderzhka " ")
%vybor%("do Проблемы в работе нервных импульсов головного мозга обнаружены? ", "  " zaderzhka " ")
Return

:?:/ЭЭГ_2::
SendPlay {Enter}
%vybor%("say Были найдены проблемы в работе. ", "  " zaderzhka " ")
%vybor%("say Я выпишу Вам Фенитоин, а так же направление на терапию. ", "  " zaderzhka " ")
%vybor%("say Стоимость лекарства, 500 рублей, Вы согласны? ", "  " zaderzhka " ")
%vybor%("me снял" floor " с головы человека электроды и полотенце ", "  " zaderzhka " ")
%vybor%("me отодвинул" floor " аппарат ЭЭГ от койки ", "  " zaderzhka " ")
Return

:?:/ЭЭГ_3::
SendPlay {Enter}
%vybor%("say Всё хорошо, никаких отклонений не видно. ", "  " zaderzhka " ")
%vybor%("say Скорее всего обычная усталость. ", "  " zaderzhka " ")
%vybor%("say Но, всё равно выпишу Вам Фенитоин. ", "  " zaderzhka " ")
%vybor%("me снял" floor " с головы человека электроды и полотенце ", "  " zaderzhka " ")
%vybor%("me отодвинул" floor " аппарат ЭЭГ от койки ", "  " zaderzhka " ")
Return

:?:/Вывих::
SendPlay {Enter}
%vybor%("me сняв одежду с повреждённого места, положил на койку ", "  " zaderzhka " ")
%vybor%("do В стеллаже шприц в упаковке. ", "  " zaderzhka " ")
%vybor%("me открыв стеллаж, взял упакованный шприц ", "  " zaderzhka " ")
%vybor%("me открыв упаковку, взял шприц ", "  " zaderzhka " ")
%vybor%("do В стеллаже баночка Натрия оксибутират с наркозным средством. ", "  " zaderzhka " ")
%vybor%("me открыв баночку, ввёл в шприц наркозное средство ", "  " zaderzhka " ")
%vybor%("do Шприц наполнен наркозным средством. ", "  " zaderzhka " ")
%vybor%("me закрыв баночку с наркозным средством, поставил в стеллаж ", "  " zaderzhka " ")
%vybor%("do В стеллаже антисептик и ватка. ", "  " zaderzhka " ")
%vybor%("me взял" floor " антисептик и вату ", "  " zaderzhka " ")
%vybor%("me открыв антисептик, намочил" floor " вату ", "  " zaderzhka " ")
%vybor%("do Вата в антисептике. ", "  " zaderzhka " ")
%vybor%("me протер" Female " место повреждения ватой ", "  " zaderzhka " ")
%vybor%("me закрыв антисептик, положил" floor " обратно в стеллаж  ", "  " zaderzhka " ")
%vybor%("do В руке шприц с наркозным средством.", "  " zaderzhka " ")
%vybor%("me осторожно ввёл" floor " средство рядом с местом повреждения ", "  " zaderzhka " ")
%vybor%("do Под столом в комнате санитарная урна. ", "  " zaderzhka " ")
%vybor%("me выкинув использованный шприц, взял" floor " повреждённую конечность ", "  " zaderzhka " ")
%vybor%("me немного повернул" floor " конечность ", "  " zaderzhka " ")
%vybor%("do У стены стоит холодильник. ", "  " zaderzhka " ")
%vybor%("me открыл" floor " холодильник ", "  " zaderzhka " ")
%vybor%("do В холодильнике лежит ледяной компресс. ", "  " zaderzhka " ")
%vybor%("me достал" floor " ледяной компресс из холодильника ", "  " zaderzhka " ")
%vybor%("me приложил" floor " ледяной компресс к месту повреждения ", "  " zaderzhka " ")
%vybor%("say Анестезия на месте повреждения скоро пройдет, и боль увеличится. ", "  " zaderzhka " ")
%vybor%("me убрав компресс, положил его в холодильник ", "  " zaderzhka " ")
%vybor%("me закрыл холодильник ", "  " zaderzhka " ")
Return

:?:/Кардиостимулятор::
SendPlay {Enter}
%vybor%("do В углу комнаты стоит стеллаж с необходимыми инструментами. ", "  " zaderzhka " ")
%vybor%("do Антисептик с ватой в стеллаже. ", "  " zaderzhka " ")
%vybor%("me открыв стеллаж, взял" floor " антисептик с ватой ", "  " zaderzhka " ")
%vybor%("me обрабатывает операционное поле ", "  " zaderzhka " ")
%vybor%("do Операционное поле обработано. ", "  " zaderzhka " ")
%vybor%("do Рядом стоит аппарат наркоза. ", "  " zaderzhka " ")
%vybor%("me включив аппарат наркоза, взял" floor " кислородную маску ", "  " zaderzhka " ")
%vybor%("me надел" floor " кислородную маску на пациента ", "  " zaderzhka " ")
%vybor%("me подключил" floor " пациента к аппарату ИВЛ ", "  " zaderzhka " ")
%vybor%("do Пациент подключен к аппарату ИВЛ. ", "  " zaderzhka " ")
%vybor%("do Стерилизованный кардиостимулятор в стеллаже. ", "  " zaderzhka " ")
%vybor%("do Кардиостимулятор в упаковке. ", "  " zaderzhka " ")
%vybor%("me взял" floor " кардиостимулятор в упаковке ", "  " zaderzhka " ")
%vybor%("me открыв упаковку, взял" floor " кардиостимулятор ", "  " zaderzhka " ")
%vybor%("me взяв скальпель, сделал" floor " надрез под ключицей ", "  " zaderzhka " ")
%vybor%("do Подключичные вены стали видны. ", "  " zaderzhka " ")
%vybor%("me сделав надрез в вене, провел" floor " электрод в сердце ", "  " zaderzhka " ")
%vybor%("me поместил" floor " основную часть кардиостимулятора в подкожный карман ", "  " zaderzhka " ")
%vybor%("do Кардиостимулятор под кожей.", "  " zaderzhka " ")
%vybor%("do В стеллаже лежат нитки и ножницы.  ", "  " zaderzhka " ")
%vybor%("me взяв в руки нитки и ножницы, отрезал" floor " нужное количество ниток ", "  " zaderzhka " ")
%vybor%("me сшил" floor " место разреза кожи ", "  " zaderzhka " ")
%vybor%("do Послеоперационный пластырь в открытом стеллаже. ", "  " zaderzhka " ")
%vybor%("me взяв послеоперационный пластырь, закрыл" floor " стеллаж ", "  " zaderzhka " ")
%vybor%("do Послеоперационный пластырь в упаковке. ", "  " zaderzhka " ")
%vybor%("me открыв упаковку, наклеил пластырь на место шва ", "  " zaderzhka " ")
%vybor%("do Послеоперационный пластырь наклеен на шов. ", "  " zaderzhka " ")
%vybor%("me отключил" floor " пациента от аппарата ИВЛ ", "  " zaderzhka " ")
%vybor%("me снял" floor " кислородную маску с пациента ", "  " zaderzhka " ")
%vybor%("say Операция прошла успешно. ", "  " zaderzhka " ")
%vybor%("say Я Вам выпишу обезболивающее Тазепам, его стоимость 500 рублей, Вы согласны оплатить? ", "  " zaderzhka " ")
Return
:?:/Бешенство::
SendPlay {Enter}
%vybor%("do На столе лежит всё необходимое для вакцинации.", "  " zaderzhka " ")
%vybor%("me взял" floor " ватный диск и спирт ", "  " zaderzhka " ")
%vybor%("me промочил" floor " ватный диск в спирте ", "  " zaderzhka " ")
%vybor%("me продезинфицировал" floor " место ввода вакцины ", "  " zaderzhka " ")
%vybor%("do В комнате расположена урна. ", "  " zaderzhka " ")
%vybor%("me выкинул" floor " ватный диск в урну ", "  " zaderzhka " ")
%vybor%("me взял" floor " одноразовую иглу и новый одноразовый шприц ", "  " zaderzhka " ")
%vybor%("me надел" floor " иглу на шприц ", "  " zaderzhka " ")
%vybor%("me взял" floor " пробирку с вакциной от бешенства ", "  " zaderzhka " ")
%vybor%("me наполнил" floor " шприц вакциной от бешенства ", "  " zaderzhka " ")
%vybor%("me убрал лишний воздух из шприца ", "  " zaderzhka " ")
%vybor%("me ввёл" floor " иглу в дельтовидную мышцу пациента ", "  " zaderzhka " ")
%vybor%("me ввёл" floor " вакцину ", "  " zaderzhka " ")
%vybor%("me вынул" floor " иглу ", "  " zaderzhka " ")
%vybor%("me придавил" floor " место прокола заранее приготовленной ваткой в спирте ", "  " zaderzhka " ")
%vybor%("say Держите ватку так не менее 5-ти минутюб. ", "  " zaderzhka " ")
Return

:?:/Родинка::
SendPlay {Enter}
%vybor%("do В шкафу лежит профессиональный фен. ", "  " zaderzhka " ")
%vybor%("me взяв фен из шкафа, включил" floor " его на холодном потоке воздуха ", "  " zaderzhka " ")
%vybor%("me направил" floor " фен на проблемное место пациента для охлаждения ", "  " zaderzhka " ")
%vybor%("do Лазерная машина стоит около операционного стола. ", "  " zaderzhka " ")
%vybor%("me включив необходимый режим, установил" floor " таймер и направил лазер на место родинки ", "  " zaderzhka " ")
%vybor%("say Сейчас будет немного больно, потерпите. ", "  " zaderzhka " ")
%vybor%("say В течении 3-х минут проблемного места уже не будет.  ", "  " zaderzhka " ")
%vybor%("do Лазер начал удалять проблемное место пациента. ", "" " zaderzhka " "0")
%vybor%("do Лазерная машина закончила работу. ", "  " zaderzhka " ")
%vybor%("say Как вы себя чувствуете?   ", "  " zaderzhka " ")
%vybor%("me выключив лазер, придвинул" floor " его обратно к стенке ", "  " zaderzhka " ")
%vybor%("me выключил фен и убрал" floor " его в шкаф  ", "  " zaderzhka " ")
%vybor%("do В тумбе лежит медицинский спирт с ватой. ", "  " zaderzhka " ")
%vybor%("me достав все необходимое из тумбы, смочил" floor " вату спиртом, затем приложил" floor " на место операции ", "  " zaderzhka " ")
%vybor%("say Так-с, держите её и постарайтесь не двигать. ", "  " zaderzhka " ")
%vybor%("do На столе лежит большая пачка пластырей. ", "  " zaderzhka " ")
%vybor%("me вскрыв пачку, достал" floor " из нее пластырь, затем положил" floor " пачку в шкаф ", "  " zaderzhka " ")
%vybor%("me наклеил" floor " пластырь поверх ватки ", "  " zaderzhka " ")
%vybor%("say Если будут какие-то жалобы, то обратитесь к врачу. ", "  " zaderzhka " ")
%vybor%("say Важно избегать попадания воды на обработанную зону в течение 24 часов. ", "  " zaderzhka " ")
%vybor%("say Не снимайте пластырь в течение 2 дней. ", "  " zaderzhka " ")
%vybor%("say Если возникнут признаки воспаления, такие как покраснение или выделения, немедленно свяжитесь с врачом. ", "  " zaderzhka " ")
%vybor%("say На этом все. Всего хорошего. ", "  " zaderzhka " ")
Return

:?:/ОПТГ_1::
SendPlay {Enter}
%vybor%("say Сейчас я проведу вам процедуру под названием ОПТГ... ", "  " zaderzhka " ")
%vybor%("say ...это панорамный рентгеновский снимок верхней и нижней челюсти. ", "  " zaderzhka " ")
%vybor%("do В кабинете стоит препарат для ОПТГ. ", "  " zaderzhka " ")
%vybor%("do на столе лежат одноразовые мундштуки для прикусывания. ", "  " zaderzhka " ")
%vybor%("say На вас есть металлические предметы? Серьги, цепочки, кольца и т.д. ", "  " zaderzhka " ")
Return

:?:/ОПТГ_2::
SendPlay {Enter}
%vybor%("say Становитесь на платформу и ставьте подборок на специальное место... ", "  " zaderzhka " ")
%vybor%("say ...так же я сейчас вам дам мундштук, который нужно будет прикусить. ", "  " zaderzhka " ")
%vybor%("me взял" floor " мундштук и подал" floor " его пациенту ", "  " zaderzhka " ")
%vybor%("say Прикусите его во рту и поставьте подбородок на специальную выемку перед вами. ", "  " zaderzhka " ")
Return

:?:/ОПТГ_3::
SendPlay {Enter}
%vybor%("say Теперь не двигайтесь, процедура скоро начнется. ", "5500")
%vybor%("do Перед входом в кабинет находится пульт управления прибором. ", "  " zaderzhka " ")
%vybor%("me зажал" floor " кнопку на пульте ", "  " zaderzhka " ")
%vybor%("do Из кабинета слышны характерные звуки работы прибора. ", "  " zaderzhka " ")
%vybor%("do Загорелась зеленая лампочка. ", "  " zaderzhka " ")
%vybor%("me отпустил" floor " кнопку и ожидает окончания процедуры ", "  " zaderzhka " ")
%vybor%("do Внутри кабинета на компьютере появляется снимок. ", "  " zaderzhka " ")
Return

:?:/ОПТГ_4::
SendPlay {Enter}
%vybor%("say Отлично, можете убирать подбородок с подставки и отдавайте мундштук. ", "  " zaderzhka " ")
Return

:?:/ОПТГ_5::
SendPlay {Enter}
%vybor%("do В углу кабинета стоит мусорка. ", "  " zaderzhka " ")
%vybor%("me взял" floor " мундштук и выкинул его в мусорку ", "  " zaderzhka " ")
%vybor%("say хорошо, теперь можете забрать свои украшения, если оставляли. Процедура окончена. ", "  " zaderzhka " ")
Return


:?:/Мудрости_1::
SendPlay {Enter}
%vybor%("say Мы заботимся о вашем здоровье, поэтому предварительно узнаем.. ", "  " zaderzhka " ")
%vybor%("say ...есть ли у вас непереносимость каких-либо медикаментов? ", "  " zaderzhka " ")
Return

:?:/Мудрости_2::
SendPlay {Enter}
%vybor%("say Хорошо, приступим к удалению зуба мудрости. ", "  " zaderzhka " ")
%vybor%("say Откройте рот. ", "  " zaderzhka " ")
%vybor%("b /me открыл(a) рот ", "  " zaderzhka " ")
Return

:?:/Мудрости_3::
SendPlay {Enter}
%vybor%("me взял со стола шприц с анестетиком Артекаин , после чего ввёл ее ", "  " zaderzhka " ")
%vybor%("say Сейчас я прикоснусь к вашему зубу, а вы скажите, чувствуете ли боль ", "  " zaderzhka " ")
%vybor%("me движением руки начал" floor " шевелить зуб ", "  " zaderzhka " ")
%vybor%("do Пациент чувствует боль? ", "  " zaderzhka " ")
Return

:?:/Мудрости_4::
SendPlay {Enter}
%vybor%("me взял" floor " со стола скальпель, после чего сделал" floor " разрез десны и положил" floor " на место ", "  " zaderzhka " ")
%vybor%("me движением правой руки взял" floor " со стола щипцы, после чего начал" floor " вытаскивать зуб ", "  " zaderzhka " ")
%vybor%("me левой рукой взял" floor " со стола элеватор, затем освободил" floor " лунку от зуба ", "  " zaderzhka " ")
%vybor%("do Зуб мудрости полностью удален.  ", "  " zaderzhka " ")
%vybor%("me положил" floor " инструмент на стол, после чего взял" floor " вату и приложил к ране ", "  " zaderzhka " ")
%vybor%("say Поздравляю, Ваш зуб успешно удален. Теперь вам не стоит есть в течение трёх часов. ", "  " zaderzhka " ")
Return

:?:/Кариес_1::
SendPlay {Enter}
%vybor%("say Мы заботимся о вашем здоровье, поэтому предварительно узнаем.. ", "  " zaderzhka " ")
%vybor%("say ...есть ли у вас непереносимость каких-либо медикаментов? ", "  " zaderzhka " ")
Return

:?:/Кариес_2::
SendPlay {Enter}
%vybor%("say Хорошо, приступим к удалению зуба мудрости. ", "  " zaderzhka " ")
%vybor%("say Откройте рот. ", "  " zaderzhka " ")
%vybor%("b /me открыл(a) рот ", "  " zaderzhka " ")
Return

:?:/Кариес_3::
SendPlay {Enter}
%vybor%("do На хирургическом столе лежат необходимые инструменты. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола каппу, после чего вставил" floor " ее в рот пациента  ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола шприц с обезболивающим, после чего вколол" floor " содержимое под десну ", "  " zaderzhka " ")
%vybor%("do На столе лежит крышка от шприца. ", "  " zaderzhka " ")
%vybor%("do В углу комнаты стоит урна.", "  " zaderzhka " ")
%vybor%("me взял" floor " крышку, после чего закрыл" floor " шприц и выбросил" floor " его в урну ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола скальпель, после чего сделал" floor " небольшой разрез десны ", "  " zaderzhka " ")
%vybor%("me положил" floor " скальпель на стол, после чего взял" floor " салфетку, вытер кровь и выбросил" floor " в урну ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола пинцет, после чего приподнял" floor " корень зуба, затем повернул" floor " его ", "  " zaderzhka " ")
%vybor%("do Корень зуба стал свободно виден. ", "  " zaderzhka " ")
%vybor%("me перехватив пинцет свободной рукой, начал" floor " выдавливать корень зуба ", "  " zaderzhka " ")
%vybor%("do Зуб полностью удален. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола вату, после чего приложил" floor " на место удаленного зуба ", "  " zaderzhka " ")
%vybor%("say Поздравляю, ваш зуб успешно удален. Теперь вам не стоит есть в течение трёх часов. ", "  " zaderzhka " ")
Return

:?:/Молочный_1::
SendPlay {Enter}
%vybor%("say Откройте рот. ", "  " zaderzhka " ")
%vybor%("b /me открыл(a) рот ", "  " zaderzhka " ")
Return

:?:/Молочный_2::
SendPlay {Enter}
%vybor%("do На хирургическом столе лежат необходимые инструменты. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола каппу, после чего вставил" floor " ее в рот пациента ", "  " zaderzhka " ")
%vybor%("say Cейчас я нанесу обезболивающий бальзам, чтобы вы не чувствовали боли. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола тюбик с бальзамом, после чего нанес" Female " его на палец ", "  " zaderzhka " ")
%vybor%("do Выдавленный крем виднеется на пальце. ", "  " zaderzhka " ")
%vybor%("me закрыл" floor " тюбик, после чего положил" floor " его на стол ", "  " zaderzhka " ")
%vybor%("me нанес" Female " крем на больной зуб ", "  " zaderzhka " ")
%vybor%("say Приготовьтесь, сейчас будет удаление зуба. Не переживайте, это не больно. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола щипцы, после чего поднес к зубу, и круговыми движениями освободил" floor " зуб ", "  " zaderzhka " ")
%vybor%("do Зуб успешно удален. ", "  " zaderzhka " ")
%vybor%("do На ране пациента виднеется кровь.  ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола вату, предварительно смоченную антисептиком, после чего поднес" Female " к ране ", "  " zaderzhka " ")
%vybor%("me движением правой руки выбросил" floor " зуб, после чего положил" floor " щипцы на стол в место отходов ", "  " zaderzhka " ")
%vybor%("say Поздравляю, ваш зуб успешно удален. Теперь вам не стоит есть в течение двух часов. ", "  " zaderzhka " ")
Return

:?:/Реминерализирующая::
SendPlay {Enter}
%vybor%("say Чтобы придать ваш зубам обратно блеск, то мы проведем реминерализирующую терапию. ", "  " zaderzhka " ")
%vybor%("say Мы будем использовать лак по этому попрошу не закрывать рот до конца процедуры. ", "  " zaderzhka " ")
%vybor%("do На стоматологическом столе стоит фторлак и нужные инструменты для проведения. ", "  " zaderzhka " ")
%vybor%("me взял" floor " наконечник в виде щетки и надел" floor " его на турбину ", "  " zaderzhka " ")
%vybor%("me нанес" Female " на наконечник абразивную пасту и обработал" floor " зубы с измененным блеском ", "  " zaderzhka " ")
%vybor%("me убрал" floor " наконечник ", "  " zaderzhka " ")
%vybor%("me взял" floor " ватку смочив её  раствором перекиси водорода и обработал" floor " зубы с измененным блеском ", "  " zaderzhka " ")
%vybor%("me выкинул" floor " ватку ", "  " zaderzhka " ")
%vybor%("me взял" floor " водно-воздушный пистолет и высушил" floor " поверхность зубов ", "  " zaderzhka " ")
%vybor%("me с помощью кисточки тонким слоем нанес" Female " на поверхность зубов лак ", "  " zaderzhka " ")
%vybor%("say Хорошо, пока можете закрывать рот. Советуем вам прийти ещё несколько раз на прием...  ", "  " zaderzhka " ")
Return



:?:/Сердце_4::
SendPlay {Enter}
%vybor%("do Стетоскоп висит на шее. ", "  " zaderzhka " ")
%vybor%("me сняв стетоскоп с шеи, вставил" floor " наконечники в уши  ", "  " zaderzhka " ")
%vybor%("me взял" floor " головку стетоскопа ", "  " zaderzhka " ")
%vybor%("say Поднимайте куртку с футболкой. ", "  " zaderzhka " ")
Return

:?:/Сердце_5::
SendPlay {Enter}
%vybor%("me прислонил" floor " головку стетоскопа к сердцу на спину ", "  " zaderzhka " ")
%vybor%("say Можете одеваться. ", "  " zaderzhka " ")
%vybor%("me вытащив ушные наконечники с ушей, повесил" floor " стетоскоп на шею ", "  " zaderzhka " ")
Return

:?:/Давление_1::
SendPlay {Enter}
%vybor%("do В медицинской сумке лежит механический тонометр.", " " zaderzhka " ")
%vybor%("me открыв мед. сумку, взял" floor " механический тонометр ", "  " zaderzhka " ")
%vybor%("say Давайте руку. ", "  " zaderzhka " ")
Return

:?:/Давление_2::
SendPlay {Enter}
%vybor%("me надел" floor " манжет на руку человеку напротив ", "  " zaderzhka " ")
%vybor%("me сняв стетоскоп с шеи, вставил" floor " наконечники в уши ", "  " zaderzhka " ")
%vybor%("me приложил" floor " головку стетоскопа к среднему сгибу руки ", "  " zaderzhka " ")
%vybor%("me накачивая манжету, взглянул" floor " на циферблат тонометра ", "  " zaderzhka " ")
%vybor%("do Давление в норме? ", "  " zaderzhka " ")
%vybor%("me сняв манжету, убрал" floor " ручной тонометр в мед. сумку ", "  " zaderzhka " ")
%vybor%("me повесил" floor " стетоскоп на шею ", "  " zaderzhka " ")
Return

:?:/Рост_1::
SendPlay {Enter}
%vybor%("do Ростомер с весами стоит в углу.", "  " zaderzhka " ")
%vybor%("say Снимайте обувь, вставайте на весы, держите спину прямо.", "  " zaderzhka " ")
Return

:?:/Рост_2::
SendPlay {Enter}
%vybor%("me взглянул" floor " на показатели весов ", "  " zaderzhka " ")
%vybor%("me подтянув измерительный прибор к голове сотрудника, зафиксировал" floor " его ", "  " zaderzhka " ")
%vybor%("me взглянул" floor " на показатели роста", "  " zaderzhka " ")
%vybor%("do Какой рост у пациента?", "  " zaderzhka " ")
%vybor%("do Какой вес у пациента?", "  " zaderzhka " ")
%vybor%("say Хорошо, можете обуваться", "  " zaderzhka " ")
Return

:?:/Радиация_1::
SendPlay {Enter}
%vybor%("do На стеллаже лежит антисептик. ", "  " zaderzhka " ")
%vybor%("me взял" floor " антисептик ", "  " zaderzhka " ")
%vybor%("do Через плечо висит мед.сумка. ", "  " zaderzhka " ")
%vybor%("me открыл" floor " мед.сумку ", "  " zaderzhka " ")
%vybor%("do В медицинской сумке находится вата. ", "  " zaderzhka " ")
%vybor%("me взял" floor " вату из мед.сумки ", "  " zaderzhka " ")
%vybor%("me смочил" floor " вату антисептиком ", "  " zaderzhka " ")
%vybor%("do На стеллаже лежат куски стерильных бинтов. ", "  " zaderzhka " ")
%vybor%("me взял" floor " кусок бинта ", "  " zaderzhka " ")
%vybor%("me обработал" floor " место поражения антисептиком ", "  " zaderzhka " ")
%vybor%("me наложил" floor " повязку из бинтов на пораженный участок ", "  " zaderzhka " ")
%vybor%("do Недалеко от кушетки расположена урна. ", "  " zaderzhka " ")
%vybor%("me выкинул" floor " вату в урну ", "  " zaderzhka " ")
%vybor%("do В мед.сумке лежат шприцы и раствор промидола. ", "  " zaderzhka " ")
%vybor%("me взя" floor "л шприц и раствор ", "  " zaderzhka " ")
%vybor%("me снял" floor " колпачок со шприца и выкинул" floor " в урну ", "  " zaderzhka " ")
%vybor%("me начал" floor " набирать раствор в шприц ", "  " zaderzhka " ")
%vybor%("me взял" floor " кусок ваты из сумки и смочил" floor " вату антисептиком ", "  " zaderzhka " ")
%vybor%("say Спустите штаны. ", "  " zaderzhka " ")
%vybor%("b me снял(а) штаны ", "  " zaderzhka " ")
Return

:?:/Радиация_2::
SendPlay {Enter}
%vybor%("me обработал" floor " место будущего укола ", "  " zaderzhka " ")
%vybor%("me начал" floor " вводить препарат в мышцу ", "  " zaderzhka " ")
%vybor%("me выкинул" floor " шприц в урну ", "  " zaderzhka " ")
%vybor%("me прижал" floor " место укола ватой ", "  " zaderzhka " ")
%vybor%("say Держите и одевайте штаны. ", "  " zaderzhka " ")
%vybor%("b me держит вату и одевает штаны ", "  " zaderzhka " ")
%vybor%("say Сейчас я вам выпишу направление. Будете к нам приходить на инфузионную терапию и обследования. ", "  " zaderzhka " ")
%vybor%("do На стеллаже лежит стопка пустых бланков направлений. ", "  " zaderzhka " ")
%vybor%("me взял" floor " бланк и положил" floor " его на стол ", "  " zaderzhka " ")
%vybor%("do На нагрудном кармане закреплена ручка. ", "  " zaderzhka " ")
%vybor%("me взял" floor " ручку ", "  " zaderzhka " ")
%vybor%("say Ваша Фамилия и Имя. ", "  " zaderzhka " ")
Return

:?:/Радиация_3::
SendPlay {Enter}
%vybor%("me начал" floor " заполнять бланк ", "  " zaderzhka " ")
%vybor%("me прикрепил ручку к нагрудному карману ", "  " zaderzhka " ")
%vybor%("me взял" floor " готовый бланк ", "  " zaderzhka " ")
%vybor%("me передал" floor " бланк ", "  " zaderzhka " ")
%vybor%("b me взял(а) бланк ", "  " zaderzhka " ")
%vybor%("say Держите. ", "  " zaderzhka " ")
Return

:?:/Визиографическое_1::
SendPlay {Enter}
%vybor%("say Сейчас я проведу вам визиографию зуба это прицельное... ", "  " zaderzhka " ")
%vybor%("say ...рентгенологическое исследование зуба и его окружающих тканей. ", "  " zaderzhka " ")
%vybor%("say Наденьте на себя защитный фартук и садитесь на стул. ", "  " zaderzhka " ")
%vybor%("do Фартуки с шейной защитой висят на отдельной вешалке. ", "  " zaderzhka " ")
Return

:?:/Визиографическое_2::
SendPlay {Enter}
%vybor%("do Справа от стула висит рентген прибор, а на нем визиограф. ", "  " zaderzhka " ")
%vybor%("do На столе стоят одноразовые чехлы для визиографа. ", "  " zaderzhka " ")
%vybor%("do На столе стоит включенный компьютер. ", "  " zaderzhka " ")
%vybor%("me надел" floor " на себя защитный фартук с шейной защитой ", "  " zaderzhka " ")
%vybor%("me взял" floor " визиограф и одел" floor " на него одноразовый чехол ", "  " zaderzhka " ")
%vybor%("say Хорошо, откройте теперь рот я правильно расположу визиограф по отношению к рентгену. ", "  " zaderzhka " ")
Return

:?:/Визиографическое_3::
SendPlay {Enter}
%vybor%("me занес" Female " визиограф в ротовую полость и расположил" floor " за исследуемым зубом ", "  " zaderzhka " ")
%vybor%("me поправил" floor " по отношению к рентгенологическому прибору ", "  " zaderzhka " ")
%vybor%("say Придержите большим пальцем прибор. ", "  " zaderzhka " ")
Return

:?:/Визиографическое_4::
SendPlay {Enter}
%vybor%("me взял" floor " рентгенологический прибор и со стороны щеки расположил" floor " его к визиографу ", "  " zaderzhka " ")
%vybor%("me зафиксировал" floor " положение рентгенологического прибора ", "  " zaderzhka " ")
%vybor%("do На стене висит пульт с разными программами. ", "  " zaderzhka " ")
%vybor%(" поставил" floor " нужную программу с нужным излучением для исследуемого зуба ", "  " zaderzhka " ")
%vybor%("me зажал" floor " кнопку на пульте ", "  " zaderzhka " ")
%vybor%("do В комнате слышен характерный пик со стороны рентген прибора. ", "  " zaderzhka " ")
%vybor%("do В углу стоит мусорка.  ", "  " zaderzhka " ")
%vybor%("do На компьютере появился снимок исследуемого зуба. ", "  " zaderzhka " ")
%vybor%("say Отлично, снимок готов.  ", "  " zaderzhka " ")
%vybor%("me помог" floor " убрать визиограф из ротовой и снял" floor " одноразовый чехол, после чего выкинул" floor " чехол ", "  " zaderzhka " ")
%vybor%("me помог" floor " снять защитный фартук пациенту и повесил" floor " его на вешалку ", "  " zaderzhka " ")
%vybor%("me снял" floor " свой фартук вместе с шейной защитой и повесил" floor " так же на вешалку ", "  " zaderzhka " ")
%vybor%("say Процедура завершена, можете вставать. ", "  " zaderzhka " ")
Return

:?:/Отбеливание_1::
SendPlay {Enter}
%vybor%("say Хорошо, приступим. ", "  " zaderzhka " ")
%vybor%("do Над пациентом висит Хирургическая лампа. ", "  " zaderzhka " ")
%vybor%("me направил" floor " лампу на ротовую полость пациента ", "  " zaderzhka " ")
%vybor%("do В сталаже режит стоматологический гель. ", "  " zaderzhka " ")
%vybor%("me открыв стелаж, взял" floor " стоматологический гель ", "  " zaderzhka " ")
%vybor%("me положил" floor " гель на стол ", "  " zaderzhka " ")
%vybor%("do Рядом с гелем лежит капа и лазерное устройство. ", "  " zaderzhka " ")
Return

:?:/Отбеливание_2::
SendPlay {Enter}
%vybor%("say Откройте рот. ", "  " zaderzhka " ")
Return

:?:/Отбеливание_3::
SendPlay {Enter}
%vybor%("me взял" floor " со стола капу, лазерное устройство, гель ", "  " zaderzhka " ")
%vybor%("do Зафиксировал капу во рту пациента.  ", "  " zaderzhka " ")
%vybor%("me аккуратными движениями нанёс" Female " гель на каждый зуб  ", "  " zaderzhka " ")
%vybor%("me включив лазерное устройство направил" floor " весь свет на зубы пациента ", "  " zaderzhka " ")
%vybor%("say Теперь ждём 20 секунд. ", "  " zaderzhka " ")
%vybor%("say Пока они проходят, я расскажу вам что нельзя делать после отбеливания. ", "  " zaderzhka " ")
%vybor%("say А именно, это не есть 2 дня продукты в которых содержится краситель. ", "  " zaderzhka " ")
%vybor%("me выключив лазерное устройство отодвинул" floor " его ", "  " zaderzhka " ")
%vybor%("do В шкафу лежит рулетка ваты. ", "  " zaderzhka " ")
%vybor%("me открыв шкаф оторвал кусочек ватки ", "  " zaderzhka " ")
%vybor%("me очистил" floor " зубы от оставшегося геля ", "  " zaderzhka " ")
%vybor%("me аккуратно убрал" floor " капы ", "  " zaderzhka " ")
%vybor%("do Под столом стоит урна. ", "  " zaderzhka " ")
%vybor%("me кинул" floor " в урну тюбик геля, ватку, капу ", "  " zaderzhka " ")
%vybor%("say И так, я закончил" floor " отбеливание зубов. ", "  " zaderzhka " ")
Return

:?:/Ранение::
SendPlay {Enter}
%vybor%("do В комнате расположен специализированный стол. ", "  " zaderzhka " ")
%vybor%("do На столе расположен тупфер. ", "  " zaderzhka " ")
%vybor%("do Раствор йодоната подготовлен для дальнейших действий с ним. ", "  " zaderzhka " ")
%vybor%("me взяв со стола тупфер, окунул" floor " его в раствор йодоната ", "  " zaderzhka " ")
%vybor%("me затем провела несколько раз тупфером по месту ранения и вокруг него ", "  " zaderzhka " ")
%vybor%("do В комнате находится лоток. ", "  " zaderzhka " ")
%vybor%("do На столе располагается 150-кубовый шприц. ", "  " zaderzhka " ")
%vybor%("me отложив тупфер в лоток, взял" floor " со столика 150-кубовый шприц ", "  " zaderzhka " ")
%vybor%("do В шприце прозрачный раствор - Хлоргексидин. ", "  " zaderzhka " ")
%vybor%("me выдавил" floor " содержимое шприца прямо в рану и отложил его в лоток ", "  " zaderzhka " ")
%vybor%("do На нижней полки стола стоял кровоотсос. ", "  " zaderzhka " ")
%vybor%("me взял" floor " шланг кровоотсоса с пластиковой трубочкой на конце ", "  " zaderzhka " ")
%vybor%("me нажатием на кнопку, включил" floor " кровоотсос и ввел" floor " трубочку в место ранения ", "  " zaderzhka " ")
%vybor%("do Хлоргексидин вместе с кровью начал всасываться в трубочку. ", "  " zaderzhka " ")
%vybor%("me нажатием на кнопку, выключил" floor " кровоотсос и отложил" floor " шланг на место ", "  " zaderzhka " ")
%vybor%("me взяв со столика тупфер, макнул" floor " им место ранение и отбросил" floor " его в лоток ", "  " zaderzhka " ")
%vybor%("do На столе расположен иглодержатель с заправленной в него иглой и нитью. ", "  " zaderzhka " ")
%vybor%("me в правую руку взял" floor " иглодержатель с заправленной в него иглой и нитью ", "  " zaderzhka " ")
%vybor%("do На столе располагается хирургический пинцет. ", "  " zaderzhka " ")
%vybor%("me в левую руку взял" floor " хирургический пинцет ", "  " zaderzhka " ")
%vybor%("me начал" floor " накладывать швы на место ранения ", "  " zaderzhka " ")
%vybor%("do На столе находится одноразовая полсеоперационная повязка. ", "  " zaderzhka " ")
%vybor%("me бросил" floor " иглодержатель и пинцет в лоток, взял" floor " со столика одноразовую послеоперационную повязку ", "  " zaderzhka " ")
%vybor%("do На повязке расположена защитная плёнка. ", "  " zaderzhka " ")
%vybor%("me оторвал" floor " с повязки защитную плёнку, аккуратно приклеил" floor " повязку поверх шва ", "  " zaderzhka " ")
%vybor%("me нажатием на кнопку выключил" floor " аппарат ИВЛ и извлёк трубку из трахеи пациента ", "  " zaderzhka " ")
%vybor%("do Под раковиной стоит большая урна для отходов группы Б. ", "  " zaderzhka " ")
%vybor%("me сняв с себя всё хирургическое облачение, бросил" floor " его в урну под раковиной ", "  " zaderzhka " ")
Return
:?:/Рассечение_г::
SendPlay {Enter}
%vybor%("do В комнате расположен специализированный столик для предметов. ", "  " zaderzhka " ")
%vybor%("me открыл" floor " шкаф его правую створку  ", "  " zaderzhka " ")
%vybor%("do В шкафу на разных полках лежат медицинские средства индивидуальной защиты. ", "  " zaderzhka " ")
%vybor%("me взяв с полки хирургическую шапочку и маску, поочерёдно надел" floor " их на себя ", "  " zaderzhka " ")
%vybor%("me достал" floor " из индивидуальной упаковки пару стерильных перчаток и натянул" floor " их на руки ", "  " zaderzhka " ")
%vybor%("do Возле операционного стола стоит двухъярусный столик укрытый плотным материалом. ", "  " zaderzhka " ")
%vybor%("me убирает со столика материал, сложив его, кладёт на нижнюю полку ", "  " zaderzhka " ")
%vybor%("do На столе находится ампула с прозрачной жидкостью внутри. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со столика ампулу с прозрачной жидкостью внутри ", "  " zaderzhka " ")
%vybor%("do На ампуле написано Новокаин. ", "  " zaderzhka " ")
%vybor%("do В комнате расположен лоток.", "  " zaderzhka " ")
%vybor%("me отломив горлышко ампулы, бросил" floor " его в лоток, а ампулу поставил" floor " на столик ", "  " zaderzhka " ")
%vybor%("do На столе располагается шприц. ", "  " zaderzhka " ")
%vybor%("me взяв со столика шприц, вскрыл упаковку и достал" floor " его ", "  " zaderzhka " ")
%vybor%("me снял" floor " футляр с иглы и аккуратно набрал" floor " лекарство из ампулы в шприц ", "  " zaderzhka " ")
%vybor%("do Упаковка со спиртовыми салфетками находится на столе. ", "  " zaderzhka " ")
%vybor%("me снова надел" floor " футляр на иглу и взял" floor " со столика спиртовую салфетку в упаковке ", "  " zaderzhka " ")
%vybor%("me вскрыв упаковку, достал" floor " салфетку и протёр" Female " ей предполагаемое место инъекции ", "  " zaderzhka " ")
%vybor%("me бросил" floor " салфетку с упаковкой в лоток и взял" floor " шприц, сняв футляр с иглы ", "  " zaderzhka " ")
%vybor%("me аккуратно ввел" floor " иглу в место рядом с рассечением и выдавил лекарство из шприца ", "  " zaderzhka " ")
%vybor%("do На столе расположен другой шприц. ", "  " zaderzhka " ")
%vybor%("me откинул" floor " шприц в лоток и взял" floor " со стола другой шприц ", "  " zaderzhka " ")
%vybor%("do В 20-ти кубовом шприце была прозрачная жидкость - Хлоргексидин. ", "  " zaderzhka " ")
%vybor%("me выдавил" floor " содержимое шприца прямо в рану и отложил" floor " его в лоток ", "  " zaderzhka " ")
%vybor%("do На столе располагается тупфер. ", "  " zaderzhka " ")
%vybor%("me взяв со столика тупфер, макнул" floor " им место ранение и отбросил" floor " его в лоток ", "  " zaderzhka " ")
%vybor%("do На столе расположен иглодержатель с заправленной в него иглой и нитью. ", "  " zaderzhka " ")
%vybor%("me в правую руку взял" floor " иглодержатель с заправленной в него иглой и нитью ", "  " zaderzhka " ")
%vybor%("do Хирургический пинцет находится на столе. ", "  " zaderzhka " ")
%vybor%("me в левую руку взял" floor " со стола хирургический пинцет ", "  " zaderzhka " ")
%vybor%("me начал" floor " накладывать швы на место ранения ", "  " zaderzhka " ")
%vybor%("do Одноразовая послеоперационная повязка на столе. ", "  " zaderzhka " ")
%vybor%("me бросил" floor " иглодержатель и пинцет в лоток, взял" floor " со столика одноразовую послеоперационную повязку ", "  " zaderzhka " ")
%vybor%("do Защитная плёнка расположена на повязке. ", "  " zaderzhka " ")
%vybor%("me оторвал" floor " с повязки защитную плёнку, аккуратно приклеил" floor " повязку поверх шва ", "  " zaderzhka " ")
%vybor%("me нажатием на кнопку выключил" floor " аппарат ИВЛ и извлёк" Female " трубку из трахеи пациента ", "  " zaderzhka " ")
%vybor%("do Под раковиной стоит большая урна для отходов группы Б. ", "  " zaderzhka " ")
%vybor%("me сняв с себя всё хирургическое облачение, бросил" floor " его в урну под раковиной ", "  " zaderzhka " ")
Return
:?:/Растяжение_1::
SendPlay {Enter}
%vybor%("todo Сейчас изучим Вашу рану*взглянув на место растяжения ", "  " zaderzhka " ")
%vybor%("say Думаю, что стоит обезболить место растяжения. Возьмите Спазмалгон, я пока наложу повязку. ", "  " zaderzhka " ")
%vybor%("do У стены стоит шкаф с медицинскими препаратами. ", "  " zaderzhka " ")
%vybor%("me открыв шкаф, взял" floor " эластичный бинт и начал" floor " накладывать его на место растяжения ", "  " zaderzhka " ")
%vybor%("say Вот и всё! Принимайте обезболивающее 3-4 раза в день и не делайте резких движений. ", "  " zaderzhka " ")
%vybor%("say Всего хорошего, не болейте! ", "  " zaderzhka " ")
Return

:?:/Коронавирус_1::
SendPlay {Enter}
%vybor%("do У стены стоит дозатор с антисептиком. ", "  " zaderzhka " ")
%vybor%("me нанёс" Female " антисептик на руки и спешно растёр его ", "  " zaderzhka " ")
%vybor%("me вытащил" floor "  из кармана медицинские перчатки и надел" floor "  их ", "  " zaderzhka " ")
%vybor%("me вытащил" floor "  из кармана медицинскую маску и надел" floor "  её ", "  " zaderzhka " ")
%vybor%("do Рядом лежит специальный защитный костюм. ", "  " zaderzhka " ")
%vybor%("me взял" floor "  специальный защитный костюм и надел" floor "  его ", "  " zaderzhka " ")
%vybor%("say Сейчас я возьму у вас мазок, который определит наличие COVID-19. ", "  " zaderzhka " ")
%vybor%("do Рядом стоит медицинский стол с необходимыми материалами. ", "  " zaderzhka " ")
%vybor%("me взял" floor "  в левую руку медицинский шпатель ", "  " zaderzhka " ")
%vybor%("me взял" floor "  в правую руку стерильную палочку с ватой ", "  " zaderzhka " ")
%vybor%("me прижав язык пациента шпателем, ввел" floor "  палочку в ротовую полость ", "  " zaderzhka " ")
%vybor%("me провел" floor "  тампоном по миндалинам, затем по дужке к язычку ", "  " zaderzhka " ")
%vybor%("me вынул" floor "  тампон из ротовой полости, не касаясь слизистых поверхностей ", "  " zaderzhka " ")
%vybor%("do На столе стоит лоток для отработанных материалов. ", "  " zaderzhka " ")
%vybor%("me отложил" floor "  шпатель в лоток для отработанных материалов ", "  " zaderzhka " ")
%vybor%("me взял" floor "  в левую руку стерильную пробирку и открыл" floor "  её ", "  " zaderzhka " ")
%vybor%("me положил" floor "  вату в пробирку и закрыл" floor "  её крышкой ", "  " zaderzhka " ")
%vybor%("say Прошу вас подождать результатов анализа и не покидать палату. ", "  " zaderzhka " ")
%vybor%("do На столе лежит тест-полоска. ", "  " zaderzhka " ")
%vybor%("me открыв пробирку, достал" floor "  из неё вату ", "  " zaderzhka " ")
%vybor%("me нанёс материал с ваты на тест-полоску ", "  " zaderzhka " ")
%vybor%("do На тест-полоске происходит реакция. ", "  " zaderzhka " ")
%vybor%("me следит за реакцией на тест-полоске ", "  " zaderzhka " ")
%vybor%("do Результат положительный?", "  " zaderzhka " ")
Return

:?:/Коронавирус_2::
SendPlay {Enter}
%vybor%("say У меня плохие новости, у вас выявлен COVID-19. ", "  " zaderzhka " ")
%vybor%("say Отправляйтесь домой и не контактируйте с людьми.  ", "  " zaderzhka " ")
%vybor%("say Если вам станет плохо - вызывайте скорую помощь. ", "  " zaderzhka " ")
Return

:?:/Коронавирус_3::
SendPlay {Enter}
%vybor%("say Результат теста отрицательный. COVID-19 у вас не выявлен. ", "  " zaderzhka " ")

Return


:?:/ОЭКТ_1::
SendPlay {Enter}
%vybor%("do В углу комнаты стоит аппарат для ОЭКТ. ", "  " zaderzhka " ")
%vybor%("say Ложитесь, пожалуйста на стол.  ", "  " zaderzhka " ")
Return

:?:/ОЭКТ_2::
SendPlay {Enter}
%vybor%("say Не двигайтесь! ", "  " zaderzhka " ")
%vybor%("me включил" floor " сканирование на аппарате ", "  " zaderzhka " ")
%vybor%("me выключил" floor " сканирование на аппарате ", "  " zaderzhka " ")
%vybor%("do На мониторе результаты сканирования. ", "  " zaderzhka " ")
%vybor%("me изучает снимок ", "  " zaderzhka " ")
%vybor%("do Обнаружены отклонения? ", "  " zaderzhka " ")
Return

:?:/ОЭКТ_3::
SendPlay {Enter}
%vybor%("say У Вас обнаружены отклонения. ", "  " zaderzhka " ")
%vybor%("do На столе бланк ии ручка. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола бланк, ручку и начал" floor " ", "  " zaderzhka " ")
%vybor%("me поставил" floor " дату и подпись, положил" floor " ручку на стол ", "  " zaderzhka " ")
%vybor%("mе взял" floor " со стола, направления и передал" floor " человеку  ", "  " zaderzhka " ")
%vybor%("say Возьмите. ", "  " zaderzhka " ")
Return

:?:/ОЭКТ_4::
SendPlay {Enter}
%vybor%("say Все хорошо. У Вас не обнаружено отклонений.", "  " zaderzhka " ")
Return

:?:/ОФЭКТ_1::
SendPlay {Enter}
%vybor%("do В углу комнаты стоит аппарат для ОФЭКТ. ", "  " zaderzhka " ")
%vybor%("say Ложитесь, пожалуйста на стол.  ", "  " zaderzhka " ")
Return

:?:/ОФЭКТ_2::
SendPlay {Enter}
%vybor%("say Не двигайтесь! ", "  " zaderzhka " ")
%vybor%("me включил" floor " сканирование на аппарате ", "  " zaderzhka " ")
%vybor%("me выключил" floor " сканирование на аппарате ", "  " zaderzhka " ")
%vybor%("do На мониторе результаты сканирования. ", "  " zaderzhka " ")
%vybor%("me изучает снимок ", "  " zaderzhka " ")
%vybor%("do Обнаружены отклонения? ", "  " zaderzhka " ")
Return

:?:/ОФЭКТ_3::
SendPlay {Enter}
%vybor%("say У Вас обнаружены отклонения. ", "  " zaderzhka " ")
%vybor%("do На столе бланк ии ручка. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола бланк, ручку и начал" floor " ", "  " zaderzhka " ")
%vybor%("me поставил" floor " дату и подпись, положил" floor " ручку на стол ", "  " zaderzhka " ")
%vybor%("mе взял" floor " со стола, направления и передал" floor " человеку  ", "  " zaderzhka " ")
%vybor%("say Возьмите. ", "  " zaderzhka " ")
Return

:?:/ОФЭКТ_4::
SendPlay {Enter}
%vybor%("say Все хорошо. У Вас не обнаружено отклонений.", "  " zaderzhka " ")
Return

:?:/Химиотерапия::
SendPlay {Enter}
%vybor%("do Возле стола стоит стойка с капельницей. ", "  " zaderzhka " ")
%vybor%("me взял" floor " стойку с капельницей ", "  " zaderzhka " ")
%vybor%("me поставил" floor " стойку около кушетки с пациентом ", "  " zaderzhka " ")
%vybor%("me достал" floor " из мед.сумки пакет с химиопрепаратом ", "  " zaderzhka " ")
%vybor%("me повесил" floor " пакет с химиопрепаратом на стойку ", "  " zaderzhka " ")
%vybor%("me достал" floor " из мед.сумки шприц-бабочку ", "  " zaderzhka " ")
%vybor%("me присоединил" floor " её к капельнице ", "  " zaderzhka " ")
%vybor%("me наложил" floor " жгут на руку пациента ", "  " zaderzhka " ")
%vybor%("me взял" floor " ватку со столика и смочил" floor " её в спирте ", "  " zaderzhka " ")
%vybor%("me протёр" Female " место укола ", "  " zaderzhka " ")
%vybor%("me убрал" floor " жгут с руки ", "  " zaderzhka " ")
%vybor%("me ввёл" floor " шприц-бабочку в вену ", "  " zaderzhka " ")
%vybor%("me проверил" floor ", не появились ли повреждения в вене ", "  " zaderzhka " ")
%vybor%("me проверил" floor ", что капельница течёт правильно ", "  " zaderzhka " ")
%vybor%("say Капельница работает, всё в порядке. ", "  " zaderzhka " ")
%vybor%("say Вам нужно будет сидеть спокойно в течение всей процедуры. ", "  " zaderzhka " ")
%vybor%("me настроил" floor " скорость капельницы в соответствии с протоколом лечения ", "  " zaderzhka " ")
%vybor%("say Следите за уровнем жидкости в пакете. ", "  " zaderzhka " ")
%vybor%("say Если почувствуете дискомфорт или болевые ощущения, немедленно сообщите. ", "  " zaderzhka " ")
Return


:?:/Спутник::
SendPlay {Enter}
%vybor%("do На тело врача надет специальный защитный костюм. ", "  " zaderzhka " ")
%vybor%("do На руки врача надеты медицинские перчатки. ", "  " zaderzhka " ")
%vybor%("do На стене висит дозатор с антисептиком. ", "  " zaderzhka " ")
%vybor%("me нанёс" Female " антисептик на руки и спешно растёр" Female " его ", "  " zaderzhka " ")
%vybor%("say Сейчас я поставлю вам прививку от коронавируса. ", "  " zaderzhka " ")
%vybor%("do Рядом стоит медицинский стол с необходимыми материалами. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола спиртовую салфетку и распаковал" floor " её ", "  " zaderzhka " ")
%vybor%("me протёр" Female " место укола спиртовой салфеткой ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола шприц и распаковал" floor " его ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола ампулу с вакциной Спутник V и открыл" floor " её ", "  " zaderzhka " ")
%vybor%("me набрал" floor " лекарство в шприц ", "  " zaderzhka " ")
%vybor%("me ввел" floor " шприц под кожу пациента ", "  " zaderzhka " ")
%vybor%("me начал" floor " вводить вакцину ", "  " zaderzhka " ")
%vybor%("do Через некоторое время вакцина была введена. ", "  " zaderzhka " ")
%vybor%("me вытащи" floor "л шприц из-под кожи пациента ", "  " zaderzhka " ")
%vybor%("me приложил" floor " спиртовую салфетку к месту укола ", "  " zaderzhka " ")
%vybor%("do Рядом стоит урна. ", "  " zaderzhka " ")
%vybor%("me выкинул" floor " в урну все использованные материалы ", "  " zaderzhka " ")
%vybor%("say Всё готово. Если будет температура - примите жаропонижающее средство. ", "  " zaderzhka " ")
%vybor%("say Можете идти. Всего доброго, не болейте! ", "  " zaderzhka " ")
Return

:?:/Нога_3::
SendPlay {Enter}
%vybor%("me освободил" floor "  поврежденную ногу от обуви  ", "  " zaderzhka " ")
%vybor%("say Примите пожалуйста удобное для вас положение.  ", "  " zaderzhka " ")
%vybor%("do В мед.сумке лежит холодный компресс.  ", "  " zaderzhka " ")
%vybor%("me передал" floor "  холодны компресс пострадавшему ", "  " zaderzhka " ")
%vybor%("say Прикладывайте каждый час к поврежденной ноге.  ", "  " zaderzhka " ")
%vybor%("say А сейчас, наложим вам повязку для фиксации. ", "  " zaderzhka " ")
%vybor%("me взял" floor "  с мед.сумке ", "  " zaderzhka " ")
%vybor%("me начал" floor "  обматывать ногу бинтом  ", "  " zaderzhka " ")
%vybor%(" Так же я вам выпишу Нурофен, цена которого 500 рублей. Согласны?  ", "  " zaderzhka " ")
Return


:?:/Мойка_1::
SendPlay {Enter}
%vybor%("do Использованные медицинские инструменты лежат в ведре для стерилизации.   ", "  " zaderzhka " ")
%vybor%("me достав инструменты из ведра, кладет их в раковину     ", "  " zaderzhka " ")
%vybor%("me открывает кран с водой     ", "  " zaderzhka " ")
%vybor%("me промывает каждый инструмент в проточной воде      ", "  " zaderzhka " ")
%vybor%("do Плитка с емкостью для стерилизации стоит на рабочем столе.    ", "  " zaderzhka " ")
%vybor%("me взяв емкость для стерилизации, наливает в неё воду   ", "  " zaderzhka " ")
%vybor%("me закрывает кран с водой     ", "  " zaderzhka " ")
%vybor%("me ставит емкость для стерилизации на плитку     ", "  " zaderzhka " ")
%vybor%("me включает плитку и устанавливает температуру     ", "  " zaderzhka " ")
%vybor%("me кладет инструменты в емкость для стерилизации     ", "  " zaderzhka " ")
%vybor%("me выключив плитку, берет емкость для стерилизации за ручки   ", "  " zaderzhka " ")
%vybor%("me аккуратно выливает кипяток в раковину     ", "  " zaderzhka " ")
%vybor%("me достает инструменты из емкости   ", "  " zaderzhka " ")
%vybor%("me убирает инструменты в раствор Хлоргексидина    ", "  " zaderzhka " ")
Return

:?:/Рентген_4::
SendPlay {Enter}
%vybor%("say Я вам наложу вам повязку на сустав и вам сразу станет легче. ", "  " zaderzhka " ")
%vybor%("do Рядом процедурный столик. ", "  " zaderzhka " ")
%vybor%("do На столике эластичные бинты разных размеров, мазь Долобене.", "  " zaderzhka " ")
%vybor%("me взяв со столика мазь, аккуратно намазал" floor " её в сустав круговыми движениями ", "  " zaderzhka " ")
%vybor%("me взяв со столика бинт, наложил" floor " на сустав повязку  ", "  " zaderzhka " ")
%vybor%("say Вот и все. Ходите аккуратно. Избегайте нагрузок в течении 2 недель.", "  " zaderzhka " ")
Return

:?:/Рентген_3::
SendPlay {Enter}
%vybor%("say У Вас, перелом. Я наложу Вам гипс.  ", "  " zaderzhka " ")
%vybor%("do В шкафу лежит тазик и заготовки из гипса. ", "  " zaderzhka " ")
%vybor%("me открыв шкаф, взял" floor " всё необходимое ", "  " zaderzhka " ")
%vybor%("me открыл" floor " кран и набрал" floor " полный тазик воды", "  " zaderzhka " ")
%vybor%("me опустил" floor " заготовки гипса замочив их водой ", "timestamp" " zaderzhka " "")
%vybor%("do Заготовки размочены и готовы к наложению. ", "  " zaderzhka " ")
%vybor%("me достал" floor " из ведра заготовки и начал" floor " накладывать на место перелома", "  " zaderzhka " ")
%vybor%("say Почти готово.", "  " zaderzhka " ")
%vybor%("me помыл" floor " тазик под водой", "  " zaderzhka " ")
%vybor%("me помыв тазик, убрал" floor " его обратно в шкаф и взял" floor " бинты  ", "  " zaderzhka " ")
%vybor%("me начал" floor " накладывать бинты поверх гипса  ", "  " zaderzhka " ")
%vybor%("say Проверим прочность гипса.", "  " zaderzhka " ")
%vybor%("me слегка постучал" floor " по гипсу", "  " zaderzhka " ")
%vybor%("say Всё отлично, гипс затвердел.", "  " zaderzhka " ")
%vybor%("do У стены стоят костыли.", "  " zaderzhka " ")
%vybor%("me взял" floor " костыли и передал" floor " их пациенту ", "  " zaderzhka " ")
%vybor%("say Возьмите, они Вам пригодятся. ", "  " zaderzhka " ")
Return

:?:/Рентген_2::
SendPlay {Enter}
%vybor%("say У Вас, перелом. Необходимо наложить лангетку. ", "  " zaderzhka " ")
%vybor%("me взял" floor "  лангетку со стола, и наложил" floor "  на место перелома пациента ", "  " zaderzhka " ")
%vybor%("me закрепил" floor "  лангетку, на месте перелома ", "  " zaderzhka " ")
%vybor%("say Приходите через неделю на повторный осмотр. ", "  " zaderzhka " ")
Return


:?:/Рентген_1::
SendPlay {Enter}
%vybor%("do Выключенный рентген-аппарат стоит у стены.", "  " zaderzhka " ")
%vybor%("me нажал" floor " кнопку включения аппарата", "  " zaderzhka " ")
%vybor%("do Аппарат включен.", "  " zaderzhka " ")
%vybor%("me взяв защитный жилет с аппарата, надел" floor " на пациента", "  " zaderzhka " ")
%vybor%("me взяв защитную маску с аппарата, надел" floor " на пациента", "  " zaderzhka " ")
%vybor%("me нажал" floor " кнопку пуск", "  " zaderzhka " ")
%vybor%("say Не шевелитесь, делаю снимок. Больно не будет.", "  " zaderzhka " ")
%vybor%("do Рентген-аппарат сделал снимок.", "  " zaderzhka " ")
%vybor%("me взял" floor " в руку снимок ", "  " zaderzhka " ")
%vybor%("me повернул" floor " снимок на свет ", "  " zaderzhka " ")
%vybor%("do Снимок стал разборчив. ", "  " zaderzhka " ")
%vybor%("me тщательно рассмотрел" floor " снимок ", "  " zaderzhka " ")
%vybor%("me положил" floor " снимок на стол", "  " zaderzhka " ")
%vybor%("do Обнаружен перелом на снимке? ", "  " zaderzhka " ")
Return


:?:/ЗЧМТ::
SendPlay {Enter}
%vybor%("me открыл" floor " шкаф ", "  " zaderzhka " ")
%vybor%("do В шкафу на разных полках лежат медицинские средства индивидуальной защиты.  ", "  " zaderzhka " ")
%vybor%("me взяв с полки хирургическую шапочку и маску, поочерёдной надел" floor " их на себя ", "  " zaderzhka " ")
%vybor%("me достал" floor " из индивидуальной упаковки пару стерильных перчаток и натянул" floor " их на руки ", "  " zaderzhka " ")
%vybor%("do У койки стоит выключенный аппарат ИВЛ. ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат ", "  " zaderzhka " ")
%vybor%("do На аппарате лежит защитная маска. ", "  " zaderzhka " ")
%vybor%("me взяв маску в руку, надел" floor " на лицо пациента ", "  " zaderzhka " ")
%vybor%("me включил" floor " подачу кислорода в маску ", "  " zaderzhka " ")
%vybor%("do Кислород начал поступать. ", "  " zaderzhka " ")
%vybor%("do Возле операционного стола стоит двухъярусный столик укрытый плотным материалом.  ", "  " zaderzhka " ")
%vybor%("me убрал" floor " со столика материал, сложив его, положил" floor " на нижнюю полку  ", "  " zaderzhka " ")
%vybor%("do На столике лежат разнообразные хирургические инструменты и расходный материал.  ", "  " zaderzhka " ")
%vybor%("me взял" floor " со столика ампулу с прозрачной жидкостью внутри  ", "  " zaderzhka " ")
%vybor%("do На ампуле написано Новокаин.  ", "  " zaderzhka " ")
%vybor%("me отломив горлышко ампулы, бросил" floor " его в лоток, а ампулу поставил" floor " на столик  ", "  " zaderzhka " ")
%vybor%("me взяв со столика шприц, вскрыл" floor " упаковку и достал" floor " его ", "  " zaderzhka " ")
%vybor%("me снял" floor " футляр с иглы и аккуратно набрал" floor " лекарство из ампулы в шприц  ", "  " zaderzhka " ")
%vybor%("me снова надел" floor " футляр на иглу и взял" floor " со столика спиртовую салфетку в упаковке ", "  " zaderzhka " ")
%vybor%("me вскрыв упаковку, достал" floor " салфетку и протёр ей предполагаемое место инъекции  ", "  " zaderzhka " ")
%vybor%("me бросил" floor " салфетку с упаковкой в лоток и взял" floor " шприц, сняв футляр с иглы ", "  " zaderzhka " ")
%vybor%("me аккуратно ввел" floor " иглу в место рядом с рассечением и выдавил" floor " лекарство из шприца ", "  " zaderzhka " ")
%vybor%("me откинул" floor " шприц в лоток и взял" floor " со стола другой шприц ", "  " zaderzhka " ")
%vybor%("do В 20-ти кубовом шприце была прозрачная жидкость - Хлоргексидин.  ", "  " zaderzhka " ")
%vybor%("me выдавил" floor " содержимое шприца прямо в рану и отложил" floor " его в лоток  ", "  " zaderzhka " ")
%vybor%("me взяв со столика тупфер, промокнул" floor " им место ранение и отбросил" floor " его в лоток  ", "  " zaderzhka " ")
%vybor%("me в правую руку взял" floor " иглодержатель с заправленной в него иглой и нитью  ", "  " zaderzhka " ")
%vybor%("me в левую руку взял" floor " хирургический пинцет ", "  " zaderzhka " ")
%vybor%("me начал" floor " накладывать швы на место ранения ", "  " zaderzhka " ")
%vybor%("do Через некоторое время на место ранения было наложено несколько швов. ", "  " zaderzhka " ")
%vybor%("me бросил" floor " иглодержатель и пинцет в лоток, взял" floor " со столика одноразовую послеоперационную повязку ", "  " zaderzhka " ")
%vybor%("me оторвал" floor " с повязки защитную плёнку и аккуратно приклеил" floor " повязку поверх шва  ", "  " zaderzhka " ")
%vybor%("me нажатием на кнопку выключил" floor " аппарат ИВЛ и снял" floor " маску с пациента ", "  " zaderzhka " ")
%vybor%("say Операция прошла успешно.", "  " zaderzhka " ")
Return

:?:/Пересадка_1::
SendPlay {Enter}
%vybor%("do Стерильные перчатки на тумбочке. ", "  " zaderzhka " ")
%vybor%("me взял" floor " перчатки затем надел" floor " их ", "  " zaderzhka " ")
%vybor%("do Аппарат для наркоза у койки. ", "  " zaderzhka " ")
%vybor%("do Маска на аппарате. ", "  " zaderzhka " ")
%vybor%("me снял" floor " маску, затем надел" floor " на пациента ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат ", "  " zaderzhka " ")
%vybor%("do Скальпель на тумбочке. ", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель ", "  " zaderzhka " ")
%vybor%("me сделал" floor " надрез ", "  " zaderzhka " ")
%vybor%("me аккуратным движением рук вытащил" floor " нужный орган ", "  " zaderzhka " ")
%vybor%("do Холодильник у стены. ", "  " zaderzhka " ")
%vybor%("me убрал" floor " орган в холодильник ", "  " zaderzhka " ")
%vybor%("do Новый орган в миске, в размороженном состоянии. ", "  " zaderzhka " ")
%vybor%("me взял" floor " орган ", "  " zaderzhka " ")
%vybor%("me поставил" floor " орган на нужное место ", "  " zaderzhka " ")
%vybor%("do Мед.нить и мед.игла на тумбочке. ", "  " zaderzhka " ")
%vybor%("me взял мед. нить и мед. иглу ", "  " zaderzhka " ")
%vybor%("me продел" floor " нить в иглу ", "  " zaderzhka " ")
%vybor%("me начал " floor "зашивать рану ", "  " zaderzhka " ")
%vybor%("me убрал" floor " маску с пациента, затем повесил" floor " ее на наркозный аппарат ", "  " zaderzhka " ")
Return

:?:/Нос_1::
SendPlay {Enter}
%vybor%("do Стул возле стены. ", "  " zaderzhka " ")
%vybor%("say Садитесь на стул, сейчас будем вам вправлять нос ", "  " zaderzhka " ")
%vybor%("do На мед. столе стерильные перчатки. ", "  " zaderzhka " ")
%vybor%("me взяв перчатки со стола, нацепил" floor " их на руки ", "  " zaderzhka " ")
%vybor%("me резким движением руки вправил" floor " нос человеку напротив ", "  " zaderzhka " ")
Return

:?:/Нос_2::
SendPlay {Enter}
%vybor%("do Около стены стол с медицинскими принадлежностями. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола пращевидную повязку ", "  " zaderzhka " ")
%vybor%("me тщательно наложил" floor " пращевидную повязку на нос ", "  " zaderzhka " ")
Return

:?:/Перевязывание::
SendPlay {Enter}
%vybor%("do На столе находится все необходимые предметы для перевязывания раны. ", "  " zaderzhka " ")
%vybor%("me взял" floor " в руки жгут ", "  " zaderzhka " ")
%vybor%("me накладывает жгут выше кровотечения ", "  " zaderzhka " ")
%vybor%("me осмотрел" floor " рану больного ", "  " zaderzhka " ")
%vybor%("me обработал" floor " рану больного ", "  " zaderzhka " ")
%vybor%("me взял" floor " шприц и обезболивающее ", "  " zaderzhka " ")
%vybor%("me заправил" floor " обезболивающим шприц ", "  " zaderzhka " ")
%vybor%("me вколол" floor " обезболивающие ", "  " zaderzhka " ")
%vybor%("do В комнате находится аппарат наркоза. ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат наркоза ", "  " zaderzhka " ")
%vybor%("do Кислородная маска лежит рядом с аппаратом наркоза. ", "  " zaderzhka " ")
%vybor%("me взял" floor " кислородную маску ", "  " zaderzhka " ")
%vybor%("me надел" floor " кислородную маску на пациента ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола продезинфицированные инструменты ", "  " zaderzhka " ")
%vybor%("me начинает зашивать рану ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола ножницы ", "  " zaderzhka " ")
%vybor%("me обрезал" floor " нитку ", "  " zaderzhka " ")
%vybor%("me положил" floor " иголку и ножницы обратно на стол ", "  " zaderzhka " ")
%vybor%("me обработал" floor " рану зеленкой ", "  " zaderzhka " ")
%vybor%("do Бинты лежат на соседней полке. ", "  " zaderzhka " ")
%vybor%("me взял" floor " бинты ", "  " zaderzhka " ")
%vybor%("me перевязывает рану бинтом ", "  " zaderzhka " ")
%vybor%("me снял" floor " жгут ", "  " zaderzhka " ")
%vybor%("me выключил" floor " аппарат наркоза ", "  " zaderzhka " ")
%vybor%("me снял" floor " кислородную маску и положил" floor " её обратно ", "  " zaderzhka " ")
Return

:?:/Клятва::
SendPlay {Enter}
%vybor%("say Получая высокое звание врача и приступая к профессиональной деятельности, я торжественно клянусь:", "  " zaderzhka " ")
%vybor%("say честно исполнять свой врачебный долг, посвятить свои знания и умения предупреждению и лечению заболеваний, сохранению и укреплению здоровья человека;", "  " zaderzhka " ")
%vybor%("say быть всегда готовым оказать медицинскую помощь, хранить врачебную тайну, внимательно и заботливо относиться к пациенту, действовать исключительно в ", "  " zaderzhka " ")
%vybor%("say его интересах независимо от пола, расы, национальности, языка, происхождения, имущественного и должностного положения, места жительства, отношения ", "  " zaderzhka " ")
%vybor%("say к религии, убеждений, принадлежности к общественным объединениям, а также других обстоятельств;", "  " zaderzhka " ")
%vybor%("say проявлять высочайшее уважение к жизни человека, никогда не прибегать к осуществлению эвтаназии;", "  " zaderzhka " ")
%vybor%("say хранить благодарность и уважение к своим учителям, быть требовательным и справедливым к своим ученикам, способствовать их профессиональному росту;", "  " zaderzhka " ")
%vybor%("say доброжелательно относиться к коллегам, обращаться к ним за помощью и советом, если этого требуют интересы пациента, и самому никогда не", "  " zaderzhka " ")
%vybor%("say отказывать коллегам в помощи и совете;", "  " zaderzhka " ")
%vybor%("say постоянно совершенствовать свое профессиональное мастерство, беречь и развивать благородные традиции медицины.", "  " zaderzhka " ")
Return


:?:/Годность_1::
SendPlay {Enter}
%vybor%("do Перед сотрудником стоит стеллаж с препаратами.", "  " zaderzhka " ")
%vybor%("me взял" floor " препарат со стеллажа и начал" floor " изучать его упаковку", "  " zaderzhka " ")
%vybor%("try обнаружил" floor " на упаковке истекший срок годности", "  " zaderzhka " ")
%vybor%("me отложил" floor " препарат в сторону", "  " zaderzhka " ")
%vybor%("me взял" floor " со стеллажа другой препарат и начал" floor " изучать его упаковку", "  " zaderzhka " ")
%vybor%("try обнаружил" floor " на упаковке истекший срок годности", "  " zaderzhka " ")
%vybor%("me отложил" floor " препарат в сторону", "  " zaderzhka " ")
%vybor%("me открыл" floor " медицинскую сумку", "  " zaderzhka " ")
%vybor%("me достал" floor " из медицинской сумки бланк и ручку", "  " zaderzhka " ")
%vybor%("me записал" floor " в бланк все необходимые сведения", "  " zaderzhka " ")
%vybor%("me убрал" floor " бланк и ручку в медицинскую сумку", "  " zaderzhka " ")
%vybor%("me закрыл" floor " медицинскую сумку", "  " zaderzhka " ")
Return


:?:/Хранение_1::
SendPlay {Enter}
%vybor%("do На плече висит медицинская сумка.", "  " zaderzhka " ")
%vybor%("me открыл" floor " медицинскую сумку", "  " zaderzhka " ")
%vybor%("me достал" floor " из медицинской сумки бесконтактный термометр", "  " zaderzhka " ")
%vybor%("me нажал" floor " на кнопку включения прибора", "  " zaderzhka " ")
%vybor%("do Бесконтактный термометр включился.", "  " zaderzhka " ")
%vybor%("me нажал" floor " на кнопку измерения температуры", "  " zaderzhka " ")
%vybor%("do Прибор завершил измерение и вывел" floor " результат на экран.", "  " zaderzhka " ")
%vybor%("do На стене висит таблица с нормами температурного режима для хранения препаратов.", "  " zaderzhka " ")
%vybor%("me взглянул" floor " на таблицу и запомнил" floor " нужный показатель", "  " zaderzhka " ")
%vybor%("try увидел" floor " на экране прибора подходящую норму", "  " zaderzhka " ")
%vybor%("me достал" floor " из медицинской сумки бланк и ручку", "  " zaderzhka " ")
%vybor%("me записал" floor " в бланк все необходимые сведения", "  " zaderzhka " ")
%vybor%("me убрал" floor " бланк и ручку в мед. сумку", "  " zaderzhka " ")
%vybor%("me закрыл" floor " медицинскую сумку", "  " zaderzhka " ")
Return


:?:/Пульсоксиметр_1::
SendPlay {Enter}
%vybor%("me достал" floor " из мед сумки пульсоксиметр", "  " zaderzhka " ")
%vybor%("me положил" floor " пульсоксиметр на стол", "  " zaderzhka " ")
%vybor%("say Вставьте любой палец в пульсоксиметр. ", "  " zaderzhka " ")
Return

:?:/Пульсоксиметр_2::
SendPlay {Enter}
%vybor%("me включил" floor " пульсоксиметр ", "  " zaderzhka " ")
%vybor%("do Пульсоксиметр издал звук.", "  " zaderzhka " ")
%vybor%("do Пульсоксиметр фиксирует насыщения крови кислородом.", "  " zaderzhka " ")
%vybor%("do Что показал пульсоксиметр? ", "  " zaderzhka " ")
Return

:?:/Ингалятор::
SendPlay {Enter}
%vybor%("do В шкафу ингалятор.", "  " zaderzhka " ")
%vybor%("me открыл" floor " шкаф ", "  " zaderzhka " ")
%vybor%("me достал" floor " из шкафа ингалятор", "  " zaderzhka " ")
%vybor%("me поставил" floor " ингалятор на стол", "  " zaderzhka " ")
%vybor%("me подключил" floor " ингалятор к сети ", "  " zaderzhka " ")
%vybor%("me достал" floor " одноразовый шприц из шкафа ", "  " zaderzhka " ")
%vybor%("me набрал" floor " в шприц раствор хлорид натрия ", "  " zaderzhka " ")
%vybor%("me наполнил" floor " ингалятор из шприца", "  " zaderzhka " ")
%vybor%("me включил" floor " ингалятор ", "  " zaderzhka " ")
%vybor%("say Прижмите респиратор к лицу. ", "  " zaderzhka " ")
%vybor%("say Если у вас закончилась жидкость, говорите. ", "  " zaderzhka " ")
%vybor%("say Дышите равномерно, не задерживайте дыхание. Постарайтесь не двигаться. ", "  " zaderzhka " ")
%vybor%("say Если почувствуете головокружение или дискомфорт, сообщите мне. ", "  " zaderzhka " ")
Return

:?:/Миостимулятор_1::
SendPlay {Enter}
%vybor%("do В шкафу лежит миостимулятор.", "  " zaderzhka " ")
%vybor%("me открыл" floor " шкаф ", "  " zaderzhka " ")
%vybor%("me достал" floor " из шкафа миостимулятор", "  " zaderzhka " ")
%vybor%("me положил" floor " миостимулятор на стол", "  " zaderzhka " ")
%vybor%("say Раздевайтесь и ложитесь на кушетку. ", "  " zaderzhka " ")
Return
:?:/Миостимулятор_2::
SendPlay {Enter}
%vybor%("me взял миостимулятор в руки ", "  " zaderzhka " ")
%vybor%("me положил" floor " миостимулятор рядом с человеком ", "  " zaderzhka " ")
%vybor%("me положил" floor " электроды к нужным мышцам ", "  " zaderzhka " ")
%vybor%("me включил" floor " миостимулятор ", "  " zaderzhka " ")
Return
:?:/Миостимулятор_3::
SendPlay {Enter}
%vybor%("me выключил" floor " миостимулятор ", "  " zaderzhka " ")
%vybor%("me убрал" floor " электроды с пациента ", "  " zaderzhka " ")
%vybor%("me убрал" floor " миостимулятор в шаф ", "  " zaderzhka " ")
%vybor%("me закрыл" floor " шкаф ", "  " zaderzhka " ")
Return
:?:/ЭндоУЗИ_1::
SendPlay {Enter}
%vybor%("say Сейчас я проведу Вам Эндосонография.  ", "  " zaderzhka " ")
%vybor%("say Открывайте рот. ", "  " zaderzhka " ")
Return

:?:/ЭндоУЗИ_2::
SendPlay {Enter}
%vybor%("do Аппарат ЭндоУЗИ стоит у койки. ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат ЭндоУЗИ ", "  " zaderzhka " ")
%vybor%("me начал" floor " вводить зонд в пищевод пациента ", "  " zaderzhka " ")
%vybor%("me начал" floor " изучать пищевод ", "  " zaderzhka " ")
%vybor%("me продолжил" floor " вводить зонд в желудок пациента ", "  " zaderzhka " ")
%vybor%("me начал" floor " осматривать стенки желудка ", "  " zaderzhka " ")
%vybor%("me смотрит на экран ", "  " zaderzhka " ")
%vybor%("do Обнаружили отклонения? ", "  " zaderzhka " ")
%vybor%("me начал" floor " вынимать зонд из желудка пациента ", "  " zaderzhka " ")
%vybor%("me положил" floor " зонд на стол   ", "  " zaderzhka " ")
%vybor%("me выключил" floor " аппарат ЭндоУЗИ ", "  " zaderzhka " ")
Return


:?:/Тату_1::
SendPlay {Enter}
%vybor%("say Раздевайтесь. ", "  " zaderzhka " ")
%vybor%("do Лазерный аппарат стоит у стены. ", "  " zaderzhka " ")
%vybor%("me взял" floor " защитные очки и передал" floor " их пациенту ", "  " zaderzhka " ")
%vybor%("say Надевайте и ложитесь на койку. ", "  " zaderzhka " ")
Return

:?:/Тату_2::
SendPlay {Enter}
%vybor%("me осмотрел пациента ", "  " zaderzhka " ")
%vybor%("do На столе лежит специальный гель. ", "  " zaderzhka " ")
%vybor%("me открыл" floor " гель и намазал" floor " его на место удаление ", "  " zaderzhka " ")
%vybor%("me надел" floor " защитные очки ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат ", "  " zaderzhka " ")
%vybor%("me начал" floor " выводить татуировку ", "  " zaderzhka " ")
Return

:?:/Тату_3::
SendPlay {Enter}
%vybor%("me закончил" floor " выводить татуировку ", "  " zaderzhka " ")
%vybor%("me снял" floor " защитные очки ", "  " zaderzhka " ")
%vybor%("me выключил" floor " аппарат ", "  " zaderzhka " ")
%vybor%("say Процедура окончена, можете одеваться. ", "  " zaderzhka " ")
Return



:?:/Ангина_1::
SendPlay {Enter}
%vybor%("do Возле кушетки стоит хирургический столик. ", "  " zaderzhka " ")
%vybor%("do На столике лежат разнообразные хирургические инструменты с медицинскими принадлежностями. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола упаковку с экспресс-тестом Ангин и вскрыл" floor " её ", "  " zaderzhka " ")
%vybor%("do Спец.основа на столе. ", "  " zaderzhka " ")
%vybor%("me взял" floor " пробирку из упаковки и положил" floor " ее на спец.основу ", "  " zaderzhka " ")
%vybor%("me извлек из упаковки 2 раствора, ватную палочку, тест, и положив его на стол ", "  " zaderzhka " ")
%vybor%("me открыл" floor " раствор желтого цвета, и капнув 2 капли в пробирку ", "  " zaderzhka " ")
%vybor%("me открыл" floor " красный раствор, и капнув 4 капли в пробирку ", "  " zaderzhka " ")
%vybor%("say Гражданин, широко откройте рот. ", "  " zaderzhka " ")
Return


:?:/Ангина_2::
SendPlay {Enter}
%vybor%("me взял" floor " ватную палочку со стола и сделал" floor " мазок в районе миндалин и задней стенке глотки ", "  " zaderzhka " ")
%vybor%("me поместил" floor " ватную палочку в пробирку с раствором ", "  " zaderzhka " ")
%vybor%("me перемешал" floor " 10 раз раствор при помощи ватной палочки ", "  " zaderzhka " ")
%vybor%("me достал" floor " ватную палочку из пробирки ", "  " zaderzhka " ")
%vybor%("me поднял" floor " к тесту ватную палочку и надавил" floor " ", "  " zaderzhka " ")
%vybor%("me выбросил" floor " ватную палочку в ведро ", "  " zaderzhka " ")
%vybor%("do На тесте есть 2 полоски? ", "  " zaderzhka " ")
Return


:?:/Ангина_3::
SendPlay {Enter}
%vybor%("Вы болены, я выпишу вам Фурацилин Авексима, стоимость 500 рублей, вы согласны? ", "  " zaderzhka " ")
Return


:?:/Ангина_4::
SendPlay {Enter}
%vybor%("Вы здоровы можете идти. ", "  " zaderzhka " ")
Return

:?:/Гвоздь_1::
SendPlay {Enter}
%vybor%("do У стены стоит кран. ", "  " zaderzhka " ")
%vybor%("me открывает его ", "  " zaderzhka " ")
%vybor%("do В мыльнице лежит мыло. ", "  " zaderzhka " ")
%vybor%("me взяв мыло, начинает мыть руки ", "  " zaderzhka " ")
%vybor%("me положил" floor " мыло обратно в мыльницу ", "  " zaderzhka " ")
%vybor%("me выключает кран ", "  " zaderzhka " ")
%vybor%("do На столе лежит упаковка с одноразовыми перчатками. ", "  " zaderzhka " ")
%vybor%("me достал" floor " из неё одноразовые медицинские перчатки ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки на руки ", "  " zaderzhka " ")
%vybor%("say Раздевайтесь. ", "  " zaderzhka " ")
Return

:?:/Гвоздь_2::
SendPlay {Enter}
%vybor%("do У кушетки стоит тумбочка со всеми необходимыми инструментами.  ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке ватный тампон и ампулу с антибиотиком, открыл" floor " ампулу  ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке шприц, набрал" floor " в него содержимое ампулы  ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит упаковка спиртовых салфеток.  ", "  " zaderzhka " ")
%vybor%("me открыв упаковку спиртовых салфеток, взял" floor " одну салфетку и аккуратно протёр" Female " кожу возле раны  ", "  " zaderzhka " ")
%vybor%("me аккуратно вколол шприц с антибиотиком в кожу пациента возле раны  ", "  " zaderzhka " ")
%vybor%("me положил" floor " шприц на тумбочку  ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит ватный тампон и ампула с анестезией.  ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке ватный тампон и ампулу с анестезией, открыл" floor " ампулу  ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке шприц, набрал" floor " в него содержимое ампулы  ", "  " zaderzhka " ")
%vybor%("do На тумбочке по-прежнему лежит упаковка спиртовых салфеток.  ", "  " zaderzhka " ")
%vybor%("me открыв упаковку спиртовых салфеток, взял" floor " одну салфетку и аккуратно протёр" Female " место укола  ", "  " zaderzhka " ")
%vybor%("me аккуратно вколол" floor " шприц с анестезией в кожу пациента возле раны  ", "  " zaderzhka " ")
%vybor%("me положил" floor " шприц на тумбочку ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит ватный тампон и ампула с анестезией.  ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке ватный тампон и ампулу с анестезией, открыл" floor " ампулу  ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке шприц, набрал" floor " в него содержимое ампулы ", "  " zaderzhka " ")
%vybor%("do На тумбочке по-прежнему лежит упаковка спиртовых салфеток.  ", "  " zaderzhka " ")
%vybor%("me открыв упаковку спиртовых салфеток, взял" floor " одну салфетку и аккуратно протёр" Female " место укола ", "  " zaderzhka " ")
%vybor%("me аккуратно вколол шприц с анестезией в кожу пациента возле раны  ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит простерилизованный скальпель. ", "  " zaderzhka " ")
%vybor%("me положив шприц на тумбочку, взял" floor " скальпель и аккуратно сделал" floor " надрез кожи возле раны ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит простерилизованный пинцет. ", "  " zaderzhka " ")
%vybor%("me взяв пинцет, осторожно вытащил" floor " инородный предмет и положил" floor " его на тумбочку ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке ватный тампон и перекись, обработал" floor " место занесения железной арматуры ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит операционная иголка и саморассасывающаяся нить. ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит заживляющая мазь. ", "  " zaderzhka " ")
%vybor%("me взяв мазь на тумбочке, аккуратно нанёс" Female " её на место раны ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке ватный тампон, аккуратно положил" floor " его на место раны ", "  " zaderzhka " ")
%vybor%("say Вот и всё. Мы закончили. Швы сами рассосутся примерно через 2 дня. ", "  " zaderzhka " ")
Return

:?:/Мозоль_1::
SendPlay {Enter}
%vybor%("do У стены стоит кран. ", "  " zaderzhka " ")
%vybor%("me открывает его ", "  " zaderzhka " ")
%vybor%("do В мыльнице лежит мыло. ", "  " zaderzhka " ")
%vybor%("me взяв мыло, начинает мыть руки ", "  " zaderzhka " ")
%vybor%("me положил" floor " мыло обратно в мыльницу ", "  " zaderzhka " ")
%vybor%("me выключает кран ", "  " zaderzhka " ")
%vybor%("do На столе лежит упаковка с одноразовыми перчатками. ", "  " zaderzhka " ")
%vybor%("me достал" floor " из неё одноразовые медицинские перчатки ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки на руки ", "  " zaderzhka " ")
%vybor%("say Раздевайтесь. ", "  " zaderzhka " ")
Return


:?:/Мозоль_2::
SendPlay {Enter}
%vybor%("do На тумбочке лежит упаковка спиртовых салфеток.  ", "  " zaderzhka " ")
%vybor%("me открыв упаковку спиртовых салфеток, взял" floor " одну салфетку и аккуратно протёр" Female " мазоль на теле пациента  ", "  " zaderzhka " ")
%vybor%("me аккуратно вколол" floor " шприц с анестезией в кожу пациента возле мазоли  ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит простерилизованный скальпель.  ", "  " zaderzhka " ")
%vybor%("me положив шприц на тумбочку, взял" floor " скальпель и аккуратно сделал" floor " надрез кожи в месте мазоли  ", "  " zaderzhka " ")
%vybor%("me аккуратно скальпелем удалил" floor " нарост под кожей  ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит операционная иголка и саморассасывающаяся нить.  ", "  " zaderzhka " ")
%vybor%("me положив скальпель на тумбочку, взял" floor " иголку с ниткой и аккуратно зашил" floor " рану  ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит заживляющая мазь.  ", "  " zaderzhka " ")
%vybor%("me взяв мазь на тумбочке, аккуратно нанёс" Female " её на место мозоли  ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке ватный тампон, аккуратно положил" floor " его на место мозоли  ", "  " zaderzhka " ")
%vybor%("say Вот и всё. Швы сами рассосутся примерно через неделю.", "  " zaderzhka " ")
%vybor%("say Я вам пропишу ибуклин в качестве обезболивающего.", "  " zaderzhka " ")
%vybor%("say Его стоимость 500 рублей, вы согласны? ", "  " zaderzhka " ")
%vybor%("todo Всего доброго, не болейте*улыбнувшись.  ", "  " zaderzhka " ")
Return


:?:/Бородавка_1::
SendPlay {Enter}
%vybor%("do У стены стоит кран. ", "  " zaderzhka " ")
%vybor%("me открывает его ", "  " zaderzhka " ")
%vybor%("do В мыльнице лежит мыло. ", "  " zaderzhka " ")
%vybor%("me взяв мыло, начинает мыть руки ", "  " zaderzhka " ")
%vybor%("me положил" floor " мыло обратно в мыльницу ", "  " zaderzhka " ")
%vybor%("me выключает кран ", "  " zaderzhka " ")
%vybor%("do На столе лежит упаковка с одноразовыми перчатками. ", "  " zaderzhka " ")
%vybor%("me достал" floor " из неё одноразовые медицинские перчатки ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки на руки ", "  " zaderzhka " ")
%vybor%("say Раздевайтесь. ", "  " zaderzhka " ")
Return


:?:/Бородавка_2::
SendPlay {Enter}
%vybor%("do У кушетки стоит тумбочка со всеми необходимыми инструментами.  ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке ватный тампон и ампулу с анестезией, открыл" floor " ампулу  ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке шприц, набрал" floor " в него содержимое ампулы  ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит упаковка спиртовых салфеток.  ", "  " zaderzhka " ")
%vybor%("me открыв упаковку спиртовых салфеток, взял" floor " одну салфетку и аккуратно протёр" Female " кожу возле раны  ", "  " zaderzhka " ")
%vybor%("me аккуратно вколол" floor " шприц с анестезией в кожу пациента   ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит простерилизованный скальпель.  ", "  " zaderzhka " ")
%vybor%("me положив шприц на тумбочку, взял" floor " скальпель и аккуратно сделал" floor " надрез кожи в месте бородавки  ", "  " zaderzhka " ")
%vybor%("me скальпелем осторожно вырезал бородавку из-под кожи  ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит операционная иголка и саморассасывающаяся нить.    ", "  " zaderzhka " ")
%vybor%("me положив скальпель на тумбочку, взял" floor " иголку с ниткой и аккуратно зашил рану   ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит заживляющая мазь.   ", "  " zaderzhka " ")
%vybor%("me взяв мазь на тумбочке, аккуратно нанёс её на место раны   ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке ватный тампон, аккуратно положил" floor " его на место раны   ", "  " zaderzhka " ")
%vybor%("say Вот и всё. Мы закончили. Швы сами рассосутся примерно через 2 дня.   ", "  " zaderzhka " ")
Return

:?:/Соринка_1::
SendPlay {Enter}
%vybor%("do У стены стоит кран. ", "  " zaderzhka " ")
%vybor%("me открывает его ", "  " zaderzhka " ")
%vybor%("do В мыльнице лежит мыло. ", "  " zaderzhka " ")
%vybor%("me взяв мыло, начинает мыть руки ", "  " zaderzhka " ")
%vybor%("me положил" floor " мыло обратно в мыльницу ", "  " zaderzhka " ")
%vybor%("me выключает кран ", "  " zaderzhka " ")
%vybor%("do На столе лежит упаковка с одноразовыми перчатками. ", "  " zaderzhka " ")
%vybor%("me достал" floor " из неё одноразовые медицинские перчатки ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки на руки ", "  " zaderzhka " ")
Return


:?:/Соринка_2::
SendPlay {Enter}
%vybor%("do У кушетки стоит тумбочка со всеми необходимыми инструментами.  ", "  " zaderzhka " ")
%vybor%("say Расслабьте лицо. Старайтесь не морщиться.  ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит специальная тканевая салфетка.  ", "  " zaderzhka " ")
%vybor%("me взяв тканевую салфетку, по направлению к носу аккуратно вытащил" floor " соринку из глаза  ", "  " zaderzhka " ")
%vybor%("me тканевой салфеткой аккуратно протёр" Female " область глаз у носа и положил" floor " салфетку на тумбочку  ", "  " zaderzhka " ")
%vybor%("say Попробуйте аккуратно проморгаться. Глаза не трите крайнем случае можете промыть аккуратно водой.  ", "  " zaderzhka " ")
%vybor%("todo Всего доброго, не болейте*улыбнувшись.  ", "  " zaderzhka " ")
Return

:?:/Заноза_1::
SendPlay {Enter}
%vybor%("do У стены стоит кран. ", "  " zaderzhka " ")
%vybor%("me открывает его ", "  " zaderzhka " ")
%vybor%("do В мыльнице лежит мыло. ", "  " zaderzhka " ")
%vybor%("me взяв мыло, начинает мыть руки ", "  " zaderzhka " ")
%vybor%("me положил" floor " мыло обратно в мыльницу ", "  " zaderzhka " ")
%vybor%("me выключает кран ", "  " zaderzhka " ")
%vybor%("do На столе лежит упаковка с одноразовыми перчатками. ", "  " zaderzhka " ")
%vybor%("me достал" floor " из неё одноразовые медицинские перчатки ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки на руки ", "  " zaderzhka " ")
Return


:?:/Заноза_2::
SendPlay {Enter}
%vybor%("do У кушетки стоит тумбочка со всеми необходимыми инструментами. ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке ватный тампон и перекись, аккуратно обработа" floor "л место вокруг раны ", "  " zaderzhka " ")
%vybor%("me внимательно осмотрел место занесения занозы ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит простерилизованный пинцет. ", "  " zaderzhka " ")
%vybor%("me взяв пинцет, осторожно вытащил" floor " заносу и положил" floor " её на тумбочку ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке ватный тампон и перекись, обработа" floor "л место занесения занозы ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит пачка пластырей. ", "  " zaderzhka " ")
%vybor%("me открыв пачку пластырей, достал" floor " из неё один пластырь, открыл" floor " его и аккуратно закрепил" floor " на месте раны ", "  " zaderzhka " ")
%vybor%("todo Вот и всё. Мы закончили. Всего доброго, не болейте*улыбнувшись. ", "  " zaderzhka " ")
Return

:?:/М>Ж::
SendPlay {Enter}
%vybor%("do На столе лежат перчатки и мед.маска.   ", "  " zaderzhka " ")
%vybor%("me взял" floor " перчатки   ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки   ", "  " zaderzhka " ")
%vybor%("do Рядом стоит аппарат наркоза.   ", "  " zaderzhka " ")
%vybor%("me подключил" floor " аппарат наркоза к пациенту   ", "  " zaderzhka " ")
%vybor%("do В операционной установлены все необходимые медицинские инструменты. ", "  " zaderzhka " ")
%vybor%("me подключил" floor " пациента к датчикам ", "  " zaderzhka " ")
%vybor%("me проверил" floor " показания артериального давления, пульса и сатурации пациента ", "  " zaderzhka " ")
%vybor%("do На мониторе отображаются стабильные показатели состояния пациента. ", "  " zaderzhka " ")
%vybor%("me взял" floor " одноразовые перчатки со стола и надел" floor " их ", "  " zaderzhka " ")
%vybor%("do Рядом находится дозатор с антисептиком. ", "  " zaderzhka " ")
%vybor%("me обработал" floor " руки антисептиком поверх перчаток ", "  " zaderzhka " ")
%vybor%("me взял" floor " маркер со стола и отметил" floor " линии разрезов на мошонке и половом члене ", "  " zaderzhka " ")
%vybor%("say Приступаю к основной части операции. ", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель со стола и аккуратно сделал" floor " разрезы по отмеченным линиям ", "  " zaderzhka " ")
%vybor%("me взял" floor " хирургический пинцет и начал" floor " отслаивать кожные покровы от подлежащих тканей ", "  " zaderzhka " ")
%vybor%("me отделил" floor " кожу полового члена, сохранив её для последующего формирования влагалища ", "  " zaderzhka " ")
%vybor%("me вскрыл" floor " мошонку и аккуратно удалил" floor " яички ", "  " zaderzhka " ")
%vybor%("do В лотке находится контейнер для изъятых тканей. ", "  " zaderzhka " ")
%vybor%("me поместил" floor " изъятые ткани в стерильный контейнер", "  " zaderzhka " ")
%vybor%("me взял" floor " сосудистый зажим и остановил" floor " кровотечение из семенных канатиков", "  " zaderzhka " ")
%vybor%("me наложил" floor " лигатуры на сосуды и завершил" floor " подготовку тканей", "  " zaderzhka " ")
%vybor%("do На столе лежит вагинальный расширитель.", "  " zaderzhka " ")
%vybor%("me взял" floor " вагинальный расширитель и начал" floor " формировать полость для влагалища", "  " zaderzhka " ")
%vybor%("me использовал" floor " тупфер с антисептиком для обработки полости", "  " zaderzhka " ")
%vybor%("me укрепил" floor " стенки влагалища лоскутами кожи, взятыми из полового члена", "  " zaderzhka " ")
%vybor%("me зафиксировал" floor " ткани саморассасывающимися швами", "  " zaderzhka " ")
%vybor%("do Полость влагалища сформирована.", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель со стола и аккуратно сформировал" floor " малые и большие половые губы из кожи мошонки", "  " zaderzhka " ")
%vybor%("me наложил" floor " швы на края сформированных губ", "  " zaderzhka " ")
%vybor%("me использовал" floor " часть ткани головки полового члена для формирования клитора", "  " zaderzhka " ")
%vybor%("me закрепил" floor " клитор в анатомически правильном положении", "  " zaderzhka " ")
%vybor%("do Половые губы и клитор сформированы.", "  " zaderzhka " ")
%vybor%("me взял" floor " дезинфицирующий раствор и обработал" floor " область швов", "  " zaderzhka " ")
%vybor%("me наложил" floor " стерильные повязки на все разрезы", "  " zaderzhka " ")
%vybor%("do Рядом лежит компрессионное белье.", "  " zaderzhka " ")
%vybor%("me надел" floor " компрессионное белье на пациента для предотвращения отёков", "  " zaderzhka " ")
%vybor%("me отключил" floor " аппарат наркоза и снял кислородную маску с пациента", "  " zaderzhka " ")
%vybor%("me проверил" floor " показатели состояния пациента после завершения операции", "  " zaderzhka " ")
%vybor%("say Операция прошла успешно. Вам потребуется наблюдение в течение недели для контроля заживления.", "  " zaderzhka " ")
Return


:?:/Ж>М::
SendPlay {Enter}
%vybor%("do На столе лежат перчатки и мед.маска.  ", "  " zaderzhka " ")
%vybor%("me взял" floor " перчатки  ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки  ", "  " zaderzhka " ")
%vybor%("do Рядом стоит аппарат наркоза.  ", "  " zaderzhka " ")
%vybor%("me подключил" floor " аппарат наркоза к пациенту  ", "  " zaderzhka " ")
%vybor%("do На столе расположены все необходимые хирургические инструменты.", "  " zaderzhka " ")
%vybor%("me подключил" floor " пациента к датчикам", "  " zaderzhka " ")
%vybor%("me проверил" floor " показатели артериального давления, пульса и сатурации пациента", "  " zaderzhka " ")
%vybor%("me взял" floor " одноразовые перчатки и надел" floor " их", "  " zaderzhka " ")
%vybor%("me обработал" floor " руки антисептиком из дозатора", "  " zaderzhka " ")
%vybor%("me взял" floor " маркер со стола и отметил" floor " линии разрезов на груди и в паховой области", "  " zaderzhka " ")
%vybor%("say Начинаю подготовку к операции.", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель со стола и сделал" floor " надрезы по линиям на обеих грудных железах", "  " zaderzhka " ")
%vybor%("me аккуратно отделил" floor " кожные покровы от железистых тканей", "  " zaderzhka " ")
%vybor%("me удалил" floor " железистые ткани с помощью зажима и ножниц", "  " zaderzhka " ")
%vybor%("me остановил" floor " кровотечение при помощи электрокоагулятора", "  " zaderzhka " ")
%vybor%("me сформировал" floor " контуры грудной клетки, наложив швы и подтянув кожу", "  " zaderzhka " ")
%vybor%("me обработал" floor " швы антисептиком", "  " zaderzhka " ")
%vybor%("do На столе лежат стерильные повязки.", "  " zaderzhka " ")
%vybor%("me наложил" floor " стерильные повязки на область груди", "  " zaderzhka " ")
%vybor%("me сделал" floor " разрезы в области паха для формирования мошонки", "  " zaderzhka " ")
%vybor%("me создал" floor " мошонку из кожи половых губ, зафиксировав её саморассасывающимися швами", "  " zaderzhka " ")
%vybor%("me наложил" floor " швы на края разрезов", "  " zaderzhka " ")
%vybor%("me обработал" floor " швы антисептиком", "  " zaderzhka " ")
%vybor%("me взял" floor " участок кожи с предплечья пациента, чтобы использовать его для фаллопластики", "  " zaderzhka " ")
%vybor%("do В хирургическом лотке лежит выделенный кожный лоскут.", "  " zaderzhka " ")
%vybor%("me сформировал" floor " цилиндрический участок из кожи для создания пениса", "  " zaderzhka " ")
%vybor%("me соединил" floor " кожный лоскут с тканями в области паха", "  " zaderzhka " ")
%vybor%("me подключил" floor " сосуды и нервы к новообразованному пенису", "  " zaderzhka " ")
%vybor%("do На столе лежит хирургический микроскоп.", "  " zaderzhka " ")
%vybor%("me использовал" floor " микроскоп для точного соединения сосудов и нервов", "  " zaderzhka " ")
%vybor%("me наложил" floor " швы на место соединения тканей", "  " zaderzhka " ")
%vybor%("me обработал" floor " швы антисептиком", "  " zaderzhka " ")
%vybor%("me взял" floor " стерильные повязки и наложил" floor " их на все операционные раны", "  " zaderzhka " ")
%vybor%("me проверил" floor " показатели состояния пациента на мониторе", "  " zaderzhka " ")
%vybor%("do На мониторе отображаются стабильные жизненные показатели.", "  " zaderzhka " ")
%vybor%("me отключил" floor " аппарат наркоза и снял" floor " кислородную маску", "  " zaderzhka " ")
%vybor%("say Операция завершена. Вам потребуется несколько недель для восстановления.", "  " zaderzhka " ")
%vybor%("say Также следует носить компрессионное бельё и проходить регулярные осмотры.", "  " zaderzhka " ")
Return


:?:/Пчела_1::
SendPlay {Enter}
%vybor%("do У стены стоит кран. ", "  " zaderzhka " ")
%vybor%("me открывает его ", "  " zaderzhka " ")
%vybor%("do В мыльнице лежит мыло. ", "  " zaderzhka " ")
%vybor%("me взяв мыло, начинает мыть руки ", "  " zaderzhka " ")
%vybor%("me положил" floor " мыло обратно в мыльницу ", "  " zaderzhka " ")
%vybor%("me выключает кран ", "  " zaderzhka " ")
%vybor%("do На столе лежит упаковка с одноразовыми перчатками. ", "  " zaderzhka " ")
%vybor%("me достал" floor " из неё одноразовые медицинские перчатки ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки на руки ", "  " zaderzhka " ")
Return


:?:/Пчела_2::
SendPlay {Enter}
%vybor%("say Лежитесь и не двигайтесь, сейчас я буду выкачивать яд из раны.", "  " zaderzhka " ")
%vybor%("me взял" floor " в руки жгут", "  " zaderzhka " ")
%vybor%("me наложил" floor " жгут выше места укуса", "  " zaderzhka " ")
%vybor%("do Аппарат Аспивенин и насадки в сумке.", "  " zaderzhka " ")
%vybor%("me открыл" floor " сумку, после чего достал" floor " аппарат и насадки", "  " zaderzhka " ")
%vybor%("me выбрав нужную насадку, присоединил" floor " её к аппарату", "  " zaderzhka " ")
%vybor%("me положил" floor " остальные насадки на тумбочку", "  " zaderzhka " ")
%vybor%("me приложил" floor " насос на зону поражения укуса", "  " zaderzhka " ")
%vybor%("me надавил" floor " на поршень до упора", "  " zaderzhka " ")
%vybor%("me начал" floor " выкачивать яд из раны", "  " zaderzhka " ")
%vybor%("me приподняв поршень, ослабил" floor " давление на место укуса", "  " zaderzhka " ")
%vybor%("me убрал" floor " насос с зоны укуса, затем отсоединил насадку", "  " zaderzhka " ")
%vybor%("me положил" floor " насос и насадку на тумбочку.", "  " zaderzhka " ")
%vybor%("me начал" floor " обрабатывать рану больного", "  " zaderzhka " ")
%vybor%("do Стерильная повязка на столе.", "  " zaderzhka " ")
%vybor%("me взял" floor " стерильную повязку со стола", "  " zaderzhka " ")
%vybor%("me начал" floor " накладывать повязку на рану", "  " zaderzhka " ")
%vybor%("say Сейчас Вам необходим покой и нужно пить очень много воды.", "  " zaderzhka " ")
%vybor%("say Чтобы вывести остатки яда из тканей. ", "  " zaderzhka " ")
Return

:?:/Донор_1::
SendPlay {Enter}
%vybor%("do У стены стоит кран. ", "  " zaderzhka " ")
%vybor%("me открывает его ", "  " zaderzhka " ")
%vybor%("do В мыльнице лежит мыло. ", "  " zaderzhka " ")
%vybor%("me взяв мыло, начинает мыть руки ", "  " zaderzhka " ")
%vybor%("me положил" floor " мыло обратно в мыльницу ", "  " zaderzhka " ")
%vybor%("me выключает кран ", "  " zaderzhka " ")
%vybor%("do На столе лежит упаковка с одноразовыми перчатками. ", "  " zaderzhka " ")
%vybor%("me достал" floor " из неё одноразовые медицинские перчатки ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки на руки ", "  " zaderzhka " ")
Return


:?:/Донор_2::
SendPlay {Enter}
%vybor%("me взял" floor " донора за руку ", "  " zaderzhka " ")
%vybor%("me взял" floor " клеенчатый валик ", "  " zaderzhka " ")
%vybor%("me подложил" floor " клеёнчатый валик под локоть донора", "  " zaderzhka " ")
%vybor%("me зафиксировал" floor " руку донора ладонью кверху ", "  " zaderzhka " ")
%vybor%("me взял" floor " пробирку и иглу с переходником с мед.лотка ", "  " zaderzhka " ")
%vybor%("me присоеденил" floor " пробирку к игле ", "  " zaderzhka " ")
%vybor%("me положил" floor " собранную систему в мед.лоток ", "  " zaderzhka " ")
%vybor%("me взял" floor " жгут и спиртовую салфетку с мед.лотка ", "  " zaderzhka " ")
%vybor%("me обработал" floor " спиртовой салфеткой область локтевого сгиба на руке донора", "  " zaderzhka " ")
%vybor%("me затянул" floor " жгут на плече донора", "  " zaderzhka " ")
%vybor%("say Сожмите, пожалуйста кулак.", "  " zaderzhka " ")
Return

:?:/Донор_3::
SendPlay {Enter}
%vybor%("me взял" floor " из мед.лотка собранную систему", "  " zaderzhka " ")
%vybor%("me ввел" floor " иглу в вену", "  " zaderzhka " ")
%vybor%("me снял" floor " жгут с плеча донора", "  " zaderzhka " ")
%vybor%("say Можете разжать руку", "  " zaderzhka " ")
Return


:?:/Донор_4::
SendPlay {Enter}
%vybor%("me медленно оттянул" floor " поршень шприца вверх ", "  " zaderzhka " ")
%vybor%("do Пробирка наполнилась кровью.", "  " zaderzhka " ")
%vybor%("me приложил" floor " спиртовую салфетку к месту прокола ", "  " zaderzhka " ")
%vybor%("me ввел" floor " иглу из вены ", "  " zaderzhka " ")
%vybor%("me отсоеденил" floor " пробирку от иглы ", "  " zaderzhka " ")
%vybor%("me поместил" floor " пробирку в держатель для пробирок ", "  " zaderzhka " ")
%vybor%("me положил" floor " использованную иглу в мед.лоток ", "  " zaderzhka " ")
%vybor%("say Спасибо за донорство. ", "  " zaderzhka " ")
Return

:?:/Инфаркт_1::
SendPlay {Enter}
%vybor%("say Скажите, у Вас есть какие-либо болевые ощущения, которые носят жгучий характер?", "  " zaderzhka " ")
%vybor%("do Через плечо надета мед. сумка с множеством препаратов.", "  " zaderzhka " ")
%vybor%("me достав небольшую подставку из сумки, подложил" floor " ее под голову пациента", "  " zaderzhka " ")
%vybor%("me достав из сумки механический тонометр, надел" floor " манжету на левую руку пострадавшего", "  " zaderzhka " ")
%vybor%("todo Дышите ровно*начав накачивать манжету левой рукой", "  " zaderzhka " ")
%vybor%("do Какое давление у пациента?", "  " zaderzhka " ")
Return


:?:/Инфаркт_2::
SendPlay {Enter}
%vybor%("todo У Вас не очень хорошее давление, возьмите таблетки*достав таблетки из сумки и передав их пациенту", "  " zaderzhka " ")
%vybor%("todo Запейте водой*достав воду из сумки и передав ее пострадавшему", "  " zaderzhka " ")
Return


:?:/Инфаркт_3::
SendPlay {Enter}
%vybor%("todo Так-с, давление у Вас нормальное*сняв аппарат с пациента и убрав его в сумку", "  " zaderzhka " ")
Return


:?:/Инфаркт_4::
SendPlay {Enter}
%vybor%("do На шее врача закреплен стетоскоп.", "  " zaderzhka " ")
%vybor%("me сняв стетоскоп с шеи, вставил наконечники в уши, а головку приложил" floor " к груди пациента", "  " zaderzhka " ")
%vybor%("todo Дышите*переставляя головку стетоскопа в разные места грудной клетки и вслушиваясь в удары сердца", "  " zaderzhka " ")
%vybor%("todo Не дышите*совершая аналогичные движения", "  " zaderzhka " ")
%vybor%("todo Сердцебиение у Вас нормальное.*сняв стетоскоп и закрепив его на шее", "  " zaderzhka " ")
%vybor%("todo Возьмите, пожалуйста, Аспирин и положите его под язык*достав лекарство из сумки и передав его пациенту", "  " zaderzhka " ")
%vybor%("todo Думаю, сейчас необходимо измерить пульс*прислонив два пальца к сонной артерии пациента", "  " zaderzhka " ")
%vybor%("me слегка нажав на артерию, начал" floor " отсчитывать количество ударов за 30 секунд", "  " zaderzhka " ")
%vybor%("do Каков пульс у пострадавшего?", "  " zaderzhka " ")
Return


:?:/Инфаркт_5::
SendPlay {Enter}
%vybor%("say К счастью, у Вас нормальный пульс. Вам необходимо немного отдохнуть.", "  " zaderzhka " ")
%vybor%("say На этом все. ", "  " zaderzhka " ")
%vybor%("say Можете идти, если заметите какие-либо проблемы — приходите на обследование в больницу.", "  " zaderzhka " ")
Return


:?:/Инфаркт_6::
SendPlay {Enter}
%vybor%("todo У Вас не очень хороший пульс, возьмите эти таблетки*передав таблетки пострадавшему", "  " zaderzhka " ")
%vybor%("say Теперь, думаю, можете идти. ", "  " zaderzhka " ")
%vybor%("say  Если заметите какие-либо проблемы — приходите на обследование в больницу.", "  " zaderzhka " ")
Return


:?:/ВИЧ_1::
SendPlay {Enter}
%vybor%("do На стене висит дозатор с антисептиком.", "  " zaderzhka " ")
%vybor%("me нанес" Female " антисептик на руки и спешно растер его", "  " zaderzhka " ")
%vybor%("do В кармане лежат медицинские перчатки.", "  " zaderzhka " ")
%vybor%("me вытащил" floor " из кармана медицинские перчатки и надел" floor " их", "  " zaderzhka " ")
%vybor%("do Перед сотрудником стоит медицинский стол.", "  " zaderzhka " ")
%vybor%("do На медицинском столе лежат все необходимые материалы.", "  " zaderzhka " ")
%vybor%("say Сейчас я сделаю вам тест, который определит наличие ВИЧ.", "  " zaderzhka " ")
%vybor%("say Но сначала возьмите стакан и прополощите рот водой.", "  " zaderzhka " ")
%vybor%("do На столе стоит стакан с водой.", "  " zaderzhka " ")
Return

:?:/ВИЧ_2::
SendPlay {Enter}
%vybor%("me взял" floor " со стола упаковку со стерильным тампоном", "  " zaderzhka " ")
%vybor%("me вскрыл" floor " упаковку и вытащил" floor " оттуда тампон, держа его за палочку", "  " zaderzhka " ")
%vybor%("say Откройте рот.", "  " zaderzhka " ")
Return

:?:/ВИЧ_3::
SendPlay {Enter}
%vybor%("me ввел" floor " тампон в ротовую полость пациента", "  " zaderzhka " ")
%vybor%("me провел" floor " тампоном вдоль верхней десны вперед и назад", "  " zaderzhka " ")
%vybor%("me перевернул" floor " тампон", "  " zaderzhka " ")
%vybor%("me провел" floor " тампоном вдоль нижней десны вперед и назад", "  " zaderzhka " ")
%vybor%("me вытащил" floor " тампон из ротовой полости пациента", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола прибор для проведения экспресс-тестов", "  " zaderzhka " ")
%vybor%("do В прибор вставлена тест-полоска.", "  " zaderzhka " ")
%vybor%("me нанес" Female " биоматериал с тампона на тест-полоску", "  " zaderzhka " ")
%vybor%("me нажал" floor " кнопку включения прибора", "  " zaderzhka " ")
%vybor%("do Прибор провел измерения и вывел результат на экран.", "  " zaderzhka " ")
%vybor%("me взглянул" floor " на экран прибора", "  " zaderzhka " ")
%vybor%("do Результат положительный?", "  " zaderzhka " ")
Return

:?:/ВИЧ_4::
SendPlay {Enter}
%vybor%("say У меня плохие новости, у вас обнаружен ВИЧ.", "  " zaderzhka " ")
%vybor%("say Теперь вам необходимо пожизненно принимать лекарства для снижения активности ВИЧ.", "  " zaderzhka " ")
%vybor%("say Я выпишу вам препараты Тенофовир и Эмтрицитабин.", "  " zaderzhka " ")
%vybor%("say Стоимость составляет 500 рублей. Вы согласны?", "  " zaderzhka " ")
Return

:?:/ВИЧ_5::
SendPlay {Enter}
%vybor%("say Результат теста отрицательный. ВИЧ у вас не выявлен.", "  " zaderzhka " ")
Return


:?:/Туберкулёз_1::
SendPlay {Enter}
%vybor%("do На стене висит дозатор с антисептиком.", "  " zaderzhka " ")
%vybor%("me нанес" Female " антисептик на руки и спешно растер его", "  " zaderzhka " ")
%vybor%("do В кармане лежат медицинские перчатки.", "  " zaderzhka " ")
%vybor%("me вытащил" floor " из кармана медицинские перчатки и надел" floor " их", "  " zaderzhka " ")
%vybor%("do Перед сотрудником стоит медицинский стол.", "  " zaderzhka " ")
%vybor%("do На медицинском столе лежат все необходимые материалы.", "  " zaderzhka " ")
%vybor%("say Давайте руку.", "  " zaderzhka " ")
Return
:?:/Туберкулёз_2::
SendPlay {Enter}
%vybor%("me взял" floor " со стола спиртовую салфетку и распаковал" floor " её", "  " zaderzhka " ")
%vybor%("me протер" Female " палец пациента спиртовой салфеткой", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола ланцет и распаковал" floor " его", "  " zaderzhka " ")
%vybor%("say Сейчас я буду брать у вас кровь из пальца.", "  " zaderzhka " ")
%vybor%("me проколол" floor " ланцетом кожу пальца пациента", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола устройство для проведения экспресс-тестов", "  " zaderzhka " ")
%vybor%("me нажал" floor " на кнопку включения прибора", "  " zaderzhka " ")
%vybor%("do В прибор вставлена тест-полоска.", "  " zaderzhka " ")
%vybor%("me взял" floor " палец пациента и провел" floor " им по тест-полоске", "  " zaderzhka " ")
%vybor%("do Прибор провел измерения и вывел результат на экран.", "  " zaderzhka " ")
%vybor%("me взглянул" floor " на экран устройства", "  " zaderzhka " ")
%vybor%("do Результат положительный?", "  " zaderzhka " ")
Return
:?:/Туберкулёз_3::
SendPlay {Enter}
%vybor%("say У меня плохие новости, у вас обнаружен туберкулёз.", "  " zaderzhka " ")
%vybor%("say Вас необходимо госпитализировать в больницу.", "  " zaderzhka " ")
%vybor%("say А пока я выпишу вам антибиотик Супракс.", "  " zaderzhka " ")
%vybor%("say Его стоимость 500 рублей. Вы согласны?", "  " zaderzhka " ")
Return

:?:/Туберкулёз_4::
SendPlay {Enter}
%vybor%("say Результат отрицательный, туберкулёз у вас не обнаружен.  ", "  " zaderzhka " ")
Return

:?:/Дифтерияе_1::
SendPlay {Enter}
%vybor%("do На стене висит дозатор с антисептиком..", "  " zaderzhka " ")
%vybor%("me нанес" Female " антисептик на руки и спешно растерс" Female " его.", "  " zaderzhka " ")
%vybor%("do В кармане лежат медицинские перчатки.", "  " zaderzhka " ")
%vybor%("me вытащил" floor " из кармана медицинские перчатки и надел" floor " их.", "  " zaderzhka " ")
%vybor%("do Перед сотрудником стоит медицинский стол..", "  " zaderzhka " ")
%vybor%("do На медицинском столе лежат все необходимые материалы..", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола спиртовую салфетку и распаковал" floor " её.", "  " zaderzhka " ")
%vybor%("me протерс" Female " место укола спиртовой салфеткой.", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола шприц и распаковал" floor " его.", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола ампулу с внутрикожной пробой и распаковал" floor " её.", "  " zaderzhka " ")
%vybor%("me вставил" floor " шприц в ампулу и набрал" floor " в него лекарство.", "  " zaderzhka " ")
%vybor%("me вытащил" floor " шприц из ампулы.", "  " zaderzhka " ")
%vybor%("me ввел" floor " шприц под кожу пациента", "  " zaderzhka " ")
%vybor%("me нажав на поршень шприца, ввел" floor " внутрикожную пробу", "  " zaderzhka " ")
%vybor%("me вытащил" floor " шприц из-под кожи пациента", "  " zaderzhka " ")
%vybor%("do В месте инъекции происходит положительная реакция?", "  " zaderzhka " ")
%vybor%("b Если реакция положительная, значит дифтерия обнаружена.", "  " zaderzhka " ")
Return


:?:/Дифтерияе_2::
SendPlay {Enter}
%vybor%("say У меня плохие новости, у вас обнаружена дифтерия.", "  " zaderzhka " ")
%vybor%("say Сейчас я сделаю вам укол противодифтерийной сыворотки.", "  " zaderzhka " ")
Return


:?:/Дифтерияе_3::
SendPlay {Enter}
%vybor%("say Реакция отрицательная, дифтерия у вас не обнаружена.", "  " zaderzhka " ")
Return


:?:/Бешенство_1::
SendPlay {Enter}
%vybor%("do На стене висит дозатор с антисептиком.", "  " zaderzhka " ")
%vybor%("me нанес антисептик на руки и спешно растер его", "  " zaderzhka " ")
%vybor%("do В кармане лежат медицинские перчатки.", "  " zaderzhka " ")
%vybor%("me вытащил" floor " из кармана медицинские перчатки и надел" floor " их", "  " zaderzhka " ")
%vybor%("do Перед сотрудником стоит медицинский стол.", "  " zaderzhka " ")
%vybor%("do На медицинском столе лежат все необходимые материалы.", "  " zaderzhka " ")
%vybor%("say Сейчас я возьму у вас мазок, который определит наличие бешенства.", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола тумпфер", "  " zaderzhka " ")
%vybor%("say Откройте рот.", "  " zaderzhka " ")
Return

:?:/Бешенство_2::
SendPlay {Enter}
%vybor%("me ввел" floor " тумпфер в ротовую полость пациента ", "  " zaderzhka " ")
%vybor%("me провел" floor " тумпфером по внутренним сторонам щёк ", "  " zaderzhka " ")
%vybor%("me вывел" floor " тумпфер из ротовой полости пациента ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола пробирку со специальным раствором ", "  " zaderzhka " ")
%vybor%("me открыл" floor " пробирку и ввел" floor " туда тумпфер ", "  " zaderzhka " ")
%vybor%("me вращает тумпфер в пробирке ", "  " zaderzhka " ")
%vybor%("do Образец слюны перешел в раствор. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола тест-устройство ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола пипетку ", "  " zaderzhka " ")
%vybor%("me набрал" floor " в пипетку немного раствора из пробирки ", "  " zaderzhka " ")
%vybor%("me капнул" floor " несколько капель в специальное окошко тест-устройства  ", "  " zaderzhka " ")
%vybor%("do На тест-устройстве происходит реакция.  ", "  " zaderzhka " ")
%vybor%("me взглянул" floor " на тест-устройство  ", "  " zaderzhka " ")
%vybor%("do Реакция положительная?  ", "  " zaderzhka " ")
Return

:?:/Бешенство_3::
SendPlay {Enter}
%vybor%("say У меня плохие новости, у вас выявлено бешенство.  ", "  " zaderzhka " ")
%vybor%("say Сейчас я поставлю вам прививку от него. ", "  " zaderzhka " ")
Return

:?:/Бешенство_4::
SendPlay {Enter}
%vybor%("say Результат теста отрицательный. Бешенство у вас не выявлено.  ", "  " zaderzhka " ")
Return
:?:/Гем::
SendPlay {Enter}
%vybor%("do У кушетки стоит тумбочка со всеми необходимыми инструментами. ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке ватный тампон и дизинфецирующее средство, аккуратно обработал" floor " анальное отверстие  ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит простерилизованный скальпель. ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке скальпель, аккуратно сделал" floor " надрез кожи  ", "  " zaderzhka " ")
%vybor%("me аккуратно вырезал" floor " геморроидальный узел  ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит операционная иголка и саморассасывающаяся нить. ", "  " zaderzhka " ")
%vybor%("me положив скальпель на тумбочку, взял иголку с ниткой и аккуратно зашил" floor " края сосудов и кожу  ", "  " zaderzhka " ")
%vybor%("do На тумбочке лежит заживляющая мазь. ", "  " zaderzhka " ")
%vybor%("me взяв мазь на тумбочке, аккуратно нанёс" Female " её на место шва  ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке ватный тампон, аккуратно положил" floor " его на место шва  ", "  " zaderzhka " ")
%vybor%("do На тумбочке стоит бутыль с нашатырным спиртом. ", "  " zaderzhka " ")
%vybor%("me взяв на тумбочке вату, смочил" floor " её нашатырным спиртом и привёл" floor " пациента в сознание  ", "  " zaderzhka " ")
%vybor%("say Вот и всё. Мы закончили. Швы сами рассосутся примерно через 2 дня. ", "  " zaderzhka " ")
Return


:?:/Змея_1::
SendPlay {Enter}
%vybor%("do На столе лежат перчатки.  ", "  " zaderzhka " ")
%vybor%("me взял" floor " перчатки ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки ", "  " zaderzhka " ")
%vybor%("say Лежите и не двигайтесь, сейчас я буду выкачивать яд из раны.", "  " zaderzhka " ")
Return
:?:/Змея_2::
SendPlay {Enter}
%vybor%("me взял" floor " в руки жгут", "  " zaderzhka " ")
%vybor%("me наложил" floor " жгут выше места укуса", "  " zaderzhka " ")
%vybor%("do Аппарат Аспивенин и насадки в сумке.", "  " zaderzhka " ")
%vybor%("me открыл" floor " сумку, после чего достал" floor " аппарат и насадки", "  " zaderzhka " ")
%vybor%("me выбрав нужную насадку, присоединил" floor " её к аппарату", "  " zaderzhka " ")
%vybor%("me положил" floor " остальные насадки на тумбочку", "  " zaderzhka " ")
%vybor%("me приложил" floor " насос на зону поражения укуса", "  " zaderzhka " ")
%vybor%("me надавил" floor " на поршень до упора", "  " zaderzhka " ")
%vybor%("me начал" floor " выкачивать яд из раны", "  " zaderzhka " ")
%vybor%("me приподняв поршень, ослабил" floor " давление на место укуса", "  " zaderzhka " ")
%vybor%("me убрал" floor " насос с зоны укуса, затем отсоединил" floor " насадку", "  " zaderzhka " ")
%vybor%("me положил" floor " насос и насадку на тумбочку ", "  " zaderzhka " ")
%vybor%("me начал" floor " обрабатывать рану больного", "  " zaderzhka " ")
%vybor%("do Стерильная повязка на столе.", "  " zaderzhka " ")
%vybor%("me взял" floor " стерильную повязку со стола", "  " zaderzhka " ")
%vybor%("me начал" floor " накладывать повязку на рану", "  " zaderzhka " ")
%vybor%("do На столе лежит всё необходимое для укола.", "  " zaderzhka " ")
%vybor%("me взял" floor " ватный диск и спирт", "  " zaderzhka " ")
%vybor%("me промочил" floor " ватный диск в спирте", "  " zaderzhka " ")
%vybor%("me продезинфицировал" floor " место ввода противозмеиной сыворотки", "  " zaderzhka " ")
%vybor%("me выкинул" floor " ватный диск в урну", "  " zaderzhka " ")
%vybor%("me взял" floor " одноразовую иглу и новый одноразовый шприц", "  " zaderzhka " ")
%vybor%("me надел" floor " иглу на шприц", "  " zaderzhka " ")
%vybor%("me взял" floor " пробирку с противозмеиной сывороткой", "  " zaderzhka " ")
%vybor%("me наполнил" floor " шприц сывороткой", "  " zaderzhka " ")
%vybor%("me убрал" floor " лишний воздух из шприца", "  " zaderzhka " ")
%vybor%("me ввёл" floor " иглу в вену пациента", "  " zaderzhka " ")
%vybor%("me ввёл" floor " сыворотку", "  " zaderzhka " ")
%vybor%("me вынул" floor " иглу", "  " zaderzhka " ")
%vybor%("me придавил" floor " место прокола заранее приготовленной ваткой в спирте", "  " zaderzhka " ")
%vybor%("say  Сейчас Вам необходим покой и нужно пить очень много воды.", "  " zaderzhka " ")
%vybor%("say  Чтобы вывести остатки яда из тканей.  ", "  " zaderzhka " ")
Return


:?:/Шейка_1::
SendPlay {Enter}
%vybor%("do Гинекологическое кресло стоит в углу палаты.", "  " zaderzhka " ")
%vybor%("say Снимайте нижнее бельё и присаживайтесь.", "  " zaderzhka " ")
Return

:?:/Шейка_2::
SendPlay {Enter}
%vybor%("do Раковина стоит в углу палаты. ", "  " zaderzhka " ")
%vybor%("me открыл" floor " кран ", "  " zaderzhka " ")
%vybor%("do В мыльнице лежит мыло. ", "  " zaderzhka " ")
%vybor%("me взял" floor " мыло и начал" floor " мыть руки ", "  " zaderzhka " ")
%vybor%("me положил" floor " мыло в мыльницу ", "  " zaderzhka " ")
%vybor%("me выключает кран ", "  " zaderzhka " ")
%vybor%("do У стены стоит стол с хирургическими перчатками. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола упаковку хирургических перчаток и открыл" floor " её ", "  " zaderzhka " ")
%vybor%("me достал" floor " из упаковки хирургические перчатки и надел" floor " их ", "  " zaderzhka " ")
%vybor%("do Кольпоскоп стоит рядом с креслом", "  " zaderzhka " ")
%vybor%("me включил" floor " кольпоскоп", "  " zaderzhka " ")
%vybor%("me взял" floor " стерильное зеркало", "  " zaderzhka " ")
%vybor%("me установил" floor " стерильное зеркало в шейку матки", "  " zaderzhka " ")
%vybor%("me направил" floor " кольпоскоп на шейку матки", "  " zaderzhka " ")
%vybor%("me изучает данные на экране", "  " zaderzhka " ")
%vybor%("do Обнаружены ли отклонения?  ", "  " zaderzhka " ")
%vybor%("do На столе стоит раствор уксусной кислоты.", "  " zaderzhka " ")
%vybor%("me открыл" floor " раствор уксусной кислоты", "  " zaderzhka " ")
%vybor%("me взял" floor " палочку", "  " zaderzhka " ")
%vybor%("me нанес" Female " раствор уксусной кислоты на палочку", "  " zaderzhka " ")
%vybor%("me закрыл" floor " раствор уксусной кислоты ", "  " zaderzhka " ")
%vybor%("me начал" floor " наносить раствор уксусной кислоты на шейку матки", "  " zaderzhka " ")
%vybor%("me закончил" floor " наносить раствор уксусной кислоты и выкинул палочку", "  " zaderzhka " ")
%vybor%("me изучает данные на экране", "  " zaderzhka " ")
%vybor%("do Обнаружены ли отклонения? ", "  " zaderzhka " ")
%vybor%("do На столе стоит раствор йода.", "  " zaderzhka " ")
%vybor%("me открыл" floor " раствор йода", "  " zaderzhka " ")
%vybor%("me взял" floor " палочку", "  " zaderzhka " ")
%vybor%("me нанес" Female " раствор йода на палочку", "  " zaderzhka " ")
%vybor%("me закрыл" floor " раствор йода ", "  " zaderzhka " ")
%vybor%("me начал" floor " наносить раствор йода на шейку матки", "  " zaderzhka " ")
%vybor%("me закончил" floor " наносить раствор йода и выкинул палочку", "  " zaderzhka " ")
%vybor%("me изучает данные на экране", "  " zaderzhka " ")
%vybor%("do Обнаружены ли отклонения? ", "  " zaderzhka " ")
%vybor%("me убрал" floor " зеркало из шейки матки ", "  " zaderzhka " ")
%vybor%("me выключил" floor " кольпоскоп", "  " zaderzhka " ")
%vybor%("me откатил" floor " кольпоскоп", "  " zaderzhka " ")
%vybor%("say Можете одеваться", "  " zaderzhka " ")
Return
:?:/Глюкометр_1::
SendPlay {Enter}
%vybor%("do В шкафу лежит глюкометр.", "  " zaderzhka " ")
%vybor%("me открыл" floor "  шкаф", "  " zaderzhka " ")
%vybor%("me достал" floor "  глюкометр, дырокол", "  " zaderzhka " ")
%vybor%("me достал" floor "  иголку", "  " zaderzhka " ")
%vybor%("me вставил" floor "  иголку в дырокол", "  " zaderzhka " ")
%vybor%("me открутил" floor "  колпачок от иголки", "  " zaderzhka " ")
%vybor%("me взял" floor "  тест-полоску и вставил" floor "  ее в глюкометр", "  " zaderzhka " ")
%vybor%("say Дайте пожалуйста палец.", "  " zaderzhka " ")
Return
:?:/Глюкометр_2::
SendPlay {Enter}
%vybor%("me проткнул" floor "  палец дыроколом", "  " zaderzhka " ")
%vybor%("say Капнете кровью на тест полоску.", "  " zaderzhka " ")
Return
:?:/Глюкометр_3::
SendPlay {Enter}
%vybor%("do Что показал глюкометр?", "  " zaderzhka " ")
Return
:?:/Глюкометр_4::
SendPlay {Enter}
%vybor%("say Все хорошо.", "  " zaderzhka " ")
%vybor%("me достал" floor "  тест полоску и выкинул" floor "  ее в урну", "  " zaderzhka " ")
%vybor%("me достал" floor "  иглу и выкинул" floor "  ее в урну", "  " zaderzhka " ")
%vybor%("me убрал" floor "  глюкометр, и дырокол" floor "  в шкаф", "  " zaderzhka " ")
%vybor%("me закрыл" floor "  шкаф ", "  " zaderzhka " ")
Return
:?:/Глюкометр_5::
SendPlay {Enter}
%vybor%("say Есть отклонения.", "  " zaderzhka " ")
%vybor%("me достал" floor "  тест полоску и выкинул" floor "  ее в урну", "  " zaderzhka " ")
%vybor%("me достал" floor "  иглу и выкинул" floor "  ее в урну", "  " zaderzhka " ")
%vybor%("me убрал" floor "  глюкометр, и дырокол в шкаф", "  " zaderzhka " ")
%vybor%("me закрыл" floor "  шкаф ", "  " zaderzhka " ")
Return



:?:/УВТ_1::
SendPlay {Enter}
%vybor%("do У стены стоит кран. ", "  " zaderzhka " ")
%vybor%("me открывает его ", "  " zaderzhka " ")
%vybor%("do В мыльнице лежит мыло. ", "  " zaderzhka " ")
%vybor%("me взяв мыло, начинает мыть руки ", "  " zaderzhka " ")
%vybor%("me положил" floor " мыло обратно в мыльницу ", "  " zaderzhka " ")
%vybor%("me выключает кран ", "  " zaderzhka " ")
%vybor%("do На столе лежит упаковка с одноразовыми перчатками. ", "  " zaderzhka " ")
%vybor%("me достал" floor " из неё одноразовые медицинские перчатки ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки на руки ", "  " zaderzhka " ")
%vybor%("say Раздевайтесь. ", "  " zaderzhka " ")
Return

:?:/УВТ_2::
SendPlay {Enter}
%vybor%("do Аппарат для УВТ выключен.", "  " zaderzhka " ")
%vybor%("me включил" floor "  аппарат для УВТ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола шприц", "  " zaderzhka " ")
%vybor%("me наполнил" floor " шприц жидкостью для местной анестезии", "  " zaderzhka " ")
%vybor%("me сделал укол ниже пупка", "  " zaderzhka " ")
%vybor%("me положил" floor " шприц на стол", "  " zaderzhka " ")
%vybor%("me направи" floor " л аппарат на место расположения почки", "  " zaderzhka " ")
%vybor%("do Аппарат начал подавать импульсы.", "  " zaderzhka " ")
%vybor%("me изучил" floor "  показания на экране аппарата", "  " zaderzhka " ")
%vybor%("me выключил" floor "  аппарат", "  " zaderzhka " ")
%vybor%("me отодвинул" floor "  аппарат", "  " zaderzhka " ")
Return



:?:/Матка_У::
SendPlay {Enter}
%vybor%("do У стены стоит кран. ", "  " zaderzhka " ")
%vybor%("me открывает его ", "  " zaderzhka " ")
%vybor%("do В мыльнице лежит мыло. ", "  " zaderzhka " ")
%vybor%("me взяв мыло, начинает мыть руки ", "  " zaderzhka " ")
%vybor%("me положил" floor " мыло обратно в мыльницу ", "  " zaderzhka " ")
%vybor%("me выключает кран ", "  " zaderzhka " ")
%vybor%("do На столе лежит упаковка с одноразовыми перчатками. ", "  " zaderzhka " ")
%vybor%("me достал" floor " из неё одноразовые медицинские перчатки ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки на руки ", "  " zaderzhka " ")
%vybor%("do Рядом стоит стол со всем необходимым для постановки капельницы. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола упаковку с катетером, открыл её и положил" floor " на стол", "  " zaderzhka " ")
%vybor%("me взяв со стола ватку, опрыснул" floor " её Хлоргексидином", "  " zaderzhka " ")
%vybor%("me снял" floor " защитный колпачок с катетера и положил" floor " его на стол", "  " zaderzhka " ")
%vybor%("do Обработанная вата с катетером в руке. ", "  " zaderzhka " ")
%vybor%("me обнаружив вену на руке пациента, протер" Female " ваткой место укола", "  " zaderzhka " ")
%vybor%("do Место укола продезинфицировано. ", "  " zaderzhka " ")
%vybor%("me аккуратно ввёл" floor " катетер в вену", "  " zaderzhka " ")
%vybor%("do На столе лежат пакеты для капельницы. ", "  " zaderzhka " ")
%vybor%("me взял" floor " нужный пакет со стола", "  " zaderzhka " ")
%vybor%("do У стены стоит штатив для капельницы. ", "  " zaderzhka " ")
%vybor%("me взяв штатив в руку, поставил" floor " его рядом с пациентом", "  " zaderzhka " ")
%vybor%("me повесив пакет на штатив, подсоеденил капельницу к катетеру", "  " zaderzhka " ")
%vybor%("me подрегулировал" floor " скорость капельницы", "  " zaderzhka " ")
%vybor%("do Рядом стоит выключенный аппарат наркоза. ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат", "  " zaderzhka " ")
%vybor%("do На аппарате лежит защитная маска. ", "  " zaderzhka " ")
%vybor%("me взяв маску в руку, надел" floor " ее на лицо пациента", "  " zaderzhka " ")
%vybor%("me включил" floor " подачу анестетиков в маску", "  " zaderzhka " ")
%vybor%("me взял" floor " расширитель", "  " zaderzhka " ")
%vybor%("me установил" floor " расширитель пациентке", "  " zaderzhka " ")
%vybor%("do Ножницы на столе.", "  " zaderzhka " ")
%vybor%("me взял" floor " ножницы", "  " zaderzhka " ")
%vybor%("me сделал" floor " надрезы", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель", "  " zaderzhka " ")
%vybor%("me начал" floor " удалять матку пациентке", "  " zaderzhka " ")
%vybor%("me положил" floor " скальпель на стол", "  " zaderzhka " ")
%vybor%("me положил" floor " ножницы на стол", "  " zaderzhka " ")
%vybor%("me взял" floor " хирургическую нить и иглу", "  " zaderzhka " ")
%vybor%("do Нить и игла в руках.", "  " zaderzhka " ")
%vybor%("me начал" floor " зашивать место удаление ", "  " zaderzhka " ")
%vybor%("me положил" floor " нить и иглу на стол", "  " zaderzhka " ")
%vybor%("me снял" floor " расширитель", "  " zaderzhka " ")
%vybor%("me положил" floor " расширитель на стол", "  " zaderzhka " ")
%vybor%("me отключил" floor " подачу анестетиков в маску", "  " zaderzhka " ")
%vybor%("me сняв маску с пациента, положил" floor " её на аппарат наркоза", "  " zaderzhka " ")
%vybor%("me выключил" floor " аппарат", "  " zaderzhka " ")
%vybor%("do На столе лежит тампон.", "  " zaderzhka " ")
%vybor%("me взял" floor " тампон и установил" floor " его в влогалище", "  " zaderzhka " ")
%vybor%("say Это для снижения риска кровотечения после 24 часов его необходимо убрать.", "  " zaderzhka " ")
Return

global AFK_Active := false

:?:/-афк::
SendPlay {Enter}
AFK_Active := true  ; Включаем режим АФК
Loop
{
  if not AFK_Active{
	break
	}
  Random, Rand, 0,30
  Random, Rand1,0,60
  MouseClick ,left,800+Rand,600+Rand1, 1, 2
  Sleep 7000
}
Return

:?:/+афк::
SendPlay {Enter}
AFK_Active := false  ; Выключаем режим АФК
ToolTip, АФК-режим выключен, 500, 500
SetTimer, RemoveToolTip, 2000
Return

RemoveToolTip:
ToolTip
SetTimer, RemoveToolTip, Off
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


1UpdateTime:
    elapsedTime := A_TickCount - startTime 
    seconds := Floor(elapsedTime / 1000) 
    hours := Floor(seconds / 3600) ; Часы
    minutes := Floor((seconds - hours * 3600) / 60) 
    seconds := Mod(seconds, 60) ; Секунды
    formattedTime := Format("{:02}:{:02}:{:02}", hours, minutes, seconds) 
    
    GuiControl,, TimerText, %formattedTime%
    

Return

:?:/Грудь_У::
SendPlay {Enter}
%vybor%("do У стены стоит кран. ", "  " zaderzhka " ")
%vybor%("me открывает его ", "  " zaderzhka " ")
%vybor%("do В мыльнице лежит мыло. ", "  " zaderzhka " ")
%vybor%("me взяв мыло, начинает мыть руки ", "  " zaderzhka " ")
%vybor%("me положил" floor " мыло обратно в мыльницу ", "  " zaderzhka " ")
%vybor%("me выключает кран ", "  " zaderzhka " ")
%vybor%("do На столе лежит упаковка с одноразовыми перчатками. ", "  " zaderzhka " ")
%vybor%("me достал" floor " из неё одноразовые медицинские перчатки ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки на руки ", "  " zaderzhka " ")
%vybor%("do Рядом стоит стол со всем необходимым для постановки капельницы. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола упаковку с катетером, открыл её и положил" floor " на стол", "  " zaderzhka " ")
%vybor%("me взяв со стола ватку, опрыснул" floor " её Хлоргексидином", "  " zaderzhka " ")
%vybor%("me снял" floor " защитный колпачок с катетера и положил" floor " его на стол", "  " zaderzhka " ")
%vybor%("do Обработанная вата с катетером в руке. ", "  " zaderzhka " ")
%vybor%("me обнаружив вену на руке пациента, протер" Female " ваткой место укола", "  " zaderzhka " ")
%vybor%("do Место укола продезинфицировано. ", "  " zaderzhka " ")
%vybor%("me аккуратно ввёл" floor " катетер в вену", "  " zaderzhka " ")
%vybor%("do На столе лежат пакеты для капельницы. ", "  " zaderzhka " ")
%vybor%("me взял" floor " нужный пакет со стола", "  " zaderzhka " ")
%vybor%("do У стены стоит штатив для капельницы. ", "  " zaderzhka " ")
%vybor%("me взяв штатив в руку, поставил" floor " его рядом с пациентом", "  " zaderzhka " ")
%vybor%("me повесив пакет на штатив, подсоеденил капельницу к катетеру", "  " zaderzhka " ")
%vybor%("me подрегулировал" floor " скорость капельницы", "  " zaderzhka " ")
%vybor%("do Рядом стоит выключенный аппарат наркоза. ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат", "  " zaderzhka " ")
%vybor%("do На аппарате лежит защитная маска. ", "  " zaderzhka " ")
%vybor%("me взяв маску в руку, надел" floor " ее на лицо пациента", "  " zaderzhka " ")
%vybor%("me включил" floor " подачу анестетиков в маску", "  " zaderzhka " ")
%vybor%("me взял" floor " маркер", "  " zaderzhka " ")
%vybor%("me обозначил" floor " места надрезов", "  " zaderzhka " ")
%vybor%("me положил" floor " маркер на стол", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель", "  " zaderzhka " ")
%vybor%("me сделал" floor " надрез левой груди", "  " zaderzhka " ")
%vybor%("do Надрез сделан. ", "  " zaderzhka " ")
%vybor%("me удалил" floor " жировую прослойку и остатки кожи левой груди", "  " zaderzhka " ")
%vybor%("do Жировая прослойка и остатки кожи удалены. ", "  " zaderzhka " ")
%vybor%("me подтянул" floor " грудь", "  " zaderzhka " ")
%vybor%("me положил" floor " скальпель на стол", "  " zaderzhka " ")
%vybor%("me взял " floor "со стола хирургическую нить и иглу", "  " zaderzhka " ")
%vybor%("me зашил" floor " левую грудь", "  " zaderzhka " ")
%vybor%("me положил" floor " нить и иглу на стод", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель", "  " zaderzhka " ")
%vybor%("me сделал" floor " надрез на правой груди", "  " zaderzhka " ")
%vybor%("me удалил" floor " жировую прослойку и остатки кожи правой груди", "  " zaderzhka " ")
%vybor%("do Жировая прослойка и остатки кожи удалены. ", "  " zaderzhka " ")
%vybor%("me положил" floor " скальпель на стол", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола хирургическую нить и иглу", "  " zaderzhka " ")
%vybor%("me начал" floor " зашивать правую грудь", "  " zaderzhka " ")
%vybor%("do Правая грудь зашита.", "  " zaderzhka " ")
%vybor%("me отключил" floor " подачу анестетиков в маску", "  " zaderzhka " ")
%vybor%("me сняв маску с пациента, положил" floor " её на аппарат наркоза", "  " zaderzhka " ")
%vybor%("me выключил" floor " аппарат", "  " zaderzhka " ")
Return


:?:/Пло_Х::
SendPlay {Enter}
%vybor%("do У стены стоит кран. ", "  " zaderzhka " ")
%vybor%("me открывает его ", "  " zaderzhka " ")
%vybor%("do В мыльнице лежит мыло. ", "  " zaderzhka " ")
%vybor%("me взяв мыло, начинает мыть руки ", "  " zaderzhka " ")
%vybor%("me положил" floor " мыло обратно в мыльницу ", "  " zaderzhka " ")
%vybor%("me выключает кран ", "  " zaderzhka " ")
%vybor%("do На столе лежит упаковка с одноразовыми перчатками. ", "  " zaderzhka " ")
%vybor%("me достал" floor " из неё одноразовые медицинские перчатки ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки на руки ", "  " zaderzhka " ")
%vybor%("do На аппарате лежит защитная маска.", "  " zaderzhka " ")
%vybor%("me взяв маску в руку, надел" floor " ее на лицо пациента", "  " zaderzhka " ")
%vybor%("me включил" floor " подачу анестетиков в маску", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель", "  " zaderzhka " ")
%vybor%("me начал" floor " совершать надрез стопы", "  " zaderzhka " ")
%vybor%("do Надрез совершён.", "  " zaderzhka " ")
%vybor%("me положил" floor " скальпель на стол", "  " zaderzhka " ")
%vybor%("me взял" floor " винт в руку", "  " zaderzhka " ")
%vybor%("me вставил" floor " винт в нужном положении", "  " zaderzhka " ")
%vybor%("me взял" floor " хирургические нить и иглу", "  " zaderzhka " ")
%vybor%("me начал" floor " зашивать рану", "  " zaderzhka " ")
%vybor%("me положил" floor " нить и иглу на стол", "  " zaderzhka " ")
%vybor%("me отключил" floor " подачу анестетиков в маску", "  " zaderzhka " ")
%vybor%("me сняв маску с пациента, положил" floor " её на аппарат наркоза", "  " zaderzhka " ")
%vybor%("me выключил" floor " аппарат", "  " zaderzhka " ")
Return

:?:/Грудь_УУ::
SendPlay {Enter}
%vybor%("do У стены стоит кран. ", "  " zaderzhka " ")
%vybor%("me открывает его ", "  " zaderzhka " ")
%vybor%("do В мыльнице лежит мыло. ", "  " zaderzhka " ")
%vybor%("me взяв мыло, начинает мыть руки ", "  " zaderzhka " ")
%vybor%("me положил" floor " мыло обратно в мыльницу ", "  " zaderzhka " ")
%vybor%("me выключает кран ", "  " zaderzhka " ")
%vybor%("do На столе лежит упаковка с одноразовыми перчатками. ", "  " zaderzhka " ")
%vybor%("me достал" floor " из неё одноразовые медицинские перчатки ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки на руки ", "  " zaderzhka " ")
%vybor%("do Рядом стоит стол со всем необходимым для постановки капельницы. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола упаковку с катетером, открыл её и положил" floor " на стол", "  " zaderzhka " ")
%vybor%("me взяв со стола ватку, опрыснул" floor " её Хлоргексидином", "  " zaderzhka " ")
%vybor%("me снял" floor " защитный колпачок с катетера и положил" floor " его на стол", "  " zaderzhka " ")
%vybor%("do Обработанная вата с катетером в руке. ", "  " zaderzhka " ")
%vybor%("me обнаружив вену на руке пациента, протер" Female " ваткой место укола", "  " zaderzhka " ")
%vybor%("do Место укола продезинфицировано. ", "  " zaderzhka " ")
%vybor%("me аккуратно ввёл" floor " катетер в вену", "  " zaderzhka " ")
%vybor%("do На столе лежат пакеты для капельницы. ", "  " zaderzhka " ")
%vybor%("me взял" floor " нужный пакет со стола", "  " zaderzhka " ")
%vybor%("do У стены стоит штатив для капельницы. ", "  " zaderzhka " ")
%vybor%("me взяв штатив в руку, поставил" floor " его рядом с пациентом", "  " zaderzhka " ")
%vybor%("me повесив пакет на штатив, подсоеденил капельницу к катетеру", "  " zaderzhka " ")
%vybor%("me подрегулировал" floor " скорость капельницы", "  " zaderzhka " ")
%vybor%("do Рядом стоит выключенный аппарат наркоза. ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат", "  " zaderzhka " ")
%vybor%("do На аппарате лежит защитная маска. ", "  " zaderzhka " ")
%vybor%("me взяв маску в руку, надел" floor " ее на лицо пациента", "  " zaderzhka " ")
%vybor%("me включил" floor " подачу анестетиков в маску", "  " zaderzhka " ")
%vybor%("me взял" floor " маркер в руку", "  " zaderzhka " ")
%vybor%("me обозначил" floor " место надреза вокруг груди", "  " zaderzhka " ")
%vybor%("me положил" floor " маркер на стол", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель", "  " zaderzhka " ")
%vybor%("me сделал" floor " надрезы по линиям", "  " zaderzhka " ")
%vybor%("do Надрезы сделаны. ", "  " zaderzhka " ")
%vybor%("me положил" floor " скальпель на стол", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель в руку", "  " zaderzhka " ")
%vybor%("me начал" floor " удалять левую грудь", "  " zaderzhka " ")
%vybor%("do Левая грудь удалена. ", "  " zaderzhka " ")
%vybor%("me начал" floor " удалять правую грудь", "  " zaderzhka " ")
%vybor%("do Правая грудь удалена. ", "  " zaderzhka " ")
%vybor%("me положил" floor " скальпель на стол", "  " zaderzhka " ")
%vybor%("do Скальпель на столе. ", "  " zaderzhka " ")
%vybor%("me взял" floor " дренаж в руки", "  " zaderzhka " ")
%vybor%("me установил" floor " дренаж", "  " zaderzhka " ")
%vybor%("do Дренаж установлен. ", "  " zaderzhka " ")
%vybor%("me взял" floor " хирургические нить и иглу", "  " zaderzhka " ")
%vybor%("me начал" floor " зашивать рану", "  " zaderzhka " ")
%vybor%("do Рана зашита. ", "  " zaderzhka " ")
%vybor%("me положил" floor " нить и иглу на стол", "  " zaderzhka " ")
%vybor%("me отключил" floor " подачу анестетиков в маску", "  " zaderzhka " ")
%vybor%("me сняв маску с пациента, положил" floor " её на аппарат наркоза", "  " zaderzhka " ")
%vybor%("me выключил" floor " аппарат", "  " zaderzhka " ")
Return

:?:/Легкое_У::
SendPlay {Enter}
%vybor%("do У стены стоит кран. ", "  " zaderzhka " ")
%vybor%("me открывает его ", "  " zaderzhka " ")
%vybor%("do В мыльнице лежит мыло. ", "  " zaderzhka " ")
%vybor%("me взяв мыло, начинает мыть руки ", "  " zaderzhka " ")
%vybor%("me положил" floor " мыло обратно в мыльницу ", "  " zaderzhka " ")
%vybor%("me выключает кран ", "  " zaderzhka " ")
%vybor%("do На столе лежит упаковка с одноразовыми перчатками. ", "  " zaderzhka " ")
%vybor%("me достал" floor " из неё одноразовые медицинские перчатки ", "  " zaderzhka " ")
%vybor%("me надел" floor " перчатки на руки ", "  " zaderzhka " ")
%vybor%("do Рядом стоит стол со всем необходимым для постановки капельницы. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола упаковку с катетером, открыл её и положил" floor " на стол", "  " zaderzhka " ")
%vybor%("me взяв со стола ватку, опрыснул" floor " её Хлоргексидином", "  " zaderzhka " ")
%vybor%("me снял" floor " защитный колпачок с катетера и положил" floor " его на стол", "  " zaderzhka " ")
%vybor%("do Обработанная вата с катетером в руке. ", "  " zaderzhka " ")
%vybor%("me обнаружив вену на руке пациента, протер" Female " ваткой место укола", "  " zaderzhka " ")
%vybor%("do Место укола продезинфицировано. ", "  " zaderzhka " ")
%vybor%("me аккуратно ввёл" floor " катетер в вену", "  " zaderzhka " ")
%vybor%("do На столе лежат пакеты для капельницы. ", "  " zaderzhka " ")
%vybor%("me взял" floor " нужный пакет со стола", "  " zaderzhka " ")
%vybor%("do У стены стоит штатив для капельницы. ", "  " zaderzhka " ")
%vybor%("me взяв штатив в руку, поставил" floor " его рядом с пациентом", "  " zaderzhka " ")
%vybor%("me повесив пакет на штатив, подсоеденил капельницу к катетеру", "  " zaderzhka " ")
%vybor%("me подрегулировал" floor " скорость капельницы", "  " zaderzhka " ")
%vybor%("do Рядом стоит выключенный аппарат наркоза. ", "  " zaderzhka " ")
%vybor%("me включил" floor " аппарат", "  " zaderzhka " ")
%vybor%("do На аппарате лежит защитная маска. ", "  " zaderzhka " ")
%vybor%("me взяв маску в руку, надел" floor " ее на лицо пациента", "  " zaderzhka " ")
%vybor%("me включил" floor " подачу анестетиков в маску", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель", "  " zaderzhka " ")
%vybor%("me начал" floor " совершать надрез", "  " zaderzhka " ")
%vybor%("me положил" floor " скальпель на стол", "  " zaderzhka " ")
%vybor%("me взял" floor " зажим", "  " zaderzhka " ")
%vybor%("me закрепил" floor " зажим", "  " zaderzhka " ")
%vybor%("me взял" floor " скальпель", "  " zaderzhka " ")
%vybor%("me начал" floor " удаление лёгкого", "  " zaderzhka " ")
%vybor%("do Лёгкое извлечено, в руке. ", "  " zaderzhka " ")
%vybor%("me положил" floor " лёгкое в лоток", "  " zaderzhka " ")
%vybor%("me положил" floor " скальпель на стол", "  " zaderzhka " ")
%vybor%("me убрал" floor " зажим на стол", "  " zaderzhka " ")
%vybor%("me взял" floor " хирургические нить и иглу", "  " zaderzhka " ")
%vybor%("me начал зашивать рану", "  " zaderzhka " ")
%vybor%("do Рана зашита.", "  " zaderzhka " ")
%vybor%("me положил хирургические нить и иглу на стол", "  " zaderzhka " ")
%vybor%("me отключил" floor " подачу анестетиков в маску", "  " zaderzhka " ")
%vybor%("me сняв маску с пациента, положил" floor " её на аппарат наркоза", "  " zaderzhka " ")
%vybor%("me выключил" floor " аппарат", "  " zaderzhka " ")
Return

:?:/Белье_1::
SendPlay {Enter}
%vybor%("do В углу палаты лежит постельное бельё.", "  " zaderzhka " ")
%vybor%("todo Ну и осталось только постельное бельё*сняв старое бельё с кровати и сложив его в тумбочку", "  " zaderzhka " ")
%vybor%("do Старое бельё лежит в тумбочке.", "  " zaderzhka " ")
%vybor%("me взяв новое бельё в руки, начал" floor " застилать его", "  " zaderzhka " ")
%vybor%("me закончив застилать новое бельё, взбил" floor " его", "  " zaderzhka " ")
%vybor%("do Новое бельё застелено и взбито.  ", "  " zaderzhka " ")
Return


:?:/Кварц_1::
SendPlay {Enter}
%vybor%("do Возле стены стоит шкаф.  ", "  " zaderzhka " ")
%vybor%("me открыл" floor " шкаф  ", "  " zaderzhka " ")
%vybor%("do В шкафу стоит кварцевальная лампа.  ", "  " zaderzhka " ")
%vybor%("me взял" floor " в руку кварцевальную лампу  ", "  " zaderzhka " ")
%vybor%("me закрыл" floor " шкаф  ", "  " zaderzhka " ")
%vybor%("me поставил" floor " кварцевальную лампу на пол  ", "  " zaderzhka " ")
%vybor%("me включил" floor " кварцевальную лампу   ", "  " zaderzhka " ")
Return

:?:/Кварц_2::
SendPlay {Enter}
%vybor%("me выключил" floor " кварцевальную лампу ", "  " zaderzhka " ")
%vybor%("me взял" floor " лампу в руку  ", "  " zaderzhka " ")
%vybor%("me открыл" floor " шкаф ", "  " zaderzhka " ")
%vybor%("me положил" floor " кварцевальную лампу в шкаф ", "  " zaderzhka " ")
%vybor%("me закрыл" floor " шкаф ", "  " zaderzhka " ")
Return


:?:/Документация_1::
SendPlay {Enter}
%vybor%("do Перед сотрудником стоит стол.", "  " zaderzhka " ")
%vybor%("do На столе лежит папка с документами.", "  " zaderzhka " ")
%vybor%("me открыл" floor " папку и начал" floor " её листать", "  " zaderzhka " ")
%vybor%("try обнаружил" floor " в папке разрешение на осуществление деятельности", "  " zaderzhka " ")
%vybor%("me листает страницы в папке", "  " zaderzhka " ")
%vybor%("try обнаружил" floor " в папке сертификат на закупку лекарств", "  " zaderzhka " ")
%vybor%("me листает страницы в папке", "  " zaderzhka " ")
%vybor%("try обнаружил" floor " в папке заключение санитарно-эпидемиологической службы", "  " zaderzhka " ")
%vybor%("me закрыл" floor " папку с документами и отложил" floor " её в сторону", "  " zaderzhka " ")
%vybor%("do На плече висит медицинская сумка.", "  " zaderzhka " ")
%vybor%("me открыл" floor " медицинскую сумку", "  " zaderzhka " ")
%vybor%("me достал" floor " из медицинской сумки бланк и ручку", "  " zaderzhka " ")
%vybor%("me записал" floor " в бланк все необходимые сведения", "  " zaderzhka " ")
%vybor%("me убрал" floor " бланк и ручку в медицинскую сумку", "  " zaderzhka " ")
%vybor%("me закрыл" floor " медицинскую сумку", "  " zaderzhka " ")
Return



:?:/Наркоман_1::
SendPlay {Enter}
%vybor%("do В медицинской сумке лежат шприц и ампула с препаратом от наркозависимости.", "  " zaderzhka " ")
%vybor%("me открыл" floor " сумку", "  " zaderzhka " ")
%vybor%("me достал" floor " из сумки шприц и ампулу", "  " zaderzhka " ")
%vybor%("me надломив ампулу, заполнил шприц препаратом", "  " zaderzhka " ")
%vybor%("do В медицинской сумке лежат одноразовая спиртовая салфетка, жгут и бинт.", "  " zaderzhka " ")
%vybor%("me достал" floor " из сумки одноразовую спиртовую салфетку", "  " zaderzhka " ")
%vybor%("me взял" floor " руку пациента", "  " zaderzhka " ")
%vybor%("me достал" floor " из сумки жгут и наложил" floor " его на руку выше локтя", "  " zaderzhka " ")
%vybor%("me достал" floor " из сумки бинт", "  " zaderzhka " ")
%vybor%("me обнаружив вену на руке пациента, протёр" Female " спиртовой салфеткой место укола", "  " zaderzhka " ")
%vybor%("me взяв в руки шприц, аккуратно ввёл" floor " её в вену пациенту", "  " zaderzhka " ")
%vybor%("me ослабив жгут на руке пациента, начал" floor " медленно надавливать на поршень", "  " zaderzhka " ")
%vybor%("me вынув иглу из вены пациента, приложил" floor " к месту укола спиртовую салфетку и закрепил" floor " её бинтом", "  " zaderzhka " ")
%vybor%("do Рядом на полу стоит урна.", "  " zaderzhka " ")
%vybor%("me выкинул" floor " в урну спиртовую салфетку, шприц и ампулу", "  " zaderzhka " ")
Return

:?:/ГМУ_1::
SendPlay {Enter}
%vybor%("say Здравствуйте, сейчас я проведу собеседование для приема. ", "  " zaderzhka " ")
%vybor%("say Назовите вашу фамилию, имя, отчество, ваш возраст в полных годах.", "  " zaderzhka " ")
%vybor%("say Сколько лет вы проживаете в республике?", "  " zaderzhka " ")
Return

:?:/ГМУ_2::
SendPlay {Enter}
%vybor%("say Хорошо, покажите мне ваш паспорт. ", "  " zaderzhka " ")
Return

:?:/ГМУ_3::
SendPlay {Enter}
%vybor%("me взял" floor " паспорт в руки и начал" floor " его изучать ", "  " zaderzhka " ")
%vybor%("me изучив паспорт, вернул" floor " его владельцу напротив ", "  " zaderzhka " ")
Return


:?:/ГМУ_4::
SendPlay {Enter}
%vybor%("say Хорошо, мне вашу трудовую книжку. ", "  " zaderzhka " ")
Return

:?:/ГМУ_5::
SendPlay {Enter}
%vybor%("me взял" floor " трудовую книжку в руки начал" floor " изучать", "  " zaderzhka " ")
%vybor%("me изучив трудовую книжку, вернул" floor " владельцу напротив", "  " zaderzhka " ")
Return

:?:/ГМУ_6::
SendPlay {Enter}
%vybor%("say Хорошо, передайте мне вашу медицинскую карту.", "  " zaderzhka " ")
Return

:?:/ГМУ_7::
SendPlay {Enter}
%vybor%("me взял" floor " медкарту в руки начал" floor " изучать ", "  " zaderzhka " ")
%vybor%("me изучив медкарту, вернул" floor " владельцу напротив", "  " zaderzhka " ")
Return

:?:/ГМУ_8::
SendPlay {Enter}
Random, rand, 1, 15
if rand = 1
	Word := "СМП, ДБ, МГ, ЦГБ и ИВЛ"
if rand = 2
	Word := "АСМП, ТК, СК, ОКБ и ЭКГ"
if rand = 3
	Word := "ВСМП, РК, ТК, МЗ и УЗИ"
if rand = 4
	Word :=	"СМП, IC, ООС, ЦГБ и МРТ"
if rand = 5
	Word :=	"АСМП, БХ, 33, МЗ и ФГДС"
if rand = 6
	Word :=	"ВСМП, ПГ, РК, ОКБ и ФКС"
if rand = 7
	Word :=	"СМП, РВК, ДБ, ЦГБ и ЭЭГ"
if rand = 8
	Word :=	"ВСМП, РПК, ТК, МЗ и Флюорография"
if rand = 9
	Word :=	"АСМП, ДМ, БХ, МЗ и Томография"
if rand = 10
	Word :=	"СМП, ООС, ДБ, ЦГБ и Пульсоксиметр"
if rand = 11
	Word :=	"АСМП, ПГ, IC, ОКБ и Флюорография"
if rand = 12
	Word :=	"АСМП, ТК, МГ, ЦГБ и ОФЭКТ"
if rand = 13
	Word :=	"АСМП, РП, МГ, ЦГБ и Вакцинация"
if rand = 14
	Word :=	"АСМП, ТК, МГ, ЦГБ и Ринтген"
if rand = 15
	Word :=	"АСМП, ТК, МГ, ЦГБ и Маммография"
SendPlay {Enter}
%vybor%("say Что такое " Word " ? ", "  " zaderzhka " ")
Return


:?:/ГМУ_9::
SendPlay {Enter}
Random, rand, 1, 15
if rand = 1
	Word := "РП, МГ, ПГ"
if rand = 2
	Word := "ДМ, ЗЗ, СК"
if rand = 3
	Word := "ТК, РК, ООС"
if rand = 4
	Word :=	"33, ДБ, РП"
if rand = 5
	Word :=	"ВХ, ДМ, ПГ"
if rand = 6
	Word :=	"БХ, РВК, 33"
if rand = 7
	Word :=	"33, ДБ, МГ"
if rand = 8
	Word :=	"ПГ, РП, ВХ"
if rand = 9
	Word :=	"РПК, РВК, ООС"
if rand = 10
	Word :=	"РК, СК, ТК"
if rand = 11
	Word :=	"33, ДМ, РП"
if rand = 12
	Word :=	"ДМ, ДБ, ПГ"
if rand = 13
	Word :=	"РК, IC, БХ"
if rand = 14
	Word :=	"СК, МГ, ТК"
if rand = 15
	Word :=	"РП, ООС, РВК"
SendPlay {Enter}
%vybor%("b Что такое " Word " ? ", "  " zaderzhka " ")
Return

:?:/ЦГБ_1::
SendPlay {Enter}
%vybor%("say Здравствуйте, сейчас я проведу собеседование для приема. ", "  " zaderzhka " ")
%vybor%("say Назовите вашу фамилию, имя, отчество, ваш возраст в полных годах.", "  " zaderzhka " ")
%vybor%("say Сколько лет вы проживаете в республике, и какое у вас образование?", "  " zaderzhka " ")
Return

:?:/ЦГБ_2::
SendPlay {Enter}
%vybor%("say Хорошо, передайте мне ваш паспорт. ", "  " zaderzhka " ")
Return

:?:/ЦГБ_3::
SendPlay {Enter}
%vybor%("me взял" floor " паспорт в руки и начал" floor " его изучать ", "  " zaderzhka " ")
%vybor%("me изучив паспорт, вернул" floor " его владельцу напротив ", "  " zaderzhka " ")
Return


:?:/ЦГБ_4::
SendPlay {Enter}
%vybor%("say Хорошо, передайте мне вашу трудовую книжку. ", "  " zaderzhka " ")
Return


:?:/ЦГБ_5::
SendPlay {Enter}
%vybor%("me взял" floor " трудовую книжку в руки начал" floor " изучать", "  " zaderzhka " ")
%vybor%("me изучив трудовую книжку, вернул" floor " владельцу напротив", "  " zaderzhka " ")
Return

:?:/ЦГБ_6::
SendPlay {Enter}
%vybor%("say Хорошо, передайте мне вашу медицинскую карту.", "  " zaderzhka " ")
Return

:?:/ЦГБ_7::
SendPlay {Enter}
%vybor%("me взял" floor " медкарту в руки начал" floor " изучать ", "  " zaderzhka " ")
%vybor%("me изучив медкарту, вернул" floor " владельцу напротив", "  " zaderzhka " ")
Return

:?:/ЦГБ_8::
SendPlay {Enter}
%vybor%("say Хорошо, передайте мне ваш диплом о медицинском образовании.", "  " zaderzhka " ")
Return

:?:/ЦГБ_9::
SendPlay {Enter}
%vybor%("me взял" floor " диплом в руки и начал" floor " его изучать", "  " zaderzhka " ")
%vybor%("me изучив диплом, вернул" floor " его владельцу напротив", "  " zaderzhka " ")
Return

:?:/ЦГБ_10::
Random, rand, 1, 15
if rand = 1
	Word := "СМП, ДБ, МГ, ЦГБ и ИВЛ"
if rand = 2
	Word := "АСМП, ТК, СК, ОКБ и ЭКГ"
if rand = 3
	Word := "ВСМП, РК, ТК, МЗ и УЗИ"
if rand = 4
	Word :=	"СМП, IC, ООС, ЦГБ и МРТ"
if rand = 5
	Word :=	"АСМП, БХ, 33, МЗ и ФГДС"
if rand = 6
	Word :=	"ВСМП, ПГ, РК, ОКБ и ФКС"
if rand = 7
	Word :=	"СМП, РВК, ДБ, ЦГБ и ЭЭГ"
if rand = 8
	Word :=	"ВСМП, РПК, ТК, МЗ и Флюорография"
if rand = 9
	Word :=	"АСМП, ДМ, БХ, МЗ и Томография"
if rand = 10
	Word :=	"СМП, ООС, ДБ, ЦГБ и Пульсоксиметр"
if rand = 11
	Word :=	"АСМП, ПГ, IC, ОКБ и Флюорография"
if rand = 12
	Word :=	"АСМП, ТК, МГ, ЦГБ и ОФЭКТ"
if rand = 13
	Word :=	"АСМП, РП, МГ, ЦГБ и Вакцинация"
if rand = 14
	Word :=	"АСМП, ТК, МГ, ЦГБ и Ринтген"
if rand = 15
	Word :=	"АСМП, ТК, МГ, ЦГБ и Маммография"
SendPlay {Enter}
%vybor%("say Что такое " Word " ? ", "  " zaderzhka " ")
Return

:?:/ЦГБ_11::
Random, rand, 1, 15
if rand = 1
	Word := "РП, МГ, ПГ"
if rand = 2
	Word := "ДМ, ЗЗ, СК"
if rand = 3
	Word := "ТК, РК, ООС"
if rand = 4
	Word :=	"33, ДБ, РП"
if rand = 5
	Word :=	"ВХ, ДМ, ПГ"
if rand = 6
	Word :=	"БХ, РВК, 33"
if rand = 7
	Word :=	"33, ДБ, МГ"
if rand = 8
	Word :=	"ПГ, РП, ВХ"
if rand = 9
	Word :=	"РПК, РВК, ООС"
if rand = 10
	Word :=	"РК, СК, ТК"
if rand = 11
	Word :=	"33, ДМ, РП"
if rand = 12
	Word :=	"ДМ, ДБ, ПГ"
if rand = 13
	Word :=	"РК, IC, БХ"
if rand = 14
	Word :=	"СК, МГ, ТК"
if rand = 15
	Word :=	"РП, ООС, РВК"
SendPlay {Enter}
%vybor%("b Что такое " Word " ? ", "  " zaderzhka " ")
Return

:?:/ЦГБ_12::
SendPlay {Enter}
%vybor%("do В мед. сумке медицинского работника лежат ключи от АСМП.", "  " zaderzhka " ")
%vybor%("say Что у меня в мед. сумке?", "  " zaderzhka " ")
Return


:?:/ПР_1::
SendPlay {Enter}
%vybor%("say Здравствуйте, передайте документ, удостоверяющий Вашу личность.", "  " zaderzhka " ")
Return

:?:/ПР_2::
%vybor%("me взял" floor " паспорт из рук человека напротив", "  " zaderzhka " ")
%vybor%("me открыл" floor " паспорт на необходимой странице и начал" floor " его изучение", "  " zaderzhka " ")
%vybor%("me изучив паспорт, закрыл" floor " его и передал" floor " человеку напротив", "  " zaderzhka " ")
Return


:?:/ПР_3::
SendPlay {Enter}
%vybor%("say Хорошо, передайте Ваше медицинское заключение.", "  " zaderzhka " ")
Return

:?:/ПР_4::
SendPlay {Enter}
%vybor%("me взял" floor " медицинское заключение из рук гражданина напротив", "  " zaderzhka " ")
%vybor%("me открыв медицинское заключение, приступил" floor " к его изучению", "  " zaderzhka " ")
%vybor%("me изучив медицинское заключение, вернул" floor " его гражданину напротив", "  " zaderzhka " ")
Return

:?:/ПР_5::
SendPlay {Enter}
%vybor%(" " stol "  ", "  " zaderzhka " ")
%vybor%("do На столе лежит открытая медкарта, ручка и штемпель.", "  " zaderzhka " ")
%vybor%("me взяв ручку, начал" floor "  заполнения медицинской карты", "  " zaderzhka " ")
%vybor%("me написав в строке заключения 'К государственной службе годен', отложил ручку", "  " zaderzhka " ")
%vybor%("me взяв штемпель со стола, поставил" floor " печать «ГВРП МакКарти С. А. - Минздрав РП» на строке заключения", "  " zaderzhka " ")
%vybor%("me поставил" floor " штемпель обратно, затем взял" floor " ручку и поставил" floor " подпись под печатью  ", "  " zaderzhka " ")
%vybor%("me отложил" floor " ручку, затем закрыл" floor " медицинскую карту и передал" floor " человеку напротив", "  " zaderzhka " ")
%vybor%("say Ваша медкарта готова, можете ее забирать.", "  " zaderzhka " ")
Return



:?:/Аллергия_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Цетрин,Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Аллергия_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Эриус.Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Аллергия_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Кларитин. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Аллергия_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Зодак. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Аллергия_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Лоратадин . Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Глаз_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Визин. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Глаз_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Альбуцид. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Ухо_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Отинум. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Ухо_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Отипакс. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Почки_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Уролесан. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Почки_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Урохол. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Живот_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Но-шпу. Её стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Живот_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Дротаверин. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Суставы_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Фастум-гель. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Суставы_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Кетонал. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Суставы_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Долгит. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Суставы_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Капсикам. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Печень_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Карсил-Форте. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Печень_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Гепабене. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Печень_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Урсофальк. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Горло_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Гексорал. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Горло_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Леголь. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Горло_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Ингалипт. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Горло_5::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Стрепсилс. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Горло_6::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Септолетте. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Горло_7::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Септефри. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Витамин_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Унивит. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Витамин_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Витамикс. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Витамин_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Алфавит. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Геморой::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Релиф. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Голова_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Миг. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Голова_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Цитрамон. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Голова_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Анальгин. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Голова_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Спазмолгон. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Голова_5::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Спазмантон. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Голова_6::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Но-Шпу. Её стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Потенция_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Сиалекс. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Потенция_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Но-Виагру. Её стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Диарея_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Энтеросгель. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Диарея_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Полисорб. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Диарея_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Лоперамид. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Диарея_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Активированный уголь. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Диабет_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Виктоза. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Диабет_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Диабетон. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Диабет_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Глиформин. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Диабет_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Глюкофаж. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Изжога_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Ренни. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Изжога_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Маалокс. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Изжога_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Алмагель. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Изжога_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Гастал. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Изжога_5::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Гастрацид. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Изжога_6::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Мотилиума. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Изжога_7::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Омепразол. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Кашель_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Лазолван. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Кашель_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Гербион. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Кашель_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Стоптуссин. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Кашель_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Омнитус. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Кашель_5::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Амбробене. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Кашель_6::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Флюдитек. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Кашель_7::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Геделикс. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Пузырь_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Цистон. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Пузырь_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Нолицин. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Мигрень_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Амигренин. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Мигрень_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Суматриптан. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Мигрень_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Релпакс. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Мигрень_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Сумамигрен. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Ожог_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Бепантен. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Ожог_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Пантенол. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Насморк_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Снуп. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Насморк_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Отривин. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Насморк_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Аква Марис. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Повышенное_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Андипал. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Пониженное_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Норадреналин. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Пониженное_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Кордиамин. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Жар_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Терафлю. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Жар_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Колдрекс. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Жар_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Антигриппин. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Судороги_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Магнелис. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Судороги_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Аспаркам. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Сердце_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Кардиомагнил. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Сердце_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Нитроглицерин. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Сердце_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Корвалол. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Тошнота_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Церукал. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Тошнота_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Метоклопрамид. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Тошнота_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Драмина. Его стоимость 500 рублей. Вы согласны? ", "1000")
return
:?:/Тошнота_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Авиамарин. Его стоимость 500 рублей. Вы согласны? ", "1000")
return



:?:/Успокоительное_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Валериану Лекарственную. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Успокоительное_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Пустырник. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Успокоительное_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Фенибут. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Обезбол_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Нурофен. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Обезбол_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Ибупрофен. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Обезбол_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Бонифен. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Обезбол_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Нурофактор. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Успокоительное_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Валериану Лекарственную. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Успокоительное_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Пустырник. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Успокоительное_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Фенибут. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return


:?:/Стресс_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Афобазол. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return


:?:/Стресс_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Деприм. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return


:?:/Стресс_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Дезипрамин. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return


:?:/Температура_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Найз. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return


:?:/Температура_5::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Диклофенак. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Температура_6::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Ибупрофен. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Температура_7::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Ибуклин. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return


:?:/Астма_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Сальбутамол. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Астма_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Преднизолон. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return


:?:/Понос_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Лоперамид. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return


:?:/Понос_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Сульгин. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Понос_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Имодиум. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Язва_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Сукральфат. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Язва_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Де-Нол. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Язва_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Вентрисол. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Молочница_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Нистатин. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Молочница_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Пимафуцин. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Молочница_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Ливарол. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Молочница_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Клотримазол. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Инфаркт_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Антенолол. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Инфаркт_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Омакор. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Головокружение_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Вестибо. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Головокружение_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Фенибут. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Головокружение_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Бетасерк. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Головокружение_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Циннаризин. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Головокружение_5::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Танакан. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return


:?:/Гастрит_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Рабепразол. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return


:?:/Гастрит_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Азитромицин. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Гастрит_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Антибиотик:тетрациклин. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Гастрит_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Антибиотик:Амоксициллин. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Зубная_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Кеторол. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Зубная_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Дексонал. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Зубная_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Немозол. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Глисты_5::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Немозол. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Глисты_6::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Пиперазин. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Глисты_7::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Пирантел. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Глисты_8::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Вермокс. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Глисты_9::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Декарис. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Противовирусные_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Ациклавир. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Противовирусные_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Полиоксидоний. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Противовирусные_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Амиксин. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Противовирусные_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Циклоферон. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Инсульт_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Гаммалон. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return


:?:/Инсульт_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Пентоксифиллин. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Антисептики_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Бетадин. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Антисептики_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Драполен. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Антисептики_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Хлоргексидин. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Антисептики_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Бепантен. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Вздутие_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам  Активированный уголь. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Вздутие_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Смекта. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Вздутие_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Полисорб. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Вздутие_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Эспумизан. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Вздутие_5::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Линекс. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Вздутие_6::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Лактофильтрум. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Вздутие_7::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Дротаверин. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Грибок_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Дифлукортолон. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Грибок_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Изоконазол. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Чесотка_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Перметрин. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return


:?:/Чесотка_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Бензилбензоат. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Член_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Финастерид. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Член_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Простаплант. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Член_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Импаза. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Член_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Простамол. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Менструация_1::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Ибупрофен. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Менструация_2::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Диклофенак ретард. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Менструация_3::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Нимесулид. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

:?:/Менструация_4::
SendPlay {Enter}
%vybor%("say Я выпишу Вам Мелоксикам. Его стоимость 500 рублей. Вы согласны? ", "1000")
Return

; Функция для определения активного монитора
GetActiveMonitorInfo() {
    WinGet, activeHwnd, ID, A
    if !activeHwnd
        return false
    
    WinGetPos, winX, winY, winW, winH, ahk_id %activeHwnd%
    centerX := winX + winW // 2
    centerY := winY + winH // 2
    
    SysGet, monitorCount, MonitorCount
    Loop, %monitorCount% {
        SysGet, monArea, Monitor, %A_Index%
        if (centerX >= monAreaLeft && centerX <= monAreaRight && centerY >= monAreaTop && centerY <= monAreaBottom) {
            return { left: monAreaLeft, top: monAreaTop, right: monAreaRight, bottom: monAreaBottom }
        }
    }
    return false
}

:?:/ВЗ+::
SendPlay {Enter}
SetTitleMatchMode, 2
FileEncoding, UTF-8

url := "https://docs.google.com/spreadsheets/d/e/2PACX-1vQmmY4JZ44c7Xa7W7YpIzMKB-eGrngoEo0khF1k3C-v2mdpBoSseJrf9NWcXeE9-0swQqPdyvVmEHon/pub?gid=2036179608&single=true&output=tsv"
savePath := "C:\ProgramData\KPRP\KPRP-main\table.tsv"

; Скачать таблицу
UrlDownloadToFile, %url%, %savePath%

if !FileExist(savePath)
{
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
    if (fields.Length() >= 9)
    {
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

; Подсчёт высоты окна
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

; Позиционирование на активном мониторе
monitorInfo := GetActiveMonitorInfo()
if monitorInfo
{
    xPos := monitorInfo.right - winWidth - 40
    yPos := monitorInfo.top + 40
}
else
{
    ; Fallback на основной монитор
    SysGet, primary, MonitorPrimary
    SysGet, mon, Monitor, %primary%
    xPos := monRight - winWidth - 40
    yPos := monTop + 40
}

Gui, ВЗ:New  ; Создаем новое GUI окно
Gui, +AlwaysOnTop -Caption +LastFound +ToolWindow -DPIScale
Gui, Font, s10, Courier New
Gui, Add, Edit, w%winWidth% h%winHeight% ReadOnly, %content%
Gui, Show, NoActivate x%xPos% y%yPos%, КС ВЗ
return

:?:/ВЗ-::
SendPlay {Enter}
Gui, ВЗ:Destroy  ; Явно указываем имя GUI
return


:?:/МК_1::
SendPlay {Enter}
%vybor%("say Здравствуйте, передайте свой паспорт.", "  " zaderzhka " ")
SetTitleMatchMode, 2
FileEncoding, UTF-8

url := "https://docs.google.com/spreadsheets/d/e/2PACX-1vQmmY4JZ44c7Xa7W7YpIzMKB-eGrngoEo0khF1k3C-v2mdpBoSseJrf9NWcXeE9-0swQqPdyvVmEHon/pub?gid=2036179608&single=true&output=tsv"
savePath := "C:\ProgramData\KPRP\KPRP-main\table.tsv"

; Скачать таблицу
UrlDownloadToFile, %url%, %savePath%

if !FileExist(savePath)
{
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
    if (fields.Length() >= 9)
    {
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

; Подсчёт высоты окна
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

; Позиционирование на активном мониторе
monitorInfo := GetActiveMonitorInfo()
if monitorInfo
{
    xPos := monitorInfo.right - winWidth - 40
    yPos := monitorInfo.top + 40
}
else
{
    ; Fallback на основной монитор
    SysGet, primary, MonitorPrimary
    SysGet, mon, Monitor, %primary%
    xPos := monRight - winWidth - 40
    yPos := monTop + 40
}

Gui, ВЗ:New  ; Создаем новое GUI окно
Gui, +AlwaysOnTop -Caption +LastFound +ToolWindow -DPIScale
Gui, Font, s10, Courier New
Gui, Add, Edit, w%winWidth% h%winHeight% ReadOnly, %content%
Gui, Show, NoActivate x%xPos% y%yPos%, КС ВЗ
return

:?:/МК_111::
SendPlay {Enter}
%vybor%("say Покажите ваше удостоверение.", "  " zaderzhka " ")
%vybor%("say Жалобы на здоровье есть?", "  " zaderzhka " ")
SetTitleMatchMode, 2
FileEncoding, UTF-8

url := "https://docs.google.com/spreadsheets/d/e/2PACX-1vQmmY4JZ44c7Xa7W7YpIzMKB-eGrngoEo0khF1k3C-v2mdpBoSseJrf9NWcXeE9-0swQqPdyvVmEHon/pub?gid=2036179608&single=true&output=tsv"
savePath := "C:\ProgramData\KPRP\KPRP-main\table.tsv"

; Скачать таблицу
UrlDownloadToFile, %url%, %savePath%

if !FileExist(savePath)
{
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
    if (fields.Length() >= 9)
    {
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

; Подсчёт высоты окна
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

; Позиционирование на активном мониторе
monitorInfo := GetActiveMonitorInfo()
if monitorInfo
{
    xPos := monitorInfo.right - winWidth - 40
    yPos := monitorInfo.top + 40
}
else
{
    ; Fallback на основной монитор
    SysGet, primary, MonitorPrimary
    SysGet, mon, Monitor, %primary%
    xPos := monRight - winWidth - 40
    yPos := monTop + 40
}

Gui, ВЗ:New   ; Создаем новое GUI окно
Gui, +AlwaysOnTop -Caption +LastFound +ToolWindow -DPIScale
Gui, Font, s10, Courier New
Gui, Add, Edit, w%winWidth% h%winHeight% ReadOnly, %content%
Gui, Show, NoActivate x%xPos% y%yPos%, КС ВЗ
return

:?:/МК_2::
SendPlay {Enter}
%vybor%("me взял" floor " паспорт из рук человека напротив", "  " zaderzhka " ")
%vybor%("me открыл" floor " паспорт на необходимой странице и начал" floor " его изучение", "  " zaderzhka " ")
%vybor%("me изучив паспорт, закрыл" floor " его и передал" floor " человеку напротив", "  " zaderzhka " ")
%vybor%("say Жалобы на здоровье есть?", "  " zaderzhka " ")
Return

:?:/МК_3::
SendPlay {Enter}
%vybor%(" " stol "  ", "  " zaderzhka " ")
%vybor%("do На столе лежит открытая медкарта, ручка и штемпель.", "  " zaderzhka " ")
%vybor%("me взяв ручку, начал" floor " заполнение медицинской карты ", "  " zaderzhka " ")
%vybor%("say Назовите Ваш вес.", "  " zaderzhka " ")
Gui, ВЗ:Destroy  ; Явно указываем имя GUI
Return

:?:/МК_4::
SendPlay {Enter}
%vybor%("me внёс" floor " показатели веса в медицинскую карту пациента", "  " zaderzhka " ")
%vybor%("say Назовите Ваш рост. ", "  " zaderzhka " ")
Return

:?:/МК_5::
SendPlay {Enter}
%vybor%("me внёс" floor " показатели роста в медицинскую карту пациента", "  " zaderzhka " ")
%vybor%(" " stol " ", "  " zaderzhka " ")
%vybor%("do На столе лежит тонометр. ", "  " zaderzhka " ")
%vybor%("me взял" floor " со стола в руку тонометр и расстегнул" floor " манжету", "  " zaderzhka " ")
%vybor%("say Присаживайтесь на койку и дайте мне Вашу любую свободную руку.", "  " zaderzhka " ")
Return


:?:/МК_6::
SendPlay {Enter}
%vybor%("me надел" floor " манжету на руку человека и застегнул" floor " её", "  " zaderzhka " ")
%vybor%("me нажал" floor " на кнопку включения тонометра и начал" floor " накачивать манжету", "  " zaderzhka " ")
%vybor%("do На тонометре показалось число 220.", "  " zaderzhka " ")
%vybor%("me перестал" floor " накачивать манжету", "  " zaderzhka " ")
%vybor%("do Через несколько секунд манжета слегка расширилась.", "  " zaderzhka " ")
%vybor%("do На экране тонометра появилось давление.", "  " zaderzhka " ")
%vybor%("do Давление в норме?", "  " zaderzhka " ")
%vybor%("b /do Да. или /do Нет.", "  " zaderzhka " ")
Return


:?:/МК_7::
SendPlay {Enter}
%vybor%("me посмотрел" floor " на экран тонометра и зафиксировал" floor " показатели давления в медицинской карте пациента", "  " zaderzhka " ")
%vybor%("do Давление понижено?", "  " zaderzhka " ")
%vybor%("b /do Да. или /do Нет.", "  " zaderzhka " ")
Return

:?:/МК_8::
SendPlay {Enter}
%vybor%("me снял" floor "  манжету и положил" floor "  тонометр на стол", "  " zaderzhka " ")
%vybor%("say Что у меня над головой?", "  " zaderzhka " ")
Return

:?:/МК_9::
Random, rand, 1, 15
if rand = 1
	Word := "РП, ПГ"
if rand = 2
	Word := "ДМ, СК"
if rand = 3
	Word := "ТК, РК"
if rand = 4
	Word :=	"ОООО, ДБ"
if rand = 5
	Word :=	"ВХ, ПГ"
if rand = 6
	Word :=	"БХ, РВК"
if rand = 7
	Word :=	"ДБ, МГ"
if rand = 8
	Word :=	"ПГ, РП"
if rand = 9
	Word :=	"РВК, ООС"
if rand = 10
	Word :=	"РК, СК"
if rand = 11
	Word :=	"33, ДМ"
if rand = 12
	Word :=	"ДМ, ДБ"
if rand = 13
	Word :=	"РК, ТК"
if rand = 14
	Word :=	"СК, МГ"
if rand = 15
	Word :=	"МГ, ООС"
SendPlay {Enter}
%vybor%("say Сейчас пройдет психологическое тестирование.", "  " zaderzhka " ")
%vybor%("say Вам будет задано несколько вопросов - вы должны дать ответ. ", "  " zaderzhka " ")
%vybor%("say Что такое " Word "? ", "  " zaderzhka " ")
Return


:?:/МК_10::
SendPlay {Enter}
%vybor%("do В мед. сумке медицинского работника лежат ключи от АСМП.", "  " zaderzhka " ")
%vybor%("say Что у меня в мед. сумке?", "  " zaderzhka " ")
Return


:?:/МК_11::
SendPlay {Enter}
%vybor%(" " stol "  ", "  " zaderzhka " ")
%vybor%("do На столе лежит открытая медкарта, ручка и штемпель.", "  " zaderzhka " ")
%vybor%("me взяв ручку, начал" floor " заполнение медицинской карты ", "  " zaderzhka " ")
%vybor%("me написав в строке заключения «К государственной службе годен», отложил" floor " ручку", "  " zaderzhka " ")
%vybor%("me взяв штемпель со стола, поставил" floor " печать «ГВРП МакКарти С. А. - Минздрав РП» на строке заключения", "  " zaderzhka " ")
%vybor%("me поставил" floor " штемпель обратно, затем взял" floor " ручку и поставил" floor " подпись под печатью", "  " zaderzhka " ")
%vybor%("me отложил" floor " ручку, затем закрыл" floor " медицинскую карту и передал" floor " человеку напротив", "  " zaderzhka " ")
%vybor%("say Ваша медкарта готова, можете ее забирать.", "  " zaderzhka " ")
Gui, ВЗ:Destroy  ; Явно указываем имя GUI
Return


:?:/МК_12::
SendPlay {Enter}
%vybor%("say Вы не прошли осмотр и будете внесены во временный запрет на 5 дней.", "  " zaderzhka " ")
Return


:?:/Трен::
Random, rand, 1, 112
if rand = 1
	Word := "ЭКГ"
if rand = 2
	Word := "УЗИ"
if rand = 3
	Word := "ФКС"
if rand = 4
	Word := "ФГДС"
if rand = 5
	Word := "Вывих челюсти"
if rand = 6
	Word := "Флюорография"
if rand = 7
	Word := "ЭЭГ"
if rand = 8
	Word := "МРТ"
if rand = 9
	Word := "ОФЭКТ"
if rand = 10
	Word := "ОПТГ"
if rand = 11
	Word := "Клизма"
if rand = 12
	Word := "Цистоскопия"
if rand = 13
	Word := "Фетоскопия"
if rand = 14
	Word := "Взятие мазка"
if rand = 15
	Word := "Маммография"
if rand = 16
	Word := "Вакцинация"
if rand = 17
	Word := "Вакцинация от бешенства"
if rand = 18
	Word := "Вакцинация от коронавируса"
if rand = 19
	Word := "Капельница"
if rand = 20
	Word := "Анализ сахара в крови"
if rand = 21
	Word := "Химиотерапия"
if rand = 22
	Word := "Отравление"
if rand = 23
	Word := "Отбеливание зубов"
if rand = 24
	Word := "Рентген зуба"
if rand = 25
	Word := "Стерилизация"
if rand = 26
	Word := "Реминерализующая терапия"
if rand = 27
	Word := "ЗЧМТ"
if rand = 28
	Word := "Грыжа"
if rand = 29
	Word := "Пулевое ранение"
if rand = 30
	Word := "Ножевое ранение"
if rand = 31
	Word := "Ожог"
if rand = 32
	Word := "Родинка"
if rand = 33
	Word := "Роды"
if rand = 34
	Word := "ВМС"
if rand = 35
	Word := "Увеличение груди"
if rand = 36
	Word := "Рассечение головы"
if rand = 37
	Word := "Аппендицит"
if rand = 38
	Word := "Трансплантация"
if rand = 39
	Word := "Перевязывание раны"
if rand = 40
	Word := "Рентген"
if rand = 41
	Word := "Перелом ребер"
if rand = 42
	Word := "Перелом позвоночника"
if rand = 43
	Word := "Нос"
if rand = 44
	Word := "Вывех"
if rand = 44
	Word := "Открытой перелом"
if rand = 45
	Word := "Растяжение"
if rand = 46
	Word := "Хирургическая коррекция пола М>Ж"
if rand = 47
	Word := "Кровотечение носа"
if rand = 48
	Word := "Давление"
if rand = 49
	Word := "Сколиоз"
if rand = 50
	Word := "Глисты"
if rand = 51
	Word := "Проверка на вши"
if rand = 52
	Word := "Зрения"
if rand = 53
	Word := "Температура"
if rand = 54
	Word := "Проверка на наркотики"
if rand = 55
	Word := "Проверка на алкоголь"
if rand = 56
	Word := "Дефибриллятор"
if rand = 57
	Word := "Первая помощь"
if rand = 58
	Word := "Сотрясение"
if rand = 59
	Word := "Удуше"
if rand = 60
	Word := "Обморожение"
if rand = 61
	Word := "Коронавирус"
if rand = 62
	Word := "Проверка шумов в легких"
if rand = 63
	Word := "Проверка  веса и роста"
if rand = 64
	Word := "Проверка  шумов в сердце"
if rand = 65
	Word := "Рана"
if rand = 66
	Word := "Вывих ноги"
if rand = 67
	Word := "Удаление коренного зуба"
if rand = 68
	Word := "Удаление молочного зуба"
if rand = 69
	Word := "Удаление зуба мудрости"
if rand = 70
	Word := "Гистероскопия"
if rand = 71
	Word := "Пульсоксиметр"
if rand = 71
	Word := "Ингалятор"
if rand = 72
	Word := "Миостимулятор"
if rand = 73
	Word := "Эндосонография"
if rand = 74
	Word := "Удаление тату"
if rand = 75
	Word := "Тест на ангину"
if rand = 76
	Word := "Извлечение гвоздя"
if rand = 77
	Word := "Костная мозоль"
if rand = 78
	Word := "Укол от наркозависимости"
if rand = 79
	Word := "Удаление бородавки"
if rand = 80
	Word := "ЭКС"
if rand = 81
	Word := "Соринка в глазу"
if rand = 82
	Word := "Заноза в руке"
if rand = 83
	Word := "Подвернул ногу"
if rand = 84
	Word := "Донорство крови"
if rand = 85
	Word := "ПМП при инфаркте"
if rand = 86
	Word := "Проверка на вич"
if rand = 87
	Word := "Проверка на туберкулез"
if rand = 88
	Word := "Проверка на дифтерию"
if rand = 89
	Word := "Проверка на бешенство"
if rand = 90
	Word := "Укус змеи"
if rand = 91
	Word := "Выведения геморроя"
if rand = 92
	Word := "Компьютерная томография"
if rand = 93
	Word := "Гинекологический осмотр"
if rand = 94
	Word := "Кольпоскопия"
if rand = 95
	Word := "Глюкометр"
if rand = 96
	Word := "ИВЛ"
if rand = 97
	Word := "Хирургическая коррекция пола Ж>М"
if rand = 98
	Word := "МРА"
if rand = 99
	Word := "КГТ"
if rand = 100
	Word := "Мрт матки"
if rand = 101
	Word := "МРТ яичников"
if rand = 102
	Word := "Тест на беременность"
if rand = 103
	Word := "МРТ органов малого таза"
if rand = 104
	Word := "МРТ позвоночника"
if rand = 105
	Word := "МРТ почек"
if rand = 106
	Word := "Лазерная липосакция"
if rand = 107
	Word := "Камень в почках"
if rand = 108
	Word := "Удаление матки"
if rand = 109
	Word := "Удаление груди"
if rand = 110
	Word := "Удаление легкого"
if rand = 111
	Word := "Хирургическое лечение плоскостопия"
if rand = 112
	Word := "Уменьшение груди"
SendPlay {Enter}
IniWrite %Word%, %FilePath%, %DataGroup%, NumberCall
%vybor%("say Сейчас пройдёт тренировка:" Word ". ","  " zaderzhka " ")
%vybor%("" Skrin_1 "", "500")
Return


:?:/Трен_0::
SendPlay {Enter}
IniWrite %Word%, %FilePath%, %DataGroup%, NumberCall
%vybor%("say На этом тренировка:" Word " окончена. ","  " zaderzhka " ")
%vybor%("" Skrin_1 "", "500")
Gui, Destroy
Return

:?:/МП::
Random, rand, 1, 6
if rand = 1
	Word := "Стерилизация медицинских предметов"
if rand = 2
	Word := "Проверка срока годности лекарств"
if rand = 3
	Word := "Проверка условий хранения препаратов"
if rand = 4
	Word := "Проверка срока годности перчаток"
if rand = 5
	Word := "Дезинфекция в палатах"
if rand = 6
	Word := "Кварцевание палат"
SendPlay {Enter}
IniWrite %Word%, %FilePath%, %DataGroup%, NumberCall
%vybor%("say Сейчас пройдёт мероприятие:" Word ". ","  " zaderzhka " ")
%vybor%("" Skrin_1 "", "500")
Return



:?:/МП_0::
SendPlay {Enter}
IniWrite %Word%, %FilePath%, %DataGroup%, NumberCall
%vybor%("say На этом мероприятие:" Word " окончено. ","  " zaderzhka " "), NumberCall
%vybor%("" Skrin_1 "", "500")
Gui, Destroy
Return

:?:/Такси::
SendPlay {Enter}
%vybor%("logout","  " zaderzhka " ")
Return



:?:/Пост::
SendMessage, 0x50, 0, 0x4190419,, A
; Ввод фамилии напарника (только русские буквы)
InputBox, Patrol, Ввод данных, Введите фамилию напарника (Если нету оставить пустым), затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
    Return
}
; Проверка на наличие только русских букв, если введено что-то
If (Patrol != "" && !RegExMatch(Patrol, "^[А-Яа-яЁё\s<>,:;''\[\]\|]+$")) {
    MsgBox, 16, Ошибка, Введите только русские буквы для фамилии напарника.
    Return
}

; Ввод названия поста (только русские буквы)
InputBox, Post, Ввод данных, Введите название поста, затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
    Return
}
; Проверка на наличие только русских букв
If !RegExMatch(Post, "^[А-Яа-яЁё\s<>,:;''\[\]\|]+$") {
    MsgBox, 16, Ошибка, Введите только русские буквы для названия поста.
    Return
}

; Ввод количества минут (только цифры)
InputBox, Skolko, Ввод данных, Введите количество минут (например 10 минут = 1), затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
    Return
}
; Проверка на наличие только цифр
If !RegExMatch(Skolko, "^\d+$") {
    MsgBox, 16, Ошибка, Введите только цифры для количества минут.
    Return
}

MsgBox, 48, Предупреждение, Вы ввели: Фамилия напарника: %Patrol%  Вы ввели: пост: %Post% Количество минут: %Skolko%0 Разворачивайте игру!
IniWrite %Post%, %FilePath%, %DataGroup%, NumberCall
IniWrite %Patrol%, %FilePath%, %DataGroup%, NumberCall
IniWrite %Skolko%, %FilePath%, %DataGroup%, NumberCall

WinWaitActive, ahk_exe gta_sa.exe

Gui, +AlwaysOnTop -Caption +LastFound -SysMenu +ToolWindow -DPIScale

; Размер окна
winWidth := 403
winHeight := 109

; Создаем регион с закругленными углами (радиус 10 пикселей)
radius := 20
WinSet, Region, 0-0 w%winWidth% h%winHeight% r%radius%-%radius%

; Добавляем картинку
Gui, Add, Picture, x0 y-1 w%winWidth% h%winHeight% vNotifyPic, C:\ProgramData\KPRP\KPRP-main\notification.png

; Добавляем текст таймера поверх картинки
Gui, Font, s20 cgray Bold
Gui, Add, Text, vTimerText x30 y20 w%winWidth% h%winHeight% Center BackgroundTrans, Дежурство: 00:00:00`nДо доклада: 00:00:00

; Получаем координаты активного монитора
monitorInfo := GetActiveMonitorInfo()
if monitorInfo
{
    xPos := monitorInfo.right - winWidth - 20
    yPos := monitorInfo.bottom - winHeight - 770
}
else
{
    ; Fallback на основной монитор
    SysGet, monLeft, 0
    SysGet, monTop, 1
    SysGet, monRight, 2
    SysGet, monBottom, 3
    xPos := monRight - winWidth - 40
    yPos := monBottom - winHeight - 40
}

Gui, Show, NoActivate x%xPos% y%yPos% w%winWidth% h%winHeight%

; Таймер
startTime := A_TickCount
docladInterval := 590000
docladStart := A_TickCount
SetTimer, UpdateTime, 1000

SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")
; Условие для добавления информации о бригаде
If (Patrol != "") {
    %vybor%("r [" TAG "] Заступил" floor " на пост:" Post " // Бригада: " Patrol ". ", "1000")
} Else {
    %vybor%("r [" TAG "] Заступил" floor " на пост:" Post ". ", "1000")
}
%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс",  "1000")
%vybor%("" Skrin_1 "", "500")
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_1.mp3
IniWrite %Skolko%, %FilePath%, %DataGroup%, NumberCall
; Цикл, который каждые 10 мин отписывает в чат, идет до Skolko
Loop, %Skolko%
{
sleep 590000 
IniWrite %Patrol%, %FilePath%, %DataGroup%, NumberCall
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_2.mp3
sleep 30000
if(A_Index = Skolko){
		break
	}
SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")
If (Patrol != "") {
    %vybor%("r [" TAG "] Продолжаю дежурство на посту:" Post " // Бригада:" Patrol ". ", "500")
} Else {
    %vybor%("r [" TAG "] Продолжаю дежурство на посту:" Post ". ", "500")
}
%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс",  "500")
%vybor%("" Skrin_1 "", "500")
}
sleep 1000
IniWrite %Post%, %FilePath%, %DataGroup%, NumberCall
IniWrite %Patrol%, %FilePath%, %DataGroup%, NumberCall
SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")
If (Patrol != "") {
    %vybor%("r [" TAG "] Покинул" floor " пост:" Post " // Бригада:" Patrol ". ", "500")
} Else {
    %vybor%("r [" TAG "] Покинул" floor " пост:" Post ". ", "500")
}
%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс",  "500")
%vybor%("" Skrin_1 "", "500")
Gui, Destroy
sleep 1000
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_3.mp3
Return



:?:/Пост_1::
IniWrite %Skolko%, %FilePath%, %DataGroup%, NumberCall
sleep 1200
SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")

; Если фамилия напарника не введена, не отображаем её в сообщении
If (Patrol != "") {
    %vybor%("r [" TAG "] Покинул" floor " пост:" Post " // Бригада:" Patrol ". ", "500")
} Else {
    %vybor%("r [" TAG "] Покинул" floor " пост:" Post " ", "500")
}

%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
%vybor%("" Skrin_1 "", "500")
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_4.mp3
sleep 10000
Gui, Destroy
Reload
return



:?:/Город::
SendMessage, 0x50, 0, 0x4190419,, A
; Ввод фамилии напарника (только русские буквы)
InputBox, Patrol, Ввод данных, Введите фамилию напарника (Если нету оставить пустым), затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
    Return
}

; Проверка на наличие только русских букв, если введено что-то
If (Patrol != "" && !RegExMatch(Patrol, "^[А-Яа-яЁё\s<>,:;''\[\]\|]+$")) {
    MsgBox, 16, Ошибка, Введите только русские буквы для фамилии напарника.
    Return
}

; Ввод количества минут (только цифры)
InputBox, Skolko, Ввод данных, Введите количество минут (например 10 минут = 1), затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
    Return
}

; Проверка на наличие только цифр для количества минут
If !RegExMatch(Skolko, "^\d+$") {
    MsgBox, 16, Ошибка, Введите только цифры для количества минут.
    Return
}

MsgBox, 48, Предупреждение, Вы ввели: Фамилия напарника: %Patrol%  Количество минут: %Skolko%0 Разворачивайте игру!

IniWrite %Patrol%, %FilePath%, %DataGroup%, NumberCall
IniWrite %Skolko%, %FilePath%, %DataGroup%, NumberCall

WinWaitActive, ahk_exe gta_sa.exe

Gui, +AlwaysOnTop -Caption +LastFound -SysMenu +ToolWindow -DPIScale

; Размер окна
winWidth := 403
winHeight := 109

; Создаем регион с закругленными углами (радиус 10 пикселей)
radius := 20
WinSet, Region, 0-0 w%winWidth% h%winHeight% r%radius%-%radius%

; Добавляем картинку
Gui, Add, Picture, x0 y-1 w%winWidth% h%winHeight% vNotifyPic, C:\ProgramData\KPRP\KPRP-main\notification.png

; Добавляем текст таймера поверх картинки
Gui, Font, s20 cgray Bold
Gui, Add, Text, vTimerText x30 y20 w%winWidth% h%winHeight% Center BackgroundTrans, Дежурство: 00:00:00`nДо доклада: 00:00:00

; Получаем координаты активного монитора
monitorInfo := GetActiveMonitorInfo()
if monitorInfo
{
    xPos := monitorInfo.right - winWidth - 20
    yPos := monitorInfo.bottom - winHeight - 770
}
else
{
    ; Fallback на основной монитор
    SysGet, monLeft, 0
    SysGet, monTop, 1
    SysGet, monRight, 2
    SysGet, monBottom, 3
    xPos := monRight - winWidth - 40
    yPos := monBottom - winHeight - 40
}

Gui, Show, NoActivate x%xPos% y%yPos% w%winWidth% h%winHeight%

; Таймер
startTime := A_TickCount
docladInterval := 590000
docladStart := A_TickCount
SetTimer, UpdateTime, 1000

SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него" floor " ", "500")
; Условие для добавления информации о бригаде
If (Patrol != "") {
    %vybor%("r [" TAG "] Выехал" floor " на патрулирование города // Бригада:" Patrol ". ", "500")
} Else {
    %vybor%("r [" TAG "] Выехал" floor " на патрулирование города. ", "500")
}
%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
%vybor%("" Skrin_1 "", "500")
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_1.mp3
; Цикл, который каждые 10 мин отписывает в чат, идет до Skolko
Loop, %Skolko%
{
    sleep 590000 
    IniWrite %Patrol%, %FilePath%, %DataGroup%, NumberCall
    SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_2.mp3

	if(A_Index = Skolko){
		break
	}
    SendPlay {Enter}
    %vybor%("do КПК висит на поясе.", "500")
    %vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")
    If (Patrol != "") {
        %vybor%("r [" TAG "] Продолжаю патруль города // Бригада:" Patrol ". ", "500")
    } Else {
        %vybor%("r [" TAG "] Продолжаю патруль города. ", "500")
    }
    %vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
    %vybor%("" Skrin_1 "", "500")
}
sleep 1000
SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")
If (Patrol != "") {
    %vybor%("r [" TAG "] Завершил" floor " патрулирование города // Бригада:" Patrol ". ", "500")
} Else {
    %vybor%("r [" TAG "] Завершил" floor " патрулирование города. ", "500")
}
%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "1000")
%vybor%("" Skrin_1 "", "500")
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_3.mp3
Gui, Destroy
Return



:?:/Город_1:: 
IniWrite %Patrol%, %FilePath%, %DataGroup%, NumberCall
sleep 1000
SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")

; Если фамилия напарника не введена, не отображаем её в сообщении
If (Patrol != "") {
    %vybor%("r [" TAG "] Завершил" floor " патрулирование города. // Бригада: " Patrol ". ", "500")
} Else {
    %vybor%("r [" TAG "] Завершил" floor " патрулирование города. ", "500")
}

%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "1000")
%vybor%("" Skrin_1 "", "500")
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_4.mp3
Gui, Destroy
sleep 10000
Reload
Return



:?:/Вызов_1::
SendMessage, 0x50, 0, 0x4190419,, A
; Ввод фамилии напарника (разрешены только русские буквы, можно оставить пустым)
InputBox, Patrol, Ввод данных, Введите фамилию напарника (Если нету — оставить пустым), затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка, Вы отменили ввод данных. Скрипт остановлен.
    Return
}
; Проверка: если введено что-то — только русские буквы
If (Patrol != "" && !RegExMatch(Patrol, "^[А-Яа-яЁё\s<>,:;''\[\]\|]+$")) {
    MsgBox, 16, Ошибка, Введите только русские буквы для фамилии напарника.
    Return
}

; Ввод номера вызова (только цифры)
InputBox, to, Ввод данных, Введите номер вызова, затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка, Вы отменили ввод данных. Скрипт остановлен.
    Return
}
; Проверка: только цифры
If !RegExMatch(to, "^\d+$") {
    MsgBox, 16, Ошибка, Введите только цифры для номера вызова.
    Return
}

MsgBox, 48, Предупреждение, Вы ввели: Фамилия напарника: %Patrol% № вызова: %to%`nРазворачивайте игру!

IniWrite %Patrol%, %FilePath%, %DataGroup%, NumberCall
IniWrite %to%, %FilePath%, %DataGroup%, NumberCall
WinWaitActive, ahk_exe gta_sa.exe
SendPlay {Enter}
%vybor%("me достал" floor " из кармана КПК, запустил" floor " его", "1500")
%vybor%("me открывает базу поступивших вызовов", "1500")
%vybor%("me фиксирует последние данные GPS пациента", "1500")
%vybor%("to " to " ", "500")
%vybor%("me зажав кнопку на КПК, начал" floor " что-то говорить в него", "1500")
If (Patrol != "") {
    %vybor%("r [" TAG "] Принял" floor " вызов: " to " // Бригада: " Patrol " ", "500")
} Else {
    %vybor%("r [" TAG "] Принял" floor " вызов: " to " ", "500")
}
%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "1000")
%vybor%("" Skrin_1 "", "500")
Return



:?:/Вызов_3::
IniWrite %Patrol%, %FilePath%, %DataGroup%, NumberCall
IniWrite %to%, %FilePath%, %DataGroup%, NumberCall
Sleep 1500
SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "1500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "1500")
If (Patrol != "") {
    %vybor%("r [" TAG "] Ложный // Вызов: " to " // Бригада: " Patrol ".", "500")
} Else {
    %vybor%("r [" TAG "] Ложный // Вызов: " to ".", "500")
}
%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс",  "500")
%vybor%("cancel", "500")
%vybor%("" Skrin_1 "", "500")
Return



:?:/Вызов_4::

IniWrite %to%, %FilePath%, %DataGroup%, NumberCall
Sleep 1500
SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")
If (Patrol != "") {
    %vybor%("r [" TAG "] Обработан на месте // Вызов: " to " // Бригада: " Patrol ".", "500")
} Else {
    %vybor%("r [" TAG "] Обработан на месте // Вызов: " to ".", "500")
}
%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс",  "500")
%vybor%("" Skrin_1 "", "500")
Return


:?:/Вызов_2::
IniWrite %Patrol%, %FilePath%, %DataGroup%, NumberCall
IniWrite %to%, %FilePath%, %DataGroup%, NumberCall
Sleep 150
SendPlay {Enter}
%vybor%("speclight_onoff", "500")
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me сняв КПК с пояса, вызвал" floor " через него дежурного врача", "  " zaderzhka " ")
%vybor%("do Через некоторое время пришёл врач и забрал каталку с пациентом.", "  " zaderzhka " ")
%vybor%("hospital", "500")
%vybor%("me зажав кнопку, начал" floor " что-то говорить в него", "1000")
If (Patrol != "") {
    %vybor%("r [" TAG "] Госпитализирован // Вызов: " to " // Бригада: " Patrol ".", "1000")
} Else {
    %vybor%("r [" TAG "] Госпитализирован // Вызов: " to ".", "1000")
}
%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс",  "1000")
%vybor%("" Skrin_1 "", "500")
Return



:?:/Напарник_16::
SendMessage, 0x50, 0, 0x4190419,, A
InputBox, Patrol_1, Ввод данных, Введите фамилию напарника, затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
    Return
}
If !RegExMatch(Patrol_1, "^[А-Яа-яЁё\s<>,:;''\[\]\|]+$") {
    MsgBox, 16, Ошибка, Введите только русские буквы.
    Return
}
IniWrite %Patrol_1%, %FilePath%, %DataGroup%, NumberCall
MsgBox, 48, Предупреждение, Вы изменили данные на: %Patrol_1%.
return



:?:/Напарник_15::
SendMessage, 0x50, 0, 0x4190419,, A
InputBox, Patrol, Ввод данных, Введите фамилию напарника, затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
    Return
}
If !RegExMatch(Patrol, "^[А-Яа-яЁё\s<>,:;''\[\]\|]+$") {
    MsgBox, 16, Ошибка, Введите только русские буквы.
    Return
}
IniWrite %Patrol%, %FilePath%, %DataGroup%, NumberCall
MsgBox, 48, Предупреждение, Вы изменили данные на: %Patrol%.
return


:?:/Пост_15::
SendMessage, 0x50,, 0x4190419,, A
InputBox, Post, Ввод данных, Введите пост, затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
    Return
}
If !RegExMatch(Post, "^[А-Яа-яЁё\s<>,:;''\[\]\|]+$") {
    MsgBox, 16, Ошибка, Введите только русские буквы.
    Return
}
IniWrite %Post%, %FilePath%, %DataGroup%, NumberCall
MsgBox, 48, Предупреждение, Вы изменили данные на: %Post%.
return



:?:/Вызов_15::
; Переключение на русскую раскладку
SendMessage, 0x50, 0, 0x4190419,, A

InputBox, to, Ввод данных, Введите номер вызова, затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка, Вы отменили ввод данных. Скрипт остановлен.
    Return
}
If !RegExMatch(to, "^\d+$") {
    MsgBox, 16, Ошибка, Введите только цифры для номера вызова.
    Return
}
IniWrite %to%, %FilePath%, %DataGroup%, NumberCall
MsgBox, 48, Предупреждение, Вы изменили данные на: %to%.
return



UpdateTime:
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

    GuiControl,, TimerText, Дежурство: %formattedDuty%`nДо доклада: %formattedRemaining%
return




:?:/Республика::
SendMessage, 0x50, 0, 0x4190419,, A
; Ввод фамилии напарника (только русские буквы)
InputBox, Patrol_1, Ввод данных, Введите фамилию напарника (Если нету оставить пустым), затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка, Вы отменили ввод данных. Скрипт остановлен.
    Return
}

; Проверка на наличие только русских букв
If (Patrol_1 != "" && !RegExMatch(Patrol_1, "^[А-Яа-яЁё\s<>,:;''\[\]\|]+$")) {
    MsgBox, 16, Ошибка, Введите только русские буквы для фамилии напарника.
    Return
}

; Ввод количества минут (только цифры)
InputBox, Skolko, Ввод данных, Введите количество минут (например 10 минут = 1), затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка, Вы отменили ввод данных. Скрипт остановлен.
    Return
}

; Проверка на наличие только цифр для количества минут
If !RegExMatch(Skolko, "^\d+$") {
    MsgBox, 16, Ошибка, Введите только цифры для количества минут.
    Return
}

MsgBox, 48, Предупреждение, Вы ввели: Фамилия напарника: %Patrol_1% Количество минут: %Skolko%0 Разворачивайте игру!

; Если фамилия напарника не введена, очищаем её в файле
If (Patrol_1 != "") {
    IniWrite %Patrol_1%, %FilePath%, %DataGroup%, NumberCall
} Else {
    IniWrite "", %FilePath%, %DataGroup%, NumberCall ; Если фамилия не введена, записываем пустое значение
}
IniWrite %Skolko%, %FilePath%, %DataGroup%, NumberCall

WinWaitActive, ahk_exe gta_sa.exe

Gui, +AlwaysOnTop -Caption +LastFound -SysMenu +ToolWindow -DPIScale

; Размер окна
winWidth := 403
winHeight := 109

; Создаем регион с закругленными углами (радиус 10 пикселей)
radius := 20
WinSet, Region, 0-0 w%winWidth% h%winHeight% r%radius%-%radius%

; Добавляем картинку
Gui, Add, Picture, x0 y-1 w%winWidth% h%winHeight% vNotifyPic, C:\ProgramData\KPRP\KPRP-main\notification.png

; Добавляем текст таймера поверх картинки
Gui, Font, s20 cgray Bold
Gui, Add, Text, vTimerText x30 y20 w%winWidth% h%winHeight% Center BackgroundTrans, Дежурство: 00:00:00`nДо доклада: 00:00:00

; Получаем координаты активного монитора
monitorInfo := GetActiveMonitorInfo()
if monitorInfo
{
    xPos := monitorInfo.right - winWidth - 20
    yPos := monitorInfo.bottom - winHeight - 770
}
else
{
    ; Fallback на основной монитор
    SysGet, monLeft, 0
    SysGet, monTop, 1
    SysGet, monRight, 2
    SysGet, monBottom, 3
    xPos := monRight - winWidth - 40
    yPos := monBottom - winHeight - 40
}

Gui, Show, NoActivate x%xPos% y%yPos% w%winWidth% h%winHeight%

; Таймер
startTime := A_TickCount
docladInterval := 590000
docladStart := A_TickCount
SetTimer, UpdateTime, 1000

SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")

; Если фамилия напарника не введена, не отображаем её в сообщении
If (Patrol_1 != "") {
    %vybor%("ro [" Bol_ro_1 "] Выехал" floor " на патруль республики // Бригада:" Patrol_1 ". ", "500")
} Else {
    %vybor%("ro [" Bol_ro_1 "] Выехал" floor " на патруль республики. ", "500")
}

%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
%vybor%("" Skrin_1 "", "500")
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_1.mp3

Loop, %Skolko%
{
    sleep 590000 
    ; Если фамилия напарника не введена, не записываем её в файл снова
    If (Patrol_1 != "") {
        IniWrite %Patrol_1%, %FilePath%, %DataGroup%, NumberCall
    }
    SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_2.mp3

	if(A_Index = Skolko){
		break
	}
    SendPlay {Enter}
    %vybor%("do КПК висит на поясе.", "500")
    %vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")
    ; Если фамилия напарника не введена, не отображаем её в сообщении
    If (Patrol_1 != "") {
        %vybor%("ro [" Bol_ro_1 "] Продолжаю патруль республики // Бригада:" Patrol_1 ". ", "1000")
    } Else {
        %vybor%("ro [" Bol_ro_1 "] Продолжаю патруль республики. ", "1000")
    }
    %vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
    %vybor%("" Skrin_1 "", "500")
}
IniWrite %Patrol_1%, %FilePath%, %DataGroup%, NumberCall
sleep 1000
SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")

; Если фамилия напарника не введена, не отображаем её в сообщении
If (Patrol_1 != "") {
    %vybor%("ro [" Bol_ro_1 "] Завершил" floor " патруль республики // Бригада:" Patrol_1 ". ", "500")
} Else {
    %vybor%("ro [" Bol_ro_1 "] Завершил" floor " патруль республики. ", "500")
}

%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
%vybor%("" Skrin_1 "", "500")
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_3.mp3
Gui, Destroy
sleep 1000
Return




:?:/Республика_1::
IniWrite %Patrol_1%, %FilePath%, %DataGroup%, NumberCall
; Если фамилия напарника (бригада) не введена, очистить переменную
If (Patrol_1 = "") {
    IniWrite "", %FilePath%, %DataGroup%, NumberCall ; Очистка данных для бригады
} Else {
    IniWrite %Patrol_1%, %FilePath%, %DataGroup%, NumberCall
}

Sleep 1500
SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")

; Если бригада не указана, не включаем её в сообщение
If (Patrol_1 != "") {
    %vybor%("ro [" Bol_ro_1 "] Завершил" floor " патруль республики // Бригада:" Patrol_1 ". ", "500")
} Else {
    %vybor%("ro [" Bol_ro_1 "] Завершил" floor " патруль республики. ", "500")
}

%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
%vybor%("" Skrin_1 "", "500")
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_4.mp3
Gui, Destroy
sleep 10000
Reload
Return





:?:/Город_0::
SendMessage, 0x50, 0, 0x4190419,, A
; Ввод фамилии напарника (только русские буквы)
InputBox, Patrol, Ввод данных, Введите фамилию напарника (Если нету оставить пустым), затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка, Вы отменили ввод данных. Скрипт остановлен.
    Return
}

; Проверка на наличие только русских букв, если фамилия введена
If (Patrol != "" && !RegExMatch(Patrol, "^[А-Яа-яЁё\s<>,:;''\[\]\|]+$")) {
    MsgBox, 16, Ошибка, Введите только русские буквы для фамилии напарника.
    Return
}

; Ввод количества минут (только цифры)
InputBox, Skolko, Ввод данных, Введите количество минут (например 10 минут = 1), затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка, Вы отменили ввод данных. Скрипт остановлен.
    Return
}

; Проверка на наличие только цифр для количества минут
If !RegExMatch(Skolko, "^\d+$") {
    MsgBox, 16, Ошибка, Введите только цифры для количества минут.
    Return
}

; Подтверждение введенных данных
MsgBox, 48, Предупреждение, Вы ввели: Фамилия напарника: %Patrol% Количество минут: %Skolko% Разворачивайте игру!

; Запись данных в файл
IniWrite %Patrol%, %FilePath%, %DataGroup%, NumberCall
IniWrite %Skolko%, %FilePath%, %DataGroup%, NumberCall

WinWaitActive, ahk_exe gta_sa.exe

Gui, +AlwaysOnTop -Caption +LastFound -SysMenu +ToolWindow -DPIScale

; Размер окна
winWidth := 403
winHeight := 109

; Создаем регион с закругленными углами (радиус 10 пикселей)
radius := 20
WinSet, Region, 0-0 w%winWidth% h%winHeight% r%radius%-%radius%

; Добавляем картинку
Gui, Add, Picture, x0 y-1 w%winWidth% h%winHeight% vNotifyPic, C:\ProgramData\KPRP\KPRP-main\notification.png

; Добавляем текст таймера поверх картинки
Gui, Font, s20 cgray Bold
Gui, Add, Text, vTimerText x30 y20 w%winWidth% h%winHeight% Center BackgroundTrans, Дежурство: 00:00:00`nДо доклада: 00:00:00

; Получаем координаты активного монитора
monitorInfo := GetActiveMonitorInfo()
if monitorInfo
{
    xPos := monitorInfo.right - winWidth - 20
    yPos := monitorInfo.bottom - winHeight - 770
}
else
{
    ; Fallback на основной монитор
    SysGet, monLeft, 0
    SysGet, monTop, 1
    SysGet, monRight, 2
    SysGet, monBottom, 3
    xPos := monRight - winWidth - 40
    yPos := monBottom - winHeight - 40
}

Gui, Show, NoActivate x%xPos% y%yPos% w%winWidth% h%winHeight%

; Таймер
startTime := A_TickCount
docladInterval := 590000
docladStart := A_TickCount
SetTimer, UpdateTime, 1000

SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")

; Если фамилия напарника не введена, вывести без нее
If (Patrol != "") {
    %vybor%("r [" TAG "] Вылетел" floor " на воздушное патрулирование города  // Бригада:" Patrol ". ", "500")
} Else {
    %vybor%("r [" TAG "] Вылетел" floor "  воздушное патрулирование города.", "500")
}

%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
%vybor%("" Skrin_1 "", "500")
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_1.mp3

Loop, %Skolko%
{
    sleep 590000 
    IniWrite %Patrol%, %FilePath%, %DataGroup%, NumberCall
    SoundPlay,C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_2.mp3

	if(A_Index = Skolko){
		break
	}
    SendPlay {Enter}
    %vybor%("do КПК висит на поясе.", "500")
    %vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")
    
    ; Если фамилия напарника не введена, вывести без нее
    If (Patrol != "") {
        %vybor%("r [" TAG "] Продолжаю воздушное патрулирование города // Бригада:" Patrol ". ", "1000")
    } Else {
        %vybor%("r [" TAG "] Продолжаю воздушноец патрулирование города.", "1000")
    }

    %vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
    %vybor%("" Skrin_1 "", "500")
}

IniWrite %Patrol%, %FilePath%, %DataGroup%, NumberCall
sleep 1000
SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")

; Если фамилия напарника не введена, вывести без нее
If (Patrol != "") {
    %vybor%("r [" TAG "] Завершил" floor " воздушное патрулирование города  // Бригада:" Patrol ". ", "500")
} Else {
    %vybor%("r [" TAG "] Завершил" floor " воздушное патрулирование города. ", "500")
}

%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
%vybor%("" Skrin_1 "", "500")
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_3.mp3
Gui, Destroy
sleep 1000
Return



:?:/Город_2::
IniWrite %Patrol%, %FilePath%, %DataGroup%, NumberCall
Sleep 1500
SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")

; Если фамилия напарника не введена, не отображаем её в сообщении
If (Patrol != "") {
    %vybor%("r [" TAG "]  Окончил" floor " воздушное патрулирование города // Бригада: " Patrol ". ", "1000")
} Else {
    %vybor%("r [" TAG "]  Окончил" floor " воздушное патрулирование города.", "1000")
}

%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
%vybor%("" Skrin_1 "", "500")
SoundPlay,C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_4.mp3
Gui, Destroy
sleep 10000
Reload
Return





:?:/Республика_0::
SendMessage, 0x50, 0, 0x4190419,, A
; Ввод фамилии напарника (только русские буквы)
InputBox, Patrol_1, Ввод данных, Введите фамилию напарника (Если нету оставить пустым), затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка, Вы отменили ввод данных. Скрипт остановлен.
    Return
}

; Проверка на наличие только русских букв
If (Patrol_1 != "" && !RegExMatch(Patrol_1, "^[А-Яа-яЁё\s<>,:;''\[\]\|]+$")) {
    MsgBox, 16, Ошибка, Введите только русские буквы для фамилии напарника.
    Return
}

; Ввод количества минут (только цифры)
InputBox, Skolko, Ввод данных, Введите количество минут (например 10 минут = 1), затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка, Вы отменили ввод данных. Скрипт остановлен.
    Return
}

; Проверка на наличие только цифр для количества минут
If !RegExMatch(Skolko, "^\d+$") {
    MsgBox, 16, Ошибка, Введите только цифры для количества минут.
    Return
}

MsgBox, 48, Предупреждение, Вы ввели: Фамилия напарника: %Patrol_1% Количество минут: %Skolko%0 Разворачивайте игру!

; Если фамилия напарника не введена, очищаем её в файле
If (Patrol_1 != "") {
    IniWrite %Patrol_1%, %FilePath%, %DataGroup%, NumberCall
} Else {
    IniWrite "", %FilePath%, %DataGroup%, NumberCall ; Если фамилия не введена, записываем пустое значение
}
IniWrite %Skolko%, %FilePath%, %DataGroup%, NumberCall

WinWaitActive, ahk_exe gta_sa.exe

Gui, +AlwaysOnTop -Caption +LastFound -SysMenu +ToolWindow -DPIScale

; Размер окна
winWidth := 403
winHeight := 109

; Создаем регион с закругленными углами (радиус 10 пикселей)
radius := 20
WinSet, Region, 0-0 w%winWidth% h%winHeight% r%radius%-%radius%

; Добавляем картинку
Gui, Add, Picture, x0 y-1 w%winWidth% h%winHeight% vNotifyPic, C:\ProgramData\KPRP\KPRP-main\notification.png

; Добавляем текст таймера поверх картинки
Gui, Font, s20 cgray Bold
Gui, Add, Text, vTimerText x30 y20 w%winWidth% h%winHeight% Center BackgroundTrans, Дежурство: 00:00:00`nДо доклада: 00:00:00

; Получаем координаты активного монитора
monitorInfo := GetActiveMonitorInfo()
if monitorInfo
{
    xPos := monitorInfo.right - winWidth - 20
    yPos := monitorInfo.bottom - winHeight - 770
}
else
{
    ; Fallback на основной монитор
    SysGet, monLeft, 0
    SysGet, monTop, 1
    SysGet, monRight, 2
    SysGet, monBottom, 3
    xPos := monRight - winWidth - 40
    yPos := monBottom - winHeight - 40
}

Gui, Show, NoActivate x%xPos% y%yPos% w%winWidth% h%winHeight%

; Таймер
startTime := A_TickCount
docladInterval := 590000
docladStart := A_TickCount
SetTimer, UpdateTime, 1000


SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")

; Если фамилия напарника не введена, не отображаем её в сообщении
If (Patrol_1 != "") {
    %vybor%("ro [" Bol_ro_1 "] Вылетел" floor " на воздушное патрулирование Республики Провинция // Бригада:" Patrol_1 ". ", "500")
} Else {
    %vybor%("ro [" Bol_ro_1 "] Вылетел" floor " на воздушное патрулирование Республики Провинция. ", "500")
}

%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
%vybor%("" Skrin_1 "", "500")
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_1.mp3

Loop, %Skolko%
{
    sleep 590000 
    ; Если фамилия напарника не введена, не записываем её в файл снова
    If (Patrol_1 != "") {
        IniWrite %Patrol_1%, %FilePath%, %DataGroup%, NumberCall
    }
    SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_2.mp3

	if(A_Index = Skolko){
		break
	}
    SendPlay {Enter}
    %vybor%("do КПК висит на поясе.", "500")
    %vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")
    ; Если фамилия напарника не введена, не отображаем её в сообщении
    If (Patrol_1 != "") {
        %vybor%("ro [" Bol_ro_1 "] Продолжаю воздушное патрулирование республики // Бригада:" Patrol_1 ". ", "1000")
    } Else {
        %vybor%("ro [" Bol_ro_1 "] Продолжаю воздушное патрулирование республики. ", "1000")
    }
    %vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
    %vybor%("" Skrin_1 "", "500")
}
IniWrite %Patrol_1%, %FilePath%, %DataGroup%, NumberCall
sleep 1000
SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")

; Если фамилия напарника не введена, не отображаем её в сообщении
If (Patrol_1 != "") {
    %vybor%("ro [" Bol_ro_1 "] Завершил" floor " воздушное патрулирование Республики Провинция // Бригада:" Patrol_1 ". ", "500")
} Else {
    %vybor%("ro [" Bol_ro_1 "] Завершил" floor " воздушное патрулирование Республики Провинция. ", "500")
}

%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
%vybor%("" Skrin_1 "", "500")
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_3.mp3
Gui, Destroy
sleep 1000
Return




:?:/Республика_2::
IniWrite %Patrol_1%, %FilePath%, %DataGroup%, NumberCall
; Если фамилия напарника (бригада) не введена, очистить переменную
If (Patrol_1 = "") {
    IniWrite "", %FilePath%, %DataGroup%, NumberCall ; Очистка данных для бригады
} Else {
    IniWrite %Patrol_1%, %FilePath%, %DataGroup%, NumberCall
}

Sleep 1500
SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")

; Если бригада не указана, не включаем её в сообщение

If (Patrol_1 != "") {
    %vybor%("ro [" Bol_ro_1 "] Завершил" floor " воздушное патрулирование р. Провинция // Бригада:" Patrol_1 ". ", "500")
} Else {
    %vybor%("ro [" Bol_ro_1 "] Завершил" floor " воздушное патрулирование р. Провинция. ", "500")
}

%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
%vybor%("" Skrin_1 "", "500")
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_4.mp3
Gui, Destroy
sleep 10000
Reload
Return



:?:/ПО::
SendMessage, 0x50, 0, 0x4190419,, A
InputBox, Skolko, Ввод данных, Введите количество минут (например 10 минут = 1), затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
    Return
}

; Проверка: введено только число
If !RegExMatch(Skolko, "^\d+$") {
    MsgBox, 16, Ошибка, Введите только цифры для количества минут.
    Return
}

MsgBox, 48, Предупреждение, Количество минут: %Skolko%0 Разворачивайте игру!
IniWrite %Skolko%, %FilePath%, %DataGroup%, NumberCall

WinWaitActive, ahk_exe gta_sa.exe


Gui, +AlwaysOnTop -Caption +LastFound -SysMenu +ToolWindow -DPIScale

; Размер окна
winWidth := 403
winHeight := 109

; Создаем регион с закругленными углами (радиус 10 пикселей)
radius := 20
WinSet, Region, 0-0 w%winWidth% h%winHeight% r%radius%-%radius%

; Добавляем картинку
Gui, Add, Picture, x0 y-1 w%winWidth% h%winHeight% vNotifyPic, C:\ProgramData\KPRP\KPRP-main\notification.png

; Добавляем текст таймера поверх картинки
Gui, Font, s20 cgray Bold
Gui, Add, Text, vTimerText x30 y20 w%winWidth% h%winHeight% Center BackgroundTrans, Дежурство: 00:00:00`nДо доклада: 00:00:00

; Получаем координаты активного монитора
monitorInfo := GetActiveMonitorInfo()
if monitorInfo
{
    xPos := monitorInfo.right - winWidth - 20
    yPos := monitorInfo.bottom - winHeight - 770
}
else
{
    ; Fallback на основной монитор
    SysGet, monLeft, 0
    SysGet, monTop, 1
    SysGet, monRight, 2
    SysGet, monBottom, 3
    xPos := monRight - winWidth - 40
    yPos := monBottom - winHeight - 40
}

Gui, Show, NoActivate x%xPos% y%yPos% w%winWidth% h%winHeight%

; Таймер
startTime := A_TickCount
docladInterval := 590000
docladStart := A_TickCount
SetTimer, UpdateTime, 1000

SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")
%vybor%("r [" TAG "] Заступил" floor " на пост:Регистратура.", "500")
%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
%vybor%("" Skrin_1 "", "500")
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_1.mp3

Loop, %Skolko%
{
    sleep 590000 
    SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_2.mp3

	if(A_Index = Skolko){
		break
	}
    IniRead, Lancia, C:\ProgramData\KPRP\KPRP-main\Statistika.ini, Statistic, Lancia
    SendPlay {Enter}
    %vybor%("do КПК висит на поясе.", "500")
    %vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")
    %vybor%("r [" TAG "] Продолжаю дежурство на посту:Регистратура.", "1000")
    %vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
    %vybor%("" Skrin_1 "", "500")
}

SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")
%vybor%("r [" TAG "] Покинул" floor " пост:Регистратура.", "500")
%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс", "500")
%vybor%("" Skrin_1 "", "500")
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_3.mp3
Gui, Destroy
Return




:?:/ПО_1::
Sleep 1500
SendPlay {Enter}
%vybor%("do КПК висит на поясе.", "500")
%vybor%("me снял" floor " КПК с пояса и, зажав кнопку, начал" floor " что-то говорить в него", "500")
%vybor%("r [" TAG "] Покинул" floor " пост:Регистратура.  ", "500")
%vybor%("me отжав кнопку, закончил" floor " что-то говорить в КПК и повесил" floor " его обратно на пояс",  "500")
%vybor%("" Skrin_1 "", "500")
SoundPlay, C:\ProgramData\KPRP\KPRP-main\Doklad_Mariya_4.mp3
Gui, Destroy
sleep 10000
Reload
Return



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


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ94,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ94,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ95,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ95,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ96,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ96,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ97,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ97,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png


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


Gui, 3:Add, Picture, x430 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ33,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x500 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ33,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png



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

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ38,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ38,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png

Gui, 3:show, center h60 w460, Вакцинация
Return

;--------------------------------------------------------------------------------


Medicine5:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Кровь


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x115 y15 h500 w370 +BackgroundTrans, [Внутреннее кровотечение]
Gui, 3:show, center h60 w400, Внутреннее кровотечение
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


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ133,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ133,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ134,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ134,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ135,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ135,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ136,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ136,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png


Gui, 3:show, center h220 w550, Взятие мазка
Return



;--------------------------------------------------------------------------------


Medicine7:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w330,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Вена_1


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [Взятие крови из вены]

Gui, 3:show, center h60 w330, Взятие крови из вены
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


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ91,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ91,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ92,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ92,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ93,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ93,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png

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

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ29,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ29,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png

Gui, 3:Add, Picture, x330 y70 w48 h48 +BackgroundTrans gSelectKPRPMZ30,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y70 w48 h48 +BackgroundTrans gNotebookKPRPMZ30,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png

Gui, 3:show, center h120 w480, Внутриматочная спираль
Return


;--------------------------------------------------------------------------------

Medicine10:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w300,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /ФГДС_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /ФГДС_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [Гастроскопия]
Gui, 3:Add, Text, x100 y35 h500 w370 +BackgroundTrans, [Гастроскопия]
Gui, 3:show, center h80 w300, Гастроскопия
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

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ82,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ82,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ83,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ83,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png

Gui, 3:show, center h120 w540, Гистероскопия
Return


;--------------------------------------------------------------------------------


Medicine12:
Gui, 3:Destroy,
Gui, 3:show, center h200 w400,
Gui, 3:Font, S11 cRed Bold,

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Донор


Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans,  [Донорство]
Return


;--------------------------------------------------------------------------------

Medicine13:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w450,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /АВД_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /АВД_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /АВД_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans, /АВД_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x90 y15 h500 w370 +BackgroundTrans, [Дефибриллятор Снять одежду ЦГБ/AСМП]
Gui, 3:Add, Text, x90 y35 h500 w370 +BackgroundTrans, [Дефибриллятор Проверка пульса ЦГБ/AСМП]
Gui, 3:Add, Text, x90 y55 h500 w370 +BackgroundTrans, [Дефибриллятор Пульса нет ЦГБ/AСМП]
Gui, 3:Add, Text, x90 y75 h500 w370 +BackgroundTrans, [Дефибриллятор Когда появится, или был ЦГБ/AСМП]

Gui, 3:show, center h120 w450, Дефибриллятор
Return

;--------------------------------------------------------------------------------

Medicine14:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w300,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Змея_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Змея_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [Действия при укусе змеи]
Gui, 3:Add, Text, x100 y35 h500 w370 +BackgroundTrans, [Действия при укусе змеи]

Gui, 3:show, center h80 w300, Действия при укусе змеи
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


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ73,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ73,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ74,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ74,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ75,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ75,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ76,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ76,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png



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


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ57,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ57,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ58,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ58,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ59,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ59,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ60,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ60,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png


Gui, 3:show, center h220 w540, Измерить температуру
Return

;--------------------------------------------------------------------------------

Medicine17:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w300,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Капельница

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Капельница]
Gui, 3:show, center h60 w300, Капельница
Return


;--------------------------------------------------------------------------------


Medicine18:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w300,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /ФКС_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /ФКС_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /ФКС_3

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [Колоноскопия ]
Gui, 3:Add, Text, x100 y35 h500 w370 +BackgroundTrans, [Колоноскопия ответ да]
Gui, 3:Add, Text, x100 y55 h500 w370 +BackgroundTrans, [Колоноскопия ответ нет]
Gui, 3:show, center h100 w300, Колоноскопия
Return


;--------------------------------------------------------------------------------

Medicine19:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w300,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Клизма_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Клизма_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Клизма]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Клизма]
Gui, 3:show, center h80 w300, Клизма
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


Gui, 3:Add, Picture, x390 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ123,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ123,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ124,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ124,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ125,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ125,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ126,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ126,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ127,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ127,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png


Gui, 3:show, center h280 w540, МРТ
Return


;--------------------------------------------------------------------------------


Medicine23:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w300,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Нож

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [Ножевое ранение]
Gui, 3:show, center h60 w300, Ножевое ранение
Return


;--------------------------------------------------------------------------------



Medicine24:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Нос

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [Носовое кровотечени]
Gui, 3:show, center h60 w350, Носовое кровотечени
Return


;--------------------------------------------------------------------------------


Medicine25:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w200,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Ожоги


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x90 y15 h500 w370 +BackgroundTrans, [Ожоги]
Gui, 3:show, center h60 w200, Ожоги
Return


;--------------------------------------------------------------------------------



Medicine26:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Желудок


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y15 h500 w370 +BackgroundTrans, [Отравление желудка]

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ32,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ32,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png

Gui, 3:show, center h60 w350, Отравление желудка
Return



;--------------------------------------------------------------------------------



Medicine27:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Открытый

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Открытый перелом]
Gui, 3:show, center h60 w400, Открытый перелом
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


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ48,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ48,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ49,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ49,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ50,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ50,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ51,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ51,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png


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


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ69,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ69,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ70,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ70,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ71,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ71,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ72,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ72,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png


Gui, 3:show, center h220 w540, Проверка на глисты
Return

;--------------------------------------------------------------------------------

Medicine30:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w520,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Алкоголь_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Алкоголь_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Алкоголь_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans, /Алкоголь_4
Gui, 3:Add, Text, x10 y95 h20 w120 +BackgroundTrans, /Алкоголь_5
Gui, 3:Add, Text, x10 y115 h20 w120 +BackgroundTrans, /Алкоголь_6
Gui, 3:Add, Text, x10 y135 h20 w120 +BackgroundTrans, /Алкоголь_7


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x130 y15 h500 w370 +BackgroundTrans, [НАЧАЛО СОСТАВЛЕНИЯ АКТА]
Gui, 3:Add, Text, x130 y35 h500 w370 +BackgroundTrans, [СОСТАВЛЕНИЕ АКТА]
Gui, 3:Add, Text, x130 y55 h500 w370 +BackgroundTrans, [АЛКОТЕСТЕР]
Gui, 3:Add, Text, x130 y75 h500 w370 +BackgroundTrans, [ВЗЯТИЕ КРОВИ]
Gui, 3:Add, Text, x130 y95 h500 w490 +BackgroundTrans, [ЗАКЛЮЧЕНИЕ превышена норма в 0,3 промилле]
Gui, 3:Add, Text, x130 y115 h500 w490 +BackgroundTrans, [ЗАКЛЮЧЕНИЕ не превышена норма в 0,3 промилле]
Gui, 3:Add, Text, x130 y135 h500 w370 +BackgroundTrans, [Проверка на Алкоголь Акт отказа]

Gui, 3:show, center h180 w600, Проверка на Алкоголь
Return

;--------------------------------------------------------------------------------

Medicine31:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w450,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Наркотики_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Наркотики_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Наркотики_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans, /Наркотики_4
Gui, 3:Add, Text, x10 y95 h20 w120 +BackgroundTrans, /Наркотики_5
Gui, 3:Add, Text, x10 y115 h20 w120 +BackgroundTrans, /Наркотики_6
Gui, 3:Add, Text, x10 y135 h20 w120 +BackgroundTrans, /Наркотики_7


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x130 y15 h500 w370 +BackgroundTrans, [НАЧАЛО СОСТАВЛЕНИЯ АКТА]
Gui, 3:Add, Text, x130 y35 h500 w370 +BackgroundTrans, [СОСТАВЛЕНИЕ АКТА]
Gui, 3:Add, Text, x130 y55 h500 w370 +BackgroundTrans, [ПРОВЕДЕНИЕ ПРОЦЕДУРЫ]
Gui, 3:Add, Text, x130 y75 h500 w370 +BackgroundTrans, [ПРОВЕДЕНИЕ ПРОЦЕДУРЫ]
Gui, 3:Add, Text, x130 y95 h500 w490 +BackgroundTrans, [ЗАКЛЮЧЕНИЕ в моче не были найдены следы наркотиков]
Gui, 3:Add, Text, x130 y115 h500 w490 +BackgroundTrans, [ЗАКЛЮЧЕНИЕ в моче были обнаружены наркотики]
Gui, 3:Add, Text, x130 y135 h500 w370 +BackgroundTrans, [Проверка на Наркотики Акт отказа]

Gui, 3:show, center h180 w600, Проверка на Наркотики
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


Gui, 3:Add, Picture, x730 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ84, C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x800 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ84,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x730 y70 w48 h48 +BackgroundTrans gSelectKPRPMZ85,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x800 y70 w48 h48 +BackgroundTrans gNotebookKPRPMZ85,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x730 y130 w48 h48 +BackgroundTrans gSelectKPRPMZ86,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x800 y130 w48 h48 +BackgroundTrans gNotebookKPRPMZ86,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x730 y190 w48 h48 +BackgroundTrans gSelectKPRPMZ87,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x800 y190 w48 h48 +BackgroundTrans gNotebookKPRPMZ87,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x730 y250 w48 h48 +BackgroundTrans gSelectKPRPMZ88,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x800 y250 w48 h48 +BackgroundTrans gNotebookKPRPMZ88,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x730 y310 w48 h48 +BackgroundTrans gSelectKPRPMZ89,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x800 y310 w48 h48 +BackgroundTrans gNotebookKPRPMZ89,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x730 y370 w48 h48 +BackgroundTrans gSelectKPRPMZ90,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x800 y370 w48 h48 +BackgroundTrans gNotebookKPRPMZ90,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png


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


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ91,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ91,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ92,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ92,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ93,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ93,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png

Gui, 3:show, center h180 w550, Проверка на сколиоз
Return




;--------------------------------------------------------------------------------

Medicine35:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Роды_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Роды_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [Принятие Родов]
Gui, 3:Add, Text, x100 y35 h500 w370 +BackgroundTrans, [Принятие Родов]
Gui, 3:show, center h80 w280,
Return


;--------------------------------------------------------------------------------

Medicine36:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Позвоночник

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Перелом позвоночника]
Gui, 3:show, center h60 w400, Перелом позвоночника
Return

;--------------------------------------------------------------------------------

Medicine37:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Ребро_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Ребро_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Ребро_3

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y15 h500 w370 +BackgroundTrans, [Перелом рёбер]
Gui, 3:Add, Text, x125 y35 h500 w370 +BackgroundTrans, [Перелом рёбер ответ да]
Gui, 3:Add, Text, x125 y55 h500 w370 +BackgroundTrans, [Перелом рёбер ответ нет]
Gui, 3:show, center h100 w400, Перелом рёбер
Return

;--------------------------------------------------------------------------------


Medicine38:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y25 h200 w120 +BackgroundTrans, /Пуля

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y25 h500 w370 +BackgroundTrans, [Пулевое ранение]


Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ32,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ32,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png



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

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x135 y15 h500 w370 +BackgroundTrans, [Рентген конечности]
Gui, 3:Add, Text, x135 y35 h500 w370 +BackgroundTrans, [Рентген конечности лангетка]
Gui, 3:Add, Text, x135 y55 h500 w370 +BackgroundTrans, [Рентген конечности гипс]
Gui, 3:Add, Text, x135 y75 h500 w370 +BackgroundTrans, [Рентген конечности мазь]
Gui, 3:show, center h120 w400, Рентген конечности
Return


;--------------------------------------------------------------------------------


Medicine40:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w380,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Стерилизация

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Стерилизация женщины]
Gui, 3:show, center h60 w380, Стерилизация женщины
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


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ65,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ65,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ66,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ66,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ67,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ67,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ68,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ68,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png


Gui, 3:show, center h220 w540, Томография
Return


;--------------------------------------------------------------------------------

Medicine42:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w380,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Аппендикс

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Удаление аппендицита]
Gui, 3:show, center h60 w380, Удаление аппендицита
Return

;--------------------------------------------------------------------------------

Medicine43:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w200,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /УЗИ

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [УЗИ]
Gui, 3:show, center h60 w200, УЗИ
Return

;--------------------------------------------------------------------------------

Medicine44:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w300,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Грудь

Gui, 3:Font, S11 C%Tsvet_1% Bold, Consolas
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [Увеличение груди]
Gui, 3:show, center h60 w300, Увеличение груди
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


Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ52, C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ52,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y70 w48 h48 +BackgroundTrans gSelectKPRPMZ53,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y70 w48 h48 +BackgroundTrans gNotebookKPRPMZ53,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y130 w48 h48 +BackgroundTrans gSelectKPRPMZ54,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y130 w48 h48 +BackgroundTrans gNotebookKPRPMZ54,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y190 w48 h48 +BackgroundTrans gSelectKPRPMZ55,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y190 w48 h48 +BackgroundTrans gNotebookKPRPMZ55,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y250 w48 h48 +BackgroundTrans gSelectKPRPMZ56,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y250 w48 h48 +BackgroundTrans gNotebookKPRPMZ56,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png



Gui, 3:show, center h300 w500, Флюрография
Return

;--------------------------------------------------------------------------------

Medicine47:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Плод_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Плод_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Плод_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans, /Плод_4
Gui, 3:Add, Text, x10 y95 h20 w120 +BackgroundTrans, /Плод_5


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Фетоскопия]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Фетоскопия]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Фетоскопия]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Фетоскопия ответ да]
Gui, 3:Add, Text, x145 y95 h500 w370 +BackgroundTrans, [Фетоскопия ответ нет]
Gui, 3:show, center h140 w400, Фетоскопия
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


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ34,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ34,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ35,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ35,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ35,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ35,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ35,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ35,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png

Gui, 3:show, center h230 w550,Цистоскопия
Return

;--------------------------------------------------------------------------------

Medicine49:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w530,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /ЭЭГ_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /ЭЭГ_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /ЭЭГ_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x90 y15 h700 w570 +BackgroundTrans, [Электро-энцефалограмма Головного мозга]
Gui, 3:Add, Text, x90 y35 h700 w570 +BackgroundTrans, [Электро-энцефалограмма Головного мозга ответ да]
Gui, 3:Add, Text, x90 y55 h700 w570 +BackgroundTrans, [Электро-энцефалограмма Головного мозга ответ нет]
Gui, 3:show, center h100 w530, Электро-энцефалограмма Головного мозга
Return

;--------------------------------------------------------------------------------

Medicine50:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Вывих

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y15 h500 w370 +BackgroundTrans, [Действия при вывихе]
Gui, 3:show, center h60 w400, Действия при вывихе
Return

;--------------------------------------------------------------------------------

Medicine51:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w470,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Кардиостимулятор

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x165 y15 h500 w370 +BackgroundTrans, [Имплантация кардиостимулятора]
Gui, 3:show, center h60 w470,
Return


;--------------------------------------------------------------------------------

Medicine52:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Бешенство

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Вакцинация от бешенства]
Gui, 3:show, center h60 w400, Вакцинация от бешенства
Return


Medicine53:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w300,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Родинка

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [Удаление родинки]
Gui, 3:show, center h60 w300, Удаление родинки
Return

;--------------------------------------------------------------------------------

Medicine54:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w500,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /ОПТГ_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /ОПТГ_2
Gui, 3:Add, Text, x10 y55 h200 w120 +BackgroundTrans, /ОПТГ_3
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /ОПТГ_4
Gui, 3:Add, Text, x10 y95 h200 w120 +BackgroundTrans, /ОПТГ_5

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [Панорамный снимок, он же Рентген всех зубов]
Gui, 3:Add, Text, x100 y35 h500 w370 +BackgroundTrans, [Если нет]
Gui, 3:Add, Text, x100 y55 h500 w370 +BackgroundTrans, [Продолжение]
Gui, 3:Add, Text, x100 y75 h500 w370 +BackgroundTrans, [Продолжение]
Gui, 3:Add, Text, x100 y95 h500 w370 +BackgroundTrans, [Окончание]
Gui, 3:show, center h140 w500, Панорамный снимок, он же Рентген всех зубов
Return

;--------------------------------------------------------------------------------

Medicine55:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Мудрости_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Мудрости_2
Gui, 3:Add, Text, x10 y55 h200 w120 +BackgroundTrans, /Мудрости_3
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /Мудрости_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Удаление зуба мудрости]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Продолжение]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Продолжение]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Если нет]
Gui, 3:show, center h120 w400, Удаление зуба мудрости
Return

;--------------------------------------------------------------------------------

Medicine56:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Кариес_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Кариес_2
Gui, 3:Add, Text, x10 y55 h200 w120 +BackgroundTrans, /Кариес_3

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y15 h500 w370 +BackgroundTrans, [Удаление коренного зуба]
Gui, 3:Add, Text, x125 y35 h500 w370 +BackgroundTrans, [Продолжение]
Gui, 3:Add, Text, x125 y55 h500 w370 +BackgroundTrans, [Если нет]
Gui, 3:show, center h100 w400, Удаление коренного зуба
Return

;--------------------------------------------------------------------------------

Medicine57:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Молочный_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Молочный_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Удаление молочного зуба]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Продолжение]
Gui, 3:show, center h80 w400, Удаление молочного зуба]
Return

;--------------------------------------------------------------------------------

Medicine58:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w450,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Реминерализирующая

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x195 y15 h500 w370 +BackgroundTrans, [Реминерализирующая терапия]
Gui, 3:show, center h60 w450,  Реминерализирующая
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


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ119,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ119,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ120,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ120,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ121,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ121,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ122,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ122,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png


Gui, 3:show, center h220 w550, Проверка шумов в лёгких
Return


;--------------------------------------------------------------------------------

Medicine60:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w420,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Сердце_4
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Сердце_5

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Проверка шумов в сердце]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Проверка шумов в сердце]

Gui, 3:show, center h80 w420,
Return

;--------------------------------------------------------------------------------

Medicine61:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w420,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Давление_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Давление_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x165 y15 h500 w370 +BackgroundTrans, [Проверка давления]
Gui, 3:Add, Text, x165 y35 h500 w370 +BackgroundTrans, [Проверка давления]

Gui, 3:show, center h80 w420, Проверка давления
Return

;--------------------------------------------------------------------------------

Medicine62:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%


Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Рост_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Рост_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [Взвешивание, измерение роста]
Gui, 3:Add, Text, x100 y35 h500 w370 +BackgroundTrans, [Взвешивание, измерение роста]

Gui, 3:show, center h80 w400, Взвешивание, измерение роста
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
Gui, 3:Add, Picture, x0 y0 h120 w650,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w165 +BackgroundTrans, /Визиографическое_1
Gui, 3:Add, Text, x10 y35 h200 w165 +BackgroundTrans, /Визиографическое_2
Gui, 3:Add, Text, x10 y55 h200 w165 +BackgroundTrans, /Визиографическое_3
Gui, 3:Add, Text, x10 y75 h200 w165 +BackgroundTrans, /Визиографическое_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x200 y15 h700 w570 +BackgroundTrans, [Визиографическое исследование зуба (Рентген зуба)]
Gui, 3:Add, Text, x200 y35 h700 w570 +BackgroundTrans, [Визиографическое исследование зуба (Рентген зуба)]
Gui, 3:Add, Text, x200 y55 h700 w570 +BackgroundTrans, [Визиографическое исследование зуба (Рентген зуба)]
Gui, 3:Add, Text, x200 y75 h700 w570 +BackgroundTrans, [Визиографическое исследование зуба (Рентген зуба)]
Gui, 3:show, center h120 w650, Рентген зуба
Return

;--------------------------------------------------------------------------------

Medicine65:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Отбеливание_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Отбеливание_2
Gui, 3:Add, Text, x10 y55 h200 w120 +BackgroundTrans, /Отбеливание_3

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x165 y15 h500 w370 +BackgroundTrans, [Отбеливание зубов]
Gui, 3:Add, Text, x165 y35 h500 w370 +BackgroundTrans, [Отбеливание зубов]
Gui, 3:Add, Text, x165 y55 h500 w370 +BackgroundTrans, [Отбеливание зубов]
Gui, 3:show, center h100 w400, Отбеливание зубов
Return


;--------------------------------------------------------------------------------

Medicine66:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w320,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Ранение

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x115 y15 h500 w370 +BackgroundTrans, [Ранение операция]
Gui, 3:show, center h60 w320, Ранение операция
Return


;--------------------------------------------------------------------------------

Medicine67:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w370,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Рассечение_г

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Рассечение головы]
Gui, 3:show, center h60 w370, Рассечение головы
Return

;--------------------------------------------------------------------------------

Medicine68:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Растяжение_1

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Растяжение]
Gui, 3:show, center h60 w350, Растяжение
Return

;--------------------------------------------------------------------------------

Medicine69:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w450,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Коронавирус_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Коронавирус_2
Gui, 3:Add, Text, x10 y55 h200 w120 +BackgroundTrans, /Коронавирус_3

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x165 y15 h500 w370 +BackgroundTrans, [Тест на Коронавирус]
Gui, 3:Add, Text, x165 y35 h500 w370 +BackgroundTrans, [Тест на Коронавирус ответ да]
Gui, 3:Add, Text, x165 y55 h500 w370 +BackgroundTrans, [Тест на Коронавирус ответ нет]

Gui, 3:show, center h120 w450, Тест на Коронавирус
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

Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ61,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ61,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ62,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ62,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ63,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ63,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ64,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ64,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png


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
Gui, 3:Add, Picture, x0 y0 h120 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /ОФЭКТ_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /ОФЭКТ_2
Gui, 3:Add, Text, x10 y55 h200 w120 +BackgroundTrans, /ОФЭКТ_3
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /ОФЭКТ_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [ОФЭКТ]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [ОФЭКТ]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [ОФЭКТ ответ да]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [ОФЭКТ ответ нет]
Gui, 3:show, center h120 w350, ОФЭКТ
Return

;--------------------------------------------------------------------------------

Medicine73:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Химиотерапия

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x165 y15 h500 w370 +BackgroundTrans, [Химиотерапия]
Gui, 3:show, center h60 w350, Химиотерапия
Return

;--------------------------------------------------------------------------------

Medicine74:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Спутник

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y15 h500 w370 +BackgroundTrans, [Вакцинация от коронавируса]
Gui, 3:show, center h60 w400, Вакцинация от коронавируса
Return


;--------------------------------------------------------------------------------

Medicine75:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /ЗЧМТ

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x90 y15 h500 w370 +BackgroundTrans, [Закрытая Черепно-мозговая травма]
Gui, 3:show, center h60 w400, Закрытая Черепно-мозговая травма
Return

;--------------------------------------------------------------------------------

Medicine76:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Пересадка_1

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Пересадка органов]
Gui, 3:show, center h60 w350, Пересадка органов
Return


;--------------------------------------------------------------------------------

Medicine77:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w515,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Нос_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Нос_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x115 y15 h500 w370 +BackgroundTrans, [Если перелом со смещением]
Gui, 3:Add, Text, x115 y35 h500 w370 +BackgroundTrans, [Если перелом без смещения или уже вправили]
Gui, 3:show, center h80 w515, Нос перелом
Return

;--------------------------------------------------------------------------------

Medicine78:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h220 w140 +BackgroundTrans, /Перевязывание

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x165 y15 h500 w370 +BackgroundTrans, [Перевязывание раны]
Gui, 3:show, center h60 w400, Перевязывание раны
Return


;--------------------------------------------------------------------------------

Medicine79:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w280,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Клятва

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [Клятва Гиппократа]

Gui, 3:show, center h60 w280, Клятва Гиппократа
Return


;--------------------------------------------------------------------------------


Medicine80:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w300,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Нога_3

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [Подвернул ногу]
Gui, 3:show, center h60 w300, Подвернул ногу
Return

;--------------------------------------------------------------------------------

Medicine81:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h300 w500,

Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /МК_1 (111 удо)
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /МК_2
Gui, 3:Add, Text, x10 y55 h400 w420 +BackgroundTrans, /МК_3 
Gui, 3:Add, Text, x10 y75 h500 w370 +BackgroundTrans, /МК_4
Gui, 3:Add, Text, x10 y95 h500 w370 +BackgroundTrans, /МК_5
Gui, 3:Add, Text, x10 y115 h500 w370 +BackgroundTrans, /МК_6
Gui, 3:Add, Text, x10 y135 h500 w370 +BackgroundTrans, /МК_7
Gui, 3:Add, Text, x10 y155 h500 w370 +BackgroundTrans, /МК_8
Gui, 3:Add, Text, x10 y175 h500 w370 +BackgroundTrans, /МК_9
Gui, 3:Add, Text, x10 y195  h500 w370 +BackgroundTrans, /МК_10
Gui, 3:Add, Text, x10 y215  h500 w370 +BackgroundTrans, /МК_11
Gui, 3:Add, Text, x10 y235  h500 w370 +BackgroundTrans, /МК_12


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x170 y15 h500 w370 +BackgroundTrans, [Попросить паспорт]
Gui, 3:Add, Text, x170 y35 h500 w370 +BackgroundTrans, [Изучение паспорта]
Gui, 3:Add, Text, x170 y55 h500 w370 +BackgroundTrans, [Назовите ваш вес]
Gui, 3:Add, Text, x170 y75 h500 w370 +BackgroundTrans, [Назовите ваш рост]
Gui, 3:Add, Text, x170 y95 h500 w370 +BackgroundTrans, [Дайте руку]
Gui, 3:Add, Text, x170 y115 h500 w370 +BackgroundTrans, [Давление в норме?]
Gui, 3:Add, Text, x170 y135 h500 w370 +BackgroundTrans, [Давление понижено?]
Gui, 3:Add, Text, x170 y155 h500 w370 +BackgroundTrans, [Психическая проверка]
Gui, 3:Add, Text, x170 y175 h500 w770 +BackgroundTrans,  [Термины]
Gui, 3:Add, Text, x170 y195  h500 w370 +BackgroundTrans, [Психическая проверка]
Gui, 3:Add, Text, x170 y215  h500 w370 +BackgroundTrans, [Выдать медкарту] 
Gui, 3:Add, Text, x170 y235  h500 w370 +BackgroundTrans, [Отказ 3/3] 


Gui, 3:show, center h285 w620, Медкарта
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

Gui, 3:Add, Picture, x330 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ39, C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ39,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y70 w48 h48 +BackgroundTrans gSelectKPRPMZ40,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y70 w48 h48 +BackgroundTrans gNotebookKPRPMZ40,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y130 w48 h48 +BackgroundTrans gSelectKPRPMZ41,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y130 w48 h48 +BackgroundTrans gNotebookKPRPMZ41,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y190 w48 h48 +BackgroundTrans gSelectKPRPMZ42,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y190 w48 h48 +BackgroundTrans gNotebookKPRPMZ42,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y250 w48 h48 +BackgroundTrans gSelectKPRPMZ43,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y250 w48 h48 +BackgroundTrans gNotebookKPRPMZ43,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y310 w48 h48 +BackgroundTrans gSelectKPRPMZ44,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y310 w48 h48 +BackgroundTrans gNotebookKPRPMZ44,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y370 w48 h48 +BackgroundTrans gSelectKPRPMZ45,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y370 w48 h48 +BackgroundTrans gNotebookKPRPMZ45,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y430 w48 h48 +BackgroundTrans gSelectKPRPMZ46,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y430 w48 h48 +BackgroundTrans gNotebookKPRPMZ46,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x330 y490 w48 h48 +BackgroundTrans gSelectKPRPMZ47,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x400 y490 w48 h48 +BackgroundTrans gNotebookKPRPMZ47,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png


Gui, 3:show, center h540 w500, Проверка Зрения
Return

;--------------------------------------------------------------------------------

Medicine82:
Return

;--------------------------------------------------------------------------------

Medicine83:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w450,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Годность_1

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Проверка срока годности препаратов]

Gui, 3:show, center h60 w450, Проверка срока годности препаратов
Return

;--------------------------------------------------------------------------------

Medicine84:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w480,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Хранение_1

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Проверка условий хранения препаратов]

Gui, 3:show, center h60 w480, Проверка условий хранения препаратов
Return

;--------------------------------------------------------------------------------

Medicine85:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Пульсоксиметр_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Пульсоксиметр_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x175 y15 h500 w370 +BackgroundTrans, [Пульсоксиметр]
Gui, 3:Add, Text, x175 y35 h500 w370 +BackgroundTrans, [Пульсоксиметр]

Gui, 3:show, center h80 w370, Пульсоксиметр

Return


;--------------------------------------------------------------------------------

Medicine86:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w450,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Белье_1

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Замена белья]

Gui, 3:show, center h60 w300, Замена белья
Return

;--------------------------------------------------------------------------------

Medicine87:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w570,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Документация_1

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x165 y15 h500 w470 +BackgroundTrans, [Проверка наличия необходимой документации]

Gui, 3:show, center h60 w570, Проверка наличия необходимой документации
Return


;--------------------------------------------------------------------------------

Medicine88:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w570,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Наркоман_1

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w470 +BackgroundTrans, [Вакцинация от наркозависимости]

Gui, 3:show, center h60 w430, Вакцинация от наркозависимости
Return


;--------------------------------------------------------------------------------



Medicine93:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w300,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Ингалятор

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w400 +BackgroundTrans, [Ингалятор]

Gui, 3:show, center h60 w280, Ингалятор
Return

;--------------------------------------------------------------------------------

Medicine94:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w320,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Миостимулятор_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Миостимулятор_2
Gui, 3:Add, Text, x10 y55 h200 w320 +BackgroundTrans, /Миостимулятор_3

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x165 y15 h500 w370 +BackgroundTrans, [Миостимулятор]
Gui, 3:Add, Text, x165 y35 h500 w370 +BackgroundTrans, [Миостимулятор]
Gui, 3:Add, Text, x165 y55 h500 w370 +BackgroundTrans, [Миостимулятор]

Gui, 3:show, center h100 w320, Миостимулятор
Return

;--------------------------------------------------------------------------------

Medicine95:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /ЭндоУЗИ_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /ЭндоУЗИ_2


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x165 y15 h500 w370 +BackgroundTrans, [Эндосонография]
Gui, 3:Add, Text, x165 y35 h500 w370 +BackgroundTrans, [Эндосонография]

Gui, 3:show, center h80 w350, Эндосонография
Return

;--------------------------------------------------------------------------------

Medicine96:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w380,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Тату_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Тату_2
Gui, 3:Add, Text, x10 y55 h200 w320 +BackgroundTrans, /Тату_3

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Лазерное удаление тату]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Лазерное удаление тату]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Лазерное удаление тату]

Gui, 3:show, center h100 w380, Лазерное удаление тату
Return


;--------------------------------------------------------------------------------

Medicine97:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w380,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Ангина_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Ангина_2
Gui, 3:Add, Text, x10 y55 h200 w320 +BackgroundTrans, /Ангина_3
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /Ангина_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Тест на ангину]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Тест на ангину]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Тест на ангину ответ да]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Тест на ангину ответ нет]

Gui, 3:show, center h120 w380, Тест на ангину
Return

;--------------------------------------------------------------------------------

Medicine98:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Гвоздь_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Гвоздь_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Извлечение гвоздя]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Извлечение гвоздя]

Gui, 3:show, center h80 w350, Извлечение гвоздя
Return

;--------------------------------------------------------------------------------

Medicine99:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Мозоль_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Мозоль_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Костная мозоль]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Костная мозоль]

Gui, 3:show, center h80 w350, Костная мозоль
Return


;--------------------------------------------------------------------------------

Medicine100:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Бородавка_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Бородавка_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Бородавка удаление]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Бородавка удаление]

Gui, 3:show, center h80 w350, Бородавка удаление
Return

;--------------------------------------------------------------------------------

Medicine101:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Соринка_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Соринка_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Соринка удаление]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Соринка удаление]

Gui, 3:show, center h80 w350, Соринка удаление
Return


;--------------------------------------------------------------------------------

Medicine102:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Заноза_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Заноза_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Заноза извлечение]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Заноза извлечение]

Gui, 3:show, center h80 w350, Заноза извлечение
Return


;--------------------------------------------------------------------------------

Medicine103:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Пчела_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Пчела_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Укус пчелы]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Укус пчелы]

Gui, 3:show, center h80 w350, Укус пчелы
Return


;--------------------------------------------------------------------------------

Medicine104:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w380,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Донор_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Донор_2
Gui, 3:Add, Text, x10 y55 h200 w320 +BackgroundTrans, /Донор_3
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /Донор_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Донор крови]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Донор крови]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Донор крови]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Донор крови]

Gui, 3:show, center h120 w380, Донор крови
Return


;--------------------------------------------------------------------------------

Medicine105:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /М>Ж
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Ж>М

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x85 y15 h500 w370 +BackgroundTrans, [С Мужского пола на женский пол]
Gui, 3:Add, Text, x85 y35 h500 w370 +BackgroundTrans, [С Женского пола на мужской пол]

Gui, 3:show, center h80 w350, Хирургическая коррекция пола
Return


;--------------------------------------------------------------------------------

Medicine107:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w380,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Масло_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Масло_2
Gui, 3:Add, Text, x10 y55 h200 w320 +BackgroundTrans, /Масло_3


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Проверка масла]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Масло в норме]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Долить]


Gui, 3:show, center h100 w380, Проверка масла
Return

;--------------------------------------------------------------------------------

Medicine108:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w380,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Кварц_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Кварц_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Кварцевание начать]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Кварцевание закончить]


Gui, 3:show, center h80 w380, Кварцевание
Return

;--------------------------------------------------------------------------------

Medicine109:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /ПХД_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /ПХД_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [ПХД начать]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [ПХД закончить]

Gui, 3:show, center h80 w350, ПХД
Return

;--------------------------------------------------------------------------------

Medicine110:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w390,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Мойка_ПАЗ

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Мойка ПАЗА]

Gui, 3:show, center h60 w350, Мойка ПАЗА
Return


;--------------------------------------------------------------------------------

Medicine111:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w380,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Вич_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Вич_2
Gui, 3:Add, Text, x10 y55 h200 w320 +BackgroundTrans, /Вич_3
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /Вич_4
Gui, 3:Add, Text, x10 y95 h200 w320 +BackgroundTrans, /Вич_5

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Тест на вич]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Тест на вич]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Тест на вич]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Если Да]
Gui, 3:Add, Text, x145 y95 h200 w320 +BackgroundTrans, [Если Нет]

Gui, 3:show, center h120 w380, Тест на вич
Return

;--------------------------------------------------------------------------------

Medicine112:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w380,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Туберкулёз_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Туберкулёз_2
Gui, 3:Add, Text, x10 y55 h200 w320 +BackgroundTrans, /Туберкулёз_3
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /Туберкулёз_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Тест на туберкулёз]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Тест на туберкулёз]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Если Да]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Если Нет]

Gui, 3:show, center h120 w380, Тест на туберкулёз
Return


;--------------------------------------------------------------------------------

Medicine113:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w380,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Дифтерия_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Дифтерия_2
Gui, 3:Add, Text, x10 y55 h200 w320 +BackgroundTrans, /Дифтерия_3
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /Дифтерия_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Тест на дифтерию]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Тест на дифтерию]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Если Да]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Если Нет]

Gui, 3:show, center h120 w380, Тест на бешенство
Return


;--------------------------------------------------------------------------------

Medicine114:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h120 w380,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Бешенство_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Бешенство_2
Gui, 3:Add, Text, x10 y55 h200 w320 +BackgroundTrans, /Бешенство_3
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /Бешенство_4

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Тест на бешенство]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Тест на бешенство]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Если Да]
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Если Нет]

Gui, 3:show, center h120 w380, Тест на бешенство
Return

;--------------------------------------------------------------------------------

Medicine115:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w390,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Гем

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x85 y15 h500 w370 +BackgroundTrans, [Выведение геморроя]

Gui, 3:show, center h60 w300, Выведение геморроя
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


Gui, 3:Add, Picture, x390 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ113,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ113,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ114,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ114,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ115,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ115,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ116,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ116,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ117,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ117,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y260 w48 h48 +BackgroundTrans gSelectKPRPMZ118,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y260 w48 h48 +BackgroundTrans gNotebookKPRPMZ118,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png


Gui, 3:show, center h320 w540, Компьютерная томография
Return


;--------------------------------------------------------------------------------

Medicine117:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Шейка_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Шейка_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Кольпоскопия]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Кольпоскопия]

Gui, 3:show, center h80 w350, Кольпоскопия
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


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ77,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ77,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ78,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ78,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ79,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ79,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ80,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ80,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ81,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ81,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png


Gui, 3:show, center h280 w540, Гинекологическое обследование
Return

;--------------------------------------------------------------------------------

Medicine119:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Глюкометр_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /Глюкометр_2
Gui, 3:Add, Text, x10 y55 h200 w320 +BackgroundTrans, /Глюкометр_3
Gui, 3:Add, Text, x10 y75 h200 w320 +BackgroundTrans, /Глюкометр_4
Gui, 3:Add, Text, x10 y95 h200 w320 +BackgroundTrans, /Глюкометр_5

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Глюкометр]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Глюкометр]
Gui, 3:Add, Text, x145 y55 h500 w370 +BackgroundTrans, [Глюкометр
Gui, 3:Add, Text, x145 y75 h500 w370 +BackgroundTrans, [Глюкометр норма]
Gui, 3:Add, Text, x145 y95 h200 w320 +BackgroundTrans, [Глюкометр не норма]

Gui, 3:show, center h140 w400, Глюкометр
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


Gui, 3:Add, Picture, x390 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ128,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ128,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ129,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ129,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ130,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ130,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ131,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ131,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x390 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ132,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x470 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ132,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png

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


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ101,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ101,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ102,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ102,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ103,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ103,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ104,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ104,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ105,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ105,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png


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


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ106,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ106,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ107,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ107,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y110 w48 h48 +BackgroundTrans gSelectKPRPMZ108,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y110 w48 h48 +BackgroundTrans gNotebookKPRPMZ108,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y160 w48 h48 +BackgroundTrans gSelectKPRPMZ109,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y160 w48 h48 +BackgroundTrans gNotebookKPRPMZ109,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y210 w48 h48 +BackgroundTrans gSelectKPRPMZ110,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y210 w48 h48 +BackgroundTrans gNotebookKPRPMZ110,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png


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


Gui, 3:Add, Picture, x380 y10 w48 h48 +BackgroundTrans gSelectKPRPMZ106,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y10 w48 h48 +BackgroundTrans gNotebookKPRPMZ106,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 3:Add, Picture, x380 y60 w48 h48 +BackgroundTrans gSelectKPRPMZ107,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 3:Add, Picture, x460 y60 w48 h48 +BackgroundTrans gNotebookKPRPMZ107,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png


Gui, 3:show, center h120 w540,  Лазерная липосакция
Return





;--------------------------------------------------------------------------------

Medicine124:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /УВТ_1
Gui, 3:Add, Text, x10 y35 h200 w320 +BackgroundTrans, /УВТ_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x105 y15 h500 w370 +BackgroundTrans, [Камень в почках малых размеров]
Gui, 3:Add, Text, x105 y35 h500 w370 +BackgroundTrans, [Камень в почках малых размеров]

Gui, 3:show, center h80 w400, Камень в почках малых размеров
Return

;--------------------------------------------------------------------------------

Medicine125:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Матка_у

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Через влагалищя]


Gui, 3:show, center h60 w350, Гистерэктомия
Return

;--------------------------------------------------------------------------------

Medicine126:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Легкое_У

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Удаление легкого]


Gui, 3:show, center h60 w350, Удаление легкого
Return


;--------------------------------------------------------------------------------

Medicine127:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w420,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Пло_Х

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [Хирургическое лечение плоскостопия]


Gui, 3:show, center h60 w420, Хирургическое лечение плоскостопия
Return


;--------------------------------------------------------------------------------

Medicine128:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Грудь_УУ

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Удаление груди]


Gui, 3:show, center h60 w350, Удаление груди
Return

;--------------------------------------------------------------------------------

Medicine129:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w320 +BackgroundTrans, /Грудь_УУ

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Уменьшение груди]


Gui, 3:show, center h60 w350, Уменьшение груди
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
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Напарник_15
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Пост_15
Gui, 3:Add, Text, x10 y55 h200 w120 +BackgroundTrans, /Вызов_15
Gui, 3:Add, Text, x10 y75 h500 w370 +BackgroundTrans, /Напарник_16

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x150  y15 w300 h20 +BackgroundTrans , [Смена напарника (/r)]
Gui, 3:Add, Text, x150  y35 w300 h20 +BackgroundTrans , [Смена поста]
Gui, 3:Add, Text, x150  y55 w300 h20 +BackgroundTrans , [Смена вызова]
Gui, 3:Add, Text, x150  y75 w300 h20 +BackgroundTrans , [Смена напарника(/ro)]

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
Gui, 3:Add, Picture, x0 y0 h70 w450,

Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w170 +BackgroundTrans, /Мойка_1

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x120 y15 h500 w370 +BackgroundTrans, [Стерилизация медицинских предметов]
Gui, 3:show, center h70 w450, Стерилизация медицинских предметов
Return


;--------------------------------------------------------------------------------




Laziness25:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h350 w550,



Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /ПР_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /ПР_2
Gui, 3:Add, Text, x10 y55 h200 w120 +BackgroundTrans, /ПР_3
Gui, 3:Add, Text, x10 y75 h200 w120 +BackgroundTrans, /ПР_4
Gui, 3:Add, Text, x10 y95 h200 w120 +BackgroundTrans, /ПР_5



Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x90 y15 h500 w370 +BackgroundTrans, [Передайте паспорт]
Gui, 3:Add, Text, x90 y35 h500 w370 +BackgroundTrans, [Изучение и взятие паспорта]
Gui, 3:Add, Text, x90 y55 h500 w370 +BackgroundTrans, [Попросить передать заключение]
Gui, 3:Add, Text, x90 y75 h500 w370 +BackgroundTrans, [Изучение и взятие заключения]
Gui, 3:Add, Text, x90 y95 h500 w370 +BackgroundTrans, [Выдать медкарту]

Gui, 3:show, center h140 w350, Призыв
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
Gui, 3:Add, Picture, x0 y0 h60 w350,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w170 +BackgroundTrans, /Рана_1


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x120 y15 h500 w370 +BackgroundTrans, [Остановить кровотечения]
Gui, 3:show, center h60 w350, Остановить кровотечения
Return


PMP2:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w520,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Венозное_1
Gui, 3:Add, Text, x10 y35 h200 w150 +BackgroundTrans, /Артериальное_1

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x175 y15 h500 w370 +BackgroundTrans, [ПМП при венозном кровотечении]
Gui, 3:Add, Text, x175 y35 h500 w370 +BackgroundTrans, [ПМП при артериальном кровотечении]
Gui, 3:show, center h80 w520, ПМП Кровотечение
Return

PMP3:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w520,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Мороз_1
Gui, 3:Add, Text, x10 y35 h200 w150 +BackgroundTrans, /Мороз_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [ПМП при обморожении в больнице]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [ПМП при обморожении в АСМП]
Gui, 3:show, center h80 w520, ПМП при обморожении
Return


PMP4:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w420,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Ожог_ПМП
Gui, 3:Add, Text, x10 y35 h200 w150 +BackgroundTrans, /Ожог_ПМП_1


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x155 y15 h500 w370 +BackgroundTrans, [ПМП при ожоге в больнице]
Gui, 3:Add, Text, x155 y35 h500 w370 +BackgroundTrans, [ПМП при ожоге в АСМП]
Gui, 3:show, center h80 w420, ПМП Ожог
Return

PMP5:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Пуля_ПМП

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [ПМП при пулевом ранение]
Gui, 3:show, center h60 w400, ПМП при пулевом ранение
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
Gui, 3:Add, Picture, x0 y0 h60 w460,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Челюсти_ПМП


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x165 y15 h500 w370 +BackgroundTrans, [ПМП при вывихе челюсти]
Gui, 3:show, center h60 w440, ПМП при вывихе челюсти
Return


PMP8:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h80 w460,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Нога_1
Gui, 3:Add, Text, x10 y35 h200 w150 +BackgroundTrans, /Нога_2

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [Если имеются раны]
Gui, 3:Add, Text, x145 y35 h500 w370 +BackgroundTrans, [Если ран нет, или уже обработаны]

Gui, 3:show, center h80 w440, Вывих ноги
Return


PMP9:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w440,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Сознания_ПМП

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x165 y15 h500 w370 +BackgroundTrans, [ПМП при потере сознания]

Gui, 3:show, center h60 w440, ПМП при потере сознания
Return

PMP10:
Gui, 3:Destroy,

Gui, 3:Add, Picture, x0 y0 h60 w460,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /ПМП_закрытый

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x165 y15 h500 w370 +BackgroundTrans, [ПМП при закрытом переломе]
Gui, 3:show, center h60 w460, ПМП при закрытом переломе
Return


PMP11:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w460,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%
Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /ПМП_открытый


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x165 y15 h500 w370 +BackgroundTrans, [ПМП при открытом переломе]
Gui, 3:show, center h60 w460, ПМП при открытом переломе
Return


PMP12:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h60 w400,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y15 h200 w120 +BackgroundTrans, /Нос_ПМП

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [ПМП при переломе носа]
Gui, 3:show, center h60 w400, ПМП при переломе носа
Return

PMP13:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h100 w310,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y15 h200 w250 +BackgroundTrans, /ПМП_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /ПМП_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /ПМП_3

Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x100 y15 h500 w370 +BackgroundTrans, [ПМП при сотрясении]
Gui, 3:Add, Text, x100 y35 h200 w120 +BackgroundTrans, [Если /do Да]
Gui, 3:Add, Text, x100 y55 h20 w120 +BackgroundTrans,  [Если /do Нет]
Gui, 3:show, center h100 w310, ПМП при сотрясении
Return


PMP14:
Gui, 3:Destroy,
Gui, 3:Add, Picture, x0 y0 h140 w590,
Gui, 3:Font, S11 C%Tsvet% Bold, %Shrift%

Gui, 3:Add, Text, x10 y15 h200 w250 +BackgroundTrans, /Инфаркт_1
Gui, 3:Add, Text, x10 y35 h200 w120 +BackgroundTrans, /Инфаркт_2
Gui, 3:Add, Text, x10 y55 h20 w120 +BackgroundTrans, /Инфаркт_3
Gui, 3:Add, Text, x10 y75 h20 w120 +BackgroundTrans, /Инфаркт_4
Gui, 3:Add, Text, x10 y95 h20 w120 +BackgroundTrans, /Инфаркт_5
Gui, 3:Add, Text, x10 y115 h20 w120 +BackgroundTrans,  /Инфаркт_6


Gui, 3:Font, S11 C%Tsvet_1% Bold, %Shrift%
Gui, 3:Add, Text, x125 y15 h500 w570 +BackgroundTrans,  [ПМП при инфаркте]
Gui, 3:Add, Text, x125 y35 h200 w570 +BackgroundTrans,  [Пациент ответил, что у него высокое или низкое давление]
Gui, 3:Add, Text, x125 y55 h20 w570 +BackgroundTrans,   [Пациент ответил, что у него нормальное давление]
Gui, 3:Add, Text, x125 y75 h20 w570 +BackgroundTrans,   [Продолжение процесса]
Gui, 3:Add, Text, x125 y95 h20 w570 +BackgroundTrans,   [Пациент отыграл, что у него нормальный пульс]
Gui, 3:Add, Text, x125 y115 h20 w570 +BackgroundTrans,  [Пациент отыграл, что у него не очень хороший пульс]


Gui, 3:show, center h140 w590, ПМП при инфаркте
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
Gui, 3:Add, Text, x145 y15 h500 w370 +BackgroundTrans, [ВыписатьНо-шпу]
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

SoundPlay,  C:\ProgramData\KPRP\KPRP-main\muzyka_14.mp3

Gui, 7:Destroy,
Gui, 7:Add, Picture, x0 y10 w475   h672 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\Vod_MZ.png
Gui, 7:Add, Picture, x470 y600 w64 h64   +BackgroundTrans gChange, C:\ProgramData\KPRP\KPRP-main\Ok_64.png

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

SoundPlay,   C:\ProgramData\KPRP\KPRP-main\muzyka_14.mp3

Gui, 4:Destroy,

IniRead, 11MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 11MZ7
IniRead, 21MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 21MZ7
IniRead, 31MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 31MZ7
IniRead, 41MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 41MZ7
IniRead, 51MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 51MZ7
IniRead, 61MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 61MZ7
IniRead, 71MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 71MZ7
IniRead, 81MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 81MZ7
IniRead, 91MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 91MZ7
IniRead, 101MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 101MZ7
IniRead, 111MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 111MZ7
IniRead, 121MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 121MZ7
IniRead, 131MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 131MZ7
IniRead, 141MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 141MZ7
IniRead, 151MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 151MZ7
IniRead, 161MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 161MZ7
IniRead, 171MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 171MZ7
IniRead, 181MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 181MZ7
IniRead, 191MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 191MZ7
IniRead, 201MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 201MZ7
IniRead, 211MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 211MZ7
IniRead, 221MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 221MZ7
IniRead, 231MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 231MZ7
IniRead, 241MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 241MZ7
IniRead, 251MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 251MZ7
IniRead, 261MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 261MZ7
IniRead, 271MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 271MZ7
IniRead, 281MZ7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_MZ.ini, Edit, 281MZ7


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
Gui, 4:Add, Edit, x170 y746 w180 vSvoyeМZ_25, %SvoyeМZ_25%

Gui, 4:Add, Edit, x660 y26 w180 vSvoyeМZ_13, %SvoyeМZ_13%
Gui, 4:Add, Edit, x660 y86 w180 vSvoyeМZ_14, %SvoyeМZ_14%
Gui, 4:Add, Edit, x660 y146 w180 vSvoyeМZ_15, %SvoyeМZ_15%
Gui, 4:Add, Edit, x660 y206 w180 vSvoyeМZ_16, %SvoyeМZ_16%
Gui, 4:Add, Edit, x660 y266 w180 vSvoyeМZ_17, %SvoyeМZ_17%
Gui, 4:Add, Edit, x660 y326 w180 vSvoyeМZ_18, %SvoyeМZ_18%
Gui, 4:Add, Edit, x660 y386 w180 vSvoyeМZ_19, %SvoyeМZ_19%
Gui, 4:Add, Edit, x660 y446 w180 vSvoyeМZ_20, %SvoyeМZ_20%
Gui, 4:Add, Edit, x660 y506 w180 vSvoyeМZ_21, %SvoyeМZ_21%
Gui, 4:Add, Edit, x660 y566 w180 vSvoyeМZ_22, %SvoyeМZ_22%
Gui, 4:Add, Edit, x660 y626 w180 vSvoyeМZ_23, %SvoyeМZ_23%
Gui, 4:Add, Edit, x660 y686 w180 vSvoyeМZ_24, %SvoyeМZ_24%
Gui, 4:Add, Edit, x660 y746 w70  Disabled, пауза


Gui, 4:Add, Picture, x370 y16 w48 h48 +BackgroundTrans gSelectKPRPMZ1,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y76 w48 h48 +BackgroundTrans gSelectKPRPMZ2,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y136 w48 h48 +BackgroundTrans gSelectKPRPMZ3,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y196 w48 h48 +BackgroundTrans gSelectKPRPMZ4 ,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y256 w48 h48 +BackgroundTrans gSelectKPRPMZ5,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y316 w48 h48 +BackgroundTrans gSelectKPRPMZ6,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y376 w48 h48 +BackgroundTrans gSelectKPRPMZ7,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y436 w48 h48 +BackgroundTrans gSelectKPRPMZ8,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y496 w48 h48 +BackgroundTrans gSelectKPRPMZ9,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y556 w48 h48 +BackgroundTrans gSelectKPRPMZ10,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y616 w48 h48 +BackgroundTrans gSelectKPRPMZ11,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y676 w48 h48 +BackgroundTrans gSelectKPRPMZ12,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x370 y736 w48 h48 +BackgroundTrans gSelectKPRPMZ25,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png

Gui, 4:Add, Picture, x860 y16 w48 h48 +BackgroundTrans gSelectKPRPMZ13,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y76 w48 h48 +BackgroundTrans gSelectKPRPMZ14,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y136 w48 h48 +BackgroundTrans gSelectKPRPMZ15,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y196 w48 h48 +BackgroundTrans gSelectKPRPMZ16,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y256 w48 h48 +BackgroundTrans gSelectKPRPMZ17,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y316 w48 h48 +BackgroundTrans gSelectKPRPMZ18,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y376 w48 h48 +BackgroundTrans gSelectKPRPMZ19,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y436 w48 h48 +BackgroundTrans gSelectKPRPMZ20,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y496 w48 h48 +BackgroundTrans gSelectKPRPMZ21,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y556 w48 h48 +BackgroundTrans gSelectKPRPMZ22,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y616 w48 h48 +BackgroundTrans gSelectKPRPMZ23,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 4:Add, Picture, x860 y676 w48 h48 +BackgroundTrans gSelectKPRPMZ24,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png

Gui, 4:Add, Picture, x440 y16 w48 h48 +BackgroundTrans gNotebookKPRPMZ1,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y76 w48 h48 +BackgroundTrans gNotebookKPRPMZ2,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y136 w48 h48 +BackgroundTrans gNotebookKPRPMZ3,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y196 w48 h48 +BackgroundTrans gNotebookKPRPMZ4 ,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y256 w48 h48 +BackgroundTrans gNotebookKPRPMZ5,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y316 w48 h48 +BackgroundTrans gNotebookKPRPMZ6,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y376 w48 h48 +BackgroundTrans gNotebookKPRPMZ7,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y436 w48 h48 +BackgroundTrans gNotebookKPRPMZ8,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y496 w48 h48 +BackgroundTrans gNotebookKPRPMZ9,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y556 w48 h48 +BackgroundTrans gNotebookKPRPMZ10,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y616 w48 h48 +BackgroundTrans gNotebookKPRPMZ11,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y676 w48 h48 +BackgroundTrans gNotebookKPRPMZ12,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x440 y736 w48 h48 +BackgroundTrans gNotebookKPRPMZ25,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png

Gui, 4:Add, Picture, x930 y16 w48 h48 +BackgroundTrans gNotebookKPRPMZ13,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y76 w48 h48 +BackgroundTrans gNotebookKPRPMZ14,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y136 w48 h48 +BackgroundTrans gNotebookKPRPMZ15,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y196 w48 h48 +BackgroundTrans gNotebookKPRPMZ16,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y256 w48 h48 +BackgroundTrans gNotebookKPRPMZ17,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y316 w48 h48 +BackgroundTrans gNotebookKPRPMZ18,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y376 w48 h48 +BackgroundTrans gNotebookKPRPMZ19,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y436 w48 h48 +BackgroundTrans gNotebookKPRPMZ20,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y496 w48 h48 +BackgroundTrans gNotebookKPRPMZ21,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y556 w48 h48 +BackgroundTrans gNotebookKPRPMZ22,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y616 w48 h48 +BackgroundTrans gNotebookKPRPMZ23,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 4:Add, Picture, x930 y676 w48 h48 +BackgroundTrans gNotebookKPRPMZ24,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png


Gui, 4:Add, Picture, x930 y725 w64 h64  +BackgroundTrans gChange,   C:\ProgramData\KPRP\KPRP-main\Ok_64.png
Gui, 4:Add, Picture, x850 y725 w64 h64  +BackgroundTrans gInfovariableMZ,   C:\ProgramData\KPRP\KPRP-main\InfovariableMZ.png
Gui, 4:Add, Picture, x770 y725 w64 h64  +BackgroundTrans gVoprosKPRPMZ,   C:\ProgramData\KPRP\KPRP-main\VoprosKPRPMZ.png


Gui, 4:Show, w1000 h790, Редактор раскладки сочетания клавиш
Return







VoprosKPRPMZ:
Gui, 17:Font, S11 C000000 Bold, Arial
Gui, 17:Add, Edit, x10 y10  w150  Disabled, Первое поле.
Gui, 17:Add, Edit, x180 y10  w230  Disabled, Комбинация клавиш.
Gui, 17:Add, Edit, x10 y40  w150  Disabled, Второе поле.
Gui, 17:Add, Edit, x180 y40  w230  Disabled, Описание действия.
Gui, 17:Add, Picture, x10 y80 w48 h48 +BackgroundTrans ,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 17:Add, Edit, x180 y80  w230  Disabled, Путь к файлу можно менять на свой.
Gui, 17:Add, Picture, x10 y140 w48 h48 +BackgroundTrans ,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 17:Add, Edit, x180 y140  w230  Disabled,  Просмотр текста в файле и его редактирование.
Gui, 17:Add, Picture, x10 y200 w48 h48 +BackgroundTrans ,C:\ProgramData\KPRP\KPRP-main\InfovariableMZ.png
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


; Метки для 1–100
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
    Gosub, Change
}
return


