#!/bin/bash
# /opt/purrbrews-infra/mill/adguard-home/init.sh

# Load variables and export them
set -a            # Automatically export all variables defined from here on
source /opt/purrbrews-infra/.env
set +a

# Guard Clause: Ensure DATA_DIR is actually set
if [ -z "$DATA_DIR" ]; then
    echo "Error: DATA_DIR is not set in /opt/purrbrews-infra/.env"
    exit 1
fi

# Create directories with parent flag (-p) to avoid "No such file" errors
mkdir -p "${DATA_DIR}/adguardHome/data"
mkdir -p "${DATA_DIR}/adguardHome/conf"

# Run Docker with the explicit env-file flag
docker compose --env-file /opt/purrbrews-infra/.env -f /opt/purrbrews-infra/mill/adguard-home/docker-compose.yml up -d