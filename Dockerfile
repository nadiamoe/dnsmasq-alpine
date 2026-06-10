FROM alpine:3.24.0@sha256:a2d49ea686c2adfe3c992e47dc3b5e7fa6e6b5055609400dc2acaeb241c829f4

ARG DNSMASQ_VERSION=2.92_p2-r0

RUN apk --no-cache add dnsmasq=${DNSMASQ_VERSION}

ENTRYPOINT [ "/usr/sbin/dnsmasq", "-k" ]
