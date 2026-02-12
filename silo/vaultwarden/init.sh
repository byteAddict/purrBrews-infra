#!/bin/bash
# /opt/purrbrews-infra/silo/vaultwarden/init.sh

# 1. Load and Export Global Environment Variables
set -a
source /opt/purrbrews-infra/.env
set +a

# 2. Guard Clause: Ensure DATA_DIR is available
if [ -z "$DATA_DIR" ]; then
    echo "ERROR: DATA_DIR is not defined in /opt/purrbrews-infra/.env"
    exit 1
fi

# 3. Create Persistent Storage on SSD
# Uses -p to create parent directories and avoid errors if they exist
mkdir -p "${DATA_DIR}/vw-data"

# 4. Deploy the Container
# Uses the specific env-file to ensure Vaultwarden gets its Argon2 hash
docker compose --env-file /opt/purrbrews-infra/.env -f /opt/purrbrews-infra/silo/vaultwarden/docker-compose.yml up -d

echo "Vaultwarden deployment initiated on Port 8081."