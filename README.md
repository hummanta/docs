# The Hummanta Documentation

This directory contains an `mdBook` project for the Hummanta documentation. This README will guide you on how to build and test the book locally.

## Pre-requisites

To build this project you will need to install the pre-requisites:

- Git https://git-scm.com/downloads
- Rust https://www.rust-lang.org/tools/install
- Just https://github.com/casey/just

See our setup for complete details, but after the typical `git clone` it's as simple as running `just` in the package directory to lists all the available commands.

For your first local build please run the following commands to install the dependencies for this project:

```
just install
```

## Build the book

To build the book, use the following command:

```
just build
```

This command generates the static HTML files in the `book/` directory. You can open `book/index.html` in your browser to view the generated book.

## Serve the book locally

For easier development and to preview changes as you edit, you can serve the book locally with:

```
just serve
```

This will start a local web server and open the book in your default browser. Any changes made to the markdown files will automatically reload the book.

By default, the book will be accessible at: http://localhost:3000.

## Testing the book

To ensure your book is correctly built and formatted, you can use the following command:

```
just test
```

This will check for common issues such as broken links or missing files.

## Directory structure

- `src/`: This directory contains all the markdown files for the chapters.
- `book/`: This is the output directory where the built HTML files are generated.
- `book.toml`: Configuration file for the `mdBook`.

## Deployment

The book is automatically deployed each time a commit is pushed to the `main` branch or a new release tag is created. The generated HTML files are hosted on GitHub Pages and are accessible at: https://hummanta.github.io/docs/

## License

Copyright (c) The Hummanta Authors. All rights reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
