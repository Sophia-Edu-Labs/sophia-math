#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Großartige Arbeit! Du hast dieses Subtraktionsproblem korrekt gelöst. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir zur Antwort gelangen.")
  ]

  #text(size: 30pt, weight: "bold")[Brüche subtrahieren]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Gegeben: $5/4 - 3/4$]
  ]

  #only("2")[
    #voiceover("Wir haben die Aufgabe, drei Viertel von fünf Vierteln zu subtrahieren.")
  ]

  #only("3-")[
    #text(size: 24pt)[Schritt 1: Nenner überprüfen]
  ]

  #only("3")[
    #voiceover("Zuerst überprüfen wir die Nenner. In diesem Fall haben beide Brüche bereits denselben Nenner von 4, sodass wir keinen gemeinsamen Nenner finden müssen.")
  ]

  #only("4-")[
    #text(size: 24pt)[Schritt 2: Zähler subtrahieren]
  ]

  #only("4")[
    #voiceover("Da die Nenner gleich sind, können wir direkt die Zähler subtrahieren und den Nenner beibehalten.")
  ]

  #only("5-")[
    $ 5/4 - 3/4 = (5-3)/4 = 2/4 $
  ]

  #only("5")[
    #voiceover("Fünf minus drei ergibt zwei, also ist unser Ergebnis zwei Viertel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Das Ergebnis vereinfachen]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt)[Schritt 3: Falls möglich, vereinfachen]
  ]

  #only("1")[
    #voiceover("Nun wollen wir sehen, ob wir unser Ergebnis von zwei Vierteln vereinfachen können.")
  ]

  #only("2-")[
    $ 2/4 = 1/2 $
  ]

  #only("2")[
    #voiceover("Zwei Viertel können vereinfacht werden, indem wir sowohl den Zähler als auch den Nenner durch ihren größten gemeinsamen Teiler, der 2 ist, teilen.")
  ]

  #only("3-")[
    #text(size: 24pt)[Endgültige Antwort: $2/4$ oder $1/2$]
  ]

  #only("3")[
    #voiceover("Unsere endgültige Antwort kann also entweder als zwei Viertel oder als ein Halb ausgedrückt werden. Beide sind korrekt!")
  ]

  #only("4")[
    #voiceover("Denke daran, dass wir beim Subtrahieren von Brüchen mit demselben Nenner den Nenner beibehalten und nur die Zähler subtrahieren. Überprüfe immer, ob deine endgültige Antwort weiter vereinfacht werden kann.")
  ]
]