import subprocess
import sys

subprocess.call(['sh', './getHTML.sh', sys.argv[1]])
subprocess.call(['sh', './getTitle.sh'])
subprocess.call(['sh', './getIngredients.sh'])
subprocess.call(['sh', './getInstructions.sh'])