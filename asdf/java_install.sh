#!/usr/bin/env bash
[ -x "$(command -v java)" ] && echo 'java already installed' && exit 0

echo '=========Install java by asdf version manager'
echo 'Install java plugin'
source ~/.asdf/asdf.sh
asdf plugin-add java https://github.com/halcyon/asdf-java.git
echo 'Install Java SE 8'
VERSION=adoptopenjdk-8.0.372+7
asdf list-all java | grep $VERSION
asdf install java $VERSION
asdf global java $VERSION
[ ! -x "$(command -v java)" ] && echo 'Fail to install java' && exit 1
java -version
