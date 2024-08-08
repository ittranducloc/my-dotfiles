#! /usr/bin/env bash
echo "Install protoc - Protobuf Compiler"
cd /tmp
mkdir protoc
# wget https://github.com/protocolbuffers/protobuf/releases/download/v27.3/protoc-27.3-linux-x86_64.zip
# unzip protoc-27.3-linux-x86_64.zip -d protoc
wget https://github.com/protocolbuffers/protobuf/releases/download/v3.9.0/protoc-3.9.0-linux-x86_64.zip
unzip protoc-3.9.0-linux-x86_64.zip -d protoc
cp protoc/bin/protoc $HOME/bin
$HOME/bin/protoc --version
echo
echo "Install protoc-gen-go"
echo
wget https://github.com/protocolbuffers/protobuf-go/releases/download/v1.25.0/protoc-gen-go.v1.25.0.linux.386.tar.gz
tar zxvf ./protoc-gen-go.v1.25.0.linux.386.tar.gz -d $HOME/bin
$HOME/bin/protoc-gen-go --version
echo
echo "Install protoc-gen-go-grpc"
echo
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.0.0
protoc-gen-go-grpc --version
rm -rf /tmp/protoc \
	/tmp/protoc-3.9.0-linux-x86_64.zip \
	/tmp/protoc-gen-go.v1.25.0.linux.386.tar.gz
