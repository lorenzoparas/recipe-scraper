sed -n -e '/recipeInstructions/,$p' data/html.txt > data/instructionDump.txt
sed '/recipeInstructions/,/\],/!d;/\],/q' data/html.txt > data/instruction.txt
sed 's/^ *//g' data/instruction.txt > data/instructionDump.txt
sed "/\"recipeInstructions\"/d; /\]./d" data/instructionDump.txt > data/instruction.txt
egrep "\"text\"" data/instruction.txt > data/instructionDump.txt
sed "s/\"text\": \(.*\)/\1/" data/instructionDump.txt > data/instruction.txt
sed "s/\"\([^\\]*\)\\\/\1/g" data/instruction.txt > data/instructionDump.txt
sed 's/..$//' data/instructionDump.txt > data/instruction.txt

i=1

while read p; do
    echo "${i}. ${p}" >> result.txt
    i=$((i=i+1))
done < data/instruction.txt

cat result.txt

rm result.txt
