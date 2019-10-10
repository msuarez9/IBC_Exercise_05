#Answer to question 1
cat wages.csv | cut -d "," -f 1,2 | sed 's/,/ /g' | sort -k1,1 -k2,2n | grep -v "gender yearsExperience" | uniq  > gender_years_experience.txt


#Answer to question 2
echo "Lowest Earner"
cat wages.csv | cut -d "," -f 1,2,4 | sed 's/,/ /g' | sort -k3,3n | tail -n 1

echo "Highest Earner"
cat wages.csv | cut -d "," -f 1,2,4 | sed 's/,/ /g' | sort -k3,3n | grep -v "gender yearsExperience"| head -n 1

echo "# of Females in Top Ten Earners"
cat wages.csv | cut -d "," -f 1,2,4 | sed 's/,/ /g' | sort -k3,3n | tail -n 10 | grep -o "female" | wc -l 

#Answer to question 3
echo "Effect of Graduating College on Minimum Wage"
val1=$(cat wages.csv | cut -d "," -f 1,3,4 | sed 's/,/ /g' | sort -k3,3n | sort -n -k3 | grep -w "12" | head -1 | cut -d " " -f 3)
val2=$(cat wages.csv | cut -d "," -f 1,3,4 | sed 's/,/ /g' | sort -k3,3n | sort -n -k3 | grep -w "16" | head -1 | cut -d " " -f 3)
echo "$val1 - $val2" | bc
