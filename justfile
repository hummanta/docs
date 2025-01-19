# List all available commands
default:
    just --list

# Install pre-requisites
install:
    cargo install railroad_dsl
    cargo install mdbook

# Uninstall pre-requisites
uninstall:
    cargo uninstall railroad_dsl
    cargo uninstall mdbook

# Build syntax diagrams and book
build: build-solidity-diagrams build-book

# Builds a book from its markdown files
build-book:
     mdbook build

# Serves a book at http://localhost:3000, and rebuilds it on changes
serve: build
    mdbook serve --open

# Clean the build files
clean: clean-diagrams clean-book

# Clean all generated syntax diagrams
clean-diagrams: clean-solidity-diagrams

# Deletes built book
clean-book:
    -mdbook clean

# Generate Solidity syntax diagrams
build-solidity-diagrams:
    railroad --format svg src/solidity/diagrams/*.txt

# Remove generated solidity syntax diagrams
clean-solidity-diagrams:
    -rm src/solidity/diagrams/*.svg
