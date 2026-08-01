@echo off
chcp 65001 >nul
title 跳舞的线 - 本地服务器
cd /d "%~dp0"

python --version >nul 2>&1
if %errorlevel%==0 (
    echo 启动服务器: http://localhost:8080
    echo 按 Ctrl+C 停止
    start http://localhost:8080
    python -m http.server 8080
    goto :end
)

python3 --version >nul 2>&1
if %errorlevel%==0 (
    echo 启动服务器: http://localhost:8080
    echo 按 Ctrl+C 停止
    start http://localhost:8080
    python3 -m http.server 8080
    goto :end
)

echo 未找到 Python, 请安装: https://python.org
pause

:end
