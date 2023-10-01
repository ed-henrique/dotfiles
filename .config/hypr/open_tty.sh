pid="$(hyprctl activewindow | grep 'pid: ' | awk -F': ' ' { print $NF } ')"
ppid="$(pgrep --newest --parent "${pid}")"
current_dir="$(readlink "/proc/${ppid}/cwd" || echo "$HOME")"

[[ -d "${current_dir}" ]] && alacritty --working-directory "${current_dir}" || alacritty

