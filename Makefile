.PHONY: all check install

PREFIX ?= /usr

all:
	@echo -n

check:
	./check.sh

install:
	install -Dm755 lisp.sh "$(PREFIX)/bin/lisp"
