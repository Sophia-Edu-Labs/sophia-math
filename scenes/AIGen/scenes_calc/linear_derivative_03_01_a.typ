#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Richtig, toll. Gehen wir die Lösung zusammen durch!")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = 3x^3 - 1/5 dot x^5 $]]
#only("2")[
  #voiceover("Wir wollen die Ableitung der Funktion f von x gleich drei mal x hoch drei minus ein Fünftel mal x hoch fünf bestimmen.")
]
]

#slide()[
#only("1")[
  #voiceover("Wir wenden die Summenregel an, das heißt, wir leiten jeden Summanden einzeln ab und addieren die Ergebnisse.")
]
#only("2")[
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
#only("1-")[$f(x) = 3x^3 - 1/5 dot x^5$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich drei mal x hoch drei minus ein Fünftel mal x hoch fünf.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Faktorregel und Potenzregel]]]
#only("2")[#voiceover("Jetzt wenden wir auf jeden Summanden die Faktorregel und die Potenzregel an.")]
#v(10pt)
#only("3-")[$f'(x) = 3 dot 3x^2$]#only("4-")[$ - 1/5 dot 5x^4$]
#only("3")[#voiceover("Die Ableitung von drei mal x hoch drei ist drei mal drei mal x Quadrat, also neun mal x Quadrat.")]
#only("4")[#voiceover("Und die Ableitung von minus ein Fünftel mal x hoch fünf ist minus ein Fünftel mal fünf mal x hoch vier, also minus x hoch vier. Addieren wir diese beiden Terme, dann erhalten wir die gesuchte Ableitung.")]
#v(10pt)
#only("5-")[$f'(x) = 9x^2 - x^4$]
#only("5")[#voiceover("Also ist f Strich von x gleich neun mal x Quadrat minus x hoch vier.")]
]