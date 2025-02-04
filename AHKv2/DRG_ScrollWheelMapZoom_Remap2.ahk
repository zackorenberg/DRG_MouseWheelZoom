#Requires AutoHotkey v2.0+

;;;;;; If DRG is open, focus and wait for termination before exiting script, otherwise open and wait for termination before exiting script
if (WinExist("ahk_exe FSD-Win64-Shipping.exe"))
    {
        WinActivate("ahk_exe FSD-Win64-Shipping.exe")
        WinMaximize("ahk_exe FSD-Win64-Shipping.exe")
		WinWaitClose("ahk_exe FSD-Win64-Shipping.exe")
		ExitApp()
    }
else 
	{
		Run("steam://rungameid/548430", "")
		WinWait("ahk_exe FSD-Win64-Shipping.exe")
		WinWaitClose("ahk_exe FSD-Win64-Shipping.exe")
		ExitApp()
	}

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