#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Keine Sorge, das war nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen, um zu sehen, wie wir zur richtigen Antwort kommen.")
  ]

  #text(size: 30pt, weight: "bold")[Produktregel für Ableitungen]
  #v(40pt)

  #only("2-")[
    Gegebene Funktion: $f(x) = x^2 \cos(x)$
  ]

  #only("2")[
    #voiceover("Wir haben die Funktion f von x gleich x Quadrat mal Kosinus von x gegeben. Um dies abzuleiten, müssen wir die Produktregel anwenden.")
  ]

  #only("3-")[
    Produktregel: $(u v)' = u' v + u v'$
  ]

  #only("3")[
    #voiceover("Die Produktregel besagt, dass die Ableitung eines Produkts u v gleich u Strich mal v plus u mal v Strich ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Produktregel]
  #v(40pt)

  #only("1-")[
    Sei $u = x^2$ und $v = \cos(x)$
  ]

  #only("1")[
    #voiceover("Lass uns dies auf unsere Funktion anwenden. Wir setzen u gleich x Quadrat und v gleich Kosinus von x.")
  ]

  #only("2-")[
    $u' = 2x$
  ]

  #only("2")[
    #voiceover("Die Ableitung von u, also x Quadrat, ist 2x.")
  ]

  #only("3-")[
    $v' = -\sin(x)$
  ]

  #only("3")[
    #voiceover("Die Ableitung von v, also Kosinus von x, ist minus Sinus von x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Alles zusammenfügen]
  #v(40pt)

  #only("1-")[
    $f'(x) = u' v + u v'$
  ]

  #only("1")[
    #voiceover("Nun, lass uns diese Teile mit der Produktregel-Formel zusammenfügen.")
  ]

  #only("2-")[
    $f'(x) = (2x)(\cos(x)) + (x^2)(-\sin(x))$
  ]

  #only("2")[
    #voiceover("f Strich von x ist gleich 2x mal Kosinus von x plus x Quadrat mal minus Sinus von x.")
  ]

  #only("3-")[
    $f'(x) = 2x \cos(x) - x^2 \sin(x)$
  ]

  #only("3")[
    #voiceover("Vereinfacht erhalten wir f Strich von x ist gleich 2x Kosinus von x minus x Quadrat Sinus von x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)

  #only("1-")[
    $f'(x) = 2x \cos(x) - x^2 \sin(x)$
  ]

  #only("1")[
    #voiceover("Also lautet unsere endgültige Antwort f Strich von x ist gleich 2x Kosinus von x minus x Quadrat Sinus von x. Dies ist die korrekte Ableitung der ursprünglichen Funktion.")
  ]

  #only("2-")[
    📝 Merke:
    - Produktregel: $(u v)' = u' v + u v'$
    - Die Ableitung von $\cos(x)$ ist $-\sin(x)$
  ]

  #only("2")[
    #voiceover("Denke daran, der Schlüssel zur Lösung dieses Problems war die korrekte Anwendung der Produktregel und das Wissen um die Ableitung von Kosinus. Großartige Arbeit beim Meistern dieser Konzepte!")
  ]
]