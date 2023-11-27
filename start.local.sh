
mkdir -p el-cl-genesis-data
mkdir -p execution-data
mkdir -p consensus-data
mkdir -p validator-keys


export IP_ADDRESS=127.0.0.1
docker compose -f compose.yaml up -d



