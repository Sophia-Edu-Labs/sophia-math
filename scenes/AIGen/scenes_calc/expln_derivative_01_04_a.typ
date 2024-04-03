#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Ganz richtig. Toll.")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = e^x - 3ln(x) $]]
#only("2")[
  #voiceover("Wir wollen die Ableitung der Funktion f von x gleich e hoch x minus drei mal natürlicher Logarithmus von x bestimmen.")
]
]

#slide()[
#only("1")[
  #voiceover("Wir wenden die Summenregel an und leiten jeden Summanden einzeln ab. Für die Ableitung der einzelnen Summanden nutzen wir die Ableitungsregeln für die Exponentialfunktion und die natürliche Logarithmusfunktion sowie die Faktorregel.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Summenregel]
    #only("2-")[- Ableitung von $e^x$ und $ln(x)$]
    #only("3-")[- Faktorregel]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = e^x - 3ln(x)$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich e hoch x minus drei mal natürlicher Logarithmus von x.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Summenregel]]]
#only("2")[#voiceover("Jetzt wenden wir die Summenregel an und leiten jeden Summanden einzeln ab.")]
#v(10pt)
#only("3-")[$f'(x) = (e^x)'$]#only("4-")[$ - (3ln(x))'$]
#only("3")[#voiceover("Die Ableitung von e hoch x ist ...")]
#only("4")[#voiceover("... minus die Ableitung von drei mal natürlicher Logarithmus von x.")]
#v(10pt)
#only("5-")[#align(center)[#text(fill:aqua)[⇓ Ableitung von $e^x$ und $ln(x)$, Faktorregel]]]
#only("5")[#voiceover("Jetzt nutzen wir die Ableitungsregeln für die Exponentialfunktion und die natürliche Logarithmusfunktion sowie die Faktorregel.")]
#v(10pt)
#only("6-")[$f'(x) = e^x - 3/x$]
#only("6")[#voiceover("Also ist f Strich von x gleich e hoch x minus drei durch x.")]
]