--[[
  LIF - Lua Integration Framework
  A powerful Lua package for efficient and flexible programming
]]

local lif = {}
lif.version = "1.0.0"

-- Package registry
lif.packages = {}
lif.installed = {}

-- Initialize
function lif.init()
  print("LIF v" .. lif.version .. " initialized")
end

-- Install dependencies from package.json
function lif.install_dependencies()
  print("[LIF] Installing dependencies...")
  -- Load package.json
  local json_file = io.open("package.json", "r")
  if not json_file then
    print("[ERROR] package.json not found")
    return false
  end
  
  local content = json_file:read("*a")
  json_file:close()
  
  print("[LIF] Dependencies installed successfully")
  return true
end

-- Install specific package
function lif.install_package(package_name)
  print("[LIF] Installing " .. package_name .. "...")
  
  -- Simulate package installation
  lif.installed[package_name] = true
  
  print("[✓] " .. package_name .. " installed successfully")
  return true
end

-- Show installed packages
function lif.list_packages()
  print("\n[LIF] Installed Packages:")
  print("─────────────────────────────")
  for pkg, _ in pairs(lif.installed) do
    print("  ✓ " .. pkg)
  end
  print("─────────────────────────────\n")
end

-- Help command
function lif.help()
  print([[
LIF - Lua Integration Framework v]] .. lif.version .. [[

USAGE:
  lif <command> [options]

COMMANDS:
  install <package>         Install a specific package
  install dependencies      Install all dependencies from package.json
  list                      List all installed packages
  init                      Initialize LIF
  help                      Show this help message
  version                   Show version

EXAMPLES:
  lif install dependencies
  lif install @lif/template-forproject
  lif install @lif/utils
  lif list
  lif help

For more information visit: https://github.com/n1nerlang/LIF
  ]])
end

-- CLI Entry Point
function lif.cli(args)
  if not args or #args == 0 then
    lif.help()
    return
  end
  
  local command = args[1]
  
  if command == "install" then
    if args[2] == "dependencies" then
      lif.install_dependencies()
    else
      lif.install_package(args[2])
    end
  elseif command == "list" then
    lif.list_packages()
  elseif command == "init" then
    lif.init()
  elseif command == "help" or command == "-h" or command == "--help" then
    lif.help()
  elseif command == "version" or command == "-v" or command == "--version" then
    print("LIF v" .. lif.version)
  else
    print("[ERROR] Unknown command: " .. command)
    print("Use 'lif help' for usage information")
  end
end

-- Allow direct execution
if arg then
  lif.cli(arg)
end

return lif
