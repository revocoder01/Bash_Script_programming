#!/bin/bash
echo "Which Operating System are your favourite for your Computer?"
read -p "Type your favourite OS Name : " OS
echo
case $OS in
	Windows|windows)
		echo "Oh! you're a $OS user."
		echo
		;;
	Chrome|chrome)
		echo "Cool! $OS is not bad."
		echo
		;;
	Linux|linux)
		echo "Woow! $OS is Amazing."
		echo
		;;
	OSX|osx|Mac|MacOS|mac|MAC)
		echo "$OS is one of the best Operating System."
		echo
		;;
	*)
		echo "Sounds intersting. I will try that."
		echo
		;;
esac
