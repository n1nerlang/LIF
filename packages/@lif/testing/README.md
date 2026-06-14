# @lif/testing

Testing framework and assertions for LIF. Write comprehensive tests for your LIF applications.

## Installation

```bash
lif install @lif/testing
```

## Usage

```lua
local test = require('@lif/testing')

test.describe("Math Functions", function()
  test.it("should add numbers correctly", function()
    test.assert_equal(2 + 2, 4)
  end)
  
  test.it("should handle true values", function()
    test.assert_true(true)
  end)
  
  test.it("should verify false values", function()
    test.assert_false(false)
  end)
end)

test.summary()
```

## Assertions

- `assert_equal(actual, expected, message)` - Check equality
- `assert_true(value, message)` - Assert true value
- `assert_false(value, message)` - Assert false value
- `assert_nil(value, message)` - Assert nil value

## Features

- Simple BDD-style syntax with `describe` and `it`
- Clear assertion messages
- Test summary with pass/fail counts
- Easy integration with CI/CD
