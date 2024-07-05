#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrixmultiplikation]
  #v(40pt)

  #only("1-")[
    #align(center)[
      $ mat(1, 2; 3, 4; 5, 6) times mat(7, 8; 9, 10) $
    ]
  ]

  #v(20pt)

  #only("2-")[
    - Ergebnis-Matrix: $ 2 times 3 $
  ]

  #only("3-")[
    - Erstes Element: $ 1 dot 7 + 2 dot 9 = 25 $
  ]

  #only("4-")[
    - Zweites Element: $ 1 dot 8 + 2 dot 10 = 28 $
  ]

  #only("5-")[
    - Erste Zeile komplett: $ [25, 28] $
  ]

  #only("6-")[
    - Gesamtes Ergebnis:
    #align(center)[
      $ mat(25, 28; 57, 64; 89, 100) $
    ]
  ]

  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieser Matrixmultiplikation! Lass uns die Lösung Schritt für Schritt durchgehen. Wir multiplizieren eine 3 mal 2 Matrix mit einer 2 mal 2 Matrix.")
  ]

  #only("2")[
    #voiceover("Zuerst betrachten wir die Dimensionen unseres Ergebnisses. Die resultierende Matrix hat die gleiche Anzahl an Zeilen wie die erste Matrix (3) und die gleiche Anzahl an Spalten wie die zweite Matrix (2). Also haben wir eine 3 mal 2 Matrix.")
  ]

  #only("3")[
    #voiceover("Nun berechnen wir das erste Element. Wir multiplizieren die erste Zeile der ersten Matrix [1, 2] mit der ersten Spalte der zweiten Matrix [7, 9]. Das ergibt 1 mal 7 plus 2 mal 9, was 25 ergibt.")
  ]

  #only("4")[
    #voiceover("Für das zweite Element multiplizieren wir die erste Zeile der ersten Matrix [1, 2] mit der zweiten Spalte der zweiten Matrix [8, 10]. Das ergibt 1 mal 8 plus 2 mal 10, was 28 ergibt.")
  ]

  #only("5")[
    #voiceover("Also ist die erste Zeile unseres Ergebnisses [25, 28].")
  ]

  #only("6")[
    #voiceover("Wenn wir diesen Prozess für die restlichen Zeilen fortsetzen, erhalten wir das endgültige Ergebnis: eine 3 mal 2 Matrix mit den Elementen 25, 28 in der ersten Zeile, 57, 64 in der zweiten Zeile und 89, 100 in der dritten Zeile.")
  ]
]