#!/bin/bash
#OpenDJ shell REST client
#Patches given user entry with JSON payload.  Patch is attribute specific update, as opposed to PUT which replaces entire object including r/o values

#pull in settings file
source settings

USER=$1
DATA=$2

URL="$PROTOCOL://$OPENDJ_SERVER:$OPENDJ_SERVER_PORT/users/$USER?_prettyPrint=true"

#check that username is passed as an argument
if [ "$1" = "" ]; then
	echo ""
	echo "User ID to return missing!  Eg $0 bjensen updates.json"
	echo ""
	exit
fi

#check that JSON updates are passed as an argument
if [ "$2" = "" ]; then
	echo ""
	echo "JSON payload of updates missing!  Eg $0 bjensen updates.json"
	echo ""
	exit
fi

clear
echo "Original User:"
echo "----------------------------------------"
./get_user.sh $USER
echo ""
echo ""
echo "Updated User:"
echo "----------------------------------------"
echo ""
curl --request PATCH --user $USERNAME:$PASSWORD --header "Content-Type: application/json" --data "@$DATA" $URL
echo ""

