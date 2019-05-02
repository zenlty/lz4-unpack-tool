::::::::::::::::::::::::::::::::::::::::::::::::::
:: CREATED BY BARIS HIRECE, GSMTURKEY.NET, 2019 ::
::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
:START
chcp 857 
cls
title GSM Turkey LZ4 Tool
cd "%~dp0"
if exist "%~dp0\bin" SET PATH=%PATH%;"%~dp0\bin"
:MAIN_TR
chcp 857 
cls
echo( 
echo ===================
echo GSM Turkey LZ4 Tool  
echo ===================
echo(
echo(
echo =========================================
echo  1. boot.img.lz4 to boot.img 

echo  2. system.img.lz4 to system.img

echo  3. recovery.img.lz4 to recovery.img

echo =========================================
echo(
set /p option=Seciminizi yazin [1-3] ve ENTER'a basin: || set option="0"
if /I %option%==1 goto boot
if /I %option%==2 goto system
if /I %option%==3 goto recovery


goto MAIN_TR

:boot
@echo off
cls
echo boot.img.lz4 to boot.img converter
pause
lz4.exe -d files/boot.img.lz4 output/boot.img
echo Islem Tamamlandi.
pause
goto MAIN_TR
:system
@echo off
cls
echo system.img.lz4 to system.img converter
pause
lz4.exe -d files/system.img.lz4 output/system.img
echo Islem Tamamlandi.
pause
goto MAIN_TR
:recovery
@echo off
cls
echo recovery.img.lz4 to recovery.img converter
pause
lz4.exe -d files/recovery.img.lz4 output/recovery.img
echo Islem Tamamlandi.
pause
goto MAIN_TR





