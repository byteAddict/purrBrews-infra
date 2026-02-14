#!/bin/bash
set -a
source /opt/purrbrews-infra/.env
set +a

# Ensure SSD path exists
mkdir -p "${DATA_DIR}/homeassistant"

docker compose --env-file /opt/purrbrews-infra/.env -f /opt/purrbrews-infra/silo/homeassistant/docker-compose.yml up -d

echo "Home Assistant is live. Access at http://192.168.0.11:8123"