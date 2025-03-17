# Hummanta CLI Reference

## Overview

Hummanta is a tool for compiling multiple languages, supporting the build and compilation of projects such as Solidity and Rust. The toolchain provides a flexible command-line interface, allowing users to easily manage and compile code for different target platforms. The following commands are available for building, managing, and configuring the workspace:

```text
USAGE:
    hummanta <SUBCOMMAND>

FLAGS:
    -h, --help       Prints help information
    -V, --version    Prints version information

SUBCOMMANDS:
    build      Builds the entire workspace
    compile    Compiles specified source code
    help       Prints this message or the help of the given subcommand(s)
    init       Initializes the workspace
    target     View and manage supported targets for the toolchain
```

## Init

Automatically detects the type of the current project (e.g., Solidity or Rust) and generates a `hummanta.toml` configuration file.

```bash
hummanta init
```

## Build

Builds the entire project and compiles the source code files.

```bash
hummanta build --target=<target>
```

## Compile

Compiles the specified source code file.

```bash
hummanta compile --target=<target>
```

## Target

View and manage different target configurations.

```bash
hummanta target add <target>
hummanta target remove <target>
hummanta target show <target>
hummanta target list
```

- `add`: Adds a new target configuration.
- `remove`: Removes the specified target configuration.
- `show`: Displays the details of the specified target.
- `list`: Lists all configured targets.

For more information about the `target`, see the core concept [Target](../concepts/target.md).

## Toolchain

View and manage different toolchains used for the compilation process.

```bash
hummanta toolchain add <language>
hummanta toolchain remove <language>
hummanta toolchain list
```

- `add`: Installs the specified language's toolchain.
- `remove`: Removes the toolchain for the specified language.
- `list`: Lists all installed toolchains.

For more information about the toolchain, see the core concept [Toolchain](../concepts/toolchain.md).

## Frequently Asked Questions

### 1. How do I switch the target platform?

You can specify the target platform by using `hummanta build --target=<target>` or `hummanta compile --target=<target>`. If no target is specified, the default target from the `hummanta.toml` file will be used.

### 2. What should I do if the `hummanta.toml` file is missing?

If the `hummanta.toml` file is missing or hasn't been generated, you can run `hummanta init` to regenerate it.
