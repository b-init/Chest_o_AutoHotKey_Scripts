#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#KeyHistory 0 ; ListLines and #KeyHistory are functions used to "log your keys". Disable them as they're only useful for debugging purposes
ListLines, Off ; And what I want from this is speeeeed
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launch 1 instance of script
; #Persistent ; Keeps script running...
; Modifiers: Alt -> !    Win -> #    Shift -> +    Ctrl -> ^



bg_color = 1f1f1f 
paused_color = 424242
text_size = 32

margin_x := 0.75*32  
margin_y := 0.85*32

Tab:: ; hotkey  will start timer

Gui +LastFound +AlwaysOnTop -Caption +ToolWindow +Border ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
Gui, Color, %bg_color%
Gui, Margin, %margin_x%, % margin_y*0.4
Gui, Font, s%text_size% , Courier New 
Gui, Add, Text, vMyText cWhite Center, 00:00:00 ; 00:00:00 serve to auto-size the window.
Gui, Margin, ,0
Gui, Font, s10.5
Gui, Add, Text, wp h%margin_y% y+0 vPauseText gPauseText cWhite Center , <pause> ; 
Gui, Show, x1560 y882  NoActivate ; NoActivate avoids deactivating the currently active window. Coords configured according to my monitor and preference.

counter := 0
SetTimer, UpdateOSD, -10 ; to update immediately
SetTimer, UpdateOSD, 1000
timer_on := true
return


^Tab::
PauseText:
if(timer_on = true){ 
SetTimer, UpdateOSD, Off ; pause timer
Gui, Color, %paused_color%
GuiControl,, PauseText, <paused>
timer_on := false
return
}
if(timer_on = false){
SetTimer, UpdateOSD, On ; play timer
Gui, Color, %bg_color%
GuiControl,, PauseText, <pause>
timer_on := true
return
}
return


GuiContextMenu: ; Right Clicking / X button / Shift+Tab closes GUI
GuiClose:
+Tab::Gui, Destroy


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


