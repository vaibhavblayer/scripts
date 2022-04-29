#step-3
arg=$(echo $arg2 | awk '{gsub(/\{/, "\\\\{"); gsub(/\}/, "\\\\}"); gsub(/\$/, "\\\\$"); gsub(/\^/, "\\\\string\^"); print }')
($arg1 | awk $arg2) | awk -v t="$arg1" -v tt="$arg"  '{}END{print "\\node at (0.6, " NR/2 + 0.5 ")[right, text width=9cm] \{\\texttt\{" t " \| awk \$\47\$" tt "\$\47\$ \}\};"}' >> temp.tex
