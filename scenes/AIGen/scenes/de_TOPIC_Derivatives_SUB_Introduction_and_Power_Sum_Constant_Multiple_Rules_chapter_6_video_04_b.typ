#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Leider war das nicht ganz richtig. Lass uns das Video anschauen, um die Lösung Schritt für Schritt zu verstehen.")
  ]

  #text(size: 30pt, weight: "bold")[Ableitung eines Polynoms]
  #v(40pt)

  #only("2-")[$ f(x) = 3x^4 + 2x^3 + x^2 $]

  #only("2")[
    #voiceover("Wir beginnen mit der Funktion f von x gleich 3 x hoch 4 plus 2 x hoch 3 plus x quadrat.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Vorgehensweise: Summenregel]
  #v(40pt)

  #only("1-")[- Jedes Glied einzeln ableiten 📊]
  #v(20pt)
  #only("2-")[- Potenzregel auf jedes Glied anwenden 💡]

  #only("1")[
    #voiceover("Um die Ableitung zu finden, verwenden wir die Summenregel. Das bedeutet, dass wir jedes Glied einzeln ableiten und dann die Ergebnisse addieren können.")
  ]

  #only("2")[
    #voiceover("Für jedes Glied wenden wir die Potenzregel der Ableitung an.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Ableitung von $3x^4$]
  #v(40pt)

  #only("1-")[$ (3x^4)' = 3 \cdot 4 \cdot x^{4-1} = 12x^3 $]

  #only("1")[
    #voiceover("Beginnen wir mit dem ersten Glied, 3 x hoch 4. Mit der Potenzregel multiplizieren wir den Koeffizienten 3 mit dem Exponenten 4 und reduzieren dann den Exponenten um 1. Das ergibt 12 x hoch 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Ableitung von $2x^3$]
  #v(40pt)

  #only("1-")[$ (2x^3)' = 2 \cdot 3 \cdot x^{3-1} = 6x^2 $]

  #only("1")[
    #voiceover("Beim zweiten Glied, 2 x hoch 3, multiplizieren wir 2 mit 3 und reduzieren den Exponenten auf 2. Das ergibt 6 x quadrat.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Ableitung von $x^2$]
  #v(40pt)

  #only("1-")[$ (x^2)' = 2 \cdot x^{2-1} = 2x $]

  #only("1")[
    #voiceover("Beim letzten Glied, x quadrat, multiplizieren wir mit 2 und reduzieren den Exponenten auf 1. Das ergibt 2x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]
  #v(40pt)

  #only("1-")[$ f'(x) = 12x^3 + 6x^2 + 2x $]

  #only("1")[
    #voiceover("Nun kombinieren wir alle diese Glieder mit der Summenregel. Die Ableitung von f von x ist 12 x hoch 3 plus 6 x quadrat plus 2x.")
  ]

  #only("2")[
    #voiceover("Das entspricht unserer ursprünglichen Antwort. Gut gemacht beim Lösen dieses Problems!")
  ]
]