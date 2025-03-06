# Target

In Hummanta, a `Target` represents the compilation target environment. It not only determines the target format of the compiled code but also involves managing and adapting the entire toolchain. Hummanta allows users to compile Solidity or Rust code for different blockchain and virtual machine environments (such as Solana BPF, Sui MoveVM), ensuring seamless adaptation to the target ecosystem.

## **Purpose of Target**

Hummanta's Target mechanism is a core component of the compilation process, serving several key purposes:

1. **Specifying Compilation Target**: Determines the format in which the code should be compiled, such as compiling Solidity into Solana BPF, Sui MoveVM, or Aptos MoveVM-compatible formats.
2. **Managing Compilation Toolchains**: Ensures that Hummanta uses the correct compiler, standard library, and tools during the build process to adapt correctly to the target environment.
3. **Supporting Multiple Virtual Machines (VMs)**: Different blockchains use different virtual machines, such as Solana BPF, Sui MoveVM, and Aptos MoveVM. Hummanta provides an adaptation mechanism to ensure proper execution.
4. **Dynamically Adapting the Development Environment**: Some target platforms require specific dependencies, such as the Sui Move compiler for Sui Move or the Rust cross-compilation toolchain for Solana. Hummanta automatically manages these dependencies through the Target mechanism.
5. **Extensibility**: Users can add custom Targets and specify corresponding compilation toolchains and conversion rules, ensuring support for additional blockchain platforms in the future.

## **Hummanta Target vs. Rust Target vs. LLVM Target**

Hummanta's Target mechanism goes beyond the traditional definitions of Rust and LLVM Targets. It not only defines the target architecture but also encompasses the entire toolchain management process.

| **Comparison**            | **Hummanta Target**                                          | **Rust Target**                                              | **LLVM Target**                                              |
| ------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Definition**            | Represents a complete compilation target, including toolchains, standard libraries, and code transformation tools. | Defines CPU architecture, OS, and ABI for compilation.       | Provides a low-level architecture abstraction for generating machine code. |
| **Purpose**               | Adapts to different blockchain environments such as Solana, Sui, and Aptos. | Adapts to different OS and hardware architectures.           | Generates IR or machine code for different hardware architectures. |
| **Dependency Management** | Requires downloading and managing multiple toolchains, such as Solidity compilers and Move compilers. | Requires cross-compilation tools such as `rustup target add`. | Only contains target architecture information, not toolchain management. |
| **Dynamism**              | Allows users to define custom Targets and automatically adapt toolchains. | Primarily based on static JSON Target Specs.                 | Primarily used for LLVM's internal code generation.          |
| **Extensibility**         | Easily adds support for new blockchains or virtual machines. | Requires modifying Rust compiler source code.                | Requires modifying LLVM source code.                         |

This comparison highlights that Hummanta's Target is not just a description of a compilation target but a complete build system management solution. It provides the appropriate compilation toolchain for different blockchain environments, allowing developers to seamlessly switch between targets without worrying about underlying implementation details.

## **Target Design**

Hummanta's Target mechanism is flexible and extensible. While it draws inspiration from Rust's Target system, it provides higher-level dynamic configuration and dependency management capabilities.

### **1. Configuration-Driven Management**

Hummanta manages Targets through `hummanta.toml`, allowing users to finely configure compilation options, for example:

```toml
[target.sui]
compiler = "~/.hummanta/toolchains/sui-move/move-build"
stdlib = "~/.hummanta/toolchains/sui-move/move-stdlib"
output_format = "move-bytecode"
```

This approach enables users to customize different compilation workflows without manually handling complex low-level implementations.

### **2. Dynamic Toolchain Management**

Hummanta needs to provide specific toolchains for different blockchain ecosystems. The Target mechanism includes a complete dynamic toolchain management solution, including:

- `hummanta target add <target>`: Automatically installs the required compilers, standard libraries, and other components.
- `hummanta target remove <target>`: Cleans up related toolchains and dependencies.
- `hummanta target list`: Displays available targets and their details.

For example, when a user runs `hummanta target add sui`, Hummanta automatically downloads and installs the Sui Move compiler while ensuring that the `move-stdlib` standard library is available.

More details on using target-related commands can be found in the [CLI Reference](../references/cli.md#target).

### **3. Automated Compilation Workflow**

Hummanta allows users to compile their code using `hummanta compile`, following a structured process:

```sh
hummanta compile --target=sui
```

- Parses `hummanta.toml` to determine the target environment.
- Loads the appropriate compilation toolchain (which may consist of multiple components).
- Generates bytecode compatible with the target VM.

This process ensures that developers can quickly compile their code without managing underlying tools manually.

## **Supported Targets**

Hummanta currently supports and plans to support the following Targets:

- **Solana BPF**: Compiles Solidity code into Solana-compatible BPF bytecode.
- **Sui MoveVM**: Compiles Solidity code into Sui-compatible Move bytecode.
- **Aptos MoveVM**: Compiles Solidity code into Aptos-compatible Move bytecode.

In the future, Hummanta may support additional blockchains and VMs, such as Starknet Cairo, Ethereum zkEVM, and Mina zkApps, enabling developers to deploy contracts seamlessly across multiple chains.
