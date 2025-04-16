#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance, Force
#IfWinActive ahk_exe destiny2.exe

F5:: ; hotkey to fire first 23 rounds, seems most consistent when fired on top of sparrow after initial dismount+dodge towards target door
    {
        Loop, 23
        {
        Sleep, 75
        Send, {click}
        Sleep, 75
        }
    }
Return

F6:: ; hotkey to initiate mounting sparrow after firing enough rounds to initiate delayed combustion of sparrow, move away from the sparrow just far enough to get ride prompt while aiming at the sparrow before initiating
    {
    Send, {N down} ; interact/mount sparrow secondary keybind
    Sleep, 5
    Send, {Click Down}
    Sleep, 375 ; this timer controls how many bullets are fired before mounting
    Send, {Click Up}
    Sleep, 120 ; time required to complete the ride prompt (500-timer on line 23+25)
    Send, {N up} ; interact/mount sparrow secondary keybind
    Sleep, 1300
    Send, {Click} ; custom keybind for sparrow dodge left, change to whatever your keybind is
    Sleep, 1300
    Send, {e} ; custom keybind to dismount, change to whatever your keybind is
    Sleep, 10
    Send, {Click} ; custom keybind for sparrow dodge left, change to whatever your keybind is
    }
Return

F7:: Reload
F8:: ExitApp

; Macro by Dutch_Viking_91#8478, credits to Rythm#3192 for sharing the tech and supplying the original script that was modified into this one
