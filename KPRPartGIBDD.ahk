SoundPlay,   C:\ProgramData\KPRP\KPRP-main\muzyka_14.mp3

Gui, 12:show,  center h650 w1200 , AНК для государственной инспекции безопасности дорожного движения
if (FonVybor="ERROR" or FonVybor=""){
Gui, 12:Add, Picture, x0 y24 w1300 h650,
}
Gui, 12:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
Gui, 12:Font, S10   Bold, %Shrift%
Gui, 12:Add, Tab2,  x0 y0 w1280 h28 c%Tsvet% +BackgroundTrans, Общее

Gui, 12:Add, Button, x10 y40 w300 h40 , /КоАП_нужная статья Пример:/КоАП_19.4
Gui, 12:Add, Button, x10 y90 w300 h40 , /УК_нужная статья Пример:/УК_5.7

Gui, 12:Add, Picture, x20 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\Clear.png
Gui, 12:Add, Picture, x120 y600 w48 w48   +BackgroundTrans gInfoGIBDD,  C:\ProgramData\KPRP\KPRP-main\Police.png
Gui, 12:Add, Picture, x220 y600 w48 w48   +BackgroundTrans gEditGIBDD, C:\ProgramData\KPRP\KPRP-main\Raskladka.png
Gui, 12:Add, Picture, x320 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\Editor.png
Gui, 12:Add, Picture, x420 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\Offers.png
Gui, 12:Add, Picture, x520 y600 w48 w48   +BackgroundTrans gBugreport, C:\ProgramData\KPRP\KPRP-main\Bug_report.png
Gui, 12:Add, Picture, x620 y600 w48 w48   +BackgroundTrans gUluchsheniya, C:\ProgramData\KPRP\KPRP-main\Uluchsheniya.png
Gui, 12:Add, Picture, x720 y600 w48 w48   +BackgroundTrans gHelp, C:\ProgramData\KPRP\KPRP-main\Tekhpodderzhka.png
Gui, 12:Add, Picture, x820 y600 w48 w48   +BackgroundTrans  gVybor_organizatsii, C:\ProgramData\KPRP\KPRP-main\Smena_fraktsii.png
Gui, 12:Add, Picture, x920 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\Help.png

Gui, 12:Add, Picture, x1120 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\restart.png

Gui, 12:Add, Picture, x1000 y370 w150 h150 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\%Bol_ro_2%
Gui, 12:Add, Picture, x1000 y190 w150 h150 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\KPRP.png
Return

0001GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD1%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)


        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return

0002GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD2%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
	    line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return


0003GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD3%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
	    line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)



        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return


0004GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD4%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)


        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return


0005GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD5%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)


        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return

0006GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD6%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)


        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return


0007GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD7%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return



0008GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD8%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return


0009GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD9%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)


        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return



0010GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD10%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)


        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return

0011GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD11%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return


0012GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD12%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return


0013GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD13%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return



0014GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD14%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return


0015GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD15%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return

0016GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD16%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return

0017GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD17%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return


0018GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD18%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return

0019GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD19%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return


0020GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD20%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return


0021GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD21%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return

0022GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD22%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return


0023GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD23%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return


0024GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD24%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return


0025GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD25%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return



0026GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD26%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return

0027GIBDD7:
Sleep 150
SendPlay {Enter}
FileEncoding, UTF-8-RAW

Var := Greeting()
Loop, read, %KPRPGIBDD27%
{
    Loop, parse, A_LoopReadLine, %A_Tab%
    {
        line := A_LoopField

        ; Подстановка переменных
        line := StrReplace(line, "%floor%", floor)
        line := StrReplace(line, "%Var%", Var)
        line := StrReplace(line, "%SurnameGIBDD7%", SurnameGIBDD7)
        line := StrReplace(line, "%rankGIBDD7%", rankGIBDD7)
        line := StrReplace(line, "%OtdelGIBDD7%", OtdelGIBDD7)
		line := StrReplace(line, "%CityGIBDD7%", CityGIBDD7)
        line := StrReplace(line, "%Skrin_1%", Skrin_1)
        line := StrReplace(line, "%Female%", Female)

        %vybor%(line, "  " zaderzhka " ")  ; Отправка строки без кавычек
    }
}
Return




InfoGIBDD:

SoundPlay,  C:\ProgramData\KPRP\KPRP-main\muzyka_14.mp3

