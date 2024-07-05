#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix-Dimensionen]
  #v(40pt)

  #only("1-")[Gegebene Matrix: $A = mat(1, 2, 3, 4)$]
  #v(20pt)

  #only("2-")[Anzahl der Zeilen: $1$]
  #v(20pt)

  #only("3-")[Anzahl der Spalten: $4$]
  #v(20pt)

  #only("4-")[Dimensionen: $1 × 4$]

  #only("1")[
    #voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Zuerst schauen wir uns die Anzahl der Zeilen an. Diese Matrix hat nur eine Zeile, die alle Elemente 1, 2, 3 und 4 enthält.")
  ]

  #only("3")[
    #voiceover("Nun zählen wir die Anzahl der Spalten. Wir sehen, dass es vier verschiedene Elemente in dieser einzigen Zeile gibt, was bedeutet, dass wir vier Spalten haben.")
  ]

  #only("4")[
    #voiceover("Daher sind die Dimensionen dieser Matrix 1 mal 4, was wir als 1 × 4 schreiben. Die erste Zahl steht immer für die Anzahl der Zeilen, und die zweite Zahl steht für die Anzahl der Spalten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visuelle Darstellung]
  #v(40pt)

  #only("1-")[
    #box()[
      #table(
        columns: (auto, auto, auto, auto),
        inset: 10pt,
        align: horizon,
        [1], [2], [3], [4]
      )
    ]
  ]
  #v(20pt)

  #only("2-")[↑ 1 Zeile]
  #v(10pt)
  #only("3-")[← 4 Spalten →]

  #only("1")[
    #voiceover("Lass uns diese Matrix visualisieren, um ihre Struktur besser zu verstehen.")
  ]

  #only("2")[
    #voiceover("Wie wir sehen können, gibt es in dieser Matrix nur eine Zeile, die alle vier Elemente enthält.")
  ]

  #only("3")[
    #voiceover("Und wenn wir horizontal schauen, können wir deutlich vier verschiedene Spalten zählen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Bedeutung der Dimensionen]
  #v(40pt)

  #only("1-")[- Entscheidend für Matrixoperationen 🧮]
  #v(20pt)
  #only("2-")[- Bestimmt die Kompatibilität für Multiplikation ✖️]
  #v(20pt)
  #only("3-")[- Beeinflusst Eigenschaften wie Rang und Determinante 📊]

  #only("1")[
    #voiceover("Das Verständnis der Matrix-Dimensionen ist in der linearen Algebra entscheidend. Sie spielen eine Schlüsselrolle bei verschiedenen Matrixoperationen.")
  ]

  #only("2")[
    #voiceover("Zum Beispiel, wenn man Matrizen multipliziert, muss die Anzahl der Spalten der ersten Matrix gleich der Anzahl der Zeilen der zweiten Matrix sein.")
  ]

  #only("3")[
    #voiceover("Matrix-Dimensionen beeinflussen auch wichtige Eigenschaften wie Rang und Determinante, die wir in zukünftigen Lektionen erkunden werden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Fazit]
  #v(40pt)

  #only("1-")[Matrix $A = mat(1, 2, 3, 4)$ hat Dimensionen $1 × 4$]
  #v(20pt)
  #only("2-")[Denke daran: #text(fill: blue)[Zeilen × Spalten]]

  #only("1")[
    #voiceover("Zusammenfassend hat die Matrix A, die 1, 2, 3, 4 ist, Dimensionen von 1 mal 4.")
  ]

  #only("2")[
    #voiceover("Denke immer daran, wenn Du die Dimensionen einer Matrix angibst, nennen wir zuerst die Anzahl der Zeilen und dann die Anzahl der Spalten. Großartige Arbeit bei der Lösung dieses Problems!")
  ]
]