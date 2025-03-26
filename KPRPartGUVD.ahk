SoundPlay,   C:\ProgramData\KPRP\KPRP-main\muzyka_14.mp3

Gui, 13:show,  center h650 w1300 , AНК для главного управления внутренних дел
if (FonVybor="ERROR" or FonVybor=""){
Gui, 13:Add, Picture, x0 y24 w1300 h650,
}
Gui, 13:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
Gui, 13:Font, S10   Bold, %Shrift%
Gui, 13:Add, Tab2,  x0 y0 w1380 h28 c%Tsvet% +BackgroundTrans, Общее

Gui, 13:Add, Picture, x10 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\Clear.png
Gui, 13:Add, Picture, x100 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\Editor.png
Gui, 13:Add, Picture, x200 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\Offers.png
Gui, 13:Add, Picture, x1040 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\Help.png
Gui, 13:Add, Picture, x1140 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\restart.png
