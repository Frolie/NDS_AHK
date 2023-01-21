#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#include FindClick.ahk
#SingleInstance force

SetTitleMatchMode, 2

#IfWinActive NDS User
+T:: ; Trailpoint
FindClick("NDS_ICO\trailpoint", "r Center1")
return

+D:: ; Drag to move
Send {LAlt}
Send N
Send D
return

+R:: ; Rotate
Send {LAlt}
Send N
Send R
return

+S:: ; Scale
Send {LAlt}
Send N
Send S
return

+U:: ; Update
FindClick("NDS_ICO\update", "r Center1")
return

+C:: ; Cursor
FindClick("NDS_ICO\select", "r Center1")
return

+E:: ; Enter One
FindClick("NDS_ICO\enterone", "r Center1")
return

+H:: ; Highlight
FindClick("NDS_ICO\highlight", "r Center1")
return

+F:: ; Fill Defaults
FindClick("NDS_ICO\getdefault", "r Center1")
return

+X:: ; Clear Trail
send {LAlt}
send r
send {Enter}
return

+L:: ; Open layout
Send {LAlt}
Send T
Send L
return

+N:: ; Open Cable Connectivity
Send {LAlt}
Send T
Send N
return

+G:: ; Add to Collection
FindClick("NDS_ICO\collection", "r Center1")
return

;FindClick("NDS_ICO\delete", "r Center1")
;FindClick("NDS_ICO\deleteselected", "r Center1")
;FindClick("NDS_ICO\clear", "r Center1")
;FindClick("NDS_ICO\replace", "r Center1")
;FindClick("NDS_ICO\move", "r Center1")
;FindClick("NDS_ICO\rotate", "r Center1")
;FindClick("NDS_ICO\scale", "r Center1")
;FindClick("NDS_ICO\insert", "r Center1")
;FindClick("NDS_ICO\grab", "r Center1")

#IfWinActive Layout Designer
+D:: ; Duplicate Page
Send {LAlt}
Send I
Send D
return

+N:: ; New Page
Send {LAlt}
Send I
Send N
return

+B:: ; Text Box
Send {LAlt}
Send I
Send E
Send T
return

+T:: ; Trailpoint
FindClick("NDS_ICO\trailpoint", "r Center1")
return

+C:: ; Cursor
FindClick("NDS_ICO\select", "r Center1")
return

+X:: ; Clear Trail
send {LAlt}
sleep 2
send r
sleep 2
send {Enter}

#IfWinActive Cable Connectivity
+D:: ; Connect Left to Right
FindClick("NDS_ICO\lefttoright", "r Center1")
return

+S:: ; Connect Right to Left
FindClick("NDS_ICO\righttoleft", "r Center1")
return

+H:: ; Highlight
FindClick("NDS_ICO\highlight", "r Center1")
return

#IfWinActive Gis
+U:: ; Update
FindClick("NDS_ICO\update", "r Center1")
return

+F:: ; Fill Defaults
FindClick("NDS_ICO\getdefault", "r Center1")
return

+H:: ; Highlight
FindClick("NDS_ICO\highlight", "r Center1")
return

#IfWinNotActive NDS
+^C:: ; Create new
FindClick(">NDS_ICO\")
return