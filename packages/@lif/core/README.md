# @lif/core

Core framework and base classes for LIF development. Provides essential building blocks for LIF applications.

## Installation

```bash
lif install @lif/core
```

## Usage

```lua
local core = require('@lif/core')

-- Create a class
local Animal = core.class.new()
function Animal:init()
  self.name = "Unknown"
end

local dog = Animal:new()

-- Configure
core.config.set("app_name", "MyApp")
local name = core.config.get("app_name")

-- Logging
core.logger.info("Application started")
core.logger.error("An error occurred")
core.logger.debug("Debug information")
```

## Components

- **Class System** - OOP support with inheritance
- **Module Loader** - Dynamic module loading
- **Configuration** - Key-value configuration storage
- **Logger** - Built-in logging with levels

## Features

- Object-oriented programming with classes
- Module caching and management
- Configuration management
- Logging with debug levels
