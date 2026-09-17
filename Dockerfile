FROM alpine:3.24.2@sha256:3cf95fe0816180395592b8373f3ec60663f076127617bbacb4eacf9667afe2e9

ARG DNSMASQ_VERSION=2.92_p2-r0

RUN apk --no-cache add dnsmasq=${DNSMASQ_VERSION}

ENTRYPOINT [ "/usr/sbin/dnsmasq", "-k" ]
