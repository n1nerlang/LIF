# Contributing to LIF

We welcome contributions! Whether you're fixing bugs, adding features, or creating new packages, we'd love your help.

## How to Contribute

### 1. Creating a New Package

Packages are the primary way to extend LIF. See [packages/README.md](./packages/README.md) for detailed instructions.

### 2. Package Submission Process

1. **Create your package** in the `packages/` directory with proper structure
2. **Write documentation** - Include a detailed README with examples
3. **Add tests** - Include test files if applicable
4. **Create a Pull Request** with a clear description of what your package does
5. **Wait for review** - Maintainers will review your submission

### 3. Naming Conventions

- Use scoped packages: `@your-github-username/package-name`
- Use kebab-case for package names
- Keep names descriptive and short

### 4. Quality Standards

- Code should follow Lua best practices
- Include clear comments and documentation
- Provide working examples
- Ensure compatibility with Lua 5.1+

### 5. License

All packages contributed to LIF must be under the MIT License or compatible.

## Repository Structure

```
LIF/
├── main.lua              # Core entry point
├── package.json          # LIF package metadata
├── packages/             # Community packages directory
│   ├── README.md
│   └── @username/
│       └── package-name/
├── docs/                 # Documentation
└── examples/             # Example usage
```

## Code Style

- Use clear, descriptive variable names
- Comment complex logic
- Keep functions focused and single-purpose
- Follow existing code patterns in the repository

## Getting Help

- Check existing packages for examples
- Read the [packages/README.md](./packages/README.md) guide
- Open an issue if you have questions

Thank you for contributing to LIF!
