FROM alpine:3.24.4@sha256:93b41ef40b1677fce8fcc64ff4af09daddfacf5040afde618bc46c1e2d1cc7d4

ARG DNSMASQ_VERSION=2.92_p2-r0

RUN apk --no-cache add dnsmasq=${DNSMASQ_VERSION}

ENTRYPOINT [ "/usr/sbin/dnsmasq", "-k" ]
