bat=$(</sys/class/power_supply/BAT0/energy_now)
echo -n "$bat:"
full=$(</sys/class/power_supply/BAT0/energy_full)
echo -n "$full:"
echo $(($bat*100/$full))
