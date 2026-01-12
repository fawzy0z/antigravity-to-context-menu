@echo off
:: Set the specific path for Antigravity
set "EXE_PATH=C:\Users\USERNAME\AppData\Local\Programs\Antigravity\Antigravity.exe"

echo Adding Antigravity to Context Menu...

:: 1. Add to individual Files
reg add "HKEY_CLASSES_ROOT\*\shell\Antigravity" /ve /t REG_SZ /d "Open with Antigravity" /f
reg add "HKEY_CLASSES_ROOT\*\shell\Antigravity" /v "Icon" /t REG_SZ /d "%EXE_PATH%" /f
reg add "HKEY_CLASSES_ROOT\*\shell\Antigravity\command" /ve /t REG_SZ /d "\"%EXE_PATH%\" \"%%1\"" /f

:: 2. Add to Folders (Right-clicking a folder icon)
reg add "HKEY_CLASSES_ROOT\Directory\shell\Antigravity" /ve /t REG_SZ /d "Open with Antigravity" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\Antigravity" /v "Icon" /t REG_SZ /d "%EXE_PATH%" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\Antigravity\command" /ve /t REG_SZ /d "\"%EXE_PATH%\" \"%%1\"" /f

:: 3. Add to Background (Right-clicking empty space inside a folder)
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Antigravity" /ve /t REG_SZ /d "Open with Antigravity" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Antigravity" /v "Icon" /t REG_SZ /d "%EXE_PATH%" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Antigravity\command" /ve /t REG_SZ /d "\"%EXE_PATH%\" \"%%V\"" /f

echo.
echo Success! Antigravity has been added.
echo Note: On Windows 11, look under "Show more options".
pause
