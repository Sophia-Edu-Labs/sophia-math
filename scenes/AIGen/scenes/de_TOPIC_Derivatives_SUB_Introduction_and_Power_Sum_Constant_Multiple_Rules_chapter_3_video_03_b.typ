#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Konstante Multiplikationsregel]
  #v(40pt)

  #only("1-")[
    Gegeben: $f(x) = 7x^3$
  ]

  #only("2-")[
    Konstante Multiplikationsregel: $(c dot f(x))' = c dot f'(x)$
  ]

  #only("3-")[
    Wobei: $c = 7$, $f(x) = x^3$
  ]

  #only("1")[
    #voiceover("Keine Sorge, wir werden die Lösung gemeinsam durchgehen. Gegeben ist die Funktion f von x gleich 7 mal x hoch 3.")
  ]

  #only("2")[
    #voiceover("Um dies zu lösen, verwenden wir die konstante Multiplikationsregel. Diese Regel besagt, dass die Ableitung eines konstanten Vielfachen einer Funktion gleich dem konstanten Vielfachen der Ableitung der Funktion ist.")
  ]

  #only("3")[
    #voiceover("In unserem Fall ist die Konstante c gleich 7 und die Funktion f von x ist x hoch 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt-für-Schritt Lösung]
  #v(40pt)

  #only("1-")[
    1. Finde $f'(x)$:
  ]

  #only("2-")[
    $(x^3)' = 3x^2$
  ]

  #only("3-")[
    2. Wende die konstante Multiplikationsregel an:
  ]

  #only("4-")[
    $f'(x) = 7 dot (x^3)'$
  ]

  #only("5-")[
    $f'(x) = 7 dot 3x^2$
  ]

  #only("6-")[
    $f'(x) = 21x^2$
  ]

  #only("1")[
    #voiceover("Lass uns dies in Schritte aufteilen. Zuerst müssen wir die Ableitung von x hoch 3 finden.")
  ]

  #only("2")[
    #voiceover("Mit der Potenzregel wissen wir, dass die Ableitung von x hoch 3 gleich 3 mal x hoch 2 ist.")
  ]

  #only("3")[
    #voiceover("Nun können wir die konstante Multiplikationsregel anwenden.")
  ]

  #only("4")[
    #voiceover("Die Ableitung von f von x ist gleich 7 mal die Ableitung von x hoch 3.")
  ]

  #only("5")[
    #voiceover("Indem wir das, was wir vorher gefunden haben, einsetzen, erhalten wir 7 mal 3x hoch 2.")
  ]

  #only("6")[
    #voiceover("Durch Vereinfachung kommen wir zu unserer endgültigen Antwort: Die Ableitung von f von x ist 21x hoch 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)

  #only("1-")[
    $f'(x) = 21x^2$ 📊
  ]

  #only("2-")[
    Wichtige Punkte:
    - Konstante Multiplikationsregel
    - Potenzregel
    - Vereinfachung
  ]

  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist, dass die Ableitung von f von x gleich 21x hoch 2 ist.")
  ]

  #only("2")[
    #voiceover("Zusammenfassend haben wir hier zwei wichtige Konzepte verwendet: die konstante Multiplikationsregel und die Potenzregel. Wir haben dann unser Ergebnis vereinfacht, um die endgültige Antwort zu erhalten. Großartige Arbeit bei der Lösung dieses Problems!")
  ]
]