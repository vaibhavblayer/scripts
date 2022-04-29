#!/bin/zsh

n=${1:-5}
output=${2:-box}

echo "List of students ->"
echo "Loading the SQLite database..."
sleep 0.5
echo " "

awk -v var="$output" 'NR == 1 {print ".mode "var}' /Users/vaibhavblayer/scripts/mj > sq
awk -v var="$n" 'NR == 2 {print "select rowid,  * from students order by rowid desc limit "var ";"}' /Users/vaibhavblayer/scripts/mj >> sq


/usr/local/Cellar/sqlite/3.38.2/bin/sqlite3  /Users/vaibhavblayer/sqlite-projects/my-students/students.db ".read sq" 


rm sq



