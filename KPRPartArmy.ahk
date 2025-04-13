SoundPlay,   C:\ProgramData\KPRP\KPRP-main\muzyka_14.mp3

Gui, 9:show,  center h650 w1200 , AНК для министерства обороны 
if (FonVybor="ERROR" or FonVybor=""){
Gui, 9:Add, Picture, x0 y24 w1300 h650,
}
Gui, 9:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
Gui, 9:Font, S10   Bold, %Shrift%
Gui, 9:Add, Tab2,  x0 y0 w1290 h29 c%Tsvet% +BackgroundTrans, Общее

Gui, 9:Add, Picture, x10 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\Clear.png
Gui, 9:Add, Picture, x100 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\Editor.png
Gui, 9:Add, Picture, x200 y600 w48 w48   +BackgroundTrans  gOffers, C:\ProgramData\KPRP\KPRP-main\Offers.png
Gui, 9:Add, Picture, x940 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\Smena_fraktsii.png
Gui, 9:Add, Picture, x1040 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\Help.png
Gui, 9:Add, Picture, x1140 y600 w48 w48   +BackgroundTrans  gReload , C:\ProgramData\KPRP\KPRP-main\restart.png

Gui, 9:Add, Picture, x1000 y370 w150 h150 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\%Bol_ro_2%
Gui, 9:Add, Picture, x1000 y190 w150 h150 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\KPRP.png