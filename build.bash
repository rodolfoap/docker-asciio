#!/bin/bash
sudo docker build \
	--build-arg USERNAME=rap \
	-t rodolfoap/asciio:1.51.3-1 .
