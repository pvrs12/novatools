#python -m msp430.bsl5.hid -e -r build/main.elf
if [ $# -lt 1 ]; then
	echo "You must provide an elf to patch with"
	exit 1
fi

python -m msp430.bsl5.hid -e -r $1
