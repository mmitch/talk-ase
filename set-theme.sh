#!/bin/bash
#
# change theme in exportes reveal html file
#
# Copyright (C) 2017 Christian Garbs <mitch@cgarbs.de>
# Licensed under GNU GPL 3 or later

THEME=$1

sed 's,/[^/]*.css" id="theme",/'$1'" id="theme",'
