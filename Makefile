# Makefile for building and serving Marp presentations
.PHONY: build dev

.DEFAULT_GOAL := build
# Ensure the build directory exists
build_dir := ./build

# Targets for building and serving the presentations
build:
	npx @marp-team/marp-cli@latest -I ./assessments/ -o $(build_dir) --theme ./assets/css/academic.css

dev:
	npx @marp-team/marp-cli@latest -s ./assessments --theme ./assets/css/academic.css --watch