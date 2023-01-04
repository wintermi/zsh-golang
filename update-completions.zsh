#!/usr/bin/env zsh
# shellcheck disable=SC1090

# Completions directory for `go` command
local ZSH_GOLANG_DIR="${0:A:h}/completions"

# Download the latest versions of the Go completions
# Maintained by Koichi Shiraishi - https://github.com/zchee/zsh-completions
echo "Downloading '_go' ..."
curl -sSL -o "$ZSH_GOLANG_DIR/_go" "https://raw.githubusercontent.com/zchee/zsh-completions/main/src/go/_go"
echo "Downloading '_gofmt' ..."
curl -sSL -o "$ZSH_GOLANG_DIR/_gofmt" "https://raw.githubusercontent.com/zchee/zsh-completions/main/src/go/_gofmt"
