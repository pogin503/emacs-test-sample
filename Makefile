# Makefile

UNAME:=$(shell uname -s)

#多分動くと思う
ifeq ($(UNAME),Darwin)
EMACS=/Applications/Emacs.app/Contents/MacOS/Emacs
else
EMACS=emacs
endif

.PHONY : build test

build :
	$(EMACS) --batch -Q -L . --eval \
		"(progn \
		(setq byte-compile-error-on-warn t) \
		(batch-byte-compile))" *.el

test: build
	$(EMACS) --batch -Q -L . -l test/run-test.el
