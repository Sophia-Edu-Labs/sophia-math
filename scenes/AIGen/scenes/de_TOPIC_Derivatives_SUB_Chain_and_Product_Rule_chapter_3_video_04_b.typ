#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Keine Sorge, das war eine knifflige Frage. Lass uns die Lösung Schritt für Schritt durchgehen, um den Prozess besser zu verstehen.")
  ]

  #text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
  #v(40pt)

  #only("2-")[$ f(x) = (2x^2 + 3x + 1)^4 $]

  #only("2")[
    #voiceover("Wir beginnen mit der Funktion f von x gleich zwei x Quadrat plus drei x plus eins, alles hoch vier.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Kettenregel]
  #v(40pt)

  #only("1-")[$ (g(h(x)))' = g'(h(x)) \cdot h'(x) $]

  #only("1")[
    #voiceover("Um diese Funktion abzuleiten, verwenden wir die Kettenregel. Die Kettenregel besagt, dass die Ableitung einer zusammengesetzten Funktion g von h von x gleich g Strich von h von x mal h Strich von x ist.")
  ]

  #v(20pt)

  #only("2-")[- Äußere Funktion: $ g(u) = u^4 $]
  #only("3-")[- Innere Funktion: $ h(x) = 2x^2 + 3x + 1 $]

  #only("2")[
    #voiceover("In unserem Fall ist die äußere Funktion g von u gleich u hoch vier,")
  ]

  #only("3")[
    #voiceover("und die innere Funktion h von x ist zwei x Quadrat plus drei x plus eins.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Ableitung der äußeren Funktion]
  #v(40pt)

  #only("1-")[$ g(u) = u^4 $]
  #only("2-")[$ g'(u) = 4u^3 $]

  #only("1")[
    #voiceover("Beginnen wir mit der Ableitung der äußeren Funktion. Wir haben g von u gleich u hoch vier.")
  ]

  #only("2")[
    #voiceover("Mit der Potenzregel erhalten wir g Strich von u gleich vier mal u hoch drei.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Ableitung der inneren Funktion]
  #v(40pt)

  #only("1-")[$ h(x) = 2x^2 + 3x + 1 $]
  #only("2-")[$ h'(x) = 4x + 3 $]

  #only("1")[
    #voiceover("Nun leiten wir die innere Funktion ab. Wir haben h von x gleich zwei x Quadrat plus drei x plus eins.")
  ]

  #only("2")[
    #voiceover("Leiten wir termweise ab, erhalten wir h Strich von x gleich vier x plus drei.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
  #v(40pt)

  #only("1-")[$ f'(x) = g'(h(x)) \cdot h'(x) $]
  #only("2-")[$ f'(x) = 4(2x^2 + 3x + 1)^3 \cdot (4x + 3) $]

  #only("1")[
    #voiceover("Jetzt können wir die Kettenregel anwenden. Die Ableitung von f von x ist gleich g Strich von h von x mal h Strich von x.")
  ]

  #only("2")[
    #voiceover("Setzen wir unsere Ergebnisse ein, erhalten wir f Strich von x gleich vier mal zwei x Quadrat plus drei x plus eins, alles hoch drei, mal vier x plus drei.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]
  #v(40pt)

  #only("1-")[$ f'(x) = 4(2x^2 + 3x + 1)^3 (4x + 3) $]

  #only("1")[
    #voiceover("Und das ist unser Endergebnis! Die Ableitung von f von x ist gleich vier mal zwei x Quadrat plus drei x plus eins, alles hoch drei, mal vier x plus drei. Gut gemacht, dass du dieses Problem mit der Kettenregel gelöst hast!")
  ]
]