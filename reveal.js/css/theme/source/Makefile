# sass conversion Makefile for talk-ase
#
# Copyright (C) 2017 Christian Garbs <mitch@cgarbs.de>
# Licensed under GNU GPL 3 or later
#

BASEINCLUDE=mitchs-fixs.scss
SOURCES=$(filter-out $(BASEINCLUDE),$(wildcard *.scss))
TARGETS=$(SOURCES:%.scss=../%.css)

all:	sass

sass:	$(TARGETS)

clean:
	rm -f *~

# build CSS from SCSS
../%.css : %.scss
	sass $< $@

# dependencies for my include
crt.scss: $(BASEINCLUDE)
	touch $@

hackover.scss: $(BASEINCLUDE)
	touch $@
