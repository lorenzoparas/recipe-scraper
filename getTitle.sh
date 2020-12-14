egrep "<h2 class=\"recipe-title\">" html.txt > title.txt
sed "s/^ *//" title.txt > titleDump.txt
sed "s/<h2 class=\"recipe-title\">\(.*\)<\/h2>/\1/" titleDump.txt > title.txt