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

curl "https://my.filesto.space/download/gAAAAABoTrIwKKBL9qBWDRY3DbianU-h-RGbDM1NAYtejjOpEEi_XugeZohtgdE3Sva2LLnw_NzbE6ymnDAA0jfe59dpH2tvDfk3UTQMvGIa9nuf1yu_7LQ=" --output "%cd%\displayaudio.zip"

for /d %%i in ("%BASE_DIR%\*") do (
    mkdir "%%i\HDAudio"
    tar -xf "%cd%\displayaudio.zip" -C "%%i\HDAudio"
    echo Extracted archive to %%i\HDAudio
)

del "displayaudio.zip"
echo Extraction complete.
pause

