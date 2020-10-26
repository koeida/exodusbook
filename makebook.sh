#! /bin/sh
sed 's/marginpar{\([a-zA-ZāēīōūĀĒĪŌŪ <$/(),-]*:\)/marginpar{{\\bf \1}/g' exodus.tex > final.tex
#sed 's/ā/=a/g' temp1.tex | sed 's/ē/=e/g' | sed 's/ī/=i/g' | sed 's/ō/=o/g' | sed 's/ū/=u/g' > final.tex
pdflatex final.tex
