#!/bin/bash
# 跳舞的线 - 本地服务器启动脚本
# 使用方法: 双击运行或 bash start-server.sh

cd "$(dirname "$0")"

# 检查 Python3
if command -v python3 &>/dev/null; then
    echo "启动服务器: http://localhost:8080"
    echo "按 Ctrl+C 停止"
    python3 -m http.server 8080
# 检查 Python2
elif command -v python &>/dev/null; then
    echo "启动服务器: http://localhost:8080"
    echo "按 Ctrl+C 停止"
    python -m SimpleHTTPServer 8080
# 检查 Node.js
elif command -v npx &>/dev/null; then
    echo "启动服务器: http://localhost:8080"
    echo "按 Ctrl+C 停止"
    npx http-server -p 8080
else
    echo "未找到 Python 或 Node.js, 请安装其中之一:"
    echo "  Python: https://python.org"
    echo "  Node.js: https://nodejs.org"
    read -p "按回车键退出..."
fi
