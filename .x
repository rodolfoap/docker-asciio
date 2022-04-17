case "$1" in
b)	./build.bash
	;;
e)	vi -p Dockerfile build.bash cli.bash launch.bash
	;;
s)	./cli.bash
	;;
"")	./asciio.bash
	;;
esac
