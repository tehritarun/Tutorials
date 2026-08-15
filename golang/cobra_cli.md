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

This will generate boilerplate code for root command and following folder structure. at this point you can open this project in code editor of your choice.

```
.
├── cmd
│   └── root.go
├── go.mod
├── go.sum
├── LICENSE
└── main.go
```

### Root command
Code for root command will be under `cmd/root.go`. Update it's contents as below

![[./media/root_go.png]]

### Running CLI
At this point you can build and run CLI using following command in terminal

``` bash
go build
./mathctl
```

You should get following output

![[./media/root_execution.png]]

## Add subcommands
Subcommands can be added using `cobra-cli add` command. In following example two subcommands `greet` and `add` are added.

``` bash
cobra-cli add greet
cobra-cli add add
```

This will generate 2 files with same name as subcommands under `cmd` folder corresponding to each subcommand.

### Subcommand - greet
greet subcommand simply greets user by name by getting name as input parameter.
Code for greet subcommand will be under `cmd/greet.go`. Update it's contents as below

![[./media/greet_go.png]]

After updating subcommands code you can build and run this subcommand

![[./media/greet_execution.png]]

### Subcommand - add
add subcommand adds two numbers provided as input parameters. it also takes optional `-v` flag for logging verbosity.
Code for add subcommand will be under `cmd/add.go`. Update it's contents as below

![[./media/add_go.png]]

You can test this subcommand as below. Also you can try other combination of flags and input parameters.

![[./media/add_execution.png]]
