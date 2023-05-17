path=/sys/class/backlight/intel_backlight/brightness
echo -n "light percent:"
read per
chmod 777 $path
if [[ $per != '' ]]; then
	echo $(($per*96000/100)) > $path
else
	echo 30000 > $path
fi


