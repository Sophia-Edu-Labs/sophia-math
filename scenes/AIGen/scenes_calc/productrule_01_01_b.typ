#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Nicht ganz.. Lass uns die Lösung zusammen durchgehen!")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("1-")[#text()[$ f(x) = x^2 dot e^x $]]
#only("2")[
  #voiceover("Wir wollen die Ableitung der Funktion f von x gleich x Quadrat mal e hoch x bestimmen.")
]
]

#slide()[
#only("1")[
  #voiceover("Wir nutzen die Produktregel. Das heißt, wir bilden x Quadrat mal die Ableitung von e hoch x plus e hoch x mal die Ableitung von x Quadrat.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Produktregel: $(u(x) dot v(x))' = u(x) dot v'(x) + v(x) dot u'(x)$]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = x^2 dot e^x$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich x Quadrat mal e hoch x.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Produktregel]]]
#only("2")[#voiceover("Jetzt wenden wir die Produktregel an. Die Ableitung von x Quadrat mal e hoch x ist x Quadrat mal die Ableitung von e hoch x plus e hoch x mal die Ableitung von x Quadrat.")]
#v(10pt)
#only("3-")[$f'(x) = x^2 dot (e^x)' + e^x dot (x^2)'$]
#only("3")[#voiceover("Also ist f Strich von x gleich x Quadrat mal die Ableitung von e hoch x plus e hoch x mal die Ableitung von x Quadrat.")]
#v(10pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ Ableitungen berechnen]]]
#only("4")[#voiceover("Jetzt berechnen wir die einzelnen Ableitungen. Die Ableitung von e hoch x ist e hoch x und die Ableitung von x Quadrat ist 2x.")]
#v(10pt)
#only("5-")[$f'(x) = x^2 dot e^x + e^x dot 2x$]
#only("5")[#voiceover("Eingesetzt ergibt das: f Strich von x ist gleich x Quadrat mal e hoch x plus e hoch x mal 2x.")]
#v(10pt)
#only("6-")[$f'(x) = x^2 dot e^x + 2x dot e^x$]
#only("6")[#voiceover("Wir können die Terme noch etwas umstellen und erhalten: f Strich von x ist gleich x Quadrat mal e hoch x plus 2x mal e hoch x.")]
]