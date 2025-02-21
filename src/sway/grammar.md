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

![Rule use](diagrams/struct.svg)

### type-field

Definition of TypeField. ([AST: TypeField](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/mod.rs#L68))

![Rule use](diagrams/type-field.svg)

### type-name

Definition of TypeName. ([AST: Ty](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/ty/mod.rs#L5))

![Rule use](diagrams/type-name.svg)

### enum

Definition of an enum. Can occur at top-level within a source unit or within a contract, library or interface. ([AST: ItemEnum](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_enum.rs#L4))

![Rule use](diagrams/enum.svg)

### traits
Definition of traits. Can be Used for abi and trait.([AST: Traits](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_trait.rs#L65))

![Rule traits](diagrams/traits.svg)

### trait-item
Define an item of an trait. ([AST: ItemTraitItem](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_trait.rs#L6)).

![Rule trait-item](diagrams/trait-item.svg)

### abi
ABI stands for Application Binary Interface.([AST: ItemAbi](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_abi.rs#L4), [doc: Defining the ABI](https://docs.fuel.network/guides/intro-to-sway/contract-abi/#defining-the-abi)).

![Rule abi](diagrams/abi.svg)

### const

Define constant items. ([AST: ItemConst](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_const.rs#L4))

![Rule use](diagrams/const.svg)

### configurable

Configurable constants are special constants that behave like regular constants in the sense that they cannot change during program execution, but they can be configured after the Sway program has been built. ([AST: ItemConfigurable](https://github.com/FuelLabs/sway/blob/94a066652468b4afa3bd396dacef482ed590976b/sway-ast/src/item/item_configurable.rs#L4), [doc: Configurable Constants](https://docs.fuel.network/docs/sway/basics/constants/#configurable-constants))

![Rule configurable](diagrams/configurable.svg)


### type-alias

Definition of type-alias. To declare a type alias to give an existing type another name. ([AST: ItemTypeAlias](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_type_alias.rs#L4))

![Rule use](diagrams/type-alias.svg)
