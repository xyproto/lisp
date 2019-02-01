.PHONY: test install

DESTDIR ?=
PREFIX ?= /usr

test:
	./test.sh

install:
	install -Dm755 lisp.sh "$(DESTDIR)$(PREFIX)/bin/lisp"
	install -Dm755 lispi.sh "$(DESTDIR)$(PREFIX)/bin/lispi"
