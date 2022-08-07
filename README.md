# recipe-scraper

## Description

recipe-scraper web-scrapes and converts online recipes from allrecipes.com into a simplified, cleaner format.

## Installation

The only python library which is required for this project is Flask.

Install Flask through the command below:

```bash
pip install flask
```

## Usage

To use this scraper, you will need to first run the scraper's Flask server by running app.py with python3:

```bash
python3 app.py
```

Afterwards, access the website on your localhost (i.e http://127.0.0.1:5000/) and insert a recipe link from allrecipes.com into the textbox and click search.

![landing-page](https://i.imgur.com/nCd3MG1.png)

The recipe's title, ingredients and instructions should appear in a simple format.

![result](https://i.imgur.com/Htyubxf.png)
