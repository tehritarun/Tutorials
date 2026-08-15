# Building a Powerful CLI Application in Go with Cobra

## Introduction
**Cobra** is one of the most widely used libraries in Go for building modern, robust Command Line Interface (CLI) applications. It powers many industry-standard developer tools, including **Kubernetes (`kubectl`)**, **GitHub CLI (`gh`)**, **Hugo**, and **Docker CLI**.

### Core Concepts
Cobra structures CLI applications around a simple, intuitive pattern:
- **Commands**: Represent actions to perform (e.g., `git clone`, `mathctl add`).
- **Args**: Represent items or values passed to commands (e.g., file paths, names).
- **Flags**: Represent modifiers or configuration options for actions (e.g., `--verbose`, `-p 8080`).

### Key Features
- **Nested Subcommands**: Easily build complex command hierarchies.
- **POSIX-Compliant Flags**: Support for both short (`-v`) and long (`--verbose`) flags.
- **Automated Help & Documentation**: Automatically generates `-h` / `--help` menus and man pages.
- **Intelligent Suggestions**: Provides "did you mean?" suggestions on misspelled commands.
- **Viper Integration**: Native compatibility with Viper for handling configs (YAML, JSON, ENV variables).
- **Code Generator**: The `cobra-cli` generator tool enables rapid scaffolding of projects and subcommands.

## Installation
The `cobra-cli` tool can be installed using Go with the following command:

``` bash
go install github.com/spf13/cobra-cli@latest
```

## Initial Configuration
An initial configuration file can be created at `~/.cobra.yaml` with the following contents:

``` yaml
author: Tarun Tehri <tehritarun@gmail.com>
year: 2026
license: MIT
```

## Create Go Project
Create a new directory and initialize the Go project:

``` bash
mkdir project_name
cd project_name
go mod init project_name
```

## Install Cobra Library

``` bash
go get -u github.com/spf13/cobra@latest
```

## Create Cobra Project Scaffold
From within the Go project directory, run the following command:

``` bash
cobra-cli init
```

This will generate boilerplate code for the root command along with the following folder structure. At this point, you can open this project in your preferred code editor.

```
.
├── cmd
│   └── root.go
├── go.mod
├── go.sum
├── LICENSE
└── main.go
```

### Root Command
The code for the root command is located in `cmd/root.go`. Update its contents as shown below:

![[./golang/media/root_go.png]]

### Running the CLI
At this point, you can build and run the CLI using the following commands in your terminal:

``` bash
go build
./mathctl
```

You should see the following output:

![[./golang/media/root_execution.png]]

## Add Subcommands
Subcommands can be added using the `cobra-cli add` command. In the following example, two subcommands (`greet` and `add`) are added:

``` bash
cobra-cli add greet
cobra-cli add add
```

This will generate two files under the `cmd` folder corresponding to each subcommand.

### Subcommand — greet
The `greet` subcommand greets the user by name, accepting the name as an input parameter.
The code for the `greet` subcommand is located in `cmd/greet.go`. Update its contents as shown below:

![[./golang/media/greet_go.png]]

After updating the subcommand code, you can build and run it:

![[./golang/media/greet_execution.png]]

### Subcommand — add
The `add` subcommand adds two numbers provided as input parameters. It also accepts an optional `-v` flag for log verbosity.
The code for the `add` subcommand is located in `cmd/add.go`. Update its contents as shown below:

![[./golang/media/add_go.png]]

You can test this subcommand as shown below. You can also experiment with different combinations of flags and input parameters:

![[./golang/media/add_execution.png]]

Similarly, you can use the `cobra-cli add` command to implement additional subcommands such as multiply, divide, and more.

## Verdict
Cobra is a powerful and easy-to-use framework for building CLIs in Go. It provides a clean, intuitive pattern for organizing commands, arguments, and flags, backed by a rich feature set that makes it a top choice for CLI applications of any size and complexity.