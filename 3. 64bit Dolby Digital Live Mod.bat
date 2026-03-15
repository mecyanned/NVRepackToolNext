@echo off
setlocal enabledelayedexpansion

set "BASE_DIR=%cd%\Temp\Extract"

echo =====================================================
echo Deleting existing HDAudio folders inside "%BASE_DIR%"
echo =====================================================

for /d %%i in ("%BASE_DIR%\*") do (
    rmdir /s /q "%%i\HDAudio"
    echo Deleted %%i\HDAudio if it existed.
)

echo =====================================================
echo Downloading Dolby Atmos Live Driver (64bit)
echo =====================================================
title Downloading Dolby Atmos Live Driver (64bit)

curl "https://dl.filesto.space/download/gAAAAABptyYHCPEUyrzdBYmMNOrZZraMZ6mMg_8KhIYN_-3483zycYT2XKZA9pq1jRz-eIJoQII697VaxginY7Lg1_TUfzXd0--HFhPFQtqN0-Vr7np-BBBPn0pYW3RxEKBX_ytE5BeN" --output "%cd%\displayaudio.zip"

for /d %%i in ("%BASE_DIR%\*") do (
    mkdir "%%i\HDAudio"
    tar -xf "%cd%\displayaudio.zip" -C "%%i\HDAudio"
    echo Extracted archive to %%i\HDAudio
)

del "displayaudio.zip"
echo Extraction complete.
pause

