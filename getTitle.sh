egrep "<h2 class=\"recipe-title\">" data/html.txt > data/title.txt
sed "s/^ *//" data/title.txt > data/.txt
sed "s/<h2 class=\"recipe-title\">\(.*\)<\/h2>/\1/" data/.txt > data/title.txt

cat data/title.txt