#!/bin/bash 

docker run -d --name=consul-template --restart=always zollie/consul-template "$@" 

