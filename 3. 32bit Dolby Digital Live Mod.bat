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
echo Downloading Dolby Atmos Live Driver (32bit)
echo =====================================================
title Downloading Dolby Atmos Live Driver (32bit)

curl "https://dl.filesto.space/download/gAAAAABptyaALdgD8PEyRQkBXwcRHSKYpG9baItHIci0K0l8Q_nFBNR4hE9owx_s7r-evncxS7ouWAVCnXKLhekhXPTt30sANwU0Hk-yoanx24xmrwc_pE27bn1VAHVWMHpC6YaGa7dw" --output "%cd%\displayaudio.zip"

for /d %%i in ("%BASE_DIR%\*") do (
    mkdir "%%i\HDAudio"
    tar -xf "%cd%\displayaudio.zip" -C "%%i\HDAudio"
    echo Extracted archive to %%i\HDAudio
)
del "displayaudio.zip"
echo Extraction complete.
pause

