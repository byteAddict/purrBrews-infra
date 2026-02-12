source ../../.env
mkdir ${DATA_DIR}/adguardHome
mkdir ${DATA_DIR}/adguardHome/data
mkdir ${DATA_DIR}/adguardHome/conf
docker compose --env-file ../../.env -f docker-compose.yml up -d