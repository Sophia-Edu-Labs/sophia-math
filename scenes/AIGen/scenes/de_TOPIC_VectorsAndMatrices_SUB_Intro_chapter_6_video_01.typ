#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix-Operationen und Multiplikation]
  #v(40pt)
  #only("1-")[📊 Matrizen: Mächtige Werkzeuge in der linearen Algebra]
  #v(20pt)
  #only("2-")[🔢 Grundlegende Operationen wiederholen]
  #v(20pt)
  #only("3-")[✖️ Matrix-Multiplikation einführen]
  #v(20pt)
  #only("4-")[🟥 Fokus auf quadratische Matrizen]

  #only("1")[
    #voiceover("Willkommen zu unserer Einführung in Matrix-Operationen und Multiplikation. Matrizen sind mächtige Werkzeuge in der linearen Algebra, die es uns ermöglichen, große Datenmengen effizient darzustellen und zu manipulieren.")
  ]
  #only("2")[
    #voiceover("Wir beginnen mit einer kurzen Wiederholung einiger grundlegender Matrix-Operationen, die Dir bereits bekannt sind.")
  ]
  #only("3")[
    #voiceover("Dann führen wir das Konzept der Matrix-Multiplikation ein.")
  ]
  #only("4")[
    #voiceover("In dieser Lektion konzentrieren wir uns speziell auf quadratische Matrizen, die eine gleiche Anzahl von Zeilen und Spalten haben.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Grundlegende Matrix-Operationen: Wiederholung]
  #v(40pt)
  #only("1-")[➕ Addition: $ A + B = (a_("ij") + b_("ij")) $]
  #v(20pt)
  #only("2-")[➖ Subtraktion: $ A - B = (a_("ij") - b_("ij")) $]
  #v(20pt)
  #only("3-")[✖️ Skalarmultiplikation: $ c A = (c dot a_("ij")) $]

  #only("1")[
    #voiceover("Lass uns schnell einige grundlegende Matrix-Operationen wiederholen. Zuerst die Matrix-Addition. Wenn wir zwei Matrizen A und B gleicher Größe addieren, addieren wir die entsprechenden Elemente.")
  ]
  #only("2")[
    #voiceover("Ähnlich verhält es sich bei der Matrix-Subtraktion: Wir subtrahieren die entsprechenden Elemente der Matrix B von der Matrix A.")
  ]
  #only("3")[
    #voiceover("Zuletzt beinhaltet die Skalarmultiplikation das Multiplizieren jedes Elements der Matrix mit einem Skalarwert c.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix-Multiplikation: Einführung]
  #v(40pt)
  #only("1-")[🔍 Keine elementweise Multiplikation]
  #v(20pt)
  #only("2-")[🧮 Beinhaltet Punktprodukte von Zeilen und Spalten]
  #v(20pt)
  #only("3-")[📏 Dimensionen sind wichtig: $(m times n) dot (n times p) = (m times p)$]
  #v(20pt)
  #only("4-")[🟥 Für quadratische Matrizen: $n times n$]

  #only("1")[
    #voiceover("Nun, lass uns die Matrix-Multiplikation einführen. Es ist wichtig zu beachten, dass die Matrix-Multiplikation nicht einfach das Multiplizieren entsprechender Elemente wie bei der Addition oder Subtraktion ist.")
  ]
  #only("2")[
    #voiceover("Stattdessen beinhaltet sie das Berechnen von Punktprodukten zwischen Zeilen der ersten Matrix und Spalten der zweiten Matrix.")
  ]
  #only("3")[
    #voiceover("Die Dimensionen der Matrizen sind entscheidend für die Multiplikation. Um eine m mal n Matrix mit einer anderen Matrix zu multiplizieren, muss die zweite Matrix n Zeilen haben. Das Ergebnis wird eine m mal p Matrix sein, wobei p die Anzahl der Spalten der zweiten Matrix ist.")
  ]
  #only("4")[
    #voiceover("Für quadratische Matrizen, auf die wir uns heute konzentrieren, sind beide Matrizen n mal n, und das Ergebnis wird ebenfalls eine n mal n Matrix sein.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Matrix-Multiplikation: Beispiel]
  #v(40pt)
  #only("1-")[$ A = mat(1, 2; 3, 4) $, $ B = mat(5, 6; 7, 8) $]
  #v(20pt)
  #only("2-")[$ A B = mat((1 dot 5 + 2 dot 7), (1 dot 6 + 2 dot 8); (3 dot 5 + 4 dot 7), (3 dot 6 + 4 dot 8)) $]
  #v(20pt)
  #only("3-")[$ A B = mat(19, 22; 43, 50) $]

  #only("1")[
    #voiceover("Schauen wir uns ein Beispiel für die Multiplikation quadratischer Matrizen an. Betrachten wir zwei 2 mal 2 Matrizen: A ist gleich 1, 2; 3, 4, und B ist gleich 5, 6; 7, 8.")
  ]
  #only("2")[
    #voiceover("Um diese Matrizen zu multiplizieren, berechnen wir die Punktprodukte wie folgt: Für das Element oben links multiplizieren wir 1 mit 5 und addieren es zu 2 mal 7. Für das Element oben rechts multiplizieren wir 1 mit 6 und addieren es zu 2 mal 8. Dasselbe machen wir für die untere Reihe.")
  ]
  #only("3")[
    #voiceover("Nach diesen Berechnungen erhalten wir das Ergebnis: 19, 22; 43, 50.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  #only("1-")[📊 Grundlegende Matrix-Operationen wiederholt]
  #v(20pt)
  #only("2-")[✖️ Matrix-Multiplikation eingeführt]
  #v(20pt)
  #only("3-")[🟥 Fokus auf quadratische Matrizen]
  #v(20pt)
  #only("4-")[🧮 Multiplikation beinhaltet Punktprodukte]

  #only("1")[
    #voiceover("Zusammenfassend haben wir grundlegende Matrix-Operationen wie Addition, Subtraktion und Skalarmultiplikation wiederholt.")
  ]
  #only("2")[
    #voiceover("Dann haben wir das Konzept der Matrix-Multiplikation eingeführt, das sich grundlegend von diesen einfacheren Operationen unterscheidet.")
  ]
  #only("3")[
    #voiceover("Wir haben uns speziell auf quadratische Matrizen konzentriert, bei denen sowohl die Eingabematrizen als auch das Ergebnis die gleiche Anzahl von Zeilen und Spalten haben.")
  ]
  #only("4")[
    #voiceover("Denke daran, dass die Matrix-Multiplikation das Berechnen von Punktprodukten zwischen Zeilen der ersten Matrix und Spalten der zweiten Matrix beinhaltet. Diese Operation ist in vielen Anwendungen der linearen Algebra entscheidend und wird die Grundlage für fortgeschrittenere Konzepte sein, die wir später erkunden werden.")
  ]
]