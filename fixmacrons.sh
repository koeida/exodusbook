#! /bin/sh
pcregrep -o1 "(?<=\\mpp\{).*?}{(.*?)}" cap10.tex | head -n 15 > macronfix1.txt
pcregrep -o1 "(?<=\\mpp\{).*?}{(.*?)}" cap10.tex | head -n 15 | xargs -n1 -I {} echo {} | /home/laptop/prog/latin-macronizer/macronize.py > macronfix2.txt
diff -y macronfix1.txt macronfix2.txt
