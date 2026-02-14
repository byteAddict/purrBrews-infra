#!/bin/bash
set -a
source /opt/purrbrews-infra/.env
set +a

if [ -z "$SECRETS_DIR" ] || [ -z "$CLOUDFLARE_TUNNEL_ID" ]; then
    echo "ERROR: SECRETS_DIR or CLOUDFLARE_TUNNEL_TOKEN_ID is not set in .env"
    exit 1
fi

mkdir -p "${SECRETS_DIR}"
mkdir -p "${DATA_DIR}/cloudflared"

docker compose --env-file /opt/purrbrews-infra/.env -f /opt/purrbrews-infra/mill/cloudflared/docker-compose.yml up -d

echo "Cloudflared tunnel ${CLOUDFLARE_TUNNEL_ID} is now active."