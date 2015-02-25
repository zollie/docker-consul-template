FROM gliderlabs/alpine:3.1 

ADD https://github.com/hashicorp/consul-template/releases/download/v0.6.0/consul-template_0.6.0_linux_amd64.tar.gz /tmp/consul-template.tgz
RUN cd /bin && gzip -dc /tmp/consul-template.tgz | tar -xf - && rm /tmp/consul-template.tgz
RUN mv /bin/consul-template_0.6.0_linux_amd64/consul-template /bin/consul-template 
RUN rmdir /bin/consul-template_0.6.0_linux_amd64

RUN apk-install -t docker-io

ADD run.sh run.sh

ENTRYPOINT ["/run.sh"]


