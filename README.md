# ARGVUS Themes

`argvus-themes` is an Arch Linux metapackage that installs every official ARGVUS
theme package. Install it with `sudo pacman -S argvus-themes`. ARGVUS Dark and
ARGVUS Light are included in `argvus-appearance` and do not need separate theme
packages.

[![CI](https://github.com/argvus/argvus-themes/actions/workflows/ci.yml/badge.svg)](https://github.com/argvus/argvus-themes/actions/workflows/ci.yml)
[![Release](https://github.com/argvus/argvus-themes/actions/workflows/release.yml/badge.svg)](https://github.com/argvus/argvus-themes/actions/workflows/release.yml)
[![License](https://img.shields.io/badge/License-GPL--3.0-blue.svg)](LICENSE)

The local and remote PKGBUILDs list the official theme packages as dependencies.
Update both lists when adding an official theme.

## Build and install

On Arch Linux or a compatible distribution:

```sh
sudo pacman -S --needed base-devel git shellcheck
make validate
make build
make install
```

`make build` creates a deterministic local source archive in
`build/artifacts/` and a package in `build/dist/`. `make install` requires
`sudo` and installs the one package found in that directory without a blanket
`--overwrite` rule.

For package metadata only:

```sh
make validate
makepkg -p packaging/archlinux/pkgbuilds/remote/PKGBUILD --printsrcinfo
```

See [packaging/archlinux/README.md](packaging/archlinux/README.md) for the difference
between local and release builds.

## Desktop package model

`argvus` is the master package of the ARGVUS desktop. A component package depends on
`argvus`, so installing it pulls in the desktop and no install order is required.
Runtime tools that belong to the desktop are subcommands of `argvus` (for example
`argvus config` and `argvus i18n`), not separate executables.

## Documentation

- [DEVELOPMENT.md](DEVELOPMENT.md) — layout, checks, and releases
- [CONTRIBUTING.md](CONTRIBUTING.md) — contribution workflow
- [SECURITY.md](SECURITY.md) — private vulnerability reports

## License

SPDX: `GPL-3.0-only`. See [LICENSE](LICENSE).
