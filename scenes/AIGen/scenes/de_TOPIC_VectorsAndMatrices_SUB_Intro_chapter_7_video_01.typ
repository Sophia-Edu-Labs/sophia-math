#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix-Dimensionen 📏]
  #v(40pt)

  #only("1-")[
    #align(center)[
      #box(width: 200pt, height: 100pt, fill: luma(230))[
        #align(center + horizon)[
          #text(size: 24pt)[A = #box(fill: aqua)[$mat(a, b, c; d, e, f)$]]
        ]
      ]
    ]
  ]

  #only("2-")[
    #v(20pt)
    - Zeilen: Horizontale Linien 📏↔️
  ]

  #only("3-")[
    #v(20pt)
    - Spalten: Vertikale Linien 📏↕️
  ]

  #only("4-")[
    #v(20pt)
    - Dimensionen: (Zeilen × Spalten) 🔢
  ]

  #only("1")[
    #voiceover("Willkommen zu unserer Lektion über Matrix-Dimensionen! Stell Dir vor, Du organisierst Daten in einer Tabelle. Das ist im Wesentlichen, was eine Matrix ist - ein rechteckiges Array von Zahlen. Schauen wir uns dieses Beispielmatrix A an.")
  ]

  #only("2")[
    #voiceover("Zuerst sprechen wir über Zeilen. Zeilen sind die horizontalen Linien in unserer Matrix. In diesem Fall haben wir zwei Zeilen.")
  ]

  #only("3")[
    #voiceover("Als nächstes haben wir Spalten. Das sind die vertikalen Linien in unserer Matrix. Hier haben wir drei Spalten.")
  ]

  #only("4")[
    #voiceover("Die Dimensionen einer Matrix werden immer als Zeilen mal Spalten angegeben. Für unsere Matrix A sind die Dimensionen also 2 mal 3, oder 2 × 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Bestimmung der Matrix-Dimensionen 🧮]
  #v(40pt)

  #only("1-")[
    #align(center)[
      #box(width: 250pt, height: 150pt, fill: luma(230))[
        #align(center + horizon)[
          #text(size: 24pt)[B = #box(fill: yellow)[$mat(1, 2, 3, 4; 5, 6, 7, 8; 9, 10, 11, 12)$]]
        ]
      ]
    ]
  ]

  #only("2-")[
    #v(20pt)
    1. Zähle die Zeilen ↔️
  ]

  #only("3-")[
    #v(20pt)
    2. Zähle die Spalten ↕️
  ]

  #only("4-")[
    #v(20pt)
    3. Schreibe als (Zeilen × Spalten) 📝
  ]

  #only("1")[
    #voiceover("Üben wir das Bestimmen der Dimensionen einer Matrix mit einem neuen Beispiel. Hier ist Matrix B.")
  ]

  #only("2")[
    #voiceover("Schritt 1: Zähle die Zeilen. In dieser Matrix haben wir drei Zeilen.")
  ]

  #only("3")[
    #voiceover("Schritt 2: Zähle die Spalten. Wir sehen, dass es in dieser Matrix vier Spalten gibt.")
  ]

  #only("4")[
    #voiceover("Schritt 3: Schreibe die Dimensionen als Zeilen mal Spalten. Die Dimensionen der Matrix B sind also 3 × 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Kurze Zusammenfassung 🔍]
  #v(40pt)

  #only("1-")[
    - Matrix: Rechteckiges Array von Zahlen 📊
  ]

  #only("2-")[
    #v(20pt)
    - Dimensionen: (Zeilen × Spalten) 🔢
  ]

  #only("3-")[
    #v(20pt)
    - Einfach zu bestimmen: Einfach zählen! 🧮
  ]

  #only("4-")[
    #v(20pt)
    - Wichtig für Matrixoperationen 🔣
  ]

  #only("1")[
    #voiceover("Lass uns schnell wiederholen, was wir gelernt haben. Eine Matrix ist ein rechteckiges Array von Zahlen, wie eine Tabelle oder ein Spreadsheet.")
  ]

  #only("2")[
    #voiceover("Die Dimensionen einer Matrix werden immer als Zeilen mal Spalten angegeben.")
  ]

  #only("3")[
    #voiceover("Das Bestimmen der Dimensionen ist einfach - einfach die Zeilen und Spalten zählen!")
  ]

  #only("4")[
    #voiceover("Das Verständnis der Matrix-Dimensionen ist entscheidend für die Durchführung verschiedener Matrixoperationen, die wir in zukünftigen Lektionen erkunden werden. Übe weiter, und Du wirst dies im Handumdrehen meistern!")
  ]
]