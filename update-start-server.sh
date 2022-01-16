#!/bin/bash
echo "=== UPDATING SERVER VIA STEAMCMD ==="
echo "===================================="
steamcmd +force_install_dir ~/.steam/steamapps/common/zomboid +login anonymous +app_update 380870 validate +quit

echo "=== STARTING PZ DEDICATED SERVER ==="
echo "===================================="
bash ~/.steam/steamapps/common/zomboid/start-server.sh
