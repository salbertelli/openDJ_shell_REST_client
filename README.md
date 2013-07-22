OpenDJ Shell REST Client
========================
<br/>
Basic set of Bash wrapper scripts that use curl, to access the OpenDJ (www.forgerock.com/opendj) RESTful interface.
<br/>
Edit the settings file with server and port values for OpenDJ instance.
<br/>
<br/>
<b>Requirements</b>
<br/>
The scripts were tested curl v7.22.0. 
<br/>
Use as-is, no warranty implied. Leave this readme and any attribution in place. Simon Moffatt, 2013 
<br/>
Note these are my tools and in no way officially supported by Forgerock. They are publicly available as a community contribution.
<br/>

<br/>
<b>CONTENTS</b>
<br/>
<b>interactive</b> - an interactive CLI to access all scripts
<br/>
<b>settings</b> - edit with appropriate OpenDJ server address/port information and username and password details if authentication is enabled.
<br/>
<b>get_user</b> - returns user object.  Takes uid of user as arg 1
<br/>
<b>delete_user</b> - deletes user object.  Takes uid of user as arg 1
<br/>
<b>patch_user</b> - updates specific attributes of existing user, using PATCH verb.  Requires uid as arg 1 and JSON payload of new object as arg 2
<br/>
<b>create_user</b> - creates a user object based on given JSON payload.

