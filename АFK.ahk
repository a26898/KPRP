#Persistent  ; Скрипт будет работать постоянно
#NoTrayIcon  ; Скрыть иконку из трея

SetTimer, CheckGTA, 1000  ; Проверять каждую секунду

IniRead, MaxMinutes, C:\ProgramData\KPRP\KPRP-main\Nastroyki.ini, User, MaxMinutes

MaxMinimizedTime := MaxMinutes * 60  ; Переводим в секунды
MinimizedDuration := 0  ; Инициализация счетчика времени, когда окно свернуто

CheckGTA:
    ; Проверка, запущен ли процесс gta_sa.exe
    IfWinExist, ahk_exe gta_sa.exe
    {
        ; Получаем информацию о текущем состоянии окна
        WinGet, MinMaxState, MinMax, ahk_exe gta_sa.exe
        
        ; Если окно свёрнуто (MinMaxState = -1)
        if (MinMaxState = -1)
        {
            ; Увеличиваем счётчик времени
            MinimizedDuration++

            ; Если окно было свёрнуто дольше, чем указано в MaxMinimizedTime
            if (MinimizedDuration >= MaxMinimizedTime)
            {
                ; Воспроизводим звук
                SoundPlay, C:\ProgramData\KPRP\KPRP-main\AFK.mp3

                ; Сбрасываем счётчик
                MinimizedDuration := 0
            }
        }
        else
        {
            ; Если окно не свёрнуто, сбрасываем счётчик времени
            MinimizedDuration := 0
        }
    }
return
