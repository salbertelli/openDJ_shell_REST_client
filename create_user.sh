#!/bin/bash
#OpenDJ shell REST client
#Creates a user entry from given JSON payload

#pull in settings file
source settings

URL="$PROTOCOL://$OPENDJ_SERVER:$OPENDJ_SERVER_PORT/users?_action=create&_prettyPrint=true"

#check that payload is passed as an argument
if [ "$1" = "" ]; then
	echo ""
	echo "New user JSON payload missing!  Eg $0 user.json"
	echo ""
	exit
fi

DATA=$1

#username and password come from settings file
curl --request POST --user $USERNAME:$PASSWORD --header "Content-Type: application/json" --data "@$DATA" $URL
echo ""
