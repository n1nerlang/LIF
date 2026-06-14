# @lif/utils

Utility functions and helpers for LIF development. A collection of commonly-used string, table, and file utilities.

## Installation

```bash
lif install @lif/utils
```

## Usage

```lua
local utils = require('@lif/utils')

-- String utilities
local parts = utils.split("hello,world,lua", ",")
local trimmed = utils.trim("  hello  ")
local has_prefix = utils.startswith("hello", "hel")

-- Table utilities
local tbl = {a = 1, b = 2}
local keys = utils.keys(tbl)
local merged = utils.merge({a = 1}, {b = 2})
```

## Available Functions

### String Functions
- `split(str, delimiter)` - Split string by delimiter
- `trim(str)` - Remove leading/trailing whitespace
- `startswith(str, prefix)` - Check string prefix
- `endswith(str, suffix)` - Check string suffix

### Table Functions
- `keys(tbl)` - Get all table keys
- `values(tbl)` - Get all table values
- `merge(tbl1, tbl2)` - Merge two tables
