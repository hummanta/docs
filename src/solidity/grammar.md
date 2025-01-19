# Solidity Language Grammar v0.8.28

Solidity is a statically typed, contract-oriented, high-level language for implementing smart contracts on the Ethereum platform.

## Parser Grammar

### source-unit

On top level, Solidity allows pragmas, import directives, and definitions of contracts, interfaces, libraries, structs, enums and constants.

![Rule source-unit](diagrams/source-unit.svg)

### import-directive

Import directives import identifiers from different files.

![Rule import-directive](diagrams/import-directive.svg)

### path

Path of a file to be imported.

![Rule path](diagrams/path.svg)

### symbol-aliases

List of aliases for symbols to be imported.

![Rule symbol-aliases](diagrams/symbol-aliases.svg)

### contract-definition

Top-level definition of a contract.

![Rule contract-definition](diagrams/contract-definition.svg)

### interface-definition

Top-level definition of an interface.

![Rule interface-definition](diagrams/interface-definition.svg)


### library-definition

Top-level definition of a library.

![Rule library-definition](diagrams/library-definition.svg)

### inheritance-specifier

Inheritance specifier for contracts and interfaces. Can optionally supply base constructor arguments.

![Rule inheritance-specifier](diagrams/inheritance-specifier.svg)

### contract-body-element

Declarations that can be used in contracts, interfaces and libraries.

![Rule contract-body-element](diagrams/contract-body-element.svg)

Note that interfaces and libraries may not contain constructors, interfaces may not contain state variables and libraries may not contain fallback, receive functions nor non-constant state variables.

### call-argument-list

Arguments when calling a function or a similar callable object. The arguments are either given as comma separated list or as map of named arguments.

![Rule call-argument-list](diagrams/call-argument-list.svg)

### identifier-path

Qualified name.

![Rule identifier-path](diagrams/identifier-path.svg)

### modifier-invocation

Call to a modifier. If the modifier takes no arguments, the argument list can be skipped entirely (including opening and closing parentheses).

![Rule modifier-invocation](diagrams/modifier-invocation.svg)

### visibility

Visibility for functions and function types.

![Rule visibility](diagrams/visibility.svg)

### parameter-list

A list of parameters, such as function arguments or return values.

![Rule parameter-list](diagrams/parameter-list.svg)

### constructor-definition

Definition of a constructor. Must always supply an implementation. Note that specifying internal or public visibility is deprecated.

![Rule constructor-definition](diagrams/constructor-definition.svg)

### state-mutability

State mutability for function types. The default mutability ‘non-payable’ is assumed if no mutability is specified.

![Rule state-mutability](diagrams/state-mutability.svg)

### override-specifier

An override specifier used for functions, modifiers or state variables. In cases where there are ambiguous declarations in several base contracts being overridden, a complete list of base contracts has to be given.

![Rule override-specifier](diagrams/override-specifier.svg)

### function-definition

The definition of contract, library, interface or free functions. Depending on the context in which the function is defined, further restrictions may apply, e.g. functions in interfaces have to be unimplemented, i.e. may not contain a body block.

![Rule function-definition](diagrams/function-definition.svg)

### modifier-definition

The definition of a modifier. Note that within the body block of a modifier, the underscore cannot be used as identifier, but is used as placeholder statement for the body of a function to which the modifier is applied.

![Rule modifier-definition](diagrams/modifier-definition.svg)

### fallback-function-definition

Definition of the special fallback function.

![Rule fallback-function-definition](diagrams/fallback-function-definition.svg)

### receive-function-definition

Definition of the special receive function.

![Rule receive-function-definition](diagrams/receive-function-definition.svg)

### struct-definition

Definition of a struct. Can occur at top-level within a source unit or within a contract, library or interface.

![Rule struct-definition](diagrams/struct-definition.svg)

### struct-member

The declaration of a named struct member.

![Rule struct-member](diagrams/struct-member.svg)

### enum-definition

