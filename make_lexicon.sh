#! /bin/sh
grep -oP "(?<=marginpar{).*?(?=})" exodus.tex | grep "[:]" | sort -u | sed 's/\([a-zA-ZāēīōūĀĒĪŌŪ \+<$/()\.,-]*:\)/{\\bf \1}/g' | sed 's/$/\n\n/g' > lexicon.tex
