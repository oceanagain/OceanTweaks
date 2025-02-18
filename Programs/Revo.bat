@echo off
:: Define the URL of Revo Uninstaller installer
set URL=https://download.link/to/revouninstaller_installer.exe

:: Define the path where you want to install Revo Uninstaller
set INSTALL_DIR=C:\Program Files\Revo Uninstaller

:: Create the directory if it does not exist
if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"

:: Download Revo Uninstaller installer in the background using curl
echo Downloading Revo Uninstaller installer...
curl -o "%TEMP%\revouninstaller_installer.exe" %URL%

:: Install Revo Uninstaller silently
echo Installing Revo Uninstaller...
start /wait "" "%TEMP%\revouninstaller_installer.exe" /S /D=%INSTALL_DIR%

:: Cleanup downloaded installer
del "%TEMP%\revouninstaller_installer.exe"

echo Installation complete. Revo Uninstaller is installed in %INSTALL_DIR%.
pause
