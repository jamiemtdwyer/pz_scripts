#!/bin/bash
echo "=== UPDATING SERVER VIA STEAMCMD ==="
echo "===================================="
steamcmd +force_install_dir ~/.steam/steamapps/common/zomboid +login anonymous +app_update 380870 validate +quit

echo "=== INSTALLING ANTI-CHEAT PATCH: ==="
echo "===================================="
cp --verbose -rf /home/jd/pz_anticheat/zombie/network/* ~/.steam/steamapps/common/zomboid/java/zombie/network/

echo "=== INSTALLING 121 PLAYER PATCH: ==="
echo "===================================="
cp --verbose -rf /home/jd/pz_maxplayers_121/zombie/network/* ~/.steam/steamapps/common/zomboid/java/zombie/network/

echo "=== STARTING PZ DEDICATED SERVER ==="
echo "===================================="
bash ~/.steam/steamapps/common/zomboid/start-server.sh
