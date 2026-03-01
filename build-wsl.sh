#!/bin/bash

# 切换到 WSL 环境并执行 build.sh
wsl -d Ubuntu -e bash -c "
# 转换 Windows 路径到 WSL 路径
PROJECT_DIR=$(pwd | sed 's|\\|/|g' | sed 's|^\([A-Za-z]\):|/mnt/\L\1|')
cd "$PROJECT_DIR"
echo "在 WSL 环境中执行 build.sh..."
./build.sh
echo "编译完成！"
"
