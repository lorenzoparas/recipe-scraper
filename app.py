from flask import Flask, render_template, request
import subprocess

app = Flask(__name__)

@app.route('/')
def home():
    return render_template("index.html")

@app.route('/result', methods=['POST'])
def result():

    result = request.form['searchbox']

    subprocess.call(['sh', './getHTML.sh', result])
    title = (subprocess.check_output(["sh", "./getTitle.sh"])).decode("utf-8")
    ingredients = ((subprocess.check_output(["sh", "./getIngredients.sh"])).decode("utf-8")).replace('\n', '<br>')
    instructions = ((subprocess.check_output(["sh", "./getInstructions.sh"])).decode("utf-8")).replace('\n', '<br><br>')

    return render_template("result.html", title=title, ingredients=ingredients, instructions=instructions)

if __name__ == '__main__':
    app.run(port=5000)
