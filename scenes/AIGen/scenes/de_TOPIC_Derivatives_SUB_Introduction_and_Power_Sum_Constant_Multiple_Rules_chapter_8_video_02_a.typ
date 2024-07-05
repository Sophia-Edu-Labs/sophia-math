#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Ableitung mit der Potenzregel]
  #v(40pt)

  #only("1-")[
    $f(x) = 2x^3 + 3x^2$
  ]

  #v(20pt)

  #only("2-")[
    - Potenzregel: $dif/dif x (x^n) = n x^(n-1)$
  ]

  #v(20pt)

  #only("3-")[
    - Konstante-Multiplikationsregel: $dif/dif x (c dot f(x)) = c dot dif/dif x (f(x))$
  ]

  #v(20pt)

  #only("4-")[
    $f'(x) = 2 dot 3x^2 + 3 dot 2x^1$
  ]

  #v(20pt)

  #only("5-")[
    $f'(x) = 6x^2 + 6x$
  ]

  #only("1")[
    #voiceover("Großartig! Du hast die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit der Funktion f von x gleich 2 x hoch 3 plus 3 x hoch 2.")
  ]

  #only("2")[
    #voiceover("Um die Ableitung zu finden, verwenden wir die Potenzregel. Diese Regel besagt, dass die Ableitung von x hoch n gleich n mal x hoch n minus 1 ist.")
  ]

  #only("3")[
    #voiceover("Wir benötigen auch die Konstante-Multiplikationsregel, die besagt, dass die Ableitung eines konstanten Vielfachen einer Funktion gleich dem konstanten Vielfachen der Ableitung der Funktion ist.")
  ]

  #only("4")[
    #voiceover("Wenden wir diese Regeln auf unsere Funktion an, erhalten wir: Für den ersten Term 2 mal 3 x hoch 2, und für den zweiten Term 3 mal 2 x hoch 1.")
  ]

  #only("5")[
    #voiceover("Vereinfachen wir das, erhalten wir unser Endergebnis: f Strich von x gleich 6 x hoch 2 plus 6 x. Dies stimmt mit der gegebenen Lösung überein, was bestätigt, dass Deine Antwort korrekt war!")
  ]
]