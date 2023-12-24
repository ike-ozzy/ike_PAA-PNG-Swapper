@echo off
MD temp
FOR /F "tokens=1* delims=. " %%A in ('dir /b *.paa') do (
"P:\ike's Tools\ike_PAA+PNG Swapper\ikeSwaP.exe" %%A.paa temp\%%A.png
 if ERRORLEVEL 1 goto err
)
rem move stuff to current dir and clean out temp dir.
move temp\*.png .
rd temp
pause