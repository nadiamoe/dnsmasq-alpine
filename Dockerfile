FROM alpine:3.17.3 as build
ARG DNSMASQ_VERSION=v2.89
# Deps sourced from https://git.alpinelinux.org/aports/tree/main/dnsmasq/APKBUILD
RUN apk add git build-base coreutils dbus-dev linux-headers nettle-dev
RUN git clone http://thekelleys.org.uk/git/dnsmasq.git
WORKDIR dnsmasq
RUN git checkout $DNSMASQ_VERSION
RUN make install

FROM alpine:3.17.3
COPY --from=build /usr/local/sbin/dnsmasq /usr/local/sbin/
ENTRYPOINT [ "/usr/local/sbin/dnsmasq" ]
