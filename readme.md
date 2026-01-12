# Antigravity Context Menu Integration
This repository contains a batch script to manually add Google Antigravity to your Windows right-click context menu. This allows you to right-click any file, folder, or directory background and instantly open it in the Antigravity AI IDE.
## 🚀 Installation Instructions
Follow these steps to add the "Open with Antigravity" option:
### 1. Download/Create the Script:
  1. Create a new file on your desktop named AddAntigravity.bat.
  2. Open it with Notepad and paste the script provided in this repository (ensure the path matches your installation).
### 2. Verify the Path:
  1. The script is currently configured for the USERNAME. If your Windows username is different, open the .bat file and change the following line:
  2. set "EXE_PATH=C:\Users\USERNAME\AppData\Local\Programs\Antigravity\Antigravity.exe"
### 3. Run as Administrator:
  1. Right-click AddAntigravity.bat.
  2. Select Run as Administrator. This is required because the script modifies the Windows Registry (HKEY_CLASSES_ROOT).
## Confirm Success:
* Once the command prompt says "Success!", press any key to close it.
* Right-click any folder or file to see the Open with Antigravity option.

## 🛠️ Usage Notes for 2026
* Windows 11 Users: By default, Windows 11 hides third-party context menu items. You may need to click "Show more options" at the bottom of the menu to see the Antigravity shortcut.
* Icon Support: The script automatically pulls the official Antigravity icon from the .exe file to display next to the menu text.
