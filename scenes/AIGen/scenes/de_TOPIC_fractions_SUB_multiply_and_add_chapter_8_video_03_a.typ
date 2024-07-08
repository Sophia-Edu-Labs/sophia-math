#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche mit gleichen Nennern addieren]
  #v(40pt)

  #only("1-")[
    $5/6 + 2/6$
  ]

  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir addieren die Brüche fünf Sechstel und zwei Sechstel.")
  ]

  #only("2-")[
    #text(fill: blue)[Schritt 1: Die Nenner identifizieren]
  ]

  #only("2")[
    #voiceover("Zuerst identifizieren wir die Nenner. In diesem Fall haben beide Brüche einen Nenner von 6. Wenn die Nenner gleich sind, können wir die Brüche direkt addieren.")
  ]

  #only("3-")[
    #text(fill: green)[Schritt 2: Die Zähler addieren]
    #v(10pt)
    $5/6 + 2/6 = (5+2)/6$
  ]

  #only("3")[
    #voiceover("Als nächstes addieren wir die Zähler. Fünf plus zwei ergibt sieben. Wir behalten den gemeinsamen Nenner von sechs.")
  ]

  #only("4-")[
    #text(fill: orange)[Schritt 3: Falls möglich, vereinfachen]
    #v(10pt)
    $(5+2)/6 = 7/6$
  ]

  #only("4")[
    #voiceover("Unser Ergebnis ist sieben Sechstel. Dieser Bruch ist unecht, weil der Zähler größer als der Nenner ist. Wir können ihn so lassen oder in eine gemischte Zahl umwandeln.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Umwandlung in eine gemischte Zahl]
  #v(40pt)

  #only("1-")[
    $7/6 = 1 1/6$
  ]

  #only("1")[
    #voiceover("Um sieben Sechstel in eine gemischte Zahl umzuwandeln, teilen wir 7 durch 6. Der Quotient ist 1 mit einem Rest von 1.")
  ]

  #only("2-")[
    #text(fill: purple)[Interpretation:]
    #v(10pt)
    - 1 Ganzes
    - 1/6 verbleibend
  ]

  #only("2")[
    #voiceover("Das ergibt 1 Ganzes und ein Sechstel verbleibend. Also sind sieben Sechstel gleich eins und ein Sechstel.")
  ]

  #only("3-")[
    #text(fill: red)[Endgültige Antwort:]
    #v(10pt)
    $5/6 + 2/6 = 7/6 = 1 1/6$
  ]

  #only("3")[
    #voiceover("Daher kann unsere endgültige Antwort entweder als sieben Sechstel oder als eins und ein Sechstel ausgedrückt werden. Beide Formen sind korrekt!")
  ]
]