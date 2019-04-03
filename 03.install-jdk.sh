#!/bin/bash
. package-install-basic.sh

echo "Instalando e substituindo o OpenJDK para o JDK Oracle"

DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
SOURCE_PATH="/usr/lib64/jvm/jdk1.8.0_202"

echo Baixando o JDK para a pasta $DIR
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/otn-pub/java/jdk/8u202-b08/1961070e4c9b4e26a04e7f5a083f551e/jdk-8u202-linux-x64.tar.gz -P $DIR

echo Descompactando o tarball
if ! sudo tar -zxf jdk-*.tar.gz -C /usr/lib64/jvm
then
  echo "Houve um erro ao descompactar o arquivo .tar.gz"
  exit 1
fi

archlinux-java status
sudo archlinux-java set jdk1.8.0_202
archlinux-java status
java -version

config_environment "JAVA_HOME"

mkdir ~/.mozilla/plugins/ 
ln -s /usr/lib64/jvm/jdk1.8.0_202/jre/lib/amd64/libnpjp2.so ~/.mozilla/plugins/libnpjp2.so

echo Apagando o tarball
sudo rm jdk-*.tar.gz
