sed -rn '/(Holmes|Sherlock)/p' sherlockholmes.txt | wc -l
sed -rn '/(Holmes|Sherlock)/p' sherlockholmes.txt | grep -oE "(Sherlock|Holmes)" | wc -l
sed -n 's/^/Hello:/p' sherlockholmes.txt
sed -rn 's/[A-Z][A-Za-z]+\s[A-Z][A-Za-z]+/Amit Katzman/gp' sherlockholmes.txt
sed -rn 's/\(/\[/pg' sherlockholmes.txt | sed -rn 's/\)/\]/pg'
