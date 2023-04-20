FROM alpine:3.17.3 as build
ARG DNSMASQ_VERSION=2.89
# Deps sourced from https://git.alpinelinux.org/aports/tree/main/dnsmasq/APKBUILD
RUN apk add build-base coreutils dbus-dev linux-headers nettle-dev
RUN wget https://www.thekelleys.org.uk/dnsmasq/dnsmasq-$DNSMASQ_VERSION.tar.xz -O- | tar -xJ
WORKDIR dnsmasq-$DNSMASQ_VERSION
RUN make install

FROM alpine:3.17.3
COPY --from=build /usr/local/sbin/dnsmasq /usr/local/sbin/
ENTRYPOINT [ "/usr/local/sbin/dnsmasq" ]
