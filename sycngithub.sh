#!/bin/bash

# 定义数组，存储本地仓库的文件夹名称
folders=("scripts" "dotfiles" "se" "Notes")

# 循环遍历数组，进行 pull、add、commit 和 push 操作
for folder in ${folders[@]}
do
  # 进入到文件夹目录
  cd ~/$folder
  
  echo "#################"
  echo "current dir : $folder"
  echo "#################"
  # 执行 git pull 命令
  git pull

  # 执行 git add 命令
  git add .

  # 执行 git commit 命令
  git commit -m "update $(date +%Y-%m-%d_%H:%M:%S)"

  # 执行 git push 命令
  git push

  # 返回上一级目录
  cd ..
done

