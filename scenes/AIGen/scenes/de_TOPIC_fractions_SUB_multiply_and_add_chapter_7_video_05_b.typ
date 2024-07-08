#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Leider war das nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen, um zu sehen, wie wir zur richtigen Antwort kommen.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche addieren: 5/12 + 3/12]
  #v(40pt)

  #only("2-")[
    $5/12 + 3/12$
  ]

  #only("2")[
    #voiceover("Wir beginnen mit dem Problem: fünf Zwölftel plus drei Zwölftel.")
  ]

  #only("3-")[
    #align(center)[#text(fill:aqua)[⇓ Nenner überprüfen]]
  ]

  #only("3")[
    #voiceover("Zuerst überprüfen wir die Nenner. In diesem Fall haben beide Brüche bereits denselben Nenner von 12, also müssen wir keinen gemeinsamen Nenner finden.")
  ]

  #only("4-")[
    #align(center)[#text(fill:aqua)[⇓ Zähler addieren]]
  ]

  #only("4")[
    #voiceover("Beim Addieren von Brüchen mit demselben Nenner addieren wir einfach die Zähler und behalten den Nenner bei.")
  ]

  #only("5-")[
    $(5 + 3)/12$
  ]

  #only("5")[
    #voiceover("Also addieren wir 5 und 3 im Zähler, was uns 8 ergibt, und behalten 12 als Nenner bei.")
  ]

  #only("6-")[
    $= 8/12$
  ]

  #only("6")[
    #voiceover("Das ergibt acht Zwölftel als unser Ergebnis.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Das Ergebnis vereinfachen]
  #v(40pt)

  #only("1-")[
    $8/12$
  ]

  #only("1")[
    #voiceover("Nun, da wir unser Ergebnis von acht Zwölfteln haben, schauen wir, ob wir diesen Bruch weiter vereinfachen können.")
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Gemeinsamen Faktor finden]]
  ]

  #only("2")[
    #voiceover("Um zu vereinfachen, suchen wir den größten gemeinsamen Faktor des Zählers und Nenners.")
  ]

  #only("3-")[
    $8 = 2 × 2 × 2$
    #v(10pt)
    $12 = 2 × 2 × 3$
  ]

  #only("3")[
    #voiceover("Wir können 8 als 2 mal 2 mal 2 faktorisieren und 12 als 2 mal 2 mal 3.")
  ]

  #only("4-")[
    #align(center)[#text(fill:aqua)[⇓ Beide durch gemeinsamen Faktor teilen]]
  ]

  #only("4")[
    #voiceover("Der größte gemeinsame Faktor ist 4, was 2 mal 2 ist.")
  ]

  #only("5-")[
    $(8 ÷ 4)/(12 ÷ 4) = 2/3$
  ]

  #only("5")[
    #voiceover("Wenn wir sowohl den Zähler als auch den Nenner durch 4 teilen, erhalten wir zwei Drittel.")
  ]

  #only("6-")[
    $8/12 = 2/3$
  ]

  #only("6")[
    #voiceover("Daher vereinfacht sich acht Zwölftel zu zwei Drittel, was unsere endgültige Antwort ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)

  #only("1-")[
    $5/12 + 3/12 = 8/12 = 2/3$
  ]

  #only("1")[
    #voiceover("Zusammenfassend ergibt fünf Zwölftel plus drei Zwölftel acht Zwölftel, was sich zu zwei Drittel vereinfacht.")
  ]

  #only("2-")[
    - Gleicher Nenner: Zähler addieren
    - Ergebnis gegebenenfalls vereinfachen
  ]

  #only("2")[
    #voiceover("Denke daran, wenn du Brüche mit demselben Nenner addierst, addierst du die Zähler und behältst den Nenner bei. Dann vereinfachst du das Ergebnis, wenn möglich.")
  ]

  #only("3")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Übe weiter, und du wirst im Addieren von Brüchen bald ein Experte sein.")
  ]
]