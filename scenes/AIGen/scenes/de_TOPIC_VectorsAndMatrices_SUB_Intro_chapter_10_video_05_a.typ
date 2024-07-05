#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrixaddition]
  #v(40pt)

  #only("1-")[
    $A = mat(1, 2, 3; 4, 5, 6)$
  ]
  #v(20pt)
  #only("2-")[
    $B = mat(7, 8, 9; 10, 11, 12)$
  ]
  #v(20pt)
  #only("3-")[
    $A + B = mat(1+7, 2+8, 3+9; 4+10, 5+11, 6+12)$
  ]
  #v(20pt)
  #only("4-")[
    $= mat(8, 10, 12; 14, 16, 18)$
  ]

  #only("1")[
    #voiceover("Gut gemacht! Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit Matrix A. Es ist eine 2x3-Matrix mit den Elementen 1, 2, 3 in der ersten Zeile und 4, 5, 6 in der zweiten Zeile.")
  ]
  #only("2")[
    #voiceover("Als nächstes haben wir Matrix B. Es ist ebenfalls eine 2x3-Matrix mit den Elementen 7, 8, 9 in der ersten Zeile und 10, 11, 12 in der zweiten Zeile.")
  ]
  #only("3")[
    #voiceover("Um diese Matrizen zu addieren, addieren wir die entsprechenden Elemente. Also addieren wir 1 und 7, 2 und 8, 3 und 9 für die erste Zeile, und 4 und 10, 5 und 11, 6 und 12 für die zweite Zeile.")
  ]
  #only("4")[
    #voiceover("Nach diesen Additionen erhalten wir unser Ergebnis: eine 2x3-Matrix mit den Elementen 8, 10, 12 in der ersten Zeile und 14, 16, 18 in der zweiten Zeile.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überprüfung des Ergebnisses]
  #v(40pt)

  #only("1-")[
    $A + B = mat(8, 10, 12; 14, 16, 18)$
  ]
  #v(20pt)
  #only("2-")[
    $"Dimensionen": 2 times 3$
  ]
  #v(20pt)
  #only("3-")[
    $"Summe aller Elemente": 8 + 10 + 12 + 14 + 16 + 18 = 78$
  ]
  #v(20pt)
  #only("4-")[
    $"Ursprüngliche Summe": (1 + 2 + 3 + 4 + 5 + 6) + (7 + 8 + 9 + 10 + 11 + 12) = 21 + 57 = 78$
  ]

  #only("1")[
    #voiceover("Lass uns unser Ergebnis überprüfen. Wir haben eine 2x3-Matrix mit den Elementen 8, 10, 12 in der ersten Zeile und 14, 16, 18 in der zweiten Zeile erhalten.")
  ]
  #only("2")[
    #voiceover("Zuerst können wir die Dimensionen überprüfen. Das Ergebnis ist tatsächlich eine 2x3-Matrix, was den Dimensionen der ursprünglichen Matrizen entspricht.")
  ]
  #only("3")[
    #voiceover("Wir können auch überprüfen, indem wir alle Elemente unseres Ergebnisses summieren. Das Addieren von 8, 10, 12, 14, 16 und 18 ergibt 78.")
  ]
  #only("4")[
    #voiceover("Vergleichen wir dies mit der Summe aller Elemente in den ursprünglichen Matrizen. Für Matrix A erhalten wir 21 und für Matrix B 57. Das Addieren dieser ergibt 78, was mit unserem Ergebnis übereinstimmt. Dies bestätigt, dass unsere Addition korrekt ist!")
  ]
]