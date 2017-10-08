#!/usr/bin/perl
# dumb down UTF8 chars for non-UTF8 fonts
#
# Copyright (C) 2017 Christian Garbs <mitch@cgarbs.de>
# Licensed under GNU GPL 3 or later

use warnings;
use strict;

while (my $line = <>) {
    $line =~ s/×/x/g;
    $line =~ s/„/"/g;
    $line =~ s/“/"/g;
    $line =~ s/”/"/g;
    $line =~ s/‚/'/g;
    $line =~ s/‘/'/g;
    $line =~ s/’/'/g;
    $line =~ s/…/.../g;
    $line =~ s/–/--/g;
    print $line;
}
