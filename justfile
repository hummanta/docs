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
build: build-solidity-diagrams build-sway-diagrams build-book

# Builds a book from its markdown files
build-book:
     mdbook build

# Testing the book
test:
    mdbook test

# Serves a book at http://localhost:3000, and rebuilds it on changes
serve: build
    mdbook serve --open

# Clean the build files
clean: clean-diagrams clean-book

# Clean all generated syntax diagrams
clean-diagrams: clean-solidity-diagrams clean-sway-diagrams

# Deletes built book
clean-book:
    -mdbook clean

# Generate Solidity syntax diagrams
build-solidity-diagrams:
    railroad --format svg src/solidity/diagrams/*.txt

# Generate Sway syntax diagrams
build-sway-diagrams:
    railroad --format svg src/sway/diagrams/*.txt

# Remove generated solidity syntax diagrams
clean-solidity-diagrams:
    -rm src/solidity/diagrams/*.svg

# Remove generated sway syntax diagrams
clean-sway-diagrams:
    -rm src/sway/diagrams/*.svg
