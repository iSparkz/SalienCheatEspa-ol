@echo off
setlocal enabledelayedexpansion

if not exist php\php.exe (
	echo No se ha detectado PHP; Lo descargaremos e instalaremos por ti.
	PowerShell -ExecutionPolicy Unrestricted -File "downloadphp.ps1"
)

if not exist token.txt (
	set /p token=Por favor obten un token aqui: https://steamcommunity.com/saliengame/gettoken e ingresalo: 
	echo !token! > token.txt
)

echo Puede terminar este script en cualquier momento presionando Ctrl-C

:start
php\php.exe -f cheat.php
goto start
