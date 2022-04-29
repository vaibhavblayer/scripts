#step-4
n=$(($arg1 | awk $arg2)| awk '{}END{print NR}')
($arg1 | awk $arg2) | awk -v y="$n" '{gsub(/_/, "\\_"); print "\\node at (0.6, " y/2 + x")[right, text width=9cm] \{\\texttt\{" $0 "\}\};"; x-=0.5 }' >> temp.tex
