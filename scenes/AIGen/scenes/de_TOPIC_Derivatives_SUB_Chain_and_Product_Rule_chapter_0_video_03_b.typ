#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Keine Sorge, das war knapp. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
  #v(40pt)

  #only("2-")[$ f(x) = (3x^2 + 2x + 1)^5 $]

  #only("2")[
    #voiceover("Wir beginnen mit der Funktion f von x gleich drei x Quadrat plus zwei x plus eins, alles hoch 5.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Identifizierung der Komponenten]
  #v(40pt)

  #only("1-")[- Äußere Funktion: $ g(u) = u^5 $]
  #v(20pt)
  #only("2-")[- Innere Funktion: $ h(x) = 3x^2 + 2x + 1 $]

  #only("1")[
    #voiceover("Um die Kettenregel anzuwenden, identifizieren wir zuerst die äußere und die innere Funktion. Die äußere Funktion g von u ist u hoch 5.")
  ]

  #only("2")[
    #voiceover("Die innere Funktion h von x ist drei x Quadrat plus zwei x plus eins.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Formel der Kettenregel]
  #v(40pt)

  #only("1-")[$ f'(x) = g'(h(x)) \cdot h'(x) $]

  #only("1")[
    #voiceover("Die Kettenregel besagt, dass die Ableitung von f von x gleich der Ableitung der äußeren Funktion g, ausgewertet bei h von x, multipliziert mit der Ableitung der inneren Funktion h von x ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung der Ableitungen]
  #v(40pt)

  #only("1-")[$ g'(u) = 5u^4 $]
  #v(20pt)
  #only("2-")[$ h'(x) = 6x + 2 $]

  #only("1")[
    #voiceover("Berechnen wir die Ableitungen. Die Ableitung von g von u ist 5 mal u hoch 4.")
  ]

  #only("2")[
    #voiceover("Die Ableitung von h von x ist 6x plus 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
  #v(40pt)

  #only("1-")[$ f'(x) = 5(3x^2 + 2x + 1)^4 \cdot (6x + 2) $]

  #only("1")[
    #voiceover("Nun wenden wir die Kettenregel an. Wir setzen h von x, das drei x Quadrat plus zwei x plus eins ist, in g Strich von u ein. Dann multiplizieren wir dies mit h Strich von x, das 6x plus 2 ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)

  #only("1-")[$ f'(x) = 5(3x^2 + 2x + 1)^4 (6x + 2) $]

  #only("1")[
    #voiceover("Unsere endgültige Antwort ist f Strich von x gleich 5 mal die Menge drei x Quadrat plus zwei x plus eins, alles hoch 4, multipliziert mit der Menge 6x plus 2.")
  ]

  #only("2")[
    #voiceover("Dies ist die korrekte Ableitung der ursprünglichen Funktion unter Verwendung der Kettenregel. Gut gemacht beim Lösen dieses Problems!")
  ]
]