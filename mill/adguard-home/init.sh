export /opt/purrbrews-infra/.env
mkdir ${DATA_DIR}/adguardHome
mkdir ${DATA_DIR}/adguardHome/data
mkdir ${DATA_DIR}/adguardHome/conf
docker compose --env-file /opt/purrbrews-infra/.env -f /opt/purrbrews-infra/mill/adguard-home/docker-compose.yml up -d