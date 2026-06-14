--[[
  @lif/template-forproject
  Project templates for LIF development
]]

local templates = {}

function templates.create_basic()
  return {
    name = "basic",
    description = "Basic LIF project template",
    files = {
      ["main.lua"] = "-- Main entry point\nlocal app = require('app')\napp.start()",
      ["app.lua"] = "local app = {}\nfunction app.start()\n  print('App started!')\nend\nreturn app"
    }
  }
end

function templates.create_cli()
  return {
    name = "cli",
    description = "CLI application template",
    files = {
      ["main.lua"] = "#!/usr/bin/env lua\n-- CLI Application\nlocal cli = require('cli')\ncli.run(arg)"
    }
  }
end

return templates
