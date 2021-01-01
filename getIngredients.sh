sed -n -e '/recipeIngredient/,$p' data/html.txt > data/ingredientDump.txt
sed '/recipeIngredient/,/\],/!d;/\],/q' data/html.txt > data/ingredient.txt
sed 's/^ *//g' data/ingredient.txt > data/ingredientDump.txt
sed "/\"recipeIngredient\"/d; /\]./d" data/ingredientDump.txt > data/ingredient.txt
sed 's/^/- /' data/ingredient.txt > data/ingredientDump.txt
sed 's/\"//g; s/,//g' data/ingredientDump.txt > data/ingredient.txt

cat data/ingredient.txt
