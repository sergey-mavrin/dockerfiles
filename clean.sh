#!/bin/bash

for i in `docker ps -q`
    do
	docker stop ${i}
    done

for i in `docker ps -a -q`
    do
	docker rm ${i}
    done

for i in `docker images | grep -v centos | awk {'print $3'}`
    do
	docker rmi ${i}
    done
