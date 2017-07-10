@echo off

title escape
color a
cls

start speech.vbs

echo.
echo 1. shutdown
echo 2. restart
echo 3. hibernate
echo 4. lock
echo 5. log out
echo 6. slide to shutdown
echo.

echo.
echo x. exit
echo.

set /p choice=choice: 

goto %choice%

:1
shutdown /s /t 0 /f
exit /b

:2
shutdown /r /t 0 /f
exit /b

:3
shutdown /h /t 0 /f
exit /b

:4
rundll32 user32.dll,LockWorkStation
exit /b

:5
rem /v
logoff
exit /b

:6
slidetoshutdown
exit /b

:x
exit /b


short


last
