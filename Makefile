CC ?= gcc
CFLAGS ?= -std=c11 -Wall -Wextra -Werror -O2
SRC := src/main.c
BIN := build/app

.PHONY: all build run test clean format-check help

all: build

build: $(BIN)

$(BIN): $(SRC)
	@mkdir -p build
	$(CC) $(CFLAGS) $< -o $@

run: build
	./$(BIN)

test: build
	./tests/smoke_test.sh

format-check:
	@if command -v clang-format >/dev/null 2>&1; then \
		clang-format --dry-run --Werror $(SRC); \
	else \
		echo "clang-format not installed; skipping format-check"; \
		exit 0; \
	fi

clean:
	rm -rf build

help:
	@echo "Targets: build run test clean format-check"
