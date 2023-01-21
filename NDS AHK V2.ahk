#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#include Lib\FindClick.ahk
#SingleInstance force
SetTimer, AutoSaveNDS, 300000
SetTimer, AutoSaveLayout, 300000
SetTitleMatchMode, 2
return

+Tab:: ; Toggle Hotkeys
Suspend
ToolTip,% a_isSuspended?"Hotkeys Disabled!":"Hotkeys Enabled!"
SetTimer, RemoveToolTip, -1000
return

RemoveToolTip:
ToolTip
return

F12:: ; Toggle Autosave
	toggle:=!toggle
	if toggle {
	TrayTip, ,Auto Save Disabled!, 1
	SetTimer, AutoSaveNDS, Off
	SetTimer, AutoSaveLayout, Off
	}
	else {
	TrayTip, ,Auto Save Enabled!, 1
	SetTimer, AutoSaveNDS, 300000
	SetTimer, AutoSaveLayout, 300000
	}
	return

AutoSaveNDS:
	if WinActive("NDS User")
	{
		Send, ^s
	}
	else {
	WinWaitActive, NDS User
	Send, ^s
	}
	Return

AutoSaveLayout:
	if WinActive("Layout Designer")
	{
		Send, ^s
	}
	else {
	WinWaitActive, Layout Designer
	Send, ^s
	}
	Return

#IfWinActive, NDS User
	+E:: ; Enter One
		FindClick("NDS_ICO\enterone", "r Center1")
		return
	+R:: ; Rotate
		Send {LAlt}
		Send N
		Send R
		return
	+T:: ; Trailpoint
		FindClick("NDS_ICO\trailpoint", "r Center1")
		return
	+A:: ; Add LOC Annotation
		FindClick("NDS_ICO\highlight", "r Center1 x169 y0")
		Sleep 3
		Send {Down}
		Sleep 2
		Send {Down}
		Sleep 2
		Send {Enter}
		Return
	+Q:: ; Remove Annotation
		FindClick("NDS_ICO\highlight", "r Center1 x169 y0")
		Sleep 3
		Send {Down}
		Sleep 2
		Send {Down}
		Sleep 2
		Send {Down}
		Sleep 1
		Send {Down}
		Sleep 1
		Send {Enter}
		Return
	+W:: ; Add LOC Annotation
		FindClick("NDS_ICO\highlight", "r Center1 x169 y0")
		Sleep 3
		Send {Down}
		Sleep 2
		Send {Enter}
		Return
	+S:: ; Scale
		Send {LAlt}
		Send N
		Send S
		return
	+D:: ; Drag to move
		Send {LAlt}
		Send N
		Send D
		return
	+F:: ; Fill Defaults
		FindClick("NDS_ICO\getdefault", "r Center1")
		return
	+G:: ; Add to Collection
		FindClick("NDS_ICO\collection", "r Center1")
		return
	+H:: ; Highlight
		FindClick("NDS_ICO\highlight", "r Center1")
		return
	+X:: ; Clear Trail
		send {LAlt}
		send r
		send {Enter}
		return
	+C:: ; Cursor
		send {LAlt}
		FindClick("NDS_ICO\select", "r Center1")
		return
	+U:: ; Update
		FindClick("NDS_ICO\update", "r Center1")
		return
	+N:: ; Open Cable Connectivity
		Send {LAlt}
		Send T
		Send N
		return
	+L:: ; Open layout
		Send {LAlt}
		Send T
		Send L
		return

#IfWinActive, Layout Designer
	+T:: ; Trailpoint
		FindClick("NDS_ICO\trailpoint", "r Center1")
		return
	+D:: ; Duplicate Page
		Send {LAlt}
		Send I
		Send D
		return
	+B:: ; Text Box
		Send {LAlt}
		Send I
		Send E
		Send T
		return
	+X:: ; Clear Trail
		send {LAlt}
		send r
		send {Enter}
	+C:: ; Cursor
		FindClick("NDS_ICO\select", "r Center1")
		return
	+N:: ; New Page
		Send {LAlt}
		Send I
		Send N
		return

; #IfWinActive, Cable Connectivity
; 	D:: ; Connect Left to Right
; 		FindClick("NDS_ICO\lefttoright", "r Center1")
; 		return
; 	+S:: ; Connect Right to Left
; 		FindClick("NDS_ICO\righttoleft", "r Center1")
; 		return
; 	+H:: ; Highlight
; 		FindClick("NDS_ICO\highlight", "r Center1")
; 		return

;#IfWinActive, "[Gis]"
;	+U:: ; Update
;		FindClick("NDS_ICO\update", "r Center1")
;		return
;	+F:: ; Fill Defaults
;		FindClick("NDS_ICO\getdefault", "r Center1")
;		return
;	+H:: ; Highlight
;		FindClick("NDS_ICO\highlight", "r Center1")
;		return
;
; Unused Button Functions
;	FindClick("NDS_ICO\delete", "r Center1")
;	FindClick("NDS_ICO\deleteselected", "r Center1")
;	FindClick("NDS_ICO\clear", "r Center1")
;	FindClick("NDS_ICO\replace", "r Center1")
;	FindClick("NDS_ICO\move", "r Center1")
;	FindClick("NDS_ICO\rotate", "r Center1")
;	FindClick("NDS_ICO\scale", "r Center1")
;	FindClick("NDS_ICO\insert", "r Center1")
;	FindClick("NDS_ICO\grab", "r Center1")
;
; Create Hotkey Image Function
;	#IfWinNotActive NDS
;	+^C:: ; Create new
;	FindClick(">NDS_ICO\")
;	return