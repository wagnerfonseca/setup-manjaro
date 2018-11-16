#!/bin/bash
. script_basic.sh

VERSION="2018.2.6"
URL="https://download.jetbrains.com/idea/ideaIU-${VERSION}.tar.gz"

DESTINY_PATH="/opt/Intellij-IDEA-Community"

get_resource $URL
download_resource $URL
unpack $DESTINY_PATH
create_symlink "bin/idea.sh" "idea.sh"

cat > ~/.local/share/applications/intellijidea.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Intellij IDEA
Exec=intellijIDEA
Icon=/opt/Intellij-IDEA-Community/ideaIU-2018.2.6/bin/idea.png
Terminal=false
Type=Application
Categories=Development;
EOL

remove_source
