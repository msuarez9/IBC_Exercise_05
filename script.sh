cat wages.csv | cut -d "," -f 1,2,4 | sed 's/,/ /g' | sort -k3,3n | tail -n 1
male 5 39.808917197

cat wages.csv | cut -d "," -f 1,2,4 | sed 's/,/ /g' | sort -k3,3n | head -n 1
male 5 39.808917197

cat wages.csv | cut -d "," -f 1,2,4 | sed 's/,/ /g' | sort -k3,3n | tail -n 10 | grep -o "female" | wc -l 
