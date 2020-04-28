module github.com/binance-chain/go-sdk

go 1.13

require (
	github.com/ChainSafe/go-schnorrkel v0.0.0-20200405005733-88cbf1b4c40d // indirect
	github.com/binance-chain/ledger-cosmos-go v0.9.9-binance.1
	github.com/btcsuite/btcd v0.20.1-beta
	github.com/btcsuite/btcutil v1.0.2
	github.com/cosmos/go-bip39 v0.0.0-20180819234021-555e2067c45d
	github.com/golang/protobuf v1.4.0 // indirect
	github.com/gorilla/websocket v1.4.2
	github.com/gtank/merlin v0.1.1 // indirect
	github.com/pkg/errors v0.9.1
	github.com/prometheus/client_golang v1.5.1 // indirect
	github.com/rcrowley/go-metrics v0.0.0-20200313005456-10cdbea86bc0 // indirect
	github.com/stretchr/testify v1.5.1
	github.com/tendermint/btcd v0.0.0-20180816174608-e5840949ff4f
	github.com/tendermint/go-amino v0.14.1
	github.com/tendermint/tendermint v0.33.3
	github.com/tendermint/tm-db v0.5.1 // indirect
	github.com/zondax/hid v0.9.0 // indirect
	github.com/zondax/ledger-go v0.0.0-00010101000000-000000000000 // indirect
	golang.org/x/crypto v0.0.0-20200406173513-056763e48d71
	golang.org/x/net v0.0.0-20200324143707-d3edc9973b7e // indirect
	google.golang.org/grpc v1.28.1 // indirect
	gopkg.in/resty.v1 v1.12.0
)

replace github.com/tendermint/go-amino => github.com/binance-chain/bnc-go-amino v0.14.1-binance.1

replace github.com/zondax/ledger-go => github.com/binance-chain/ledger-go v0.9.1

replace github.com/tendermint/tendermint => github.com/tendermint/tendermint v0.33.3
