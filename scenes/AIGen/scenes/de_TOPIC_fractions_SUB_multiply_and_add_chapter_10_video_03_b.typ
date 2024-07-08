#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, warum $4/6$ oder $2/3$ die richtige Antwort ist.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche Subtrahieren]
  #v(40pt)

  #only("2-")[
    $5/6 - 1/6$
  ]

  #only("2")[
    #voiceover("Wir beginnen mit unserem Problem: fünf Sechstel minus ein Sechstel.")
  ]

  #only("3-")[
    #align(center)[#text(fill:aqua)[⇓ Gleicher Nenner]]
  ]

  #only("3")[
    #voiceover("Beachte, dass beide Brüche den gleichen Nenner, sechs, haben. Das macht unsere Subtraktion einfach.")
  ]

  #only("4-")[
    $(5-1)/6$
  ]

  #only("4")[
    #voiceover("Beim Subtrahieren von Brüchen mit demselben Nenner behalten wir den Nenner und subtrahieren einfach die Zähler.")
  ]

  #only("5-")[
    $4/6$
  ]

  #only("5")[
    #voiceover("Fünf minus eins ergibt vier, also ist unser Ergebnis vier Sechstel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Das Ergebnis Vereinfachen]
  #v(40pt)

  #only("1-")[
    $4/6$
  ]

  #only("1")[
    #voiceover("Nun, lass uns sehen, ob wir unser Ergebnis, vier Sechstel, vereinfachen können.")
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Gemeinsamen Faktor finden]]
  ]

  #only("2")[
    #voiceover("Um einen Bruch zu vereinfachen, suchen wir nach einem gemeinsamen Faktor im Zähler und Nenner.")
  ]

  #only("3-")[
    $4/6 = (2 dot 2)/(2 dot 3)$
  ]

  #only("3")[
    #voiceover("Wir sehen, dass 2 ein gemeinsamer Faktor von 4 und 6 ist. Lass uns diesen herausfaktorisieren.")
  ]

  #only("4-")[
    #align(center)[#text(fill:aqua)[⇓ Gemeinsamen Faktor kürzen]]
  ]

  #only("4")[
    #voiceover("Nun können wir den gemeinsamen Faktor 2 im Zähler und Nenner kürzen.")
  ]

  #only("5-")[
    $2/3$
  ]

  #only("5")[
    #voiceover("Das ergibt zwei Drittel, was gleichbedeutend mit vier Sechstel ist, aber in seiner einfachsten Form.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)

  #only("1-")[
    $5/6 - 1/6 = 4/6 = 2/3$
  ]

  #only("1")[
    #voiceover("Unsere endgültige Antwort kann also entweder als vier Sechstel oder zwei Drittel ausgedrückt werden. Beide sind korrekt!")
  ]

  #only("2-")[
    - $4/6$: Unvereinfachte Form 📊
    - $2/3$: Vereinfachte Form ✨
  ]

  #only("2")[
    #voiceover("Vier Sechstel ist die unvereinfachte Form, während zwei Drittel die vereinfachte Form ist. Es ist generell besser, die Antwort in der vereinfachten Form zu geben, wenn möglich.")
  ]

  #only("3")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Bruchsubtraktionsproblems! Denke daran, bei der Subtraktion von Brüchen mit demselben Nenner den Nenner beizubehalten und die Zähler zu subtrahieren. Überprüfe dann immer, ob du dein Ergebnis vereinfachen kannst.")
  ]
]