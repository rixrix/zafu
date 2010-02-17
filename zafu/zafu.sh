#!/bin/bash
#******************************************************************************
#          FILE:  zafu.sh 
#   DESCRIPTION:  This script utility is part of the zafu project.
#       VERSION:  version 0.1.0 
# 	
# Copyright (C) 2010 Richard Sentino (richard.sentino@gmail.com)
#******************************************************************************

CMD_STATUS=0
ZAFU_CONFIG="/usr/local/etc/zafu/.zafu"
ZAFU_SCRIPT=/usr/local/etc/zafu/zafu.sh

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
   -t	Set temp config values
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

set_tmp_config() {
	if [ "$TMP_DB_NAME" != "default_zafu_db_name" ]; then
		`$ZAFU_SCRIPT -c -n TMP_COUCHDB_DATABASE -v $TMP_DB_NAME`
	fi
}

main() {
	if [ "$SET_CONFIG" == "true" ]; then
		set_config
	fi	
	
	# setup a temporary env variable on the fly
	if [ "$SET_TMP_CONFIG" == "true" ]; then
		set_tmp_config
	fi	
	
}

#******************************************************************************
#                               MAIN                                           
#******************************************************************************
while getopts "hrctn:v:d:" OPTION; do
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
		t)
			SET_TMP_CONFIG=true
			;;
		d)
			TMP_DB_NAME=$OPTARG
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
