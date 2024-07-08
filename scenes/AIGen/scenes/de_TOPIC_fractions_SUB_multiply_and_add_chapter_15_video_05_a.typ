#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Großartige Arbeit! Du hast dieses Subtraktionsproblem mit Brüchen korrekt gelöst. Lass uns die Lösung Schritt für Schritt durchgehen, um den Prozess besser zu verstehen.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche subtrahieren]
  #v(40pt)

  #only("2-")[#text()[$ 9/10 - 3/10 $]]

  #only("2")[
    #voiceover("Wir beginnen mit dem Problem: neun Zehntel minus drei Zehntel.")
  ]

  #only("3-")[#align(center)[#text(fill:aqua)[⇓ Gleicher Nenner]]]

  #only("3")[
    #voiceover("Beachte, dass beide Brüche den gleichen Nenner, zehn, haben. Das bedeutet, dass wir die Zähler direkt subtrahieren können.")
  ]

  #only("4-")[#text()[$ (9-3)/10 $]]

  #only("4")[
    #voiceover("Also subtrahieren wir die Zähler: neun minus drei, über zehn.")
  ]

  #only("5-")[#text()[$ = 6/10 $]]

  #only("5")[
    #voiceover("Das ergibt sechs Zehntel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Das Ergebnis vereinfachen]
  #v(40pt)

  #only("1-")[#text()[$ 6/10 $]]

  #only("1")[
    #voiceover("Nun sehen wir, ob wir unser Ergebnis von sechs Zehnteln vereinfachen können.")
  ]

  #only("2-")[#align(center)[#text(fill:aqua)[⇓ Gemeinsamen Faktor finden]]]

  #only("2")[
    #voiceover("Um einen Bruch zu vereinfachen, suchen wir den größten gemeinsamen Faktor des Zählers und des Nenners.")
  ]

  #only("3-")[- 6 = 2 × 3]
  #only("4-")[- 10 = 2 × 5]

  #only("3")[
    #voiceover("Sechs kann als zwei mal drei faktorisiert werden,")
  ]

  #only("4")[
    #voiceover("und zehn kann als zwei mal fünf faktorisiert werden.")
  ]

  #only("5-")[#align(center)[#text(fill:aqua)[⇓ Beide durch den gemeinsamen Faktor teilen]]]

  #only("5")[
    #voiceover("Wir sehen, dass 2 der größte gemeinsame Faktor ist. Also teilen wir sowohl den Zähler als auch den Nenner durch 2.")
  ]

  #only("6-")[#text()[$ (6 ÷ 2)/(10 ÷ 2) = 3/5 $]]

  #only("6")[
    #voiceover("Sechs geteilt durch zwei ist drei, und zehn geteilt durch zwei ist fünf. Also ist unser vereinfachter Bruch drei Fünftel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)

  #only("1-")[#text()[$ 9/10 - 3/10 = 6/10 = 3/5 $]]

  #only("1")[
    #voiceover("Also ist unsere endgültige Antwort drei Fünftel, was sechs Zehnteln entspricht.")
  ]

  #only("2-")[- Beide Formen sind korrekt]
  #only("3-")[- 3/5 ist die vereinfachte Form]

  #only("2")[
    #voiceover("Sowohl sechs Zehntel als auch drei Fünftel sind korrekte Antworten.")
  ]

  #only("3")[
    #voiceover("Allerdings ist drei Fünftel die vereinfachte Form, die in mathematischen Lösungen oft bevorzugt wird.")
  ]

  #only("4")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Bruchsubtraktionsproblems!")
  ]
]