from flask import Flask, abort, request, render_template
app = Flask(__name__)


@app.route('/',methods=['GET'])
def index():
    return render_template("index.html")

@app.route('/resultado',methods=['POST','GET'])
def resultado():
    return render_template("resultado.html")



if __name__ == '__main__':
    app.run(debug = True, host='0.0.0.0')