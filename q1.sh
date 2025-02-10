awk 'END {print NR}' aliceinwonderland.txt
awk '{for (i=2;i<NF;i++) if($i=="Alice") count++} END {print count}' aliceinwonderland.txt
# another option for B:
# awk '/ Alice / {count++} END {print count}' aliceinwonderland.txt
awk '{for (i=2; i<NF; i++) a[$i]++} END {for (k in a) if(a[k] ==1) print k}' aliceinwonderland.txt
awk '{for(i=1;i<=NF;i++) a[$i]++ } END {for (k in a) print k, a[k]}' aliceinwonderland.txt  | sort -k 2 -h | tail -6 | sed '5d'
awk '{for (i=1;i<=NF;i++) {total_length+=length($i);count++}} END {print total_length/count}' aliceinwonderland.txt
