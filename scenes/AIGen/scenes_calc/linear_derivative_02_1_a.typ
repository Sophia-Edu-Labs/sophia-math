#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Perfekt, das stimmt. lass uns die Lösung zusammen durchgehen!")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = x^3 + x^5 $]]
#only("2")[
  #voiceover("Wir wollen die Ableitung der Funktion f von x gleich x hoch drei plus x hoch fünf bestimmen.")
]
]

#slide()[
#only("1")[
  #voiceover("Wir wenden die Summenregel an, das heißt, wir leiten jeden Summanden einzeln ab und addieren die Ergebnisse.")
]
#only("1")[
  #voiceover("Für die Ableitungen der einzelnen Summanden wenden wir die Potenzregel an.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Summenregel]
    #only("2-")[- Potenzregel für jeden Summanden]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = x^3 + x^5$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich x hoch drei plus x hoch fünf.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Summenregel]]]
#only("2")[#voiceover("Jetzt wenden wir die Summenregel an, und leiten also die Summanden einzeln ab.")]
#v(10pt)
#only("3-")[$f'(x) = 3x^2$]#only("4-")[$ + 5x^4$]
#only("3")[#voiceover("Die Ableitung von x hoch drei ist drei mal x Quadrat.")]
#only("4")[#voiceover("Und die Ableitung von x hoch fünf ist fünf mal x hoch vier. Addieren wir diese beiden Terme, dann erhalten wir die gesuchte Ableitung.")]
]