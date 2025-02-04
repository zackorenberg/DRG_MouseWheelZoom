
# Deep Rock Galactic Mouse Wheel Zoom
Tired of your mouse wheel causing chaos in the heat of battle? One moment you’re trying to switch weapons, and the next you’re accidentally scrolling through your utility tools like a Greenbeard who can’t make up their mind. And don't even get me started on rebinded terrain scanner controls—remapping it to buttons feels like trying to dig through solid rock with a pickaxe made of paper. It’s slow, clunky, and downright debilitating. By Karl, there has to be a better way!

Enter this AutoHotkey script, your new best friend in the depths of Hoxxes IV. This script lets you remap your mouse wheel to switch between primary and secondary weapons (or anything else you fancy) **without sacrificing the smooth, glorious zoom functionality on the terrain scanner**. No more awkward button mashing to zoom in and out—just pure, unadulterated scrolling like nature intended.

Here’s how it works:  
- When the terrain scanner is open (using the trusty default `Tab` key), the script temporarily remaps your mouse wheel to the `,` (comma) and `.` (period) keys for zooming.  
- Outside the map, your mouse wheel is free to do whatever you’ve remapped it to—switch weapons, throw flares, dance, jump, whatever.

To make this magic happen, you’ll need to bind "Cycle Item Up / Zoom In" to `,` and "Cycle Item Down / Zoom Out" to `.` in DRG’s keybindings. Management insists it’s a small price to pay for not dying to a swarm of Glyphids because you accidentally pulled out your grappling hook instead of your minigun.

And for those who like things automated (because time spent clicking buttons is time not spent mining), the script will even launch DRG via Steam if it’s not already running. If the game’s already up, it’ll focus and maximize the window faster than a Scout dying to fall damage. When you’re done mining and close the game, the script will exit automatically. No babysitting required!

For the lone wolves not playing through Steam, there’s a standalone version (`DRG_Remap_Only.ahk`) that only remaps the mouse wheel when DRG is active. You’ll need to manually open and close it, but hey, at least you’re not dealing with leaf-lovers, right?

---

## Features

