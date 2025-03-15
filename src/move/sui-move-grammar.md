# Sui Move Language Grammar (mainnet-v1.43.1)

A next generation language for secure asset programming. Its primary use case is in blockchain environments, where Move programs are used to construct state changes. Move allows developers to write programs that flexibly manage and transfer assets, while providing the security and protections against attacks on those assets.

## Parser Grammar

### module

Modules are the core program unit that define types along with functions that operate on these types. (AST: [ModuleDefinition](https://github.com/MystenLabs/sui/blob/mainnet-v1.43.1/external-crates/move/crates/move-compiler/src/parser/ast.rs#L216), Doc: [Modules](https://move-book.com/reference/modules.html))

![Rule module](diagrams/module.svg)

### enum-definition

An enum is a user-defined data structure containing one or more variants. Each variant can optionally contain typed fields. The number, and types of these fields can differ for each variant in the enumeration. Fields in enums can store any non-reference, non-tuple type, including other structs or enums. (AST: [EnumDefinition](https://github.com/MystenLabs/sui/blob/mainnet-v1.43.1/external-crates/move/crates/move-compiler/src/parser/ast.rs#L286), Doc: [Enumerations](https://move-book.com/reference/enums.html))

![Rule enum-definition](diagrams/enum-definition.svg)

### ability

Abilities are a typing feature in Move that control what actions are permissible for values of a given type. (AST: [Ability](https://github.com/MystenLabs/sui/blob/mainnet-v1.43.1/external-crates/move/crates/move-compiler/src/parser/ast.rs#L427), Doc: [Abilities](https://move-book.com/reference/abilities.html))

![Rule ability](diagrams/ability.svg)
