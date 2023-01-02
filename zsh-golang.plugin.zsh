#!/usr/bin/env zsh
# shellcheck disable=SC1090

# Setup environment location.
export GOPATH=${GOPATH:-"$HOME/go"}
export GOROOT=${GOROOT:-"$HOME/.go"}

# Add the go bin directory to the PATH
typeset -TUx PATH path
path=("$GOPATH/bin" $path)

# Exit if the 'g', 'go' or 'gofmt' command is not found
if ! (( $+commands[g] && $+commands[go] && $+commands[gofmt] )); then
    echo "ERROR: 'g', 'go' or 'gofmt' command not found"
    return
fi

# Cache directory
ZSH_CACHE_DIR="$HOME/.cache/zsh-golang"
[ ! -d "$ZSH_CACHE_DIR" ] && mkdir -p "$ZSH_CACHE_DIR"

# Only regenerate go versions list if older than 24 hours, or does not exist
if [[ ! -f "$ZSH_CACHE_DIR/go_versions"  ||  ! $(find "$ZSH_CACHE_DIR/go_versions" -newermt "24 hours ago" -print) ]]; then
    curl -sSL "https://go.googlesource.com/go/+refs" 2> /dev/null \
        | grep -E -o '"/go/\+/refs/tags/go.+?"' \
        | grep -E -o 'go[[:digit:]]+(\.[[:digit:]]+)+\b' \
        | tr -d 'go' \
        | sort --version-sort --unique --reverse --output "$ZSH_CACHE_DIR/go_versions"
fi

# Add completions to the FPATH
typeset -TUx FPATH fpath
fpath=("${0:A:h}/completions" $fpath)
