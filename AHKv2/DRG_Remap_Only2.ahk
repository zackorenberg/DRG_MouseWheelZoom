#Requires AutoHotkey v2.0+

;;;;;; Don't die to 'ur doing too many hotkeys' seeth and cope message
A_MaxHotkeysPerInterval := 200

;;;;;; Track when tab is up or down
Global TabPressed := false
~Tab::Global TabPressed := true
~Tab Up::Global TabPressed := false

;;;;;; If tab is pressed and DRG is focused then remap wheel up and wheel down
#HotIf TabPressed and WinActive("ahk_exe FSD-Win64-Shipping.exe")
WheelUp::Send("{,}") ; Send comma when wheel up occurs
WheelDown::Send("{.}") ; Send comma when wheel down occurs
#HotIf 