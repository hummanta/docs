# Getting Started

Welcome to Hummanta! This powerful toolchain is designed specifically for smart contract development. Follow this beginner-friendly guide to get started quickly.

## 1. Install Hummanta CLI

Prebuilt binaries Windows, Linux and macOS can be downloaded from the [Github release page](https://github.com/hummanta/hummanta/releases/latest). If there is no distro package available for Hummanta in your preferred manager, you need [Rust and cargo](https://www.rust-lang.org/tools/install) to build it.

### Install from source:

1. Clone the repository with `git clone https://github.com/hummanta/hummanta.git`
2. From the `hummanta` directory, run `cargo build --release` to build the application in release mode.
3. After a successful compilation, launch the executable with: `target/release/hummanta`.

### Install with cargo

To get the latest bug fixes and features, you can install the development version from git. However, this is not fully tested. That means you're probably going to have more bugs despite having the latest bug fixes.

```bash
cargo install --git https://github.com/hummanta/hummanta
```

This will download and install the Hummanta CLI in Cargo’s global binary directory (`~/.cargo/bin/` by default).

Run `hummanta --help` for a list of all the available commands. Furthermore, you can run `hummanta <command> --help` to get help with a specific command.

## 2. Setup

### Install the Required Toolchain

To compile Solidity contracts, install the Solidity toolchain:

```bash
hummanta toolchain add solidity
```

### Install the Target Platform

For Ethereum-based smart contracts, add the EVM target:

```bash
hummanta target add EVM
```

## 3. Start Your First Project

Initializing a new project with Hummanta is straightforward. Run the following command in your project directory:

```bash
hummanta init
```

This command performs two key actions:

- Automatically detects your project type (e.g., Solidity, Rust).
- Generates a `hummanta.toml` configuration file.

Now, build your project:

```bash
hummanta build
```

To compile for a specific platform, such as Ethereum or Solana, specify the target:

```bash
hummanta build --target=EVM  # For Ethereum Virtual Machine
```

## 4. Next Steps

Now that you’ve set up Hummanta and built your first project, here are some additional features to explore:

- Manage platforms with `hummanta target`
- Add language support via `hummanta toolchain`

For comprehensive documentation, use:

 ```bash
 hummanta --help
 ```

Or visit the [Hummanta CLI Reference](references/cli.md)

Happy coding! We can't wait to see the amazing smart contracts you'll build with Hummanta!
