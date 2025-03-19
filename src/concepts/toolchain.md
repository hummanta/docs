# Toolchain

In Hummanta, a **Toolchain** refers to the set of tools required to compile and transform source code into the target format. It includes compilers, standard libraries, detection tools (Detect), and linkers (Linker), ensuring that the code can be correctly compiled for a specific blockchain platform or virtual machine. A **Toolchain** is a collection of tools related to a specific language or platform, aimed at ensuring that code compilation, linking, and execution are adapted to the target environment.

Hummanta manages these components through the **Toolchain** mechanism, providing support for different blockchain or virtual machine platforms, including tools like **Detect**, **Compiler**, and **Linker**.

## Features of Toolchain

- **Cross-Platform Support**: Toolchains provide compilers and tools that support multiple target platforms. For example, the Solidity Toolchain can compile code into bytecode for Solana or Sui environments.
- **Flexibility**: Users can add, remove, or update toolchains as needed. Hummanta provides a simple command-line interface to manage toolchains and target platforms.
- **Automation**: During development, the Toolchain automatically manages dependencies, ensuring that the required compilers, standard libraries, and other tools are downloaded and correctly configured.

## Components of Toolchain

- **Detect**: A tool used to detect the project type. It scans project files (e.g., `.sol` files for Solidity, `Cargo.toml` for Rust) and determines the language and type of the project based on its content.
- **Compiler**: A tool that compiles source code into the target format, such as bytecode or machine code. The compiler adapts to the project type and the target platform (e.g., Solana BPF, Sui MoveVM).
- **Linker** (Optional): If the generated code requires linking, the linker will combine the compiled modules into a single target file or bytecode.

## Toolchain Management

In Hummanta, **Toolchain** is managed as a set of tool packages. Each toolchain contains a series of tools related to a specific target platform or language. These toolchains can be dynamically installed via the `hummanta toolchain add <language>` command, so users don't have to manually download or configure the tools.

### Toolchain Installation Process

When a user runs `hummanta toolchain add <language>`, Hummanta automatically downloads the relevant toolchain components from a predefined source (e.g., GitHub Releases or other hosting locations). The process includes:

1. **Toolchain Lookup**: Based on the user's input `<language>`, Hummanta checks whether the corresponding toolchain (e.g., Solidity or Rust) is available from the official repository or other mirror sites.
2. **Download Toolchain**: Downloads the executable files for the tools (e.g., Detect, Compiler). These files are stored under the `~/.hummanta/toolchains/<language>` directory.
3. **Verification and Configuration**: Once the download is complete, Hummanta verifies that the toolchain files are executable and correctly configured. If everything is in order, the toolchain becomes ready for use.

### Toolchain Management Commands

- `hummanta toolchain add <language>`: Adds the toolchain for the specified language or platform.
- `hummanta toolchain remove <language>`: Removes the toolchain for the specified language.
- `hummanta toolchain list`: Lists all installed toolchains.

For more details on using toolchain-related commands, refer to the [CLI Reference](../references/cli.md#toolchain).

### Directory Structure

Hummanta stores toolchains under the `~/.hummanta/toolchains/` directory, creating a separate subdirectory for each language or platform, for example:

```text
~/.hummanta/toolchains/
  ├── solidity/
  │   ├── detect        # Executable for detecting project type
  │   ├── compiler      # Compiler executable
  │   ├── linker        # (Optional) Linker executable
  ├── rust/
  │   ├── detect        # Executable for detecting project type
  │   ├── compiler      # Compiler executable
  │   └── linker        # (Optional) Linker executable
  ├── sui-move/
  │   ├── detect        # Executable for detecting project type
  │   ├── move-build    # Compiler executable
  │   └── move-stdlib   # Move standard library
```
