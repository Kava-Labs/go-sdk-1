#! /bin/bash
set -e

# update all self-imports in the module to the new module name
grep -rl --include=*.go \"github.com/binance-chain/go-sdk . | xargs sed -i '' 's#"github.com/binance-chain/go-sdk#"github.com/kava-labs/binance-chain-go-sdk#'
# update the module name
go mod edit -module github.com/kava-labs/binance-chain-go-sdk

# update tendermint imports to use forked version
grep -rl --include=*.go \"github.com/tendermint/tendermint . | xargs sed -i '' 's#"github.com/tendermint/tendermint#"github.com/kava-labs/tendermint#'
# update go mod to refer to forked version
go mod edit -droprequire github.com/tendermint/tendermint -require github.com/kava-labs/tendermint@v0.32.3-kava1

# update go-amino imports to use forked version
grep -rl --include=*.go \"github.com/tendermint/go-amino . | xargs sed -i '' 's#"github.com/tendermint/go-amino#"github.com/kava-labs/go-amino#'
# update go mod to refer to forked version
go mod edit -droprequire github.com/tendermint/go-amino -require github.com/kava-labs/go-amino@v0.14.1-kava
# remove replace directive
go mod edit -dropreplace github.com/tendermint/go-amino

# update ledger-cosmo-go imports to use forked version
grep -rl --include=*.go \"github.com/binance-chain/ledger-cosmos-go . | xargs sed -i '' 's#"github.com/binance-chain/ledger-cosmos-go#"github.com/kava-labs/binance-chain-ledger-cosmos-go#'
# update go mod to refer to forked version
go mod edit -droprequire github.com/binance-chain/ledger-cosmos-go -require github.com/kava-labs/binance-chain-ledger-cosmos-go@v0.9.9-binance.1-kava1
