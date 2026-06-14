# @lif/template-forproject

Project templates for LIF development. Quickly bootstrap your LIF projects with pre-configured templates.

## Installation

```bash
pkg install @lif/template-forproject
```

## Usage

```lua
local templates = require('@lif/template-forproject')

-- Create a basic project template
local basic = templates.create_basic()
print(basic.name)  -- "basic"

-- Create a CLI template
local cli = templates.create_cli()
print(cli.name)    -- "cli"
```

## Available Templates

- **basic** - Simple project structure for getting started
- **cli** - Command-line application template

## Features

- Quick project setup
- Multiple template options
- Pre-configured file structures
- LIF best practices included
