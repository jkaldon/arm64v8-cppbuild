FROM docker.io/arm64v8/alpine:3.13

# Needed for dockerhub automated arm64 builds
#COPY qemu-arm-static /usr/bin

# Image metadata
# git commit
LABEL org.opencontainers.image.revision="-"
LABEL org.opencontainers.image.source="https://github.com/jkaldon/arm64v8-cppbuild/tree/master"

RUN apk add --no-cache \
             bash \
             libtool \
             autoconf automake \
             make \
             gawk \
             g++ \
             pkgconf \
             db-c++ db-dev \
             boost boost-dev boost-static \
             miniupnpc miniupnpc-dev \
             openssl openssl-dev openssl-libs-static \
             libevent libevent-dev libevent-static \
             czmq czmq-dev czmq-static && \
    update-ca-certificates 

