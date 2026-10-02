# ARGVUS Themes Meta-Package

A meta-package that provides convenient installation of all 20 official ARGVUS themes.

## Installation

```bash
pacman -S argvus-themes
```

This installs all official themes:
- Dark themes (12): one-dark, dracula, silver-dark, slate-dark, universe, gruvbox-high-dark, gruvbox-dark, rose-pine, tokyo-night, solitude, sunset, hackerman, monokai-dark
- Light themes (8): github-light, solarized-light, one-light, everforest-light, frost, catppuccin-latte, gruvbox-light

## Individual Installation

To install only specific themes:

```bash
pacman -S argvus-theme-dracula
pacman -S argvus-theme-rose-pine
# ... etc
```

## Usage

List available themes:
```bash
argvus-appearance themes list
```

Apply a theme:
```bash
theme-switch dracula
```

Filter by category:
```bash
argvus-appearance themes list --category dark
```

## See Also

- [ARGVUS](https://github.com/argvus/argvus)
- Theme discovery: `argvus-appearance themes get <id> <field>`
