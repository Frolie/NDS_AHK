; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode, 1
#IfWinActive NDS User
+D:: ; Move by Dragging
send {LAlt}
sleep 10
send n
sleep 10
send {Enter}
return

+R:: ; Rotate by Dragging
send {LAlt}
sleep 10
send n
sleep 10
send {Down}
sleep 10
send {Down}
sleep 10
send {Enter}
return


+S:: ; Scale by Dragging
send {LAlt}
sleep 10
send n
sleep 10
send {Down}
sleep 10
send {Down}
sleep 10
send {Down}
sleep 10
send {Down}
sleep 10
send {Enter}
return

+X:: ; Clear Trail
send {LAlt}
sleep 10
send r
sleep 10
send {Enter}

#IfWinNotActive NDS User
return