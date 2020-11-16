#! /bin/sh
cat cap*.tex qa*.tex | grep -oP "mpp{.*?}{.*?}" | grep "[:]" | sort -u | sed 's/mpp/\\lexentry/g' > lexicon.tex
