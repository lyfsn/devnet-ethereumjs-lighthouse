

docker run \
  --rm \
  -it \
  -v $(pwd)/execution-data:/execution-data \
  -v $(pwd)/el-cl-genesis-data:/el-cl-genesis-data \
  ethpandaops/ethereumjs:master \
  --gethGenesis=/el-cl-genesis-data/custom_config_data/genesis.json \
  --dataDir=/execution-data \
  --port=30303 \
  --rpc \
  --rpcAddr=0.0.0.0 \
  --rpcPort=8545 \
  --rpcEngine \
  --rpcEngineAddr=0.0.0.0 \
  --rpcEnginePort=8551 \
  --ws \
  --wsAddr=0.0.0.0 \
  --wsPort=8546 \
  --wsEnginePort=8547 \
  --wsEngineAddr=0.0.0.0 \
  --jwt-secret=/el-cl-genesis-data/jwt/jwtsecret \
  --extIP=127.0.0.1 \
  --sync=full \
  --isSingleNode=true \
  --logLevel=info \
  --bootnodes=enode://30674d1f5fa3cf763c2d991eeaf585db42c45737a4d47aee3653b50ac33947437769e13f04c12bab63d5c2a416d08b2637e6340d13b7d59489f0ac8dae919756@88.99.94.109:50303

