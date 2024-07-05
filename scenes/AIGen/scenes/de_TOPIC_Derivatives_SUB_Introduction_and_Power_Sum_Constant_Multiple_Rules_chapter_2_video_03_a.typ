#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Großartige Arbeit! Du hast die Ableitung korrekt identifiziert. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir zu dieser Antwort gekommen sind.")
  ]

  #text(size: 30pt, weight: "bold")[Ableitung einer Polynomfunktion]
  #v(40pt)

  #only("2-")[$ f(x) = 3x^3 + 2x^2 $]

  #only("2")[
    #voiceover("Wir beginnen mit der Funktion f von x gleich drei x hoch drei plus zwei x hoch zwei. Um die Ableitung zu finden, verwenden wir die Summenregel und die Potenzregel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summenregel]
  #v(40pt)

  #only("1-")[$ (f + g)' = f' + g' $]
  #v(20pt)
  #only("2-")[$ f'(x) = (3x^3)' + (2x^2)' $]

  #only("1")[
    #voiceover("Die Summenregel besagt, dass die Ableitung einer Summe die Summe der Ableitungen ist. Das bedeutet, dass wir jeden Term einzeln ableiten und dann die Ergebnisse addieren können.")
  ]

  #only("2")[
    #voiceover("Wenden wir das auf unsere Funktion an, erhalten wir: die Ableitung von f von x ist gleich die Ableitung von drei x hoch drei plus die Ableitung von zwei x hoch zwei.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzregel]
  #v(40pt)

  #only("1-")[$ (x^n)' = n x^(n-1) $]
  #v(20pt)
  #only("2-")[$ (3x^3)' = 3 dot 3 x^(3-1) = 9x^2 $]
  #v(20pt)
  #only("3-")[$ (2x^2)' = 2 dot 2 x^(2-1) = 4x $]

  #only("1")[
    #voiceover("Nun verwenden wir die Potenzregel, die besagt, dass die Ableitung von x hoch n gleich n mal x hoch (n minus 1) ist.")
  ]

  #only("2")[
    #voiceover("Für den ersten Term, drei x hoch drei, erhalten wir: drei mal drei x hoch zwei, was sich zu neun x hoch zwei vereinfacht.")
  ]

  #only("3")[
    #voiceover("Für den zweiten Term, zwei x hoch zwei, erhalten wir: zwei mal zwei x hoch eins, was sich zu vier x vereinfacht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]
  #v(40pt)

  #only("1-")[$ f'(x) = 9x^2 + 4x $]

  #only("1")[
    #voiceover("Kombinieren wir diese Ergebnisse, erhalten wir die endgültige Ableitung: f Strich von x ist gleich neun x hoch zwei plus vier x. Dies ist in der Tat die richtige Antwort!")
  ]

  #only("2")[
    #voiceover("Denke daran, dass die Summenregel und die Potenzregel mächtige Werkzeuge zum Ableiten von Polynomfunktionen sind. Übe sie, und du wirst feststellen, dass viele Ableitungsprobleme viel einfacher werden!")
  ]
]