#!/bin/bash

$Dir="/home/kevingonzalez/Documents/bash/makeDir"
if [ -d "$Dir" ]; then
	rmdir /home/kevingonzalez/Documents/bash/makeDir
else
	mkdir /home/kevingonzalez/Documents/bash/makeDir
fi
