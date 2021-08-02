#! /bin/sh
# Concat book into one big file
# Replace \n\n with weird sequence of ~~~~~~
# Replace \n with space
cat cap*.tex | tr '\n' '|' | sed 's/||/~~~~~/g' | tr '|' ' ' > everything_all_together.tex 
pcregrep --buffer-size=1000000 -o1 "(?<=\\mpp\{).*?}{(.*?)}" everything_all_together.tex | sort | uniq > macronfix1.txt
pcregrep --buffer-size=1000000 -o1 "(?<=\\mpp\{).*?}{(.*?)}" everything_all_together.tex | sort | uniq | xargs -0 -n1 -I {} echo {} | /home/laptop/prog/latin-macronizer/macronize.py > macronfix2.txt
diff -y macronfix1.txt macronfix2.txt

