sed -n -e '/recipeIngredient/,$p' html.txt > ingredientDump.txt
sed '/recipeIngredient/,/\],/!d;/\],/q' html.txt > ingredient.txt
sed 's/^ *//g' ingredient.txt > ingredientDump.txt
sed "/\"recipeIngredient\"/d; /\]./d" ingredientDump.txt > ingredient.txt
