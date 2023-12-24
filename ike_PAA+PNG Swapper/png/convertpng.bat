@echo off
MD temp
FOR /F "tokens=1* delims=. " %%A in ('dir /b *.png') do (
"C:\Users\ikeoz\OneDrive\Desktop\ike_PAA+PNG Swapper\ikeSwap.exe" %%A.png temp\%%A.paa
 if ERRORLEVEL 1 goto err
)
rem move stuff to current dir and clean out temp dir.
move temp\*.paa .
rd temp
pause