Gui, 19:Destroy,
Gui, 19:Add, Picture, x0 y10 w475   h672 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\Vod_GIBDD.png
Gui, 19:Add, Picture, x470 y600 w64 h64   +BackgroundTrans gChange, C:\ProgramData\KPRP\KPRP-main\Ok_64.png

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
SoundPlay,   C:\ProgramData\KPRP\KPRP-main\muzyka_14.mp3

Gui, 18:Destroy,

IniRead, 11GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 11GIBDD7
IniRead, 21GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 21GIBDD7
IniRead, 31GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 31GIBDD7
IniRead, 41GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 41GIBDD7
IniRead, 51GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 51GIBDD7
IniRead, 61GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 61GIBDD7
IniRead, 71GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 71GIBDD7
IniRead, 81GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 81GIBDD7
IniRead, 91GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 91GIBDD7
IniRead, 101GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 101GIBDD7
IniRead, 111GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 111GIBDD7
IniRead, 121GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 121GIBDD7
IniRead, 131GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 131GIBDD7
IniRead, 141GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 141GIBDD7
IniRead, 151GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 151GIBDD7
IniRead, 161GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 161GIBDD7
IniRead, 171GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 171GIBDD7
IniRead, 181GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 181GIBDD7
IniRead, 191GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 191GIBDD7
IniRead, 201GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 201GIBDD7
IniRead, 211GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 211GIBDD7
IniRead, 221GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 221GIBDD7
IniRead, 231GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 231GIBDD7
IniRead, 241GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 241GIBDD7
IniRead, 251GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 251GIBDD7
IniRead, 261GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 261GIBDD7
IniRead, 271GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 271GIBDD7
IniRead, 281GIBDD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_GIBDD.ini , Edit, 281GIBDD7


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


Gui, 18:Add, Picture, x370 y16 w48 h48 +BackgroundTrans gSelectKPRPGIBDD1,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y76 w48 h48 +BackgroundTrans gSelectKPRPGIBDD2,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y136 w48 h48 +BackgroundTrans gSelectKPRPGIBDD3,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y196 w48 h48 +BackgroundTrans gSelectKPRPGIBDD4 ,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y256 w48 h48 +BackgroundTrans gSelectKPRPGIBDD5,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y316 w48 h48 +BackgroundTrans gSelectKPRPGIBDD6,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y376 w48 h48 +BackgroundTrans gSelectKPRPGIBDD7,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y436 w48 h48 +BackgroundTrans gSelectKPRPGIBDD8,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y496 w48 h48 +BackgroundTrans gSelectKPRPGIBDD9,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y556 w48 h48 +BackgroundTrans gSelectKPRPGIBDD10,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y616 w48 h48 +BackgroundTrans gSelectKPRPGIBDD11,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y676 w48 h48 +BackgroundTrans gSelectKPRPGIBDD12,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x370 y736 w48 h48 +BackgroundTrans gSelectKPRPGIBDD25,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png

Gui, 18:Add, Picture, x860 y16 w48 h48 +BackgroundTrans gSelectKPRPGIBDD13,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y76 w48 h48 +BackgroundTrans gSelectKPRPGIBDD14,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y136 w48 h48 +BackgroundTrans gSelectKPRPGIBDD15,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y196 w48 h48 +BackgroundTrans gSelectKPRPGIBDD16,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y256 w48 h48 +BackgroundTrans gSelectKPRPGIBDD17,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y316 w48 h48 +BackgroundTrans gSelectKPRPGIBDD18,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y376 w48 h48 +BackgroundTrans gSelectKPRPGIBDD19,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y436 w48 h48 +BackgroundTrans gSelectKPRPGIBDD20,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y496 w48 h48 +BackgroundTrans gSelectKPRPGIBDD21,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y556 w48 h48 +BackgroundTrans gSelectKPRPGIBDD22,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y616 w48 h48 +BackgroundTrans gSelectKPRPGIBDD23,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png
Gui, 18:Add, Picture, x860 y676 w48 h48 +BackgroundTrans gSelectKPRPGIBDD24,C:\ProgramData\KPRP\KPRP-main\PapkaMZ_dobavit.png

Gui, 18:Add, Picture, x440 y16 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD1,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y76 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD2,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y136 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD3,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y196 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD4 ,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y256 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD5,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y316 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD6,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y376 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD7,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y436 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD8,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y496 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD9,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y556 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD10,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y616 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD11,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y676 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD12,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x440 y736 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD25,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png

