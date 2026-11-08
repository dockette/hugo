FROM alpine:3.22

ARG HUGO_VERSION=0.169.0
ARG TARGETARCH

RUN apk add --no-cache ca-certificates git gcompat libstdc++ libgcc && \
    wget -qO- https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-${TARGETARCH}.tar.gz | tar xz -C /usr/local/bin hugo

WORKDIR /srv

ENTRYPOINT ["/usr/local/bin/hugo"]
