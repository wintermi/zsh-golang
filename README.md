# zsh-golang
A simple zsh plugin for the Go programming language toolchain.

## Install
Using the [:zap: Zap](https://www.zapzsh.org/) minimal zsh plugin manager, add the following to your `.zshrc`

```sh
# Install plugin
plug "wintermi/zsh-golang"
```

## Prerequisite Checks
A number of simple checks are performed to verify the following Go programming language tools have been installed:

- [`g`](https://github.com/stefanmaric/g) - A simple go version manager
- [`go`](https://github.com/golang/go) - The Go programming language
- [`gofmt`](https://pkg.go.dev/cmd/gofmt) - Formats Go programs


## Environment
By default, the following go environment variables will be setup

```sh
export GOPATH="$HOME/go"
export GOROOT="$HOME/.go"
```

`$GOPATH/bin` is also added to the `PATH`.

If a different environment location is required, these variables can be defined prior to installing the plugin, as shown below

```sh
# Install plugin with a different environment location
export GOROOT="$HOME/.local/share/golang"
export GOPATH="$HOME/MyProjects/go-projects"
plug "wintermi/zsh-golang"
```


## License
The **zsh-golang** plugin is released under the [Apache License 2.0](https://github.com/wintermi/zsh-golang/blob/main/LICENSE) unless explicitly mentioned in the file header.
