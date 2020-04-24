set -eux
cd ~/Downloads
curl -O https://dl.teamviewer.com/download/version_15x/CustomDesign/Install%20TeamViewerHost-idcrqm82x7.pkg
installer -pkg Install%20TeamViewerHost-idcrqm82x7.pkg -target /
cd /Applications/TeamViewerHost.app/Contents/Helpers
chmod +x TeamViewer_Assignment
./TeamViewer_Assignment -api-token "8763298-Z4N2bMy8T4EYHE3uOLQX"
cd ~/Downloads
rm Install%20TeamViewerHost-idcrqm82x7.pkg
