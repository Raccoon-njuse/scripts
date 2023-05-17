#!/bin/bash
killall swaybg


WALLPAPER_DIR="/home/raccoon/Pictures/Wallpaper"  # 壁纸文件夹路径

folders=()
while IFS= read -r -d '' folder; do
  folders+=("$folder")
done < <(find $WALLPAPER_DIR -mindepth 1 -maxdepth 1 -type d -print0)
random_folder=${folders[RANDOM % ${#folders[@]}]}
echo $random_folder
cd $random_folder
echo $random_folder >> /home/raccoon/Pictures/Wallpaper/.log.txt
wallpapers=(*)
random_wallpaper=${wallpapers[RANDOM % ${#wallpapers[@]}]}
echo $random_wallpaper >> /home/raccoon/Pictures/Wallpaper/.log.txt
swaybg -i ${random_folder}/${random_wallpaper} -m fill&
