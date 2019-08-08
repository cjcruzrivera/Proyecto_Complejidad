from flask import Flask, abort, request, render_template, redirect
import os 
dir_path = os.path.dirname(os.path.realpath(__file__))
app = Flask(__name__)


@app.route('/',methods=['POST','GET'])
def index():
    if request.method == "POST":
        resultado = ""
        temas = request.form.getlist('tema')
        temasA = []
        minA = []
        maxA = []
        potencialA = []

        capacidad = request.form.get("capacidad", 10)
        for tema in temas:
            if tema == "":
                continue
            minVal = request.form.get("min"+tema,"0")
            maxVal = request.form.get("max"+tema,"0")
            potencialVal = request.form.get("potencial"+tema,"0")
            temasA.append(tema)
            minA.append(minVal)
            maxA.append(maxVal)
            potencialA.append(potencialVal)

        file = open("Modelos/Periodico/PeriodicoDatos.dzn", "w")
        cantidad = len(temasA)
        file.write("n = "+ str(cantidad) + " \n")
        file.write("P = "+ capacidad + " \n")
        
        textMin = "minPag = ["
        for minP in minA:
            textMin += minP+", "
        textMin = textMin.strip(", ")
        textMin += "]\n"
        file.write(textMin)

        textMax = "maxPag = ["
        for maxP in maxA:
            textMax += maxP+", "
        textMax = textMax.strip(", ")
        textMax += "]\n"
        file.write(textMax)

        textPot = "potLect = ["
        for potP in potencialA:
            textPot += potP+", "
        textPot = textPot.strip(", ")
        textPot += "]"
        file.write(textPot)
        file.close()
        return render_template("resultado.html", resultado=resultado)
    elif request.method == "GET":
        return render_template("index.html")


if __name__ == '__main__':
    app.run(debug = True, host='0.0.0.0')