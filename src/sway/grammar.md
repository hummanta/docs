# Sway Language Grammar v0.66.5

Sway is a domain-specific programming language for implementing smart contracts on blockchain platforms, most notably for the Fuel Virtual Machine (Fuel VM).

## Parser Grammar

### use

Provides several utility types and methods we can use in our contract.[AST: ItemUse](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_use.rs#L4)

![Rule use](diagrams/use.svg)

### use-tree

Path of a types or methods to be imported. [AST: UseTree](https://github.com/FuelLabs/sway/blob/v0.66.5/sway-ast/src/item/item_use.rs#L24)

![Rule use-tree](diagrams/use-tree.svg)