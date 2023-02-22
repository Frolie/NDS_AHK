#Requires AutoHotkey v2.0
#Include Lib/FindClick.ahk
SetTitleMatchMode, 2

#HotIf WinActive("CenturyLink PNI/FFTH User")
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