#!/bin/sh

docker build -t "nickmooney/jgrasp" .
ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $ip
docker run -it --rm -e XAUTHORITY=/tmp/xauth -e DISPLAY=$ip:0 -v ~/.Xauthority:/tmp/xauth -v $PWD/src:/home/jgrasp/src -v $PWD/.grasp_settings:/home/jgrasp/.grasp_settings nickmooney/jgrasp $@
