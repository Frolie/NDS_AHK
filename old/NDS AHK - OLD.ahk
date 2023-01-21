; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; !t::
; MouseGetPos, xpos, ypos
; ImageSearch, OutputVarX, OutputVarY, 5, 94, 2000, 950, info.png
; Click, OutputVarX, OutputVarY
; MouseMove, xpos, ypos
; return


!d:: ; Move by Dragging
MouseGetPos, xpos, ypos
Click, 200, 30
Click, 35, 10
MouseMove, xpos, ypos
return


!r:: ; Rotate by Dragging
MouseGetPos, xpos, ypos
Click, 200, 30
Click, 35, 45
MouseMove, xpos, ypos
return


!s:: ; Scale by Dragging
MouseGetPos, xpos, ypos
Click, 200, 30
Click, 35, 80
MouseMove, xpos, ypos
return