#!/bin/bash
. script_basic.sh

VERSION="3.6.0"

URL="http://mirror.nbtelecom.com.br/apache/maven/maven-3/$VERSION/binaries/apache-maven-$VERSION-bin.tar.gz"

install_resource $URL /opt/local/bin/apache M3

mvn -version

echo Instalação realizada com sucesso