--[[
  @lif/testing
  Testing framework and assertions for LIF
]]

local testing = {}
testing.tests = {}
testing.passed = 0
testing.failed = 0

-- Test suite
function testing.describe(name, callback)
  print("\n" .. name)
  print(string.rep("-", #name))
  callback()
end

-- Test case
function testing.it(description, callback)
  local success, err = pcall(callback)
  if success then
    print("  ✓ " .. description)
    testing.passed = testing.passed + 1
  else
    print("  ✗ " .. description)
    print("    Error: " .. err)
    testing.failed = testing.failed + 1
  end
end

-- Assertions
function testing.assert_equal(actual, expected, message)
  if actual ~= expected then
    error((message or "") .. " Expected " .. tostring(expected) .. " but got " .. tostring(actual))
  end
end

function testing.assert_true(value, message)
  if not value then
    error(message or "Expected true but got false")
  end
end

function testing.assert_false(value, message)
  if value then
    error(message or "Expected false but got true")
  end
end

function testing.assert_nil(value, message)
  if value ~= nil then
    error(message or "Expected nil but got " .. tostring(value))
  end
end

-- Run tests and print summary
function testing.summary()
  print("\n" .. string.rep("=", 40))
  print("Tests: " .. testing.passed + testing.failed)
  print("Passed: " .. testing.passed)
  print("Failed: " .. testing.failed)
  print(string.rep("=", 40))
end

return testing