Definition of an enum. Can occur at top-level within a source unit or within a contract, library or interface.

![Rule enum-definition](diagrams/enum-definition.svg)

### user-defined-value-type-definition

Definition of a user defined value type. Can occur at top-level within a source unit or within a contract, library or interface.

![Rule user-defined-value-type-definition](diagrams/user-defined-value-type-definition.svg)

### state-variable-declaration

The declaration of a state variable.

![Rule state-variable-declaration](diagrams/state-variable-declaration.svg)

### constant-variable-declaration

The declaration of a constant variable.

![Rule constant-variable-declaration](diagrams/constant-variable-declaration.svg)

### event-parameter

Parameter of an event.

![Rule event-parameter](diagrams/event-parameter.svg)

### event-definition

Definition of an event. Can occur in contracts, libraries or interfaces.

![Rule event-definition](diagrams/event-definition.svg)

### error-parameter

Parameter of an error.

![Rule error-parameter](diagrams/error-parameter.svg)

### error-definition

Definition of an error.

![Rule error-definition](diagrams/error-definition.svg)

### user-definable-operator

Operators that users are allowed to implement for some types with using for.

![Rule user-definable-operator](diagrams/user-definable-operator.svg)

### using-directive

Using directive to attach library functions and free functions to types. Can occur within contracts and libraries and at the file level.

![Rule using-directive](diagrams/using-directive.svg)

### using-aliases

![Rule using-aliases](diagrams/using-aliases.svg)

### type-name

A type name can be an elementary type, a function type, a mapping type, a user-defined type (e.g. a contract or struct) or an array type.

![Rule type-name](diagrams/type-name.svg)

### elementary-type-name

![Rule elementary-type-name](diagrams/elementary-type-name.svg)

### function-type-name

![Rule function-type-name](diagrams/function-type-name.svg)

### variable-declaration

The declaration of a single variable.

![Rule variable-declaration](diagrams/variable-declaration.svg)

### data-location

![Rule data-location](diagrams/data-location.svg)

### expression

Complex expression. Can be an index access, an index range access, a member access, a function call (with optional function call options), a type conversion, an unary or binary expression, a comparison or assignment, a ternary expression, a new-expression (i.e. a contract creation or the allocation of a dynamic memory array), a tuple, an inline array or a primary expression (i.e. an identifier, literal or type name).

![Rule expression](diagrams/expression.svg)

### tuple-expression

![Rule tuple-expression](diagrams/tuple-expression.svg)

### inline-array-expression

An inline array expression denotes a statically sized array of the common type of the contained expressions.

![Rule inline-array-expression](diagrams/inline-array-expression.svg)


### identifier

Besides regular non-keyword Identifiers, some keywords like ‘from’ and ‘error’ can also be used as identifiers.

![Rule identifier](diagrams/identifier.svg)

### literal

![Rule literal](diagrams/literal.svg)

### literal-with-sub-denomination

![Rule literal-with-sub-denomination](diagrams/literal-with-sub-denomination.svg)

### boolean-literal

![Rule boolean-literal](diagrams/boolean-literal.svg)

### string-literal

A full string literal consists of either one or several consecutive quoted strings.

![Rule string-literal](diagrams/string-literal.svg)

### hex-string-literal

A full hex string literal that consists of either one or several consecutive hex strings.

![Rule hex-string-literal](diagrams/hex-string-literal.svg)

### unicode-string-literal

A full unicode string literal that consists of either one or several consecutive unicode strings.

![Rule unicode-string-literal](diagrams/unicode-string-literal.svg)

### number-literal

Number literals can be decimal or hexadecimal numbers with an optional unit.

![Rule number-literal](diagrams/number-literal.svg)

### block

A curly-braced block of statements. Opens its own scope.

![Rule block](diagrams/block.svg)

### unchecked-block

![Rule unchecked-block](diagrams/unchecked-block.svg)

### statement

![Rule statement](diagrams/statement.svg)

