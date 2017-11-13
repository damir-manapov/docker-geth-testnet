
### Run bootnode
```bash
docker run -d -p 30501:30501 --name geth-bootnode manapov/geth-testnet bootnode -nodekey=<(echo -n "fbfff8a008d8d3cc89010d8444978567bb7bc8e1b1ecb83f0a32f7bef773c1f1") -addr ":30501"
```

### Run miner
```bash
docker run -d -p 30303:30303 --name geth-miner manapov/geth-testnet geth --datadir=/opt/chain/data --mine --etherbase="bf701ad807f00779dc5d9a63a4ad83946c1300b4" --minerthreads="1" --bootnodes "enode://8982a703170bc94cc7b7705dfa207b2e140b8aeb234d9567bf3f358bb5421846f202720e6046c721c856873445d7aafb73bae2cdc0997144acf74d47d3da905c@172.18.0.1:30501"
```
