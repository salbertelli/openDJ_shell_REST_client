#!/bin/bash
#OpenDJ shell REST client
#Deletes a user entry

#pull in settings file
source settings

USER=$1

URL="$PROTOCOL://$OPENDJ_SERVER:$OPENDJ_SERVER_PORT/users/$USER?_prettyPrint=true"

#check that username is passed as an argument
if [ "$1" = "" ]; then
	echo ""
	echo "User ID to return missing!  Eg $0 bjensen"
	echo ""
	exit
fi

clear
#username and password come from settings file
curl --request DELETE --user $USERNAME:$PASSWORD $URL
echo ""
