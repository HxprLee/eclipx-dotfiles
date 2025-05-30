#!/usr/bin/env bash

# Import Current Theme
dir="$HOME/.config/rofi/scripts/screenshot"
theme="$dir/screenshot"

# Theme Elements
prompt='Screenshot'
mesg="DIR: $HYPRSHOT_DIR"
list_col='3'
list_row='1'
win_width='400px'


#option_1=" Capture Desktop"
#option_2=" Capture Area"
#option_3=" Capture Window"
option_1=""
option_2=""
option_3=""

# Rofi CMD
rofi_cmd() {
	rofi -theme-str "window {width: $win_width;}" \
		-theme-str "listview {columns: $list_col; lines: $list_row;}" \
		-theme-str 'textbox-prompt-colon {str: " Screenshot";}' \
		-dmenu \
		-p "$prompt" \
		-mesg "$mesg" \
		-markup-rows \
		-theme ${theme}
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$option_1\n$option_2\n$option_3" | rofi_cmd
}

# take shots
shotnow () {
	sleep 0.115 && hyprshot -z -m output
}

shotwin () {
	sleep 0.115 && hyprshot -z -m window
}

shotarea () {
	sleep 0.115 && hyprshot -z -m region
}

# Execute Command
run_cmd() {
	if [[ "$1" == '--opt1' ]]; then
		shotnow
	elif [[ "$1" == '--opt2' ]]; then
		shotarea
	elif [[ "$1" == '--opt3' ]]; then
		shotwin
	fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $option_1)
		run_cmd --opt1
        ;;
    $option_2)
		run_cmd --opt2
        ;;
    $option_3)
		run_cmd --opt3
        ;;
esac


