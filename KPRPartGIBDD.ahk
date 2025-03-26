SoundPlay,   C:\ProgramData\KPRP\KPRP-main\muzyka_14.mp3

Gui, 12:show,  center h650 w1200 , AНК для государственной инспекции безопасности дорожного движения
if (FonVybor="ERROR" or FonVybor=""){
Gui, 12:Add, Picture, x0 y24 w1300 h650,
}
Gui, 12:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
Gui, 12:Font, S10   Bold, %Shrift%
Gui, 12:Add, Tab2,  x0 y0 w1280 h28 c%Tsvet% +BackgroundTrans, Общее

Gui, 12:Add, Picture, x10 y600 w48 w48   +BackgroundTrans  gSvoy, C:\ProgramData\KPRP\KPRP-main\Clear.png
Gui, 12:Add, Picture, x100 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\Editor.png
Gui, 12:Add, Picture, x200 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\Offers.png
Gui, 12:Add, Picture, x1040 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\Help.png
Gui, 12:Add, Picture, x1140 y600 w48 w48   +BackgroundTrans  gReload, C:\ProgramData\KPRP\KPRP-main\restart.png
