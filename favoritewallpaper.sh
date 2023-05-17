# 获取文件的最后两行，中间使用 / 进行连接
cur_wall=$(tail -n 2 ~/Pictures/Wallpaper/.log.txt | tr '\n' '/' | sed 's/\/$//')
wall_name=$(tail -n 1 ~/Pictures/Wallpaper/.log.txt)
echo $wall_name
if ! [ -e ~/Pictures/Wallpaper/favorite/$wall_name ]; then
	cp $cur_wall ~/Pictures/Wallpaper/favorite/$wall_name
fi