### if-statement

If statement with optional else part.

![Rule if-statement](diagrams/if-statement.svg)

### for-statement

For statement with optional init, condition and post-loop part.

![Rule for-statement](diagrams/for-statement.svg)

### while-statement

![Rule while-statement](diagrams/while-statement.svg)

### do-while-statement

![Rule do-while-statement](diagrams/do-while-statement.svg)

### continue-statement

A continue statement. Only allowed inside for, while or do-while loops.

![Rule continue-statement](diagrams/continue-statement.svg)

### break-statement

A break statement. Only allowed inside for, while or do-while loops.

![Rule break-statement](diagrams/break-statement.svg)

### try-statement

A try statement. The contained expression needs to be an external function call or a contract creation.

![Rule try-statement](diagrams/try-statement.svg)

### catch-clause

The catch clause of a try statement.

![Rule catch-clause](diagrams/catch-clause.svg)

### return-statement

![Rule return-statement](diagrams/return-statement.svg)

### emit-statement

An emit statement. The contained expression needs to refer to an event.

![Rule emit-statement](diagrams/emit-statement.svg)

### revert-statement

A revert statement. The contained expression needs to refer to an error.

![Rule revert-statement](diagrams/revert-statement.svg)

### assembly-statement

An inline assembly block. The contents of an inline assembly block use a separate scanner/lexer, i.e. the set of keywords and allowed identifiers is different inside an inline assembly block.

![Rule assembly-statement](diagrams/assembly-statement.svg)

### assembly-flags

Assembly flags. Comma-separated list of double-quoted strings as flags.

![Rule assembly-flags](diagrams/assembly-flags.svg)

### variable-declaration-tuple

A tuple of variable names to be used in variable declarations. May contain empty fields.

![Rule variable-declaration-tuple](diagrams/variable-declaration-tuple.svg)


### variable-declaration-statement

A variable declaration statement. A single variable may be declared without initial value, whereas a tuple of variables can only be declared with initial value.

![Rule variable-declaration-statement](diagrams/variable-declaration-statement.svg)

### expression-statement

![Rule expression-statement](diagrams/expression-statement.svg)

### mapping-type

![Rule mapping-type](diagrams/mapping-type.svg)

### mapping-key-type

Only elementary types or user defined types are viable as mapping keys.

![Rule mapping-key-type](diagrams/mapping-key-type.svg)

### yul-statement

A Yul statement within an inline assembly block. continue and break statements are only valid within for loops. leave statements are only valid within function bodies.

![Rule yul-statement](diagrams/yul-statement.svg)

### yul-block

![Rule yul-block](diagrams/yul-block.svg)

### yul-variable-declaration

The declaration of one or more Yul variables with optional initial value. If multiple variables are declared, only a function call is a valid initial value.

![Rule yul-variable-declaration](diagrams/yul-variable-declaration.svg)

### yul-assignment

Any expression can be assigned to a single Yul variable, whereas multi-assignments require a function call on the right-hand side.

![Rule yul-assignment](diagrams/yul-assignment.svg)

### yul-if-statement

![Rule yul-if-statement](diagrams/yul-if-statement.svg)

### yul-for-statement

![Rule yul-for-statement](diagrams/yul-for-statement.svg)

### yul-switch-statement

A Yul switch statement can consist of only a default-case (deprecated) or one or more non-default cases optionally followed by a default-case.

![Rule yul-switch-statement](diagrams/yul-switch-statement.svg)

### yul-function-definition

![Rule yul-function-definition](diagrams/yul-function-definition.svg)

### yul-path

While only identifiers without dots can be declared within inline assembly, paths containing dots can refer to declarations outside the inline assembly block.

![Rule yul-path](diagrams/yul-path.svg)

### yul-function-call

A call to a function with return values can only occur as right-hand side of an assignment or a variable declaration.

![Rule yul-function-call](diagrams/yul-function-call.svg)

### yul-boolean

