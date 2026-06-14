--[[
  @lif/utils
  Utility functions and helpers for LIF development
]]

local utils = {}

-- String utilities
function utils.split(str, delimiter)
  local result = {}
  for match in (str .. delimiter):gmatch("(.-)" .. delimiter) do
    table.insert(result, match)
  end
  return result
end

function utils.trim(str)
  return str:match("^%s*(.-)%s*$")
end

function utils.startswith(str, prefix)
  return str:sub(1, #prefix) == prefix
end

function utils.endswith(str, suffix)
  return str:sub(-#suffix) == suffix
end

-- Table utilities
function utils.keys(tbl)
  local keys = {}
  for k, _ in pairs(tbl) do
    table.insert(keys, k)
  end
  return keys
end

function utils.values(tbl)
  local values = {}
  for _, v in pairs(tbl) do
    table.insert(values, v)
  end
  return values
end

function utils.merge(tbl1, tbl2)
  local result = {}
  for k, v in pairs(tbl1) do
    result[k] = v
  end
  for k, v in pairs(tbl2) do
    result[k] = v
  end
  return result
end

return utils
