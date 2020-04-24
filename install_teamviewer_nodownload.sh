set -eux
cd ~/Downloads
sudo installer -pkg Install%20TeamViewerHost-idcrqm82x7.pkg -target /
cd /Applications/TeamViewerHost.app/Contents/Helpers
chmod +x TeamViewer_Assignment
sudo ./TeamViewer_Assignment -api-token "8763298-Z4N2bMy8T4EYHE3uOLQX"
