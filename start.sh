#!/bin/bash 

#
# Pass args for consul-template
#

docker run -it --name=consul-template --restart=always zollie/consul-template "$@" 

