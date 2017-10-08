#!/bin/sh
# export org files via ox-reveal
#
# Copyright (C) 2017 Christian Garbs <mitch@cgarbs.de>
# Licensed under GNU GPL 3 or later

emacs --batch -l ~/.emacs --eval "
    (progn
      (require 'htmlize)
      (require 'org)
      (require 'ox-reveal)
      (let ((org-export-htmlize-generate-css (quote css)))
        (dolist (file command-line-args-left)
          (with-current-buffer (find-file-noselect file)
            (org-reveal-export-to-html)))))
" "$@"
