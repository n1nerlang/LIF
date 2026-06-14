--[[
  @lif/core
  Core framework and base classes for LIF
]]

local core = {}
core.version = "2.0.0"

-- Base class
core.class = {}

function core.class.new()
  local obj = {}
  
  function obj:new()
    local instance = {}
    setmetatable(instance, self)
    self.__index = self
    if instance.init then
      instance:init()
    end
    return instance
  end
  
  return obj
end

-- Module system
core.modules = {}

function core.load_module(name)
  if core.modules[name] then
    return core.modules[name]
  end
  
  local module = require(name)
  core.modules[name] = module
  return module
end

-- Configuration
core.config = {}

function core.config.set(key, value)
  core.config[key] = value
end

function core.config.get(key, default)
  return core.config[key] or default
end

-- Logger
core.logger = {}
core.logger.level = "info"

function core.logger.info(msg)
  if core.logger.level == "info" or core.logger.level == "debug" then
    print("[INFO] " .. msg)
  end
end

function core.logger.error(msg)
  print("[ERROR] " .. msg)
end

function core.logger.debug(msg)
  if core.logger.level == "debug" then
    print("[DEBUG] " .. msg)
  end
end

return core
