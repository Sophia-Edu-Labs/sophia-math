#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir zur richtigen Ableitung kommen.")
  ]

  #text(size: 30pt, weight: "bold")[Ableitung einer Polynomfunktion]
  #v(40pt)

  #only("2-")[$ f(x) = 2x^3 + 5x^2 + x $]

  #only("2")[
    #voiceover("Wir beginnen mit der Funktion f von x gleich zwei x hoch drei plus fünf x hoch zwei plus x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Vorgehensweise]
  #v(40pt)

  #only("1-")[- Anwenden der Summenregel 📊]
  #v(20pt)
  #only("2-")[- Anwenden der Potenzregel für jeden Term 🔢]
  #v(20pt)
  #only("3-")[- Ergebnis vereinfachen ✨]

  #only("1")[
    #voiceover("Unser Vorgehen wird sein, zuerst die Summenregel anzuwenden, die besagt, dass die Ableitung einer Summe die Summe der Ableitungen ist.")
  ]

  #only("2")[
    #voiceover("Dann werden wir die Potenzregel für jeden Term anwenden. Die Potenzregel besagt, dass die Ableitung von x hoch n gleich n mal x hoch (n minus 1) ist.")
  ]

  #only("3")[
    #voiceover("Schließlich werden wir unser Ergebnis vereinfachen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
  #v(40pt)

  #only("1-")[$ f(x) = 2x^3 + 5x^2 + x $]
  #v(20pt)
  #only("2-")[#text(fill: blue)[$ f'(x) = (2x^3)' + (5x^2)' + (x)' $]]
  #v(20pt)
  #only("3-")[$ f'(x) = 6x^2 + 10x + 1 $]

  #only("1")[
    #voiceover("Wir beginnen mit unserer Funktion f von x gleich zwei x hoch drei plus fünf x hoch zwei plus x,")
  ]

  #only("2")[
    #voiceover("wir wenden die Summenregel an, um jeden Term separat abzuleiten.")
  ]

  #only("3")[
    #voiceover("Nun wenden wir die Potenzregel auf jeden Term an.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwenden der Potenzregel]
  #v(40pt)

  #only("1-")[$ (2x^3)' = 2 dot 3x^(3-1) = 6x^2 $]
  #v(20pt)
  #only("2-")[$ (5x^2)' = 5 dot 2x^(2-1) = 10x $]
  #v(20pt)
  #only("3-")[$ (x)' = 1 dot x^(1-1) = 1 $]

  #only("1")[
    #voiceover("Für den ersten Term, zwei x hoch drei, multiplizieren wir mit der Potenz 3 und reduzieren den Exponenten um 1, was uns sechs x hoch zwei ergibt.")
  ]

  #only("2")[
    #voiceover("Für fünf x hoch zwei multiplizieren wir mit 2 und reduzieren den Exponenten um 1, was uns zehn x ergibt.")
  ]

  #only("3")[
    #voiceover("Für x, das äquivalent zu x hoch eins ist, multiplizieren wir mit 1 und reduzieren den Exponenten auf 0, was uns einfach 1 ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]
  #v(40pt)

  #only("1-")[$ f'(x) = 6x^2 + 10x + 1 $]

  #only("1")[
    #voiceover("Kombinieren wir diese Ergebnisse, erhalten wir unsere endgültige Antwort: Die Ableitung von f von x ist sechs x hoch zwei plus zehn x plus eins. Dies stimmt mit der Lösung überein, mit der wir begonnen haben, was bestätigt, dass Deine ursprüngliche Antwort korrekt war!")
  ]
]