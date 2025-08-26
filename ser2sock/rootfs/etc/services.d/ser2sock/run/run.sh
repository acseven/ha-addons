#!/usr/bin/with-contenv bashio

# Get configuration
DEVICE=$(bashio::config 'serialDevice')
BAUDRATE=$(bashio::config 'baudRate')
PORT=$(bashio::config 'port')

bashio::log.info "Starting ser2sock with device: ${DEVICE}, baud: ${BAUDRATE}, port: ${PORT}"

# Start ser2sock
exec /usr/local/bin/ser2sock -p ${PORT} -s ${DEVICE} -b ${BAUDRATE}
