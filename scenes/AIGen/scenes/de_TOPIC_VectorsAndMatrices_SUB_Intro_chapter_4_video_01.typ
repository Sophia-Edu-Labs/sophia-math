#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrizen Addieren: Eine Einführung]
  #v(40pt)
  #only("1-")[- Matrizen werden in vielen Bereichen verwendet 🏭🏥🏦]
  #v(20pt)
  #only("2-")[- Sie repräsentieren Daten, Transformationen und Systeme 📊🔄🔢]
  #v(20pt)
  #only("3-")[- Das Addieren von Matrizen ist eine grundlegende Operation ➕]
  #v(20pt)
  #only("4-")[- Lass uns erkunden, wie es funktioniert! 🧐]

  #only("1")[
    #voiceover("Willkommen zu unserer Einführung in das Addieren von Matrizen! Matrizen sind mächtige mathematische Werkzeuge, die in verschiedenen Bereichen verwendet werden.")
  ]
  #only("2")[
    #voiceover("Sie können Daten, Transformationen und komplexe Systeme in kompakter Form darstellen.")
  ]
  #only("3")[
    #voiceover("Eine der grundlegendsten Operationen, die wir mit Matrizen durchführen können, ist die Addition.")
  ]
  #only("4")[
    #voiceover("Lass uns eintauchen und erkunden, wie die Matrixaddition funktioniert!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrixaddition: Die Grundlagen]
  #v(40pt)
  #only("1-")[- Matrizen müssen die gleichen Dimensionen haben]
  #v(20pt)
  #only("2-")[$ A = mat(a, b; c, d) $, $ B = mat(e, f; g, h) $]
  #v(20pt)
  #only("3-")[$ A + B = mat(a+e, b+f; c+g, d+h) $]
  #v(20pt)
  #only("4-")[- Entsprechende Elemente addieren 🔢]

  #only("1")[
    #voiceover("Um Matrizen zu addieren, müssen wir zunächst sicherstellen, dass sie die gleichen Dimensionen haben. Das bedeutet, sie müssen die gleiche Anzahl von Zeilen und Spalten haben.")
  ]
  #only("2")[
    #voiceover("Betrachten wir zwei 2x2-Matrizen, A und B. Matrix A hat die Elemente a, b, c und d, während Matrix B die Elemente e, f, g und h hat.")
  ]
  #only("3")[
    #voiceover("Um diese Matrizen zu addieren, addieren wir die entsprechenden Elemente. Das Ergebnis ist eine neue Matrix, bei der jedes Element die Summe der entsprechenden Elemente von A und B ist.")
  ]
  #only("4")[
    #voiceover("Also addieren wir a zu e, b zu f, c zu g und d zu h. Das ergibt unsere Ergebnismatrix.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispiel: Zwei Matrizen addieren]
  #v(40pt)
  #only("1-")[$ A = mat(1, 2; 3, 4) $, $ B = mat(5, 6; 7, 8) $]
  #v(20pt)
  #only("2-")[$ A + B = mat(1+5, 2+6; 3+7, 4+8) $]
  #v(20pt)
  #only("3-")[$ A + B = mat(6, 8; 10, 12) $]
  #v(20pt)
  #only("4-")[- Jedes Element ist die Summe der entsprechenden Elemente 🧮]

  #only("1")[
    #voiceover("Schauen wir uns ein konkretes Beispiel an. Wir haben Matrix A mit den Elementen 1, 2, 3 und 4, und Matrix B mit den Elementen 5, 6, 7 und 8.")
  ]
  #only("2")[
    #voiceover("Um diese Matrizen zu addieren, addieren wir die entsprechenden Elemente. Also 1 plus 5, 2 plus 6, 3 plus 7 und 4 plus 8.")
  ]
  #only("3")[
    #voiceover("Das ergibt eine neue Matrix mit den Elementen 6, 8, 10 und 12.")
  ]
  #only("4")[
    #voiceover("Wie Du siehst, ist jedes Element in der Ergebnismatrix tatsächlich die Summe der entsprechenden Elemente der Matrizen A und B.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung: Matrizen Addieren]
  #v(40pt)
  #only("1-")[- Matrizen müssen die gleichen Dimensionen haben ✅]
  #v(20pt)
  #only("2-")[- Entsprechende Elemente addieren 🔢]
  #v(20pt)
  #only("3-")[- Das Ergebnis hat die gleichen Dimensionen wie die ursprünglichen Matrizen 📏]
  #v(20pt)
  #only("4-")[- Wichtige Operation in der linearen Algebra und darüber hinaus! 🌟]

  #only("1")[
    #voiceover("Zusammenfassend: Beim Addieren von Matrizen stellen wir zunächst sicher, dass sie die gleichen Dimensionen haben.")
  ]
  #only("2")[
    #voiceover("Dann addieren wir die entsprechenden Elemente jeder Matrix.")
  ]
  #only("3")[
    #voiceover("Die resultierende Matrix hat die gleichen Dimensionen wie die ursprünglichen Matrizen.")
  ]
  #only("4")[
    #voiceover("Die Matrixaddition ist eine grundlegende Operation in der linearen Algebra und hat zahlreiche Anwendungen in verschiedenen Bereichen, von der Computergrafik bis zur Wirtschaft!")
  ]
]