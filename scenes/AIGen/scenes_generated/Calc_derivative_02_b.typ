#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #only("1")[
    #voiceover("Leider nicht ganz richtig! Lösen wir die Ableitung gemeinsam ...")
  ]
  Gesucht: Ableitung der Funktion
  #v(40pt)
  #only("2-")[
    #text()[$ f(x) = 3x^3 + 2x^5 - 3x $]
  ]
  #only("2")[
    #voiceover("Wir haben die Funktion f von x gleich drei mal x hoch drei plus zwei mal x hoch fünf minus drei mal x.")
  ]
]

#slide()[
  #only("1")[
    #voiceover("Um die Ableitung zu finden, nutzen wir die Linearität der Ableitung, also leiten wir alle Summanden einzeln ab. Für die einzelnen Ableitungen")
  ]
  #only("2")[
    #voiceover("verwenden wir jeweils die Potenzregel. Legen wir also los.")
  ]
  #text(size: 30pt, weight: "bold")[Ansatz]
  #v(40pt)
    #only("1-")[
      - Linearität der Ableitung
    ]
    #only("2-")[
      - Potenzregel
    ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Lösungsschritte]
  #v(40pt)
  #only("1-")[
    $f(x) = 3x^3 + 2x^5 - 3x$
  ]
  #only("1")[
    #voiceover("Wir beginnen mit der Funktion f von x gleich drei mal x hoch drei plus zwei mal x hoch fünf minus drei mal x.")
  ]
  #v(10pt)
  #only("2")[
    #voiceover("Um die Ableitung zu bestimmen, differenzieren wir jedes Glied der Funktion einzeln nach x.")
  ]
  #v(10pt)
  #only("3-")[
    #align(center)[#text(fill:aqua)[⇓ Potenzregel]]
  ]
  #only("3")[
    #voiceover("Die Potenzregel der Differentiation besagt, dass die Ableitung von x hoch n gleich n mal x hoch (n minus eins) ist.")
  ]
  #v(10pt)
  #only("4-")[
    $f'(x) = 9x^2$
  ]
  #only("5-")[
    $ + 10x^4$
  ]
  #only("6-")[
    $ - 3$
  ]
  #only("4")[
    #voiceover("Die Ableitung von drei mal x hoch drei ist also neun mal x hoch zwei.")
  ]
  #only("5")[
    #voiceover("Die Ableitung von zwei mal x hoch fünf ist zehn mal x hoch vier.")
  ]
  #only("6")[
    #voiceover("Die Ableitung von minus drei mal x ist minus drei. Und damit haben wir alle Terme differenziert. ... Die vollständige Ableitung von f von x ist also neun mal x hoch zwei plus zehn mal x hoch vier minus drei.")
  ]
]