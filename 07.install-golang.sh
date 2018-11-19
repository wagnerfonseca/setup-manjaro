#!/bin/bash
. script_basic.sh

VERSION="1.10.5"

URL="https://dl.google.com/go/go${VERSION}.linux-amd64.tar.gz" 

get_resource $URL
download_resource $URL
SOURCE_NAME="go1.10.5"
SOURCE_ARCHIVE="go1.10.5.linux-amd64.tar.gz"
unpack "/opt/local/bin/go1.10.5"
config_environment "GOROOT"
remove_source
