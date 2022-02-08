#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ; Only launch 1 instance of script
; #Persistent ; Keeps script running...
; Modifiers: Alt -> !    Win -> #    Shift -> +    Ctrl -> ^

;;;;;;;;; HotStrings ;;;;;;;;;;;;;;

; ::vcn::vacation ; puts vacation  (with space at the end)
; :o:vcn::vacation ; puts vacation without space
; ::vcn::vacation {!} ; to escape default used characters (or we use :r:vcn:vacation!)
; :*:vcn:vacation ; instantly replaces (wihtout space or tab or dot etc)

;;;;;;;;;; remapping keys ;;;;;;;;;;;;;;;;;

; b::Send, because ; can use ^c::^p without Send when both modifiers are same


MsgBox Abandon all hope, All ye who enter

