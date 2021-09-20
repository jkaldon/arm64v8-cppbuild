FROM docker.io/arm64v8/alpine:3.13

# Needed for dockerhub automated arm64 builds
#COPY qemu-arm-static /usr/bin

# Image metadata
# git commit
LABEL org.opencontainers.image.revision="-"
LABEL org.opencontainers.image.source="https://github.com/jkaldon/arm64v8-cppbuild/tree/master"

RUN apk add --no-cache \
             bash gettext \
             gawk doxygen \
             autoconf automake \
             libtool \
             make ccache \
             g++ gcc python3 \
             llvm10 pkgconf \
             db-c++ db-dev lldbdev \
             boost boost-dev \
             miniupnpc miniupnpc-dev \
             openssl openssl-dev \
             libevent libevent-dev \
             czmq czmq-dev && \
    update-ca-certificates 

