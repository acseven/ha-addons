ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements
RUN apk add --no-cache build-base git openssl-dev

# Build ser2sock
WORKDIR /tmp
RUN git clone https://github.com/nutechsoftware/ser2sock.git \
    && cd ser2sock \
    && ./configure \
    && make \
    && cp ser2sock /usr/local/bin/ \
    && rm -rf /tmp/ser2sock

# Copy run script
COPY run.sh /
RUN chmod a+x /run.sh

CMD ["/run.sh"]
