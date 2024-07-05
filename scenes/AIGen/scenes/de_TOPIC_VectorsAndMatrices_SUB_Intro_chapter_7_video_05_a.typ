#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix-Dimensionen]
  #v(40pt)

  #only("1-")[
    #align(center)[
      $A = mat(
        3, 3, 3;
        4, 4, 4
      )$
    ]
  ]

  #v(20pt)

  #only("2-")[- Zeilen: #text(fill: blue)[2]]
  #v(10pt)
  #only("3-")[- Spalten: #text(fill: red)[3]]
  #v(20pt)

  #only("4-")[
    #align(center)[
      Dimensionen: #text(fill: blue)[2] × #text(fill: red)[3]
    ]
  ]

  #only("1")[
    #voiceover("Großartig! Du hast die Dimensionen der Matrix korrekt identifiziert. Lass uns aufschlüsseln, wie wir das bestimmen.")
  ]

  #only("2")[
    #voiceover("Zuerst zählen wir die Anzahl der Zeilen. In dieser Matrix sehen wir, dass es 2 Zeilen gibt.")
  ]

  #only("3")[
    #voiceover("Als nächstes zählen wir die Anzahl der Spalten. Hier haben wir 3 Spalten.")
  ]

  #only("4")[
    #voiceover("Die Dimensionen einer Matrix werden immer als Zeilen mal Spalten angegeben. Also schreiben wir dies als 2 mal 3, oder 2 × 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verständnis der Matrix-Dimensionen]
  #v(40pt)

  #only("1-")[- Dimensionen: #text(fill: blue)[Zeilen] × #text(fill: red)[Spalten]]
  #v(20pt)
  #only("2-")[- Notation: m × n]
  #v(20pt)
  #only("3-")[- Für unsere Matrix: 2 × 3]
  #v(20pt)
  #only("4-")[- Gelesen als "2 mal 3" Matrix]

  #only("1")[
    #voiceover("Lass uns ein wenig tiefer in die Bedeutung der Matrix-Dimensionen eintauchen.")
  ]

  #only("2")[
    #voiceover("Im Allgemeinen bezeichnen wir die Dimensionen einer Matrix als m × n, wobei m die Anzahl der Zeilen und n die Anzahl der Spalten ist.")
  ]

  #only("3")[
    #voiceover("Für unsere spezifische Matrix haben wir eine 2 × 3 Matrix.")
  ]

  #only("4")[
    #voiceover("Dies wird als '2 mal 3' Matrix gelesen. Es zeigt uns auf einen Blick, dass wir 2 Zeilen und 3 Spalten haben.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Bedeutung der Matrix-Dimensionen]
  #v(40pt)

  #only("1-")[- Entscheidend für Matrixoperationen 🧮]
  #v(20pt)
  #only("2-")[- Bestimmt die Kompatibilität für Multiplikation ✖️]
  #v(20pt)
  #only("3-")[- Beeinflusst Eigenschaften wie Invertierbarkeit 🔄]
  #v(20pt)
  #only("4-")[- Hilft beim Verständnis von linearen Transformationen 🔀]

  #only("1")[
    #voiceover("Das Verständnis der Matrix-Dimensionen ist in der linearen Algebra entscheidend.")
  ]

  #only("2")[
    #voiceover("Zum Beispiel, wenn wir Matrizen multiplizieren, muss die Anzahl der Spalten der ersten Matrix gleich der Anzahl der Zeilen der zweiten Matrix sein.")
  ]

  #only("3")[
    #voiceover("Die Dimensionen beeinflussen auch Eigenschaften wie ob eine Matrix quadratisch oder invertierbar ist.")
  ]

  #only("4")[
    #voiceover("Darüber hinaus helfen uns die Dimensionen bei fortgeschritteneren Themen, lineare Transformationen zwischen Vektorräumen zu verstehen.")
  ]
]