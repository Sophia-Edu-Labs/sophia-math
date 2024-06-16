#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Hi Leute, hier ist Flo das Mathe-Genie und heue bringe ich euch das Ableiten bei.")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = x^4 - x^2 $]]
#only("2")[
  #voiceover("Wir wollen die Ableitung der Funktion f von x gleich x hoch vier minus x Quadrat bestimmen. Das ist sogar noch einfacher als gegen Schottland 5 tore zu schießen.")
]
]

#slide()[
#only("1")[
  #voiceover("Wir wenden dafür die Summenregel an, das heißt, wir leiten jeden Summanden einzeln ab. Beachte, dass die Subtraktion hier als Addition des Negativen behandelt wird.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Summenregel]
    #only("2-")[- Potenzregel für jeden Summanden]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = x^4 - x^2$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich x hoch vier minus x Quadrat.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Summenregel]]]
#only("2")[#voiceover("Jetzt wenden wir die Summenregel an, und leiten also die Summanden einzeln ab.")]
#v(10pt)
#only("3-")[$f'(x) = 4x^3$]#only("4-")[$ - 2x$]
#only("3")[#voiceover("Die Ableitung von x hoch vier ist vier mal x hoch drei.")]
#only("4")[#voiceover("Und die Ableitung von minus x Quadrat ist minus zwei mal x. Addieren wir diese beiden Terme, dann erhalten wir die gesuchte Ableitung. Das wars schon und jetzt muss ich auch los, der Mannschaftsbus fährt gleich zur Arena.")]
]