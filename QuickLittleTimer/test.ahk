#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#KeyHistory 0 ; ListLines and #KeyHistory are functions used to "log your keys". Disable them as they're only useful for debugging purposes
ListLines, Off ; And what I want from this is speeeeed
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launch 1 instance of script
; #Persistent ; Keeps script running...
; Modifiers: Alt -> !    Win -> #    Shift -> +    Ctrl -> ^

; yoinked and modified from https://www.autohotkey.com/board/topic/18151-osd-countdown-inserting-ending-time/


Tab:: ; hotkey  will start timer


CustomColor = 1f1f1f ; Can be any RGB color (it will be made transparent below).
Gui +LastFound +AlwaysOnTop +Caption +ToolWindow +Border ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
Gui, Color, %CustomColor%
Gui, Font, s32 , Courier New ; Set a large font size (32-point) and font
Gui, Add, Text, vMyText cWhite Center, 00:00:00 ; 00:00:00 serve to auto-size the window.
Gui, Show, x1560 y882  NoActivate ; NoActivate avoids deactivating the currently active window. Coords configured according to my monitor and preference.

counter:=0
SetTimer, UpdateOSD, -10 ; to update immediately
SetTimer, UpdateOSD, 1000
return

GuiClose:
Gui, Destroy
return ; Destroy the GUI instead of just hiding it when X button is pressed

+Tab::Gui, Destroy ; Obliterate GUI and free memory of its remains


UpdateOSD:
counter++
secs := Mod(counter, 60)
mins := Mod(counter // 60, 60)
hrs := counter // 3600
time_display := Format("{1:02}:{2:02}:{3:02}", hrs, mins, secs) ; 6 and not 5 because counter starts with 1
if (time_display=0)
SetTimer, UpdateOSD, off ; stops the counter
GuiControl,, MyText, %time_display%
return


