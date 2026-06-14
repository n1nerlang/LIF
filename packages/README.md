# LIF Packages Registry

This directory contains community-contributed LIF packages. Users can upload their own packages here.

## Package Structure

Each package should follow this structure:

```
packages/
├── @username/package-name/
│   ├── init.lua
│   ├── package.json
│   └── README.md
```

## Creating a Package

### 1. Create your package directory

```bash
mkdir -p packages/@your-username/your-package-name
```

### 2. Create package.json

```json
{
  "name": "@your-username/your-package-name",
  "version": "1.0.0",
  "description": "Your package description",
  "author": "your-username",
  "license": "MIT",
  "entry": "init.lua"
}
```

### 3. Create init.lua

```lua
-- Your package implementation
local package = {}

function package.hello()
  print("Hello from @your-username/your-package-name!")
end

return package
```

### 4. Add README.md

Document your package with usage examples, features, and installation instructions.

## Uploading Your Package

1. Fork the [LIF repository](https://github.com/n1nerlang/LIF)
2. Add your package to the `packages/` directory
3. Create a pull request with your changes
4. Wait for review and merge

## Package Guidelines

- Use scoped package names: `@username/package-name`
- Write clear documentation
- Include examples in your README
- Follow Lua best practices
- Add a LICENSE file
- Test your code before submitting

## Example Packages

- [@lif/template-forproject](./template-forproject/) - Project templates
- [@lif/utils](./utils/) - Utility functions
- [@lif/core](./core/) - Core framework
- [@lif/testing](./testing/) - Testing utilities
