# Setup

```
sudo apt-get install git golang-1.10-go
sudo ln /usr/lib/go-1.10/bin/go /usr/bin/go
```

## Install dotbash, follow the instructions:

https://github.com/nthnca/dotbash

### make you machine shutdown when it isn't being used (if you care)

https://github.com/nthnca/dotbash/tree/master/cron

## Install dotvim, follow the instructions:

https://github.com/nthnca/dotvim

```
go get golang.org/x/tools/cmd/goimports
```

## Want to compile protos for golang

```
sudo apt-get install protobuf-compiler
go get -u -v github.com/golang/protobuf/proto
go get -u -v github.com/golang/protobuf/protoc-gen-go
```

## Want to use imagemagick

```
sudo apt-get install imagemagick
```
