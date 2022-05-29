#NoEnv
#KeyHistory 0
SendMode Input
SetWorkingDir %A_ScriptDir%
ListLines Off
Process, Priority, , L
SendMode Input
ScriptActive = 1
FileEncoding, UTF-8
DetectHiddenWindows, On
SetTitleMatchMode, 2 ;partial match 
/*
^Numpad0::  Winset, Alwaysontop, , A
return
*/
/*
<#a::
	mousegetpos,,,win
	wingettitle, title, ahk_id %win%
	winset, AlwaysOnTop,TOGGLE, ahk_id %Win%
return
*/
			

/* ALT TAB
XButton2::
send {blind}{Alt Down}
send {blind}{Tab}
DllCall("Sleep","UInt",20)
keywait,XButton2
DllCall("Sleep","UInt",20)
send {blind}{LButton}
send {blind}{Alt up}
return

^+c::
{ Sleep 30
 Run, https://www.google.com/search?q=%clipboard%
}
Return
*/

<#a::			
Winset, Alwaysontop,Toggle, A	
return	

;Transparency toggle, Scroll Lock
<#t::
toggle:=!toggle
if toggle=1
 {
WinGetActiveTitle, OutputVar
 WinSet, Transparent, 200, %OutputVar%
 }
else
 {
 WinSet, Transparent, OFF, %OutputVar%
}
return

;obsidian

Numpad0::
Process, Exist, Obsidian.exe
If Not ErrorLevel ; errorlevel will = 0 if process doesn't exist
Run "C:\Users\DELTA SETINEL\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Obsidian.lnk"
elseIf (ErrorLevel != 0)
  
ifWinActive, vault - Obsidian v0.12.19
{
WinMinimize, vault - Obsidian v0.12.19
}
Else
{
WinActivate, vault - Obsidian v0.12.19
}
return

NumpadDot::
Run obsidian://advanced-uri?vault=vault&filepath=literature`%252Fpiece`%2520de`%2520stockage.md&data=-`%20%clipboard%&mode=append
return

Numpad1::
Run obsidian://open?vault=vault&file=literature`%2Fpiece`%20de`%20stockage
Return


Numpad2::
Run obsidian://advanced-uri?vault=vault&daily=true
sleep 50
return


/*
<#Tab::
If Tabbe 
{ 
send {blind}{Ctrl down}
send {blind}{<# down}
send {blind}{left down}
sleep, 50
send {blind}{Ctrl up}
send {blind}{<# up}
send {blind}{left up}

} 
Else 
{ 

send {blind}{Ctrl down}
send {blind}{<# down}
send {blind}{right down}
sleep, 50
send {blind}{Ctrl up}
send {blind}{<# up}
send {blind}{right up}
		
} 
Tabbe:= !Tabbe ;Toggle hidden 
Return

<#o::
Process, Exist, Obsidian.exe
If Not ErrorLevel ; errorlevel will = 0 if process doesn't exist
Run "C:\Users\DELTA SETINEL\AppData\Local\Obsidian\Obsidian.exe"
elseIf (ErrorLevel != 0)
If Hidden 
{ 
  WinShow, vault - Obsidian v0.12.19
  WinActivate, vault - Obsidian v0.12.19
  WinRestore, vault - Obsidian v0.12.19
  WinMove,vault - Obsidian v0.12.19,,A_ScreenWidth-300, 0, 300, 475
Winset, Alwaysontop, , vault - Obsidian v0.12.19
} 
Else 
{ 

Winset, Bottom, , vault - Obsidian v0.12.19
 ;WinMaximize, vault - Obsidian v0.12.19
} 
Hidden := !Hidden ;Toggle hidden 
Return
*/
