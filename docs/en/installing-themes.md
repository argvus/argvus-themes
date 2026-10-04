---
title: Installing themes
description: Get the official ARGVUS themes from the argvus-themes repository and install them with pacman.
---

The official themes are published as Arch Linux packages from the ARGVUS repository, [`argvus-themes`](https://github.com/argvus/argvus-themes). Each theme is its own package named `argvus-theme-<THEME_NAME>`, and the `argvus-themes` package is a meta-package that installs all of them.

## Where to get themes

The source of every official theme lives in the ARGVUS project organization:

- The repository `argvus-themes` contains the meta-package and this documentation.
- Each theme is a repository named `argvus-theme-<THEME_NAME>` (for example `argvus-theme-dracula`), built as a package with the same name.

Theme packages depend on `argvus-appearance`. Install ARGVUS first, as described in [Installation](/docs/getting-started/installation/), so that the appearance component is present.

## Install a single theme

Install one theme with its package name:

```bash
sudo pacman -S argvus-theme-<THEME_NAME>
```

For example:

```bash
sudo pacman -S argvus-theme-dracula
sudo pacman -S argvus-theme-rose-pine
```

The package installs the theme payload under `/usr/share/argvus/appearance/themes.d/<theme-id>/` and the theme's wallpaper under `/usr/share/backgrounds/argvus/`. It does not write into your home directory, and it does not change your current theme. Select it from the Control Center afterwards, see [Official themes](/docs/argvus-themes/official-themes/).

## Install all official themes

To install every official theme package at once:

```bash
sudo pacman -S argvus-themes
```

The meta-package depends on all 19 packaged themes. Use it when you want the complete catalog available in the theme selector.

## Available packages

The packages below are the ones published in the `argvus-themes` repository today.

**Dark themes**

| Package | Theme |
| --- | --- |
| `argvus-theme-one-dark` | One Dark |
| `argvus-theme-dracula` | Dracula |
| `argvus-theme-silver-dark` | Silver Dark |
| `argvus-theme-slate-dark` | Slate Dark |
| `argvus-theme-universe` | Universe |
| `argvus-theme-gruvbox-high-dark` | Gruvbox High Dark |
| `argvus-theme-gruvbox-dark` | Gruvbox Dark |
| `argvus-theme-rose-pine` | Rosé Pine |
| `argvus-theme-tokyo-night` | Tokyo Night |
| `argvus-theme-solitude` | Solitude |
| `argvus-theme-sunset` | Sunset |
| `argvus-theme-hackerman` | Hackerman |
| `argvus-theme-monokai-dark` | Monokai Dark |

**Light themes**

| Package | Theme |
| --- | --- |
| `argvus-theme-github-light` | GitHub Light |
| `argvus-theme-solarized-light` | Solarized Light |
| `argvus-theme-nord-light` | Nord Light |
| `argvus-theme-one-light` | One Light |
| `argvus-theme-everforest-light` | Everforest Light |
| `argvus-theme-catppuccin-latte` | Catppuccin Latte |
| `argvus-theme-gruvbox-light` | Gruvbox Light |

The built-in **ARGVUS Dark** and **ARGVUS Light** themes do not need a separate package; they come with `argvus-appearance`.

## Check what is installed

List the installed theme packages with:

```bash
pacman -Qs argvus-theme
```

Open the Control Center and go to **Appearance → Themes → Official Themes** to see the themes that are currently available in the selector. A theme that is installed but missing from that list is a packaging problem; see the troubleshooting section of the [Themes guide](/docs/argvus-themes/).

## Remove a theme

Remove a single theme package with:

```bash
sudo pacman -R argvus-theme-<THEME_NAME>
```

Removing a theme package does not delete your imported profiles. If the removed theme is the one currently applied, select another theme from the Control Center before removing it.
