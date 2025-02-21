# Sway Language Grammar v0.66.5

Sway is a domain-specific programming language for implementing smart contracts on blockchain platforms, most notably for the Fuel Virtual Machine (Fuel VM).

## Parser Grammar

### module

On top level, Sway allows module kind and definitions of submodule, storage, contracts, traits, libraries, structs, enums and constants. ([AST: Module](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/module.rs#L4))

![Rule module](diagrams/module.svg)

### submodule

The `mod` keyword registers a submodule, making its items (such as functions and structs) accessible from the parent library. If used at the top level it will refer to a file in the src folder and in other cases in a folder named after the library in which it is defined. ([AST: Submodule](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/submodule.rs#L4))

![Rule submodule](diagrams/submodule.svg)

### use

Provides several utility types and methods we can use in our contract. ([AST: ItemUse](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_use.rs#L4))

![Rule use](diagrams/use.svg)

### use-tree

Path of a types or methods to be imported. ([AST: UseTree](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_use.rs#L24))

![Rule use-tree](diagrams/use-tree.svg)

### struct

Definition of a struct. Can occur at top-level within a source unit or within a contract, library or interface. ([AST: ItemStruct](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_struct.rs#L4))

![Rule struct](diagrams/struct.svg)

### type-field

Definition of TypeField. ([AST: TypeField](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/mod.rs#L68))

![Rule type-field](diagrams/type-field.svg)

### type-name

Definition of TypeName. ([AST: Ty](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/ty/mod.rs#L5))

![Rule type-name](diagrams/type-name.svg)

### enum

Definition of an enum. Can occur at top-level within a source unit or within a contract, library or interface. ([AST: ItemEnum](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_enum.rs#L4))

![Rule enum](diagrams/enum.svg)

### traits
Definition of traits. Can be used for abi and trait.([AST: Traits](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_trait.rs#L65))

![Rule traits](diagrams/traits.svg)

### trait-item
Define an item of an trait. ([AST: ItemTraitItem](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_trait.rs#L6)).

![Rule trait-item](diagrams/trait-item.svg)

### abi
ABI stands for Application Binary Interface.([AST: ItemAbi](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_abi.rs#L4), [doc: The ABI Declaration](https://fuellabs.github.io/sway/v0.66.5/book/sway-program-types/smart_contracts.html#the-abi-declaration)).

![Rule abi](diagrams/abi.svg)

### const

Define constant items. ([AST: ItemConst](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_const.rs#L4))

![Rule const](diagrams/const.svg)

### configurable

Configurable constants are special constants that behave like regular constants in the sense that they cannot change during program execution, but they can be configured after the Sway program has been built. ([AST: ItemConfigurable](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_configurable.rs#L4), [doc: Configurable Constants](https://fuellabs.github.io/sway/v0.66.5/book/basics/constants.html#configurable-constants))

![Rule configurable](diagrams/configurable.svg)


### type-alias

Definition of type-alias. To declare a type alias to give an existing type another name. ([AST: ItemTypeAlias](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_type_alias.rs#L4))

![Rule type-alias](diagrams/type-alias.svg)

### fn

Functions in Sway are declared with the fn keyword. ([AST: ItemFn](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_fn.rs#L4), [doc: Functions](https://fuellabs.github.io/sway/v0.66.5/book/basics/functions.html))

![Rule fn](diagrams/fn.svg)

### fn-signature
fn-signature declares signature for function. ([AST: FnSignature](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/mod.rs#L111), [doc: Functions](https://fuellabs.github.io/sway/v0.66.5/book/basics/functions.html))

![Rule fn-signature](diagrams/fn-signature.svg)

### generic-params
Generic types are a way to refer to types in general, meaning without specifying a single type. ([AST: GenericParams](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/generics.rs#L4), [doc: Generic Types](https://fuellabs.github.io/sway/v0.66.5/book/advanced/generic_types.html)).

![Rule generic-params](diagrams/generic-params.svg)

### where-clause
Where clause can be used to specify the required traits for the generic argument. ([AST: WhereClause](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/where_clause.rs#L4), [doc: Trait Constraints](https://fuellabs.github.io/sway/v0.66.5/book/advanced/generic_types.html#trait-constraints)).

![Rule where-clause](diagrams/where-clause.svg)

### code-block-contents
A CodeBlockContents represents the body of a code block, which contains a sequence of statements and expressions. ([AST: CodeBlockContents](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/expr/mod.rs#L425), [doc: Functions](https://fuellabs.github.io/sway/v0.66.5/book/basics/functions.html)).
![Rule code-block-contents](diagrams/code-block-contents.svg)

### fn-arg
A fn-arg represents function arguments. ([AST: FnArg](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/mod.rs#L98), [doc: Functions](https://fuellabs.github.io/sway/v0.66.5/book/basics/functions.html)).
![Rule fn-arg](diagrams/fn-arg.svg)

### pattern
A pattern is a construct used to match and destructure data. ([AST: Pattern](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/pattern.rs#L6), [doc: match expressions](https://fuellabs.github.io/sway/v0.66.5/book/basics/control_flow.html#match-expressions)).
![Rule pattern](diagrams/pattern.svg)

### trait
A trait opts a type into a certain type of behavior or functionality that can be shared among types. This allows for easy reuse of code and generic programming. ([AST: ItemTrait](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_trait.rs#L15), [doc: Declaring a Trait](https://fuellabs.github.io/sway/v0.66.5/book/advanced/traits.html#declaring-a-trait)).
![Rule trait](diagrams/trait.svg)