- Remaps the mouse wheel to `,` (comma) and `.` (period) keys while pressing `Tab` only when DRG is the active window, preserving intended zoom functionality on the terrain scanner.
- Automatically launches DRG via Steam if the game is not running.
- Automatically exits when DRG is closed.
- Standalone version (`DRG_Remap_Only.ahk`) for non-Steam users or manual control.
-  **Compilation Script**: Compile the AHK script into an executable (`DeepRockGalactic_ScrollWheelFix.exe`) with the official DRG icon for easy launching.
-  **AutoHotkey v2 Support**: Includes a version of each script compatible with AutoHotkey v2, located in the `AHKv2` directory. File names end with a `2` (e.g. `DRG_Remap_Only2.ahk`)
   - **Note**: Compiling the v2 script requires `ahk2exe`, which is not included with AutoHotkey v2 by default. You can download it from the [ahk2exe repository](https://github.com/AutoHotkey/ahk2exe).
---

## Prerequisites

1. **AutoHotkey**: Install AutoHotkey (v1.1 or later) from [https://www.autohotkey.com/](https://www.autohotkey.com/).
2. **Deep Rock Galactic Keybindings**:
   - Bind "Cycle Item Up / Zoom In" to `,` (comma).
   - Bind "Cycle Item Down / Zoom Out" to `.` (period).
   - Bind `MouseWheelUp` and `MouseWheelDown` to whatever you want.
3. **Compilation Files** (optional, Steam version only):
   - `Compile_exe.ahk`: Script to compile the AHK script into an executable.
   - `DRG.ico`: The official DRG icon extracted from the game files (Steam version only).


---

## Installation

1. Download the following files:
   - `DRG_ScrollWheelMapZoom_Remap.ahk` (for Steam users with automatic game launch).
   - `DRG_Remap_Only.ahk` (for non-Steam users or manual control).
2. Place the files in a convenient location on your computer.

---

### Compiling the Script into an Executable (Optional)
If you want to create a standalone executable with the DRG icon for easy launching:
1. Ensure you have `Compile_exe.ahk` and `DRG.ico` downloaded in the same directory as `DRG_ScrollWheelMapZoom_Remap.ahk`.
2. Run `Compile_exe.ahk`. The script will compile `DRG_ScrollWheelMapZoom_Remap.ahk` into `DeepRockGalactic_ScrollWheelFix.exe` and embed the `DRG.ico` icon.
3. Use the compiled `DeepRockGalactic_ScrollWheelFix.exe` to launch the script and/or game.

---

## Usage

### For Steam Users (Automatic Launch)
1. Double-click `DRG_ScrollWheelMapZoom_Remap.ahk` (or `DeepRockGalactic_ScrollWheelFix.exe`) to run the script.
2. The script will:
   - Launch DRG via Steam if the game is not already running.
   - Focus and maximize the DRG window if the game is running.
   - Remap the mouse wheel to `,` and `.` while pressing `Tab` for zooming on the terrain scanner.
3. The script will automatically exit when DRG is closed.

### For Non-Steam Users (Manual Control)
1. Double-click `DRG_Remap_Only.ahk` to run the script.
2. The script will:
   - Remap the mouse wheel to `,` and `.` while pressing `Tab` for zooming on the terrain scanner.
3. Manually close the script when you are done playing DRG.

---

## Troubleshooting

1. **Script does not launch DRG**:
   - Ensure Steam is running and DRG is installed.
2. **Mouse wheel remapping does not work**:
   - Check DRG's keybindings to ensure `,` and `.` are correctly mapped.
3. **Script does not exit automatically**:
   - Ensure DRG is closed properly. If the script does not exit, manually close it from the system tray.
4. **Version or Syntax issues**:
   - Ensure the correct script is used for the installed version of AutoHotkey.
5. **Compilation issues**:
   - The script was written for AutoHotkey v1.1.34, ensure that a version **less than v2.0** is installed if not prompted.
   - Ensure `Compile_exe.ahk`, `DRG_ScrollWheelMapZoom_Remap.ahk`, and `DRG.ico` are in the same directory.
   - Ensure AutoHotkey is installed in `Program Files` and is accessible in your system's PATH.
   - Alternatively, one may use the context menu option `Compile Script` when right-clicking `DRG_ScrollWheelMapZoom_Remap.ahk` to compile without the use of `Compile_exe.ahk`.
		- **Note**: The `AHKv2/Compile_exe2.ahk` script requires a dual-install of both **v1.1** and **v2.0** versions of AutoHotkey. If this is not the case, you must manually compile `DRG_ScrollWheelMapZoom_Remap2.ahk` using `ahk2exe`, available from the [ahk2exe repository](https://github.com/AutoHotkey/ahk2exe).
		- **Note**: Precompiled 64-bit binaries are available under **Releases**.
---

## Notes

- Ensure that DRG's keybindings for "Cycle Item Up / Zoom In" and "Cycle Item Down / Zoom Out" are set to `,` and `.`, respectively.
- The script is designed to work only when DRG is the active window. It will not interfere with other applications.
- The `DRG.ico` file is extracted from the Steam version of the game.

---
## Customization

If you want to modify the script:
- Edit the `.ahk` file in a text editor.
- Change the keybindings or add additional functionality as needed. If "Terrain Scanner" is mapped to any other key than `Tab`, different hotkey combinations must be used, such as `^WheelUp::Send, {,}` if `Ctrl` is used, for example. Documentation can be [here](https://www.autohotkey.com/docs/v1/Hotkeys.htm#Symbols).

---

## License

This script is provided as-is under the MIT License. Feel free to modify and distribute it as needed.

---

## Credits

- The *Deep Rock Galactic* community.
- `DRG.ico` extracted from the Steam version of *Deep Rock Galactic*.

---

For questions or feedback, please open an issue.

---

**ROCK AND STONE!**