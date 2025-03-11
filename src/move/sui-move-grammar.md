# Sui Move Language Grammar (mainnet-v1.43.1)

A next generation language for secure asset programming. Its primary use case is in blockchain environments, where Move programs are used to construct state changes. Move allows developers to write programs that flexibly manage and transfer assets, while providing the security and protections against attacks on those assets.

## Parser Grammar

### module

Modules are the core program unit that define types along with functions that operate on these types. (AST: [ModuleDefinition](https://github.com/MystenLabs/sui/blob/mainnet-v1.43.1/external-crates/move/crates/move-compiler/src/parser/ast.rs#L216), Doc: [Modules](https://move-book.com/reference/modules.html))

![Rule module](diagrams/module.svg)
