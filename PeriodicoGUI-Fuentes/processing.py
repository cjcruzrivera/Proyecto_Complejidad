import os


def processFile(request):
    temas = request.form.getlist('tema')
    temasA = []
    minA = []
    maxA = []
    potencialA = []

    capacidad = request.form.get("capacidad", 10)
    for tema in temas:
        if tema == "":
            continue
        minVal = request.form.get("min"+tema, "0")
        maxVal = request.form.get("max"+tema, "0")
        potencialVal = request.form.get("potencial"+tema, "0")
        temasA.append(tema)
        minA.append(minVal)
        maxA.append(maxVal)
        potencialA.append(potencialVal)

    file = open("Modelos/Periodico/PeriodicoDatos.dzn", "w")
    cantidad = len(temasA)
    file.write("n = " + str(cantidad) + "; \n")
    file.write("P = " + capacidad + "; \n")

    textMin = "minP = ["
    for minP in minA:
        textMin += minP+", "
    textMin = textMin.strip(", ")
    textMin += "];\n"
    file.write(textMin)

    textMax = "maxP = ["
    for maxP in maxA:
        textMax += maxP+", "
    textMax = textMax.strip(", ")
    textMax += "];\n"
    file.write(textMax)

    textPot = "readers = ["
    for potP in potencialA:
        textPot += potP+", "
    textPot = textPot.strip(", ")
    textPot += "];"
    file.write(textPot)
    file.close()
