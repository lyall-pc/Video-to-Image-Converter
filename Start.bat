@echo off
title = Video to Image Converter
if exist "node_modules" (
    node ./src/index.js
    timeout /t 5 /nobreak
) else (
    echo First run, installing modules...
    npm i @ffmpeg-installer/ffmpeg@1.1.0 @ffprobe-installer/ffprobe fluent-ffmpeg@2.1.2 prompts@2.4.2
    echo Finished installing modules!
    title = Video to Image Converter 
    node ./src/index.js
    timeout /t 5 /nobreak
)
