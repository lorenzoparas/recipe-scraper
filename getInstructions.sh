sed -n -e '/recipeInstructions/,$p' html.txt > instructionDump.txt
sed '/recipeInstructions/,/\],/!d;/\],/q' html.txt > instruction.txt
sed 's/^ *//g' instruction.txt > instructionDump.txt
sed "/\"recipeInstructions\"/d; /\]./d" instructionDump.txt > instruction.txt
egrep "\"text\"" instruction.txt > instructionDump.txt
sed "s/\"text\": \(.*\)/\1/" instructionDump.txt > instruction.txt
sed "s/\"\([^\\]*\)\\\/\1/g" instruction.txt > instructionDump.txt
sed 's/..$//' instructionDump.txt > instruction.txt
