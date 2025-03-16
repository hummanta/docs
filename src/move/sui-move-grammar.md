# Sui Move Language Grammar (mainnet-v1.43.1)

A next generation language for secure asset programming. Its primary use case is in blockchain environments, where Move programs are used to construct state changes. Move allows developers to write programs that flexibly manage and transfer assets, while providing the security and protections against attacks on those assets.

## Parser Grammar

### module

Modules are the core program unit that define types along with functions that operate on these types. (AST: [ModuleDefinition](https://github.com/MystenLabs/sui/blob/mainnet-v1.43.1/external-crates/move/crates/move-compiler/src/parser/ast.rs#L216), Doc: [Modules](https://move-book.com/reference/modules.html))

![Rule module](diagrams/module.svg)

### enum-definition

An enum is a user-defined data structure containing one or more variants. Each variant can optionally contain typed fields. The number, and types of these fields can differ for each variant in the enumeration. Fields in enums can store any non-reference, non-tuple type, including other structs or enums. (AST: [EnumDefinition](https://github.com/MystenLabs/sui/blob/mainnet-v1.43.1/external-crates/move/crates/move-compiler/src/parser/ast.rs#L286), Doc: [Enumerations](https://move-book.com/reference/enums.html))

![Rule enum-definition](diagrams/enum-definition.svg)

### type-parameters

This type is used in multiple places. To avoid redundant definitions, a shared virtual type is created to simplify imports.

![Rule type-parameters](diagrams/type-parameters.svg)

## type-parameter

Both functions and structs can take a list of type parameters in their signatures, enclosed by a pair of angle brackets <...>. (AST: [DatatypeTypeParameter](https://github.com/MystenLabs/sui/blob/mainnet-v1.43.1/external-crates/move/crates/move-compiler/src/parser/ast.rs#L259), Doc: [Declaring Type Parameters](https://move-book.com/reference/generics.html#declaring-type-parameters))

![Rule type-parameter](diagrams/type-parameter.svg)

### abilities

This type is used in multiple places. To avoid redundant definitions, a shared virtual type is created to simplify imports.

![Rule abilities](diagrams/abilities.svg)

### ability

Abilities are a typing feature in Move that control what actions are permissible for values of a given type. (AST: [Ability](https://github.com/MystenLabs/sui/blob/mainnet-v1.43.1/external-crates/move/crates/move-compiler/src/parser/ast.rs#L427), Doc: [Abilities](https://move-book.com/reference/abilities.html))

![Rule ability](diagrams/ability.svg)

### doc-comment

Documentation comments are special comments that are used to generate documentation for your code. They are similar to block comments but start with three slashes /// and are placed before the definition of the item they document. (AST: [DocComment](https://github.com/MystenLabs/sui/blob/mainnet-v1.43.1/external-crates/move/crates/move-compiler/src/parser/ast.rs#L108), Doc: [Doc comment](https://move-book.com/move-basics/comments.html#doc-comment))

![Rule doc-comment](diagrams/doc-comment.svg)
