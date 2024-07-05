#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Matrixmultiplikation 🔢]
  #v(40pt)
  #only("1-")[- Wichtige Operation in der linearen Algebra 📊]
  #only("2-")[- Kombiniert Informationen aus zwei Matrizen 🔀]
  #only("3-")[- Lass uns den Prozess Schritt für Schritt durchgehen 🔍]
  
  #only("1")[
    #voiceover("Lass uns die Matrixmultiplikation, eine wichtige Operation in der linearen Algebra, durchgehen.")
  ]
  #only("2")[
    #voiceover("Diese Operation ermöglicht es uns, Informationen aus zwei Matrizen auf eine bestimmte Weise zu kombinieren.")
  ]
  #only("3")[
    #voiceover("Wir werden den Prozess Schritt für Schritt durchgehen, um unser Verständnis aufzufrischen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Einrichtung der Matrixmultiplikation 🔧]
  #v(40pt)
  #only("1-")[- Betrachte zwei Matrizen: A und B]
  #only("2-")[- A: m × n Matrix]
  #only("3-")[- B: n × p Matrix]
  #only("4-")[- Ergebnis: C = A × B (m × p Matrix)]
  
  #only("1")[
    #voiceover("Zu Beginn betrachten wir zwei Matrizen: A und B.")
  ]
  #only("2")[
    #voiceover("Matrix A ist eine m mal n Matrix, das heißt, sie hat m Zeilen und n Spalten.")
  ]
  #only("3")[
    #voiceover("Matrix B ist eine n mal p Matrix, mit n Zeilen und p Spalten.")
  ]
  #only("4")[
    #voiceover("Das Ergebnis der Multiplikation von A und B, das wir C nennen, wird eine m mal p Matrix sein.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Multiplikationsprozess 🔄]
  #v(20pt)
  #only("1-")[
    #align(center)[
      $
      A = mat(
        a_(11), a_(12);
        a_(21), a_(22)
      ),
      B = mat(
        b_(11), b_(12);
        b_(21), b_(22)
      )
      $
    ]
  ]
  #v(20pt)
  #only("2-")[
    #align(center)[
      $
      C = A times B = mat(
        c_(11), c_(12);
        c_(21), c_(22)
      )
      $
    ]
  ]
  #v(20pt)
  #only("3-")[- $c_("ij") = $ Summe des (Zeile i von A) · (Spalte j von B)]
  #only("4-")[- Zum Beispiel, $c_(11) = a_(11) dot b_(11) + a_(12) dot b_(21)$]
  
  #only("1")[
    #voiceover("Schauen wir uns ein Beispiel mit zwei 2 mal 2 Matrizen, A und B, an.")
  ]
  #only("2")[
    #voiceover("Ihr Produkt, C, wird ebenfalls eine 2 mal 2 Matrix sein.")
  ]
  #only("3")[
    #voiceover("Jedes Element c index i j in C wird berechnet, indem das Skalarprodukt der Zeile i von A und der Spalte j von B genommen wird.")
  ]
  #only("4")[
    #voiceover("Zum Beispiel, c index 1 1 ist gleich a index 1 1 mal b index 1 1 plus a index 1 2 mal b index 2 1.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Punkte 🗝️]
  #v(40pt)
  #only("1-")[- Anzahl der Spalten in A muss gleich der Anzahl der Zeilen in B sein]
  #only("2-")[- Nicht kommutativ: A × B ≠ B × A (im Allgemeinen)]
  #only("3-")[- Nützlich in verschiedenen Anwendungen (z.B. Transformationen)]
  #only("4-")[- Übung ist der Schlüssel zur Beherrschung! 💪]
  
  #only("1")[
    #voiceover("Denke daran, dass für die Matrixmultiplikation die Anzahl der Spalten in A gleich der Anzahl der Zeilen in B sein muss.")
  ]
  #only("2")[
    #voiceover("Im Gegensatz zur Skalarenmultiplikation ist die Matrixmultiplikation nicht kommutativ. Im Allgemeinen ist A mal B nicht gleich B mal A.")
  ]
  #only("3")[
    #voiceover("Die Matrixmultiplikation ist in verschiedenen Anwendungen unglaublich nützlich, wie zum Beispiel bei geometrischen Transformationen und der Lösung von Gleichungssystemen.")
  ]
  #only("4")[
    #voiceover("Wie bei vielen mathematischen Konzepten ist Übung der Schlüssel zur Beherrschung der Matrixmultiplikation!")
  ]
]