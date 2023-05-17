export https_proxy=http://127.0.0.1:7890
export http_proxy=http://127.0.0.1:7890
export all_proxy=socks5://127.0.0.1:7890
killall cfw
nohup /opt/clash/cfw > ~/.nohup.log 2>&1 &
if [[ $1 == "" ]]; then
	echo 0
elif [[ $1 == "fox" ]]; then
	nohup firefox --new-window > ~/.nohup.log 2>&1 &
elif [[ $1 == "google" ]]; then
	nohup google-chrome-stable --new-window > ~/.nohup.log 2>&1 &
elif [[ $1 == "zsh" ]]; then
	zsh	
fi
