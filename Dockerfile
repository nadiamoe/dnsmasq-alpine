FROM alpine:3.24.2@sha256:31b6477333eb8257db9e5d7c3a7264fd0467928756f0bbcc27d35bea5d28cdbd

ARG DNSMASQ_VERSION=2.92_p2-r0

RUN apk --no-cache add dnsmasq=${DNSMASQ_VERSION}

ENTRYPOINT [ "/usr/sbin/dnsmasq", "-k" ]
