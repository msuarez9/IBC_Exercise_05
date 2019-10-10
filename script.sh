echo "Lowest Earner"
cat wages.csv | cut -d "," -f 1,2,4 | sed 's/,/ /g' | sort -k3,3n | tail -n 1

echo "Highest Earner"
cat wages.csv | cut -d "," -f 1,2,4 | sed 's/,/ /g' | sort -k3,3n | grep -v "gender yearsExperience"| head -n 1

echo "# of Females in Top Ten Earners"
cat wages.csv | cut -d "," -f 1,2,4 | sed 's/,/ /g' | sort -k3,3n | tail -n 10 | grep -o "female" | wc -l 

