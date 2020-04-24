#!/bin/sh

. /etc/rc.common


# Make sure testadmin exists

function checktestadmin () {
local test1=$(dscl . -list /Users | grep -i soldoadmin)
if [ "$test1" = “soldoadmin” ]; then
  	echo the username soldoadmin already exists
  	echo setting password
  	dscl . passwd /Users/soldoadmin !!lucarammin11
  	exit
else
	LastID=`dscl . -list /Users UniqueID | awk '{print $2}' | sort -n | tail -1`;
	NextID=$((LastID + 1));
	NewUser=soldoadmin
	dscl . create /Users/$NewUser
	dscl . create /Users/$NewUser RealName "Soldo Admin"
	dscl . create /Users/$NewUser hint "Set by Intune MDM Script"
	dscl . create /Users/$NewUser picture "/Library/User Pictures/Nature/Earth.png"
	dscl . passwd /Users/$NewUser !!lucarammin11
	dscl . create /Users/$NewUser UniqueID $NextID
	dscl . create /Users/$NewUser PrimaryGroupID 80
	dscl . create /Users/$NewUser UserShell /bin/bash
	dscl . create /Users/$NewUser NFSHomeDirectory /Users/$NewUser
	cp -R /System/Library/User\ Template/English.lproj /Users/$NewUser
	chown -R $NewUser:staff /Users/$NewUser
	dscl . -append /Groups/admin GroupMembership $NewUser
fi
}

checktestadmin
