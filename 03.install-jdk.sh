#!/bin/bash
. script_basic.sh

echo "Instalando e substituindo o OpenJDK para o JDK Oracle"

DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
SOURCE_PATH="/usr/lib64/jvm/jdk1.8.0_191"

echo Baixando o JDK para a pasta $DIR
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/jdk-8u191-linux-x64.tar.gz -P $DIR

echo Descompactando o tarball
if ! sudo tar -zxf jdk-*.tar.gz -C /usr/lib64/jvm
then
  echo "Houve um erro ao descompactar o arquivo .tar.gz"
  exit 1
fi

archlinux-java status
sudo archlinux-java set jdk1.8.0_191
archlinux-java status
java -version

config_environment "JAVA_HOME"

mkdir ~/.mozilla/plugins/ 
ln -s /usr/lib64/jvm/jdk1.8.0_191/jre/lib/amd64/libnpjp2.so ~/.mozilla/plugins/libnpjp2.so

echo Apagando o tarball
sudo rm jdk-*.tar.gz
