from flask import Flask, abort, request, render_template, redirect
app = Flask(__name__)


@app.route('/',methods=['POST','GET'])
def index():
    if request.method == "POST":
        resultado = "AQUI IRA EL RESULTADO"
        temas = request.form.getlist('tema')
        temasA = []
        for tema in temas:
            if tema == "":
                continue
            temaA = {}
            temaA["tema"] = tema
            temaA["min"] = request.form.get("min"+tema,"0")
            temaA["max"] = request.form.get("max"+tema,"0")
            temaA["potencial"] = request.form.get("potencial"+tema,"0")
            temasA.append(temaA)
        print(temasA)
        return render_template("resultado.html", resultado=resultado)
    elif request.method == "GET":
        return render_template("index.html")


if __name__ == '__main__':
    app.run(debug = True, host='0.0.0.0')