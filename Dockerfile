FROM alpine:3.22.2@sha256:4b7ce07002c69e8f3d704a9c5d6fd3053be500b7f1c69fc0d80990c2ad8dd412

ARG DNSMASQ_VERSION=2.91-r0

RUN apk --no-cache add dnsmasq=${DNSMASQ_VERSION}

ENTRYPOINT [ "/usr/sbin/dnsmasq", "-k" ]
