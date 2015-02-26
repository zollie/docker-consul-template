#!/bin/bash 

name=$1; shift

docker run -d --restart=always --name=$name zollie/consul-template "$@" 

