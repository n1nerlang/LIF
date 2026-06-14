# LIF - Lua Integration Framework

A powerful Lua package that provides efficient and flexible programming capabilities.

## Quick Start

### Installation Steps

1. **Install LIF** via your package manager (pkg):
```bash
pkg install lif
```

2. **Initialize LIF** (optional):
```bash
lif init
```

3. **Install dependencies** from your project's package.json:
```bash
lif install dependencies
```

4. **Install packages** as needed:
```bash
lif install @lif/template-forproject
lif install @lif/utils
lif install @lif/core
lif install @lif/testing
```

## Available Commands

```bash
# Initialize LIF
lif init

# Install dependencies from package.json
lif install dependencies

# Install a specific package
lif install @lif/template-forproject
lif install @lif/utils
lif install @lif/core
lif install @lif/testing

# List installed packages
lif list

# Show help
lif help

# Show version
lif version
```

## Official Packages

- **[@lif/template-forproject](./packages/@lif/template-forproject)** - Project templates for quick starts
- **[@lif/utils](./packages/@lif/utils)** - Utility functions and helpers
- **[@lif/core](./packages/@lif/core)** - Core framework and base classes
- **[@lif/testing](./packages/@lif/testing)** - Testing framework and assertions

## Example Usage

```lua
-- Load the main LIF module
local lif = require('main')

-- Use utilities
local utils = require('packages.@lif.utils.init')
local parts = utils.split("hello,world", ",")

-- Use core framework
local core = require('packages.@lif.core.init')
local logger = core.logger
logger.info("Hello, LIF!")

-- Use testing
local test = require('packages.@lif.testing.init')
test.describe("Example Tests", function()
  test.it("should work", function()
    test.assert_equal(1 + 1, 2)
  end)
end)
test.summary()
```

## Creating Your Own Package

See [CONTRIBUTING.md](./CONTRIBUTING.md) and [packages/README.md](./packages/README.md) for detailed instructions.

Quick example:
```bash
mkdir -p packages/@yourname/mypackage
cd packages/@yourname/mypackage
```

Create `package.json`:
```json
{
  "name": "@yourname/mypackage",
  "version": "1.0.0",
  "entry": "init.lua",
  "author": "yourname",
  "license": "MIT"
}
```

Create `init.lua`:
```lua
local mypackage = {}
function mypackage.hello()
  print("Hello from @yourname/mypackage!")
end
return mypackage
```

## Features

- Lightweight and efficient
- Easy package management
- Community-driven package ecosystem
- Built-in testing framework
- Comprehensive utilities
- Full OOP support

## CI/CD Workflows

This repository includes automated workflows:
- **Tests** - Run on every push and PR
- **Validation** - Validate package structure and metadata
- **Updates** - Auto-update packages weekly
- **Release** - Create releases with package information

## Documentation

- [Contributing Guide](./CONTRIBUTING.md)
- [Package Development](./packages/README.md)
- [Package Documentation](./packages/@lif/)

## License

MIT - See LICENSE file for details

## Community

- [GitHub Issues](https://github.com/n1nerlang/LIF/issues)
- [GitHub Discussions](https://github.com/n1nerlang/LIF/discussions)
- [Contributing](./CONTRIBUTING.md)
