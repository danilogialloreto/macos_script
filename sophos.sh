#!/bin/bash

mkdir /private/var/tmp/sophos
cd /private/var/tmp/sophos

# Installing Sophos
curl -L -O "https://dzr-api-amzn-eu-west-1-9af7.api-upe.p.hmr.sophos.com/api/download/1d2c80443fff0e39283f1bd5f1d5542b/SophosInstall.zip"
unzip SophosInstall.zip
chmod a+x /private/var/tmp/sophos/Sophos\ Installer.app/Contents/MacOS/Sophos\ Installer
chmod a+x /private/var/tmp/sophos/Sophos\ Installer.app/Contents/MacOS/tools/com.sophos.bootstrap.helper
sudo /private/var/tmp/sophos/Sophos\ Installer.app/Contents/MacOS/Sophos\ Installer --install;
/bin/rm -rf /private/var/tmp/sophos;

exit 0      ## Success
exit 1      ## Failure
