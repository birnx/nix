# hyprland workspace hack?
Ns$MmWM#K7$5P7OF84L2For those who failed to install or compile hyprsome like me, I find out a way to use hyprland's built-in command hyprctl to implement the monitor-independent workspaces.

The key idea here is to concatenate the monitor id with workspace number. You can get your currently focusing monitor id with `hyprctl -j monitors | jq -r '.[] | select(.focused == true) | .id'`. Then, concatenate it with the monitor id.

for example, you can declare a variable

$activeMonitorId="$(hyprctl -j monitors | jq -r '.[] | select(.focused == true) | .id')"

then use this variable as a command to generate the currently focusing monitor id.

bind = $mainMod, 1, execr, hyprctl dispatch workspace "$activeMonitorId"1

since hyprland will only generate new workspace on your currently focusing monitor, unless you set some defaults, this can efficiently implement monitor independent workspaces.

Also, To switch focus between monitors, use focusmonitor.