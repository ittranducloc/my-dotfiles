#!/usr/bin/env bash
[ -x "$(command -v composer)" ] && echo 'php already installed' && exit 0

echo '=========Install php by asdf version manager'
sudo apt-get update &&
	sudo apt-get install -y autoconf bison build-essential curl gettext git libgd-dev libcurl4-openssl-dev libedit-dev libicu-dev libjpeg-dev libmysqlclient-dev libonig-dev libpng-dev libpq-dev libreadline-dev libsqlite3-dev libssl-dev libxml2-dev libzip-dev openssl pkg-config re2c zlib1g-dev locate
source ~/.asdf/asdf.sh
asdf plugin-add php https://github.com/asdf-community/asdf-php.git
asdf install php 8.2.7
asdf global php 8.2.7
[ ! -x "$(command -v composer)" ] && echo 'Fail to install php' && exit 1
composer --version
