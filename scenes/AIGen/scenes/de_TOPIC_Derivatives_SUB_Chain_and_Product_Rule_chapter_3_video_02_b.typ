#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
  #v(40pt)

  #only("1-")[$ f(x) = (4x^3 + 2x)^5 $]

  #only("1")[
    #voiceover("Leider nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Wir beginnen mit der Funktion f von x gleich der Menge 4x hoch 3 plus 2x, alles hoch 5.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Kettenregel-Formel]
  #v(40pt)

  #only("1-")[$ (g(h(x)))' = g'(h(x)) \cdot h'(x) $]

  #only("1")[
    #voiceover("Um die Kettenregel anzuwenden, verwenden wir die Formel: Die Ableitung von g von h von x ist gleich g Strich von h von x mal h Strich von x.")
  ]

  #only("2-")[Wo:]
  #v(10pt)
  #only("2-")[- $g(x) = x^5$]
  #only("3-")[- $h(x) = 4x^3 + 2x$]

  #only("2")[
    #voiceover("In unserem Fall ist g von x x hoch 5,")
  ]

  #only("3")[
    #voiceover("und h von x ist 4x hoch 3 plus 2x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Finde $g'(x)$]
  #v(40pt)

  #only("1-")[$ g(x) = x^5 $]
  #v(10pt)
  #only("2-")[$ g'(x) = 5x^4 $]

  #only("1")[
    #voiceover("Lass uns mit der Ableitung von g von x beginnen. Wir haben g von x gleich x hoch 5.")
  ]

  #only("2")[
    #voiceover("Mit der Potenzregel erhalten wir g Strich von x gleich 5 mal x hoch 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Finde $h'(x)$]
  #v(40pt)

  #only("1-")[$ h(x) = 4x^3 + 2x $]
  #v(10pt)
  #only("2-")[$ h'(x) = 12x^2 + 2 $]

  #only("1")[
    #voiceover("Nun lass uns die Ableitung von h von x finden. Wir haben h von x gleich 4x hoch 3 plus 2x.")
  ]

  #only("2")[
    #voiceover("Wenn wir das differenzieren, erhalten wir h Strich von x gleich 12x quadrat plus 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Kettenregel anwenden]
  #v(40pt)

  #only("1-")[$ f'(x) = g'(h(x)) \cdot h'(x) $]
  #v(10pt)
  #only("2-")[$ = 5(4x^3 + 2x)^4 \cdot (12x^2 + 2) $]

  #only("1")[
    #voiceover("Nun können wir die Kettenregel anwenden. f Strich von x ist gleich g Strich von h von x mal h Strich von x.")
  ]

  #only("2")[
    #voiceover("Wenn wir das einsetzen, erhalten wir: 5 mal die Menge 4x hoch 3 plus 2x, alles hoch 4, mal die Menge 12x quadrat plus 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]
  #v(40pt)

  #only("1-")[$ f'(x) = 5(4x^3 + 2x)^4 (12x^2 + 2) $]

  #only("1")[
    #voiceover("Also lautet unser Endergebnis: f Strich von x ist gleich 5 mal die Menge 4x hoch 3 plus 2x, alles hoch 4, mal die Menge 12x quadrat plus 2.")
  ]

  #only("2")[
    #voiceover("Gut gemacht! Du hast erfolgreich die Kettenregel angewendet, um diese komplexe Funktion abzuleiten. Denke daran, Übung macht den Meister bei solchen Aufgaben.")
  ]
]