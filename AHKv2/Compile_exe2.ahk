#Requires AutoHotKey v1.1.33+ <2.0

SetWorkingDir %A_ScriptDir% ; No longer need DRG working directory

RunWait "%A_programfiles%\AutoHotkey\Compiler\Ahk2Exe.exe"
 /in "DRG_ScrollWheelMapZoom_Remap2.ahk"
 /out "DeepRockGalactic_ScrollWheelFix2.exe"
 /icon "..\DRG.ico"
 /base "%A_programfiles%\AutoHotkey\v2\AutoHotkey64.exe"
 /compress 0