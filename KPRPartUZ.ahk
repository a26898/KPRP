﻿SoundPlay,   C:\ProgramData\KPRP\KPRP-main\KPRPMP3\muzyka_14.mp3

Gui, 8:show,  center h650 w1200 , AНК для республиканских железных дорог 
if (FonVybor="ERROR" or FonVybor=""){
Gui, 8:Add, Picture, x0 y24 w1300 h650,
}
Gui, 8:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
Gui, 8:Font, S10   Bold, %Shrift%
Gui, 8:Add, Tab2,  x0 y0 w1280 h28 c%Tsvet% +BackgroundTrans, Общее

Gui, 8:Add, Picture, x10 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Clear.png
Gui, 8:Add, Picture, x100 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Editor.png
Gui, 8:Add, Picture, x200 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Offers.png
Gui, 8:Add, Picture, x940 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Smena_fraktsii.png
Gui, 8:Add, Picture, x1040 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\Help.png
Gui, 8:Add, Picture, x1140 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\restart.png

Gui, 8:Add, Picture, x1000 y370 w150 h150 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\%Bol_ro_2%
Gui, 8:Add, Picture, x1000 y190 w150 h150 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\KPRPPNG\KPRP.png