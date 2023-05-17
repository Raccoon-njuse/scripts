notify-send "start translate"
transout=$(crow -b -t zh-CN -e lingva -- "$(wl-paste -p)")
notify-send -- "$transout"
