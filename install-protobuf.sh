#!/bin/bash
. package-install-basic.sh

NAME=protobuf
VERSION=3.8.0
TARGET=${NAME}-cpp-${VERSION}.tar.gz
URL=https://github.com/protocolbuffers/protobuf/releases/download/v${VERSION}/$TARGET
TARGET_PATH="/opt/${NAME}"

install_resource $URL $TARGET_PATH $NAME

cd $TARGET_PATH/${NAME}-${VERSION}
./configure
make 
make install
protoc --version