# Asciio

Running from a container. Launch it with:

```
docker run --rm -it \
        --name asciio \
	--net host \
	--entrypoint asciio \
        -v $(pwd):/app \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-e DISPLAY=$DISPLAY \
	-h $HOSTNAME \
	-v $HOME/.Xauthority:${HOME}/.Xauthority \
	asciio
```
