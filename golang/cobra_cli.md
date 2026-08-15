# Creating golang cli with Cobra

## Installation
cobra-cli can be insalled using go with following command

``` bash
go install github.com/spf13/cobra-cli@latest
```

## Initial configuration
configuration file can be created at `~/.cobra.yaml` with contents as below:

``` yaml
author: Tarun Tehri <tehritarun@gmail.com>
year: 2026
license: MIT
```

## Create golang project
Create a new directory and initiate golang project

``` bash
mkdir project_name
cd project_name
go mod init project_name
```

## Install cobra library

``` bash
go get -u github.com/spf13/cobra@latest
```

## Create cobra project scaoffold
From within golang project directory run following command

``` bash
cobra-cli init
```
It will generate code with following files

```
.
├── cmd
│   └── root.go
├── go.mod
├── go.sum
├── LICENSE
├── main.go
└── mathctl
```

## Add subcommands
Subcommands can be added using `cobra-cli add` command. In following example two subcommands `greet` and `add` are added.

``` bash
cobra-cli add greet
cobra-cli add add
```

