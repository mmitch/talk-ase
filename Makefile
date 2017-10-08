# main Makefile for talk-ase
#
# Copyright (C) 2017 Christian Garbs <mitch@cgarbs.de>
# Licensed under GNU GPL 3 or later

SRC=ase.org
HTML=ase.html
PARTY=ase-party.html
FINAL=ase-final.html

SUBDIR=reveal.js/css/theme/source/

ORG_EXPORT=./org-export-reveal.sh
FIX_CHARS=./exportfix.pl
THEME_SWITCH=./set-theme.sh

all: build

browse: build
	sensible-browser $(PARTY)

clean:
	rm -f $(HTML)
	rm -f *~
	@cd $(SUBDIR); make clean

build: sass export

sass:
	@cd $(SUBDIR); make sass

$(HTML): $(SRC) $(ORG_EXPORT)
	$(ORG_EXPORT) $(SRC)

export: $(PARTY) $(FINAL)

$(PARTY): $(HTML) $(FIX_CHARS) $(THEME_SWITCH)
	$(FIX_CHARS) < $(HTML) | $(THEME_SWITCH) crt.css > $(PARTY)

$(FINAL): $(HTML) $(THEME_SWITCH)
	$(THEME_SWITCH) night.css < $(HTML) > $(FINAL)

