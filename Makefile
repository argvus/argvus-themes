.PHONY: validate check fmt-check

validate: check

check: fmt-check

fmt-check:
	@echo "argvus-themes: no code to format check"

build:
	cd packaging/arch/local && makepkg --printsrcinfo > /dev/null && echo "✓ Meta-package structure valid"

.PHONY: build
