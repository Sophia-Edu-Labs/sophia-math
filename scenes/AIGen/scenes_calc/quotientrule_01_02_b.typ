#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Leider falsch...")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = e^x / x^2 $]]
#only("2")[
  #voiceover("Wir wollen die Ableitung der Funktion f von x gleich e hoch x geteilt durch x Quadrat bestimmen.")
]
]

#slide()[
#only("1")[
  #voiceover("Wir wenden die Quotientenregel an. Das heißt, wir bilden x Quadrat mal die Ableitung von e hoch x minus e hoch x mal die Ableitung von x Quadrat, alles geteilt durch x Quadrat zum Quadrat, also x hoch vier.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Quotientenregel: $"(u(x) / v(x))' = (v(x) dot u'(x) - u(x) dot v'(x)) / (v(x))^2"$]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = e^x / x^2$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich e hoch x geteilt durch x Quadrat.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Quotientenregel]]]
#only("2")[#voiceover("Jetzt wenden wir die Quotientenregel an. Die Ableitung von e hoch x geteilt durch x Quadrat ist x Quadrat mal die Ableitung von e hoch x minus e hoch x mal die Ableitung von x Quadrat, alles geteilt durch x Quadrat zum Quadrat.")]
#v(10pt)
#only("3-")[$f'(x) = (x^2 dot (e^x)' - e^x dot (x^2)') / (x^2)^2$]
#only("3")[#voiceover("Also ist f Strich von x gleich x Quadrat mal die Ableitung von e hoch x minus e hoch x mal die Ableitung von x Quadrat, geteilt durch x Quadrat zum Quadrat.")]
#v(10pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ Ableitungen berechnen]]]
#only("4")[#voiceover("Jetzt berechnen wir die einzelnen Ableitungen. Die Ableitung von e hoch x ist wieder e hoch x und die Ableitung von x Quadrat ist 2x.")]
#v(10pt)
#only("5-")[$f'(x) = (x^2 dot e^x - e^x dot 2x) / (x^2)^2$]
#only("5")[#voiceover("Eingesetzt ergibt das: f Strich von x ist gleich x Quadrat mal e hoch x minus e hoch x mal 2x, geteilt durch x Quadrat zum Quadrat.")]
#v(10pt)
#only("6-")[$f'(x) = (x^2 dot e^x - e^x dot 2x) / x^4$]
#only("6")[#voiceover("Vereinfacht ist f Strich von x also gleich x Quadrat mal e hoch x minus e hoch x mal 2x, geteilt durch x hoch vier.")]
]