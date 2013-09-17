#!/bin/bash
#OpenDJ shell REST client
#Performs a basic bind test to bring back users record - useful for testing end user password changes

#pull in settings file
source settings

#check that uid payload is passed as an argument
if [ "$1" = "" ]; then
	echo ""
	echo "UID payload arg!  Eg $0 bjensen Passw0rd"
	echo ""
	exit
fi


#check that password payload is passed as an argument
if [ "$2" = "" ]; then
	echo ""
	echo "Password arg missing! Eg $0 bjensen Passw0rd"
	echo ""
	exit
fi

URL="$PROTOCOL://$1:$2@$OPENDJ_SERVER:$OPENDJ_SERVER_PORT/users/$1?_prettyPrint=true"

curl $URL

