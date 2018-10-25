#!/bin/bash

clear

grn=$'\e[1;32m'
red=$'\e[1;31m'
white=$'\e[0m'
blu=$'\e[1;34m'

printf "$grn \n\n"
printf "									╭━━━━━━━━━╮\n"
printf "									┃━━●━══━━━┃\n"
printf "									┃█████████┃\n"
printf "									┃█████████┃\n"
printf "									┃█████████┃\n"
printf "									┃█████████┃\n"
printf "									┃█████████┃\n"
printf "									┃█████████┃\n"
printf "									┃━━━━○━━━━┃\n"
printf "									╰━━━━━━━━━╯\n\n"
printf "    _/  _/_/_/    _/                                                _/_/_/  _/        _/_/_/            _/_/_/     _/               _/ \n"
printf "       _/    _/  _/_/_/      _/_/    _/_/_/      _/_/            _/        _/          _/            _/         _/_/_/_/  _/ _/_/  _/  \n"
printf "  _/  _/_/_/    _/    _/  _/    _/  _/    _/  _/_/_/_/          _/        _/          _/            _/           _/      _/_/     _/   \n"
printf " _/  _/        _/    _/  _/    _/  _/    _/  _/                _/        _/          _/            _/           _/      _/       _/    \n"
printf "_/  _/        _/    _/    _/_/    _/    _/    _/_/_/            _/_/_/  _/_/_/_/  _/_/_/            _/_/_/      _/_/   _/       _/     \n"
printf "$white \n\n"

printf "List of options:\n\n"
printf "$red 1 ┃ $white 💡  Flashlight on\n\n"
printf "$red 2 ┃ $white 🚫  Flaslight off\n\n"
printf "$red 3 ┃ $white 🔐  Lock phone\n\n"
printf "$red 4 ┃ $blu  ▶$white Play music\n\n"
printf "$red 5 ┃ $white ⏸  Pause music\n\n"
printf "$red 6 ┃ $white 👋  Say hello\n\n"
printf "$red 7 ┃ $white 🎭  Tell a joke\n\n"
printf "$red 8 ┃ $white ⛅  Show current weather\n\n"
printf "$red 9 ┃ $white 🔍  Find iPhone\n\n"
printf "Enter option: "

read option
mymessage="."

case $option in
	1)
		mymessage="lighton"
		;;
	2)
		mymessage="lightoff"
		;;
	3)
		mymessage="lock5582"
		;;
	4)
		mymessage="playmusic"
		;;
	5)
		mymessage="pausemusic"
		;;
	6)
		mymessage="sayhello"
		;;
	7)
		mymessage="telljoke"
		;;
	8)
		mymessage="tellweather"
		;;
	9)
		mymessage="[showlocation]"
		printf "\n Location Services have been turned on.\n"
		printf " Click here to show the location of your iPhone and enable Lost Mode:$red https://www.icloud.com/#find $white \n\n"
		;;
	*)
		printf "$red Invalid option, re-enter your choice\n\n"
		sleep 2.5s
		# /path/to/./iPhoneControl.sh
esac

printf "$grn Sending..."
echo "$mymessage" | mail # 1234567890@text.att.net
printf " Sent\n\n"

sleep 3.0s
# /path/to/./iPhoneControl.sh
