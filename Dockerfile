
FROM ethereum/client-go

WORKDIR /usr/src/app

COPY genesis.json /opt/chain/genesis.json

RUN chown -R $(whoami):$(whoami) /opt/chain &&\
    mkdir -p /opt/chain/data &&\
    mkdir -p /opt/chain/keystore &&\
    geth --datadir /opt/chain/data init /opt/chain/genesis.json
