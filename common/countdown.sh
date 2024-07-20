#!/bin/bash
# https://gist.github.com/krohne/298c6393cf3dd6063b054dd297ba7714
# $1 = # of seconds
# $@ = What to print after "Waiting n seconds"
countdown() {
	secs=$1
	shift
	msg=$@
	while [ $secs -gt 0 ]; do
		printf "\r\033[K$msg in %.d seconds" $((secs--))
		sleep 1
	done
	echo
}
