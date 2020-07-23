toggle := 0

F1::
MouseGetPos, MouseX, MouseY
if toggle := !toggle
 gosub, MoveTheMouse
else
 SetTimer, MoveTheMouse, off
return

MoveTheMouse:
MouseMove, 200, 200
SetTimer, MoveTheMouse, -9000  ; every 3 seconds 
MouseMove, %MouseX%, %MouseY%
return