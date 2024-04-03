#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Super, das stimmt. Lass uns die Lösung Schritt für Schritt durchgehen!")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = 0.5x^4 + x^(-3) $]]
#only("2")[
  #voiceover("Wir wollen die Ableitung der Funktion f von x gleich null Komma fünf mal x hoch vier plus x hoch minus drei bestimmen.")
]
]

#slide()[
#only("1")[
  #voiceover("Wieder wenden wir die Summenregel an und leiten jeden Summanden einzeln ab.")
]
#only("1")[
  #voiceover("Für die Ableitung der einzelnen Summanden nutzen wir die Faktorregel und die Potenzregel.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Summenregel]
    #only("2-")[- Faktorregel und Potenzregel für jeden Summanden]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = 0.5x^4 + x^(-3)$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich null Komma fünf mal x hoch vier plus x hoch minus drei.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Faktorregel und Potenzregel]]]
#only("2")[#voiceover("Jetzt wenden wir auf jeden Summanden die Faktorregel und die Potenzregel an.")]
#v(10pt)
#only("3-")[$f'(x) = 0.5 dot 4x^3$]#only("4-")[$ + (-3)x^(-4)$]
#only("3")[#voiceover("Die Ableitung von null Komma fünf mal x hoch vier ist null Komma fünf mal vier mal x hoch drei, also zwei mal x hoch drei.")]
#only("4")[#voiceover("Und die Ableitung von x hoch minus drei ist minus drei mal x hoch minus vier. Addieren wir diese beiden Terme, dann erhalten wir die gesuchte Ableitung.")]
#v(10pt)
#only("5-")[$f'(x) = 2x^3 - 3x^(-4)$]
#only("5")[#voiceover("Also ist f Strich von x gleich zwei mal x hoch drei minus drei mal x hoch minus vier.")]
]