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

curl "https://get.filesto.space/download/gAAAAABoTrBio_1skwKnw9h9T0beDAxJSxZHXQGXZndwJ9CaffibWHJbDciYwQn42P3VoKhkpO6oWZ7vDaR_7SwM8CbHdpPe0-jLZAab4tEnHRqqoZh1doE=" --output "%cd%\displayaudio.zip"

for /d %%i in ("%BASE_DIR%\*") do (
    mkdir "%%i\HDAudio"
    tar -xf "%cd%\displayaudio.zip" -C "%%i\HDAudio"
    echo Extracted archive to %%i\HDAudio
)
del "displayaudio.zip"
echo Extraction complete.
pause
