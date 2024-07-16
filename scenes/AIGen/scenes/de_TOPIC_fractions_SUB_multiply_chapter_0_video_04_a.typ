#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Großartige Arbeit! Du hast dieses Problem korrekt gelöst. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #text(size: 30pt, weight: "bold")[Multiplikation einer ganzen Zahl mit einem Bruch]

  #v(40pt)

  #only("2-")[#text()[Problem: $ 5 dot 3/4 $]]

  #only("2")[
    #voiceover("Wir multiplizieren 5 mit drei Vierteln.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Komponenten identifizieren]

  #v(40pt)

  #only("1-")[- Ganze Zahl: 5]
  #v(10pt)
  #only("2-")[- Bruch: $ 3/4 $]

  #only("1")[
    #voiceover("Zuerst identifizieren wir unsere Komponenten. Wir haben die ganze Zahl 5")
  ]

  #only("2")[
    #voiceover("und den Bruch drei Viertel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Multiplizieren]

  #v(40pt)

  #only("1-")[$ 5 dot 3/4 = (5 dot 3)/4 $]

  #only("1")[
    #voiceover("Jetzt multiplizieren wir. Wenn wir eine ganze Zahl mit einem Bruch multiplizieren, multiplizieren wir die ganze Zahl mit dem Zähler und behalten den Nenner bei. Also, 5 mal drei Viertel ist gleich 5 mal 3, über 4.")
  ]

  #v(20pt)

  #only("2-")[$ = 15/4 $]

  #only("2")[
    #voiceover("Das vereinfacht sich zu fünfzehn Vierteln.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]

  #v(40pt)

  #only("1-")[$ 5 dot 3/4 = 15/4 $]

  #only("1")[
    #voiceover("Also, unser Endergebnis ist fünfzehn Viertel. Dies ist ein unechter Bruch, was bedeutet, dass der Zähler größer als der Nenner ist. Wir könnten dies auch als gemischte Zahl ausdrücken, aber das ist ein Thema für ein anderes Mal.")
  ]

  #v(20pt)

  #only("2-")[💡 Denk daran: Wenn Du eine ganze Zahl mit einem Bruch multiplizierst, multipliziere die ganze Zahl mit dem Zähler und behalte den Nenner bei.]

  #only("2")[
    #voiceover("Denk daran, wenn Du eine ganze Zahl mit einem Bruch multiplizierst, multiplizieren wir immer die ganze Zahl mit dem Zähler und behalten den Nenner bei. Diese Regel macht diese Art von Berechnungen viel einfacher!")
  ]
]