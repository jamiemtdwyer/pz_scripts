#!/bin/bash
RCON_DIR=~/rcon/
RCON_CONFIG_FILE=~/rcon/rcon.yaml
PATH=$RCON_DIR:$PATH
rcon -c ${RCON_CONFIG_FILE} 'servermsg "ALERT: This server will restart in 5 minutes for daily scheduled reboot."'
