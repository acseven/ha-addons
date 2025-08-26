ARG BUILD_FROM
FROM $BUILD_FROM

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Install requirements
RUN apk add --no-cache \
    build-base \
    git \
    openssl-dev

# Build ser2sock
WORKDIR /tmp
RUN git clone https://github.com/nutechsoftware/ser2sock.git \
    && cd ser2sock \
    && ./configure \
    && make \
    && cp ser2sock /usr/local/bin/ \
    && cd / \
    && rm -rf /tmp/ser2sock

# Copy root filesystem
COPY rootfs /
