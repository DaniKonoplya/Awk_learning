awk '$2=="yellow" {print $1}' input.txt

awk '$2 ~ /p.+p/ {print $0}' input.txt

awk '$3>5 {print $1, $2, $0}' input.txt

awk -F, '$3>5 {print $1, $2}' input.txt

awk '{print > $2".txt"}' input.txt

awk '$3>6 {printf "%s (%d)\n",$0,NF}' input.txt

# print all lines that starts at "a" or "b"
awk '/^a|^b/ {print "A: "  $0}' input.txt

# if the line includes word strawberry in first column replace the word red to pi and print
awk '$1=="strawberry" { gsub(/red/,"pi") }; {print}' input.txt

awk '$2=="purple" && $3 < 5 {print $1}' input.txt

awk 'BEGIN {print 2*21}'

awk 'BEGIN { print 8*log(4) }'

awk '$1 ~ /p[el]/ {print $0}' input.txt

awk '$1 ~ /p[o]/ {print $0}' input.txt

awk '$1 ~ /r/ {print $0}' input.txt

awk '$1 ~ /^r/ {print $0}' input.txt

awk '$2 ~ /^r/ {print $0}' input.txt

printf "red\nrd\n" | awk '$0 ~ /^r.d/ {print}'
printf "red\nrd\n" | awk '$0 ~ /^r.*d/ {print}'

awk '$2 ~ /e{2}/ {print $0}' input.txt

awk '{ sub(/apple/, "nut", $1); print $1}' input.txt

# substitute the first apperance of each line
printf "apple apple\npineapple apple\n" | awk 'sub(/apple/, "nut")'

# substitute every apperance of each line
printf "apple apple\npineapple apple\n" | awk 'gsub(/apple/, "nut")'

# works like sed for substitute, 1 means to replace the first occurrence
printf 'my Awk' | awk '{ print gensub(/.*Awk/, "GNU &", 1) }'

printf 'Awk\nAwk is not Awkward' | awk '{ print gensub(/(Awk)/, "GNU &", 1) }'

# print only the users which line doesn't include the text /sbin/nologin
awk 'BEGIN { FS=":" } ! /\/sbin\/nologin/ { print $1 }' /etc/passwd