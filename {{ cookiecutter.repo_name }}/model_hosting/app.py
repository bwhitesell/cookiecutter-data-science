from flask import Flask, render_template, request
import json

app = Flask(__name__)


@app.route('/', methods=['GET', 'POST'])
def index():

    if request.method == 'GET':
        return render_template('base.html')
    if request.method == 'POST':
        feature1 = request.form['feature1']
        feature2 = request.form['feature2']
        boolfeature = request.form['boolfeature']

        response_dict = {}
        response_dict['answer'] = str(feature1) + str(feature2) + str(boolfeature)
        return json.dumps(response_dict)


if __name__ == '__main__':
    app.run(debug=True)
