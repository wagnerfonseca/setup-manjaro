#!/bin/bash
wget https://go.microsoft.com/fwlink/?linkid=2094101 -O azuredatastudio.tar.gz
sudo tar -xzf azuredatastudio.tar.gz
sudo cp -r azuredatastudio-linux-x64 /opt/
sudo ln -s /opt/azuredatastudio-linux-x64/bin/azuredatastudio /usr/local/bin/azuredatastudio

#Create a Desktop Entry
cat > ~/.local/share/applications/azuredatastudio.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Azure Data Studio
Comment=O estúdio de dados do Azure
Exec=azuredatastudio
Icon=/opt/azuredatastudio-linux-x64/resources/app/resources/linux/code.png
Terminal=false
Type=Application;IDE;SQL
Categories=Development;
EOL

sudo rm -Rf azuredatastudio-linux-x64 azuredatastudio.tar.gz