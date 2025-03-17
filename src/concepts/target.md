# Target

In Hummanta, a **Target** represents the compilation target environment. It determines the format in which the code should be compiled, such as compiling Solidity or Rust code into bytecode compatible with a specific blockchain or virtual machine. The **Target** mechanism ensures that the code is compiled correctly for various blockchain platforms and virtual machines.

## Purpose of Target

The **Target** mechanism in Hummanta serves several key purposes:

1. **Specifying Compilation Target**: Determines the format in which the code should be compiled, such as compiling Solidity into Solana BPF, Sui MoveVM, or Aptos MoveVM-compatible formats.
2. **Supporting Multiple Virtual Machines (VMs)**: Different blockchains use different virtual machines, such as Solana BPF, Sui MoveVM, and Aptos MoveVM. Hummanta provides an adaptation mechanism to ensure proper execution on these VMs.
3. **Extensibility**: Users can add custom Targets and specify corresponding compilation rules, ensuring future support for additional blockchain platforms.

## Target Mechanism vs. Rust Target vs. LLVM Target

Hummanta's **Target** mechanism goes beyond traditional Rust and LLVM targets. It not only defines the target architecture but also includes the overall configuration for the compilation environment.

| Comparison      | Hummanta Target                             | Rust Target                                | LLVM Target                               |
|-----------------|---------------------------------------------|--------------------------------------------|-------------------------------------------|
| **Definition**  | Represents a complete compilation target, including compilation format and code transformation tools. | Defines CPU architecture, OS, and ABI for compilation. | Provides a low-level abstraction for generating machine code. |
| **Purpose**     | Adapts to different blockchain environments such as Solana, Sui, and Aptos. | Adapts to different OS and hardware architectures. | Generates IR or machine code for different hardware architectures. |
| **Dependency Management** | No toolchain management involved. | Requires cross-compilation tools such as rustup target add. | Only includes target architecture information. |
| **Extensibility** | Easily adds support for new blockchains or virtual machines. | Requires modifying Rust compiler source code. | Requires modifying LLVM source code. |

This comparison highlights that Hummanta's **Target** is not just a description of a compilation target but a comprehensive system for compiling code for different blockchain environments.

## Target Design

Hummanta's Target mechanism is flexible and extensible. While it draws inspiration from Rust's Target system, it provides higher-level dynamic configuration and dependency management capabilities.

### 1. Configuration-Driven Management

Hummanta manages Targets through `hummanta.toml`, allowing users to finely configure compilation options, for example:

```toml
[target.sui]
compiler = "~/.hummanta/toolchains/sui-move/move-build"
stdlib = "~/.hummanta/toolchains/sui-move/move-stdlib"
output_format = "move-bytecode"
```

This approach enables users to customize different compilation workflows without manually handling complex low-level implementations.

### 2. Dynamic Toolchain Management

Hummanta needs to provide specific toolchains for different blockchain ecosystems. The Target mechanism includes a complete dynamic toolchain management solution, including:

- `hummanta target add <target>`: Automatically installs the required compilers, standard libraries, and other components.
- `hummanta target remove <target>`: Cleans up related toolchains and dependencies.
- `hummanta target list`: Displays available targets and their details.

For example, when a user runs `hummanta target add sui`, Hummanta automatically downloads and installs the Sui Move compiler while ensuring that the `move-stdlib` standard library is available.

More details on using target-related commands can be found in the [CLI Reference](../references/cli.md#target).

### 3. Automated Compilation Workflow

Hummanta allows users to compile their code using `hummanta compile`, following a structured process:

```sh
hummanta compile --target=sui
```

- Parses `hummanta.toml` to determine the target environment.
- Loads the appropriate compilation toolchain (which may consist of multiple components).
- Generates bytecode compatible with the target VM.

This process ensures that developers can quickly compile their code without managing underlying tools manually.

## Supported Targets

Hummanta currently supports and plans to support the following targets:

- **Solana BPF**: Compiles Solidity code into Solana-compatible BPF bytecode.
- **Sui MoveVM**: Compiles Solidity code into Sui-compatible Move bytecode.
- **Aptos MoveVM**: Compiles Solidity code into Aptos-compatible Move bytecode.

In the future, Hummanta may support additional blockchains and VMs, such as Starknet Cairo, Ethereum zkEVM, and Mina zkApps, enabling developers to deploy contracts seamlessly across multiple chains.
