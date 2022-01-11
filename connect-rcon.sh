#!/bin/bash
RCON_DIR=~/rcon/
RCON_CONFIG_FILE=~/rcon/rcon.yaml
export RCON_PORT=27015
export PATH=$RCON_DIR:$PATH

echo "Waiting for RCON server on port ${RCON_PORT} to open..."
timeout 300 bash -c 'until echo > /dev/tcp/localhost/"${RCON_PORT}"; do sleep 0.5; done' 2>/dev/null

if [ $? = 124 ];
then
  echo "Timed out waiting for RCON host on port ${RCON_PORT}"
else
  rcon -c $RCON_CONFIG_FILE
fi
