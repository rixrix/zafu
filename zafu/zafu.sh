#!/bin/bash
#******************************************************************************
# 		   FILE:	zafu.sh 
#	DESCRIPTION:	This script utility is part of the zafu project.
# 		VERSION:	version 0.1.0 
# 	
# 			Copyright (C) 2010 Richard Sentino (richard.sentino@gmail.com)
#******************************************************************************

CMD_STATUS=0
ZAFU_CONFIG="/usr/local/etc/zafu/.zafu"

# Show help menu
usage()
{
cat << EOF

Usage: $0 [options]

OPTIONS:
   -h	Show help message
   -c	Update zafu config values
   -n	Config name
   -v   Config value
   -r   Resource a TCL script
   -v   verbose mode

Copyright (C) 2010 Richard Sentino (richard.sentino@gmail.com)
EOF
}

set_config() {
	NEW_CONFIG_VALUE="$CNAME=\"$CVALUE\""
	TMP_FILE=`mktemp /usr/local/etc/zafu/.zafu.XXXXX` || exit 1
	sed "s/^$CNAME.*$/$NEW_CONFIG_VALUE/" $ZAFU_CONFIG > $TMP_FILE
	mv $TMP_FILE $ZAFU_CONFIG	
}

main() {
	if [ "$SET_CONFIG" == "true" ]; then
		set_config
	fi	
}

#******************************************************************************
#									MAIN                                           
#******************************************************************************
while getopts "hrcn:v:" OPTION; do
	case $OPTION in
		c)
			SET_CONFIG=true			
			;;
		n)
			CNAME=$OPTARG
			;;
		v)
			CVALUE=$OPTARG
			;;
		h)
			echo "help"
			usage
			exit 1
			;;
		?)
			echo "usage"
			usage
			exit 1
			;;
	esac
done

main
exit $CMD_STATUS
