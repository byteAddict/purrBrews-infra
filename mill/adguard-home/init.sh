#!/bin/bash
set -a         
source /opt/purrbrews-infra/.env
set +a

if [ -z "$DATA_DIR" ]; then
    echo "Error: DATA_DIR is not set in /opt/purrbrews-infra/.env"
    exit 1
fi

mkdir -p "${DATA_DIR}/adguardHome/data"
mkdir -p "${DATA_DIR}/adguardHome/conf"

docker compose --env-file /opt/purrbrews-infra/.env -f /opt/purrbrews-infra/mill/adguard-home/docker-compose.yml up -d