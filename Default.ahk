#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#KeyHistory 0 ; ListLines and #KeyHistory are functions used to "log your keys". Disable them as they're only useful for debugging purposes
ListLines, Off ; And what I want from this is speeeeed
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launch 1 instance of script
; #Persistent ; Keeps script running...
; Modifiers: Alt -> !    Win -> #    Shift -> +    Ctrl -> ^