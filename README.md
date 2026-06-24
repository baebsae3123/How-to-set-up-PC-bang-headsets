# 헤드셋 / 스피커 PC방 설정법
soundvolumeview-x64 깔고 오시길

# 설정법 

@echo off
title Audio Switch - Headset 8
chcp 65001 >nul

echo [*] 시스템 및 디스코드 장치를 8번 헤드셋으로 강제 전환 중...
echo.

:: 1. 윈도우 시스템 장치 변경 (8번 스피커 + 8번 마이크)
"G:\soundvolumeview-x64\SoundVolumeView.exe" /SetDefault "8- USB Audio Device" all

:: 2. 디스코드 프로그램에 8번 장치 직접 강제 지정
"G:\soundvolumeview-x64\SoundVolumeView.exe" /SetAppDefault "8- USB Audio Device" all "Discord.exe"

echo.
echo ==========================================
echo [성공] 8번 헤드셋 장치로 일괄 전환 완료!
echo 디코 설정창을 껐다 켜거나 Ctrl+R을 눌러보세요.
echo ==========================================
timeout /t 2 >nul

<img width="209" height="135" alt="image" src="https://github.com/user-attachments/assets/d214b05a-335d-41f8-906e-16a58ab45645" />

이렇게 만들어주면 끝!
