#!/bin/bash
read -p "Enter username : " uname
read -sp "Enter password : " pass
echo
if [ "$uname" == "kevingonzalez" ] && [ "$pass" == "password" ]; then
	echo "Hello $uname, you're right access"
else
	echo "Hello $uname, Access Denied!"
fi