Gui, 18:Add, Picture, x930 y16 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD13,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y76 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD14,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y136 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD15,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y196 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD16,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y256 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD17,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y316 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD18,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y376 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD19,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y436 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD20,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y496 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD21,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y556 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD22,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y616 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD23,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png
Gui, 18:Add, Picture, x930 y676 w48 h48 +BackgroundTrans gNotebookKPRPGIBDD24,C:\ProgramData\KPRP\KPRP-main\FolderMZ_file.png

Gui, 18:Add, Picture, x930 y725 w64 h64  +BackgroundTrans gChange,   C:\ProgramData\KPRP\KPRP-main\Ok_64.png
Gui, 18:Add, Picture, x850 y725 w64 h64  +BackgroundTrans gInfovariableGIBDD7,   C:\ProgramData\KPRP\KPRP-main\InfovariableMZ.png
Gui, 18:Add, Picture, x770 y725 w64 h64  +BackgroundTrans gVoprosKPRPMZ,   C:\ProgramData\KPRP\KPRP-main\VoprosKPRPMZ.png


Gui, 18:Show, w1000 h790, Редактор раскладки сочетания клавиш
Return


InfovariableGIBDD7:
 MsgBox, 64, Информация, % "
(
Значения переменных:

%floor%: " floor " - Добавляет а на конце.
%Female%: " Female " - Добавляет ла на конце.
%Var%: " Var " - Доброго времени суток, в зависимости от времени на ПК.
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
{
    ; Сохраняем текущий путь, чтобы он не сбивался
    LastPath := KPRPGIBDD1  ; Сохраняем текущий путь, чтобы не сбить его, если пользователь не выбрал файл.

    FileSelectFile, KPRPGIBDD1, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    ; Если путь пустой, значит, пользователь отменил выбор (не выбрал файл)
    if (KPRPGIBDD1 = "")
    {
        KPRPGIBDD1 := LastPath  ; Восстанавливаем путь, если пользователь отменил выбор.
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD1%
}
return


SelectKPRPGIBDD2:
{
    LastPath := KPRPGIBDD2
    FileSelectFile, KPRPGIBDD2, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD2 = "")
    {
        KPRPGIBDD2 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD2%
}
return

SelectKPRPGIBDD3:
{
    LastPath := KPRPGIBDD3
    FileSelectFile, KPRPGIBDD3, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD3 = "")
    {
        KPRPGIBDD3 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD3%
}
return

SelectKPRPGIBDD4:
{
    LastPath := KPRPGIBDD4
    FileSelectFile, KPRPGIBDD4, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD4 = "")
    {
        KPRPGIBDD4 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD4%
}
return

SelectKPRPGIBDD5:
{
    LastPath := KPRPGIBDD5
    FileSelectFile, KPRPGIBDD5, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD5 = "")
    {
        KPRPGIBDD5 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD5%
}
return

SelectKPRPGIBDD6:
{
    LastPath := KPRPGIBDD6
    FileSelectFile, KPRPGIBDD6, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD6 = "")
    {
        KPRPGIBDD6 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD6%
}
return

SelectKPRPGIBDD7:
{
    LastPath := KPRPGIBDD7
    FileSelectFile, KPRPGIBDD7, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD7 = "")
    {
        KPRPGIBDD7 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD7%
}
return

SelectKPRPGIBDD8:
{
    LastPath := KPRPGIBDD8
    FileSelectFile, KPRPGIBDD8, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD8 = "")
    {
        KPRPGIBDD8 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD8%
}
return

SelectKPRPGIBDD9:
{
    LastPath := KPRPGIBDD9
    FileSelectFile, KPRPGIBDD9, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD9 = "")
    {
        KPRPGIBDD9 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD9%
}
return

SelectKPRPGIBDD10:
{
    LastPath := KPRPGIBDD10
    FileSelectFile, KPRPGIBDD10, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD10 = "")
    {
        KPRPGIBDD10 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD10%
}
return

SelectKPRPGIBDD11:
{
    LastPath := KPRPGIBDD11
    FileSelectFile, KPRPGIBDD11, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD11 = "")
    {
        KPRPGIBDD11 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD11%
}
return

SelectKPRPGIBDD12:
{
    LastPath := KPRPGIBDD12
    FileSelectFile, KPRPGIBDD12, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD12 = "")
    {
        KPRPGIBDD12 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD12%
}
return

SelectKPRPGIBDD13:
{
    LastPath := KPRPGIBDD13
    FileSelectFile, KPRPGIBDD13, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD13 = "")
    {
        KPRPGIBDD13 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD13%
}
return

SelectKPRPGIBDD14:
{
    LastPath := KPRPGIBDD14
    FileSelectFile, KPRPGIBDD14, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD14 = "")
    {
        KPRPGIBDD14 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD14%
}
return

SelectKPRPGIBDD15:
{
    LastPath := KPRPGIBDD15
    FileSelectFile, KPRPGIBDD15, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD15 = "")
    {
        KPRPGIBDD15 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD15%
}
return

SelectKPRPGIBDD16:
{
    LastPath := KPRPGIBDD16
    FileSelectFile, KPRPGIBDD16, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD16 = "")
    {
        KPRPGIBDD16 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD16%
}
return

SelectKPRPGIBDD17:
{
    LastPath := KPRPGIBDD17
    FileSelectFile, KPRPGIBDD17, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD17 = "")
    {
        KPRPGIBDD17 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD17%
}
return

SelectKPRPGIBDD18:
{
    LastPath := KPRPGIBDD18
    FileSelectFile, KPRPGIBDD18, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD18 = "")
    {
        KPRPGIBDD18 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD18%
}
return

SelectKPRPGIBDD19:
{
    LastPath := KPRPGIBDD19
    FileSelectFile, KPRPGIBDD19, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD19 = "")
    {
        KPRPGIBDD19 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD19%
}
return

SelectKPRPGIBDD20:
{
    LastPath := KPRPGIBDD20
    FileSelectFile, KPRPGIBDD20, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD20 = "")
    {
        KPRPGIBDD20 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD20%
}
return

SelectKPRPGIBDD21:
{
    LastPath := KPRPGIBDD21
    FileSelectFile, KPRPGIBDD21, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD21 = "")
    {
        KPRPGIBDD21 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD21%
}
return

SelectKPRPGIBDD22:
{
    LastPath := KPRPGIBDD22
    FileSelectFile, KPRPGIBDD22, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD22 = "")
    {
        KPRPGIBDD22 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD22%
}
return

SelectKPRPGIBDD23:
{
    LastPath := KPRPGIBDD23
    FileSelectFile, KPRPGIBDD23, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD23 = "")
    {
        KPRPGIBDD23 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD23%
}
return

SelectKPRPGIBDD24:
{
    LastPath := KPRPGIBDD24
    FileSelectFile, KPRPGIBDD24, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD24 = "")
    {
        KPRPGIBDD24 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD24%
}
return

SelectKPRPGIBDD25:
{
    LastPath := KPRPGIBDD25
    FileSelectFile, KPRPGIBDD25, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD25 = "")
    {
        KPRPGIBDD25 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD25%
}
return

SelectKPRPGIBDD26:
{
    LastPath := KPRPGIBDD26
    FileSelectFile, KPRPGIBDD26, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD26 = "")
    {
        KPRPGIBDD26 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD26%
}
return

SelectKPRPGIBDD27:
{
    LastPath := KPRPGIBDD27
    FileSelectFile, KPRPGIBDD27, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD27 = "")
    {
        KPRPGIBDD27 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD27%
}
return

SelectKPRPGIBDD28:
{
    LastPath := KPRPGIBDD28
    FileSelectFile, KPRPGIBDD28, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD28 = "")
    {
        KPRPGIBDD28 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD28%
}
return

SelectKPRPGIBDD29:
{
    LastPath := KPRPGIBDD29
    FileSelectFile, KPRPGIBDD29, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD29 = "")
    {
        KPRPGIBDD29 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD29%
}
return

SelectKPRPGIBDD30:
{
    LastPath := KPRPGIBDD30
    FileSelectFile, KPRPGIBDD30, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD30 = "")
    {
        KPRPGIBDD30 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD30%
}
return

SelectKPRPGIBDD31:
{
    LastPath := KPRPGIBDD31
    FileSelectFile, KPRPGIBDD31, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD31 = "")
    {
        KPRPGIBDD31 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD31%
}
return

SelectKPRPGIBDD32:
{
    LastPath := KPRPGIBDD32
    FileSelectFile, KPRPGIBDD32, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD32 = "")
    {
        KPRPGIBDD32 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD32%
}
return

SelectKPRPGIBDD33:
{
    LastPath := KPRPGIBDD33
    FileSelectFile, KPRPGIBDD33, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD33 = "")
    {
        KPRPGIBDD33 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD33%
}
return

SelectKPRPGIBDD34:
{
    LastPath := KPRPGIBDD34
    FileSelectFile, KPRPGIBDD34, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD34 = "")
    {
        KPRPGIBDD34 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD34%
}
return

SelectKPRPGIBDD35:
{
    LastPath := KPRPGIBDD35
    FileSelectFile, KPRPGIBDD35, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD35 = "")
    {
        KPRPGIBDD35 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD35%
}
return

SelectKPRPGIBDD36:
{
    LastPath := KPRPGIBDD36
    FileSelectFile, KPRPGIBDD36, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD36 = "")
    {
        KPRPGIBDD36 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD36%
}
return

SelectKPRPGIBDD37:
{
    LastPath := KPRPGIBDD37
    FileSelectFile, KPRPGIBDD37, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD37 = "")
    {
        KPRPGIBDD37 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD37%
}
return

SelectKPRPGIBDD38:
{
    LastPath := KPRPGIBDD38
    FileSelectFile, KPRPGIBDD38, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD38 = "")
    {
        KPRPGIBDD38 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD38%
}
return

SelectKPRPGIBDD39:
{
    LastPath := KPRPGIBDD39
    FileSelectFile, KPRPGIBDD39, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD39 = "")
    {
        KPRPGIBDD39 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD39%
}
return

SelectKPRPGIBDD40:
{
    LastPath := KPRPGIBDD40
    FileSelectFile, KPRPGIBDD40, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD40 = "")
    {
        KPRPGIBDD40 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD40%
}
return

SelectKPRPGIBDD41:
{
    LastPath := KPRPGIBDD41
    FileSelectFile, KPRPGIBDD41, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD41 = "")
    {
        KPRPGIBDD41 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD41%
}
return

SelectKPRPGIBDD42:
{
    LastPath := KPRPGIBDD42
    FileSelectFile, KPRPGIBDD42, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD42 = "")
    {
        KPRPGIBDD42 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD42%
}
return

SelectKPRPGIBDD43:
{
    LastPath := KPRPGIBDD43
    FileSelectFile, KPRPGIBDD43, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD43 = "")
    {
        KPRPGIBDD43 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD43%
}
return

SelectKPRPGIBDD44:
{
    LastPath := KPRPGIBDD44
    FileSelectFile, KPRPGIBDD44, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD44 = "")
    {
        KPRPGIBDD44 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD44%
}
return

SelectKPRPGIBDD45:
{
    LastPath := KPRPGIBDD45
    FileSelectFile, KPRPGIBDD45, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD45 = "")
    {
        KPRPGIBDD45 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD45%
}
return

SelectKPRPGIBDD46:
{
    LastPath := KPRPGIBDD46
    FileSelectFile, KPRPGIBDD46, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD46 = "")
    {
        KPRPGIBDD46 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD46%
}
return

SelectKPRPGIBDD47:
{
    LastPath := KPRPGIBDD47
    FileSelectFile, KPRPGIBDD47, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD47 = "")
    {
        KPRPGIBDD47 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD47%
}
return

SelectKPRPGIBDD48:
{
    LastPath := KPRPGIBDD48
    FileSelectFile, KPRPGIBDD48, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD48 = "")
    {
        KPRPGIBDD48 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD48%
}
return

SelectKPRPGIBDD49:
{
    LastPath := KPRPGIBDD49
    FileSelectFile, KPRPGIBDD49, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD49 = "")
    {
        KPRPGIBDD49 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD49%
}
return

SelectKPRPGIBDD50:
{
    LastPath := KPRPGIBDD50
    FileSelectFile, KPRPGIBDD50, % 1+2, %A_WorkingDir%, Редактор отыгровок, Текстовые файлы (*.txt)
    
    if (KPRPGIBDD50 = "")
    {
        KPRPGIBDD50 := LastPath
        MsgBox, 16, Ошибка, Вы отменили выбор файла.
        return
    }

    MsgBox, 64, Файл выбран, %KPRPGIBDD50%
}
return