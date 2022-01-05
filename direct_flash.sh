#!/bin/bash

if [ "$EUID" -ne 0 ]; then
	echo "This must be run as root"
	exit 1
fi

if [ $# -lt 1 ]; then
	echo "You must provide an elf to patch with"
	exit 1
fi

. venv2/bin/activate
python -m msp430.bsl5.hid -vvvvv -e -r $1
deactivate
