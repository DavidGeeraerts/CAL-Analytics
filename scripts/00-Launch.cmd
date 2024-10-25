::	R Project Launch
::	This will do everything
::	Launching from Windows shell with Rscript

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Author: David Geeraerts
:: Location: Olympia, Washington USA
:: E-Mail: geeraerd@evergreen.edu

:: Copyleft License(s)
:: GNU GPL Version 3
:: https://www.gnu.org/licenses/gpl.html
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: VERSIONING INFORMATION
::  Semantic Versioning used
::   http://semver.org/
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@Echo Off
setlocal enableextensions
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

SET $Name=R Project Launcher
SET $Version=0.1.0
Title %$Name% Version:%$Version%
Prompt R$G
color 07
mode con:cols=85
mode con:lines=50


CD /D "%~dp0" 2> nul
cd ..

echo %Name% [Version:%$Version%]
echo %DATE% %TIME%

where /R "%ProgramFiles%" Rscript.exe | FIND /I "x64"> cache/RScript_PATH.txt
for /f "tokens=1-6 delims=\\" %%P IN (cache/RScript_PATH.txt) DO SET "PATH=%PATH%;%%P\%%Q\%%R\%%S\%%T\%%U"

::	Simple test
Rscript --version
Rscript scripts\00-Launch.R

TIMEOUT /T 120
Exit