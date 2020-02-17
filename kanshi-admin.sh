#!/bin/sh
usage(){
	cat<<__HELP__

[Usage]
	add IP add IP address to monitor
__HELP__
}

	case $1 in
		list) ls /var/tmp/data ;;
		add)echo $2 >>ping.list ;;
		del)sed -i -e '/'$2'/d' ping.list ;;
		help|*)usage ;;
	esac
exit 0
