@echo off
title Audio Switch - Realtek and Mic 4
chcp 65001 >nul

echo [*] 시스템 및 디스코드 장치를 강제로 동시 전환 중...
echo.

:: 1. 윈도우 시스템 장치 변경 (Realtek 스피커 + 4번 마이크)
"G:\soundvolumeview-x64\SoundVolumeView.exe" /SetDefault "Realtek High Definition Audio" all
"G:\soundvolumeview-x64\SoundVolumeView.exe" /SetDefault "4- USB Audio Device" all

:: 2. 디스코드 프로그램에 직접 장치 강제 지정 (핵심)
"G:\soundvolumeview-x64\SoundVolumeView.exe" /SetAppDefault "Realtek High Definition Audio" all "Discord.exe"
"G:\soundvolumeview-x64\SoundVolumeView.exe" /SetAppDefault "4- USB Audio Device" all "Discord.exe"

echo.
echo ==========================================
echo [성공] 전환 완료! 디코 설정창을 껐다 켜보세요.
echo ==========================================
timeout /t 2 >nul