![Rule yul-boolean](diagrams/yul-boolean.svg)

### yul-literal

![Rule yul-literal](diagrams/yul-literal.svg)

### yul-expression

![Rule yul-expression](diagrams/yul-expression.svg)

## Lexer Grammar

### fixed-bytes

Bytes types of fixed length.

![Rule fixed-bytes](diagrams/fixed-bytes.svg)

### sub-denomination

Unit denomination for numbers.

![Rule sub-denomination](diagrams/sub-denomination.svg)

### signed-integer-type

Sized signed integer types. int is an alias of int256.

![Rule signed-integer-type](diagrams/signed-integer-type.svg)

### unsigned-integer-type

Sized unsigned integer types. uint is an alias of uint256.

![Rule unsigned-integer-type](diagrams/unsigned-integer-type.svg)


### non-empty-string-literal

A non-empty quoted string literal restricted to printable characters.

![Rule non-empty-string-literal](diagrams/non-empty-string-literal.svg)

### empty-string-literal

An empty string literal

![Rule empty-string-literal](diagrams/empty-string-literal.svg)

### single-quoted-printable

Any printable character except single quote or back slash.

![Rule single-quoted-printable](diagrams/single-quoted-printable.svg)

### double-quoted-printable

Any printable character except double quote or back slash.

![Rule double-quoted-printable](diagrams/double-quoted-printable.svg)

### escape-sequence

Escape sequence. Apart from common single character escape sequences, line breaks can be escaped as well as four hex digit unicode escapes \uXXXX and two digit hex escape sequences \xXX are allowed.

![Rule escape-sequence](diagrams/escape-sequence.svg)

### unicode-string-literal

A single quoted string literal allowing arbitrary unicode characters.

![Rule unicode-string-literal](diagrams/lexer-unicode-string-literal.svg)

### hex-string

Hex strings need to consist of an even number of hex digits that may be grouped using underscores.

![Rule hex-string](diagrams/hex-string.svg)

### hex-number

Hex numbers consist of a prefix and an arbitrary number of hex digits that may be delimited by underscores.

![Rule hex-number](diagrams/hex-number.svg)

### decimal-number

A decimal number literal consists of decimal digits that may be delimited by underscores and an optional positive or negative exponent. If the digits contain a decimal point, the literal has fixed point type.

![Rule decimal-number](diagrams/decimal-number.svg)

### identifier

An identifier in solidity has to start with a letter, a dollar-sign or an underscore and may additionally contain numbers after the first symbol.

![Rule identifier](diagrams/lexer-identifier.svg)

### yul-evm-builtin

Builtin functions in the EVM Yul dialect.

![Rule yul-evm-builtin](diagrams/yul-evm-builtin.svg)

### yul-identifier

Yul identifiers consist of letters, dollar signs, underscores and numbers, but may not start with a number. In inline assembly there cannot be dots in user-defined identifiers. Instead see yulPath for expressions consisting of identifiers with dots.

![Rule yul-identifier](diagrams/yul-identifier.svg)

### yul-hex-number

Hex literals in Yul consist of a prefix and one or more hexadecimal digits.

![Rule yul-hex-number](diagrams/yul-hex-number.svg)

### yul-decimal-number

Decimal literals in Yul may be zero or any sequence of decimal digits without leading zeroes.

![Rule yul-decimal-number](diagrams/yul-decimal-number.svg)

### yul-string-literal

String literals in Yul consist of one or more double-quoted or single-quoted strings that may contain escape sequences and printable characters except unescaped line breaks or unescaped double-quotes or single-quotes, respectively.

![Rule yul-string-literal](diagrams/yul-string-literal.svg)

### pragma-token

Pragma token. Can contain any kind of symbol except a semicolon. Note that currently the solidity parser only allows a subset of this.

## References

- [Solidity Official Language Grammar (v0.8.28)](https://docs.soliditylang.org/en/v0.8.28/grammar.html)
