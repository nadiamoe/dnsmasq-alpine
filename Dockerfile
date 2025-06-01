FROM alpine:3.21.3

ARG DNSMASQ_VERSION=2.90-r3

RUN apk --no-cache add dnsmasq=${DNSMASQ_VERSION}

ENTRYPOINT [ "/usr/sbin/dnsmasq", "-k" ]
