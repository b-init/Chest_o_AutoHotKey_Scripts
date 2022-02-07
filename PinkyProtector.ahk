#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#KeyHistory 0 ; ListLines and #KeyHistory are functions used to "log your keys". Disable them as they're only useful for debugging purposes
ListLines, Off ; And what I want from this is speeeeed
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launch 1 instance of script
#installkeybdhook
; #Persistent ; Keeps script running...
; Modifiers: Alt -> !    Win -> #    Shift -> +    Ctrl -> ^

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; PinkyProtector AHK Script v0.0.1 by Yeetus ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Prevents extensive usage of the right pinky finger by creating a different layer of keys (on any keyboard, by holding CapsLock)
; The custom layer is designed by me to have the special characters typed by the pink spread across the right-hand keys.
; Also accounts for other utilitles (like arrow keys) to make using keyboard easier for you and your hand.
; Will likely keep updating this script as I use it and find ways to make it better
; Yoinked the primary logic from https://www.autohotkey.com/boards/viewtopic.php?t=20661
;
; You can view the custom layer here https://github.com/Yeetus3141/Chest_o_AutoHotKey_Scripts#readme


CapsLock::
	KeyWait, CapsLock
	If (A_PriorKey="CapsLock")
		SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
Return

#If, GetKeyState("CapsLock", "P") ;Your CapsLock hotkeys go below

c::CapsLock

e::Up
s::Left
d::Down
f::Right

j::{
k::}
l::(
`;::)
m::[
,::]
/::\
u::_
i::-
o::+
p::=
'::|

Return
;
