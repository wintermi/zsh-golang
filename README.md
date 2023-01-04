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


## Tab Completions
Tab completions are provided for `g`, `go` and `gofmt` commands. An example of which can be seen below.

![g-install-tab-completion](https://user-images.githubusercontent.com/33818/210471572-251ff711-d082-4e09-b54e-a74c716d022f.jpg)


## License
The **zsh-golang** plugin is released under the [Apache License 2.0](https://github.com/wintermi/zsh-golang/blob/main/LICENSE) unless explicitly mentioned in the file header.
