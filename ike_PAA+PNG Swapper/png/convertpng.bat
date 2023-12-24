@echo off
MD temp
FOR /F "tokens=1* delims=. " %%A in ('dir /b *.png') do (
"P:\ike's Tools\ike_PAA+PNG Swapper\ikeSwaP.exe" %%A.png temp\%%A.paa
 if ERRORLEVEL 1 goto err
)
rem move stuff to current dir and clean out temp dir.
move temp\*.paa .
rd temp
pause

