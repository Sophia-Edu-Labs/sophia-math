#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Großartige Arbeit! Du hast die Ableitung korrekt identifiziert. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir zu diesem Ergebnis gekommen sind.")
  ]

  #text(size: 30pt, weight: "bold")[Ableitung mit der Potenzregel]
  #v(40pt)

  #only("2-")[
    #text()[Ursprüngliche Funktion: $ f(x) = 5x^5 + 3x^4 + x^3 $]
  ]

  #only("2")[
    #voiceover("Wir beginnen mit der ursprünglichen Funktion f von x gleich fünf x hoch fünf plus drei x hoch vier plus x hoch drei.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Potenzregel anwenden]
  #v(40pt)

  #only("1-")[
    - Potenzregel: $ (x^n)' = n x^(n-1) $
  ]

  #only("2-")[
    - Auf jeden Term einzeln anwenden
  ]

  #only("1")[
    #voiceover("Lass uns die Potenzregel auf jeden Term anwenden. Die Potenzregel besagt, dass die Ableitung von x hoch n gleich n mal x hoch n minus 1 ist.")
  ]

  #only("2")[
    #voiceover("Wir werden diese Regel auf jeden Term unserer Funktion einzeln anwenden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Jeden Term ableiten]
  #v(40pt)

  #only("1-")[$ (5x^5)' = 5 dot 5 x^(5-1) = 25x^4 $]
  #v(10pt)
  #only("2-")[$ (3x^4)' = 3 dot 4 x^(4-1) = 12x^3 $]
  #v(10pt)
  #only("3-")[$ (x^3)' = 3 x^(3-1) = 3x^2 $]

  #only("1")[
    #voiceover("Für den ersten Term, fünf x hoch fünf, multiplizieren wir mit dem Exponenten 5 und reduzieren den Exponenten um 1. Das ergibt fünfundzwanzig x hoch vier.")
  ]

  #only("2")[
    #voiceover("Für den zweiten Term, drei x hoch vier, multiplizieren wir mit 4 und reduzieren den Exponenten um 1, was zwölf x hoch drei ergibt.")
  ]

  #only("3")[
    #voiceover("Für den letzten Term, x hoch drei, multiplizieren wir mit 3 und reduzieren den Exponenten um 1, was drei x hoch zwei ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Terme kombinieren]
  #v(40pt)

  #only("1-")[$ f'(x) = 25x^4 + 12x^3 + 3x^2 $]

  #only("1")[
    #voiceover("Nun kombinieren wir alle diese Terme, um unsere endgültige Ableitung zu erhalten. Die Ableitung von f von x ist fünfundzwanzig x hoch vier plus zwölf x hoch drei plus drei x hoch zwei.")
  ]

  #only("2")[
    #voiceover("Und da haben wir es! Wir haben erfolgreich die Ableitung der gegebenen Funktion mit der Potenzregel gefunden.")
  ]
]