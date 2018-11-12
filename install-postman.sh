#!/bin/bash
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
sudo tar -xzf postman.tar.gz
sudo cp -r Postman /opt/local/bin
sudo ln -s /opt/local/bin/Postman/Postman /usr/bin/postman

#Create a Desktop Entry
cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/local/bin/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

sudo rm -rf Postman
rm postman.tar.gz