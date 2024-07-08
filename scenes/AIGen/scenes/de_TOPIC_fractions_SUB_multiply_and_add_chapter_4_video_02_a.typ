#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche ändern: Gleicher Wert, andere Form]
  #v(40pt)

  #only("1-")[
    Ursprünglicher Bruch: $1/3$
  ]

  #only("2-")[
    Zielnenner: $6$
  ]

  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns Schritt für Schritt durch die Lösung gehen, um zu verstehen, wie wir ein Drittel in einen äquivalenten Bruch mit einem Nenner von 6 umwandeln.")
  ]

  #only("2")[
    #voiceover("Wir beginnen mit dem Bruch ein Drittel, und unser Ziel ist es, einen äquivalenten Bruch mit einem Nenner von 6 zu erstellen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Der Schlüssel: Beide Teile multiplizieren]
  #v(40pt)

  #only("1-")[
    - Um den Nenner zu ändern, multipliziere sowohl den Zähler als auch den Nenner mit derselben Zahl
  ]

  #only("2-")[
    - Dies stellt sicher, dass der Wert des Bruchs unverändert bleibt
  ]

  #only("3-")[
    - Wir müssen herausfinden, womit wir 3 multiplizieren müssen, um 6 zu erhalten
  ]

  #only("1")[
    #voiceover("Der Schlüssel zur Änderung eines Bruchs, während sein Wert gleich bleibt, besteht darin, sowohl den Zähler als auch den Nenner mit derselben Zahl zu multiplizieren.")
  ]

  #only("2")[
    #voiceover("Diese Operation ist wie das Multiplizieren mit 1, was den Wert des Bruchs nicht ändert.")
  ]

  #only("3")[
    #voiceover("In diesem Fall müssen wir herausfinden, mit welcher Zahl wir 3 multiplizieren müssen, um 6 im Nenner zu erhalten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Den Multiplikator finden]
  #v(40pt)

  #only("1-")[
    $3 dot x = 6$
  ]

  #only("2-")[
    $x = 6/3 = 2$
  ]

  #only("3-")[
    Also multiplizieren wir beide Teile mit 2:
  ]

  #only("4-")[
    $(1 dot 2)/(3 dot 2) = 2/6$
  ]

  #only("1")[
    #voiceover("Lass uns eine Gleichung aufstellen: 3 mal eine Zahl ergibt 6.")
  ]

  #only("2")[
    #voiceover("Wenn wir das lösen, finden wir heraus, dass x gleich 6 geteilt durch 3 ist, was 2 ergibt.")
  ]

  #only("3")[
    #voiceover("Das bedeutet, wir müssen sowohl den Zähler als auch den Nenner mit 2 multiplizieren.")
  ]

  #only("4")[
    #voiceover("Also ergibt ein mal 2 über drei mal 2 zwei Sechstel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]
  #v(40pt)

  #only("1-")[
    $1/3 = 2/6$
  ]

  #only("2-")[
    Beide Brüche repräsentieren denselben Wert! 🎉
  ]

  #only("1")[
    #voiceover("Und da haben wir es! Ein Drittel ist gleich zwei Sechstel.")
  ]

  #only("2")[
    #voiceover("Beide Brüche repräsentieren denselben Wert, nur in unterschiedlichen Formen geschrieben. Gut gemacht bei der Lösung dieses Problems!")
  ]
]