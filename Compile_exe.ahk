#Requires AutoHotKey v1.1.33+ <2.0

SetWorkingDir %A_ScriptDir% ; No longer need DRG working directory

RunWait "%A_programfiles%\AutoHotkey\Compiler\Ahk2Exe.exe"
 /in "DRG_ScrollWheelMapZoom_Remap.ahk"
 /out "DeepRockGalactic_ScrollWheelFix.exe"
 /icon "DRG.ico"
 /base "C:\Program Files\AutoHotkey\Compiler\AutoHotkeySC.bin"
 /compress 0

