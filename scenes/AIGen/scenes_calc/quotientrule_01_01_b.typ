#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Das ist leider falsch.")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = sin(x) / x $]]
#only("2")[
  #voiceover("Wir wollen die Ableitung der Funktion f von x gleich Sinus von x geteilt durch x bestimmen.")
]
]

#slide()[
#only("1")[
  #voiceover("Wir nutzen die Quotientenregel. Das heißt, wir bilden x mal die Ableitung von Sinus von x minus Sinus von x mal die Ableitung von x, alles geteilt durch x zum Quadrat.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Quotientenregel:$"(u(x) / v(x))' $ $= (v(x) dot u'(x) - u(x) dot v'(x)) / (v(x))^2"$]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = sin(x) / x$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich Sinus von x geteilt durch x.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Quotientenregel]]]
#only("2")[#voiceover("Jetzt wenden wir die Quotientenregel an. Die Ableitung von Sinus von x geteilt durch x ist x mal die Ableitung von Sinus von x minus Sinus von x mal die Ableitung von x, alles geteilt durch x zum Quadrat.")]
#v(10pt)
#only("3-")[$f'(x) = (x dot (sin(x))' - sin(x) dot (x)') / x^2$]
#only("3")[#voiceover("Also ist f Strich von x gleich x mal die Ableitung von Sinus von x minus Sinus von x mal die Ableitung von x, geteilt durch x zum Quadrat.")]
#v(10pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ Ableitungen berechnen]]]
#only("4")[#voiceover("Jetzt berechnen wir die einzelnen Ableitungen. Die Ableitung von Sinus von x ist Kosinus von x und die Ableitung von x ist 1.")]
#v(10pt)
#only("5-")[$f'(x) = (x dot cos(x) - sin(x) dot 1) / x^2$]
#only("5")[#voiceover("Eingesetzt ergibt das: f Strich von x ist gleich x mal Kosinus von x minus Sinus von x mal 1, geteilt durch x zum Quadrat.")]
#v(10pt)
#only("6-")[$f'(x) = (x dot cos(x) - sin(x)) / x^2$]
#only("6")[#voiceover("Vereinfacht ist f Strich von x also gleich x mal Kosinus von x minus Sinus von x, geteilt durch x zum Quadrat.")]
]