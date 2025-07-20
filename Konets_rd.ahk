#Persistent  ; Скрипт будет работать постоянно
#NoTrayIcon  ; Скрыть иконку из трея
#SingleInstance Force

SetTimer, CheckMoscowTime, 60000  ; Проверка каждую минуту
Return

CheckMoscowTime:
; Проверяем день недели (1 = Воскресенье, 2 = Понедельник, ..., 7 = Суббота)
FormatTime, dayOfWeek,, WDay

if (dayOfWeek = 1 || dayOfWeek = 7) {
    ; Воскресенье или Суббота — ничего не делаем
    Return
}

; Получаем текущее UTC время (в формате YYYYMMDDHH24MISS)
utc := A_NowUTC

; Получаем часы и минуты из UTC
FormatTime, utcHourMin, %utc%, HH:mm

; Разбиваем
StringSplit, t, utcHourMin, :
utcHour := t1
utcMin := t2

; Прибавляем 3 часа (МСК = UTC+3)
mskHour := utcHour + 3
if (mskHour >= 24)
    mskHour -= 24

; Формируем строку времени по МСК
if (mskHour < 10)
    mskHour := "0" . mskHour
mskTime := mskHour . ":" . utcMin

; Целевые времена по МСК
targetTimes := ["10:00", "14:00", "15:00", "19:00"]

; Проверка и запуск
for index, t in targetTimes {
    if (mskTime = t) {
        SoundPlay, C:\ProgramData\KPRP\KPRP-main\Konets_rd.mp3
        break
    }
}
Return
