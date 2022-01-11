#!/bin/bash
RCON_DIR=~/rcon/
RCON_CONFIG_FILE=~/rcon/rcon.yaml
PATH=$RCON_DIR:$PATH
rcon -c ${RCON_CONFIG_FILE} 'servermsg "Thanks for playing on Zombie Hitmen Public 24/7 - happy hunting! Discord: dsc.gg/zh247"'
