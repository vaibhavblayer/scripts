#step-2
($arg1 | awk $arg2 )| awk '{}END{print "\\draw[rounded corners] (0, 0) rectangle (10, " NR/2 + 1 ");\n\\draw[-Stealth, ultra thick] (0.5, " NR/2 + 0.5 ") -- (0.6, " NR/2 + 0.5 ");"}' >> temp.tex
