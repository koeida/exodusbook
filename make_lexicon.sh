#! /bin/sh
cat cap*.tex qa*.tex | grep -Pazo "mpp{.*?}{.*?}" | sed 's/\x0/\n/g' | grep -Pa "[:]" | sort -u | sed 's/mpp/\\lexentry/g'  > lexicon.tex
