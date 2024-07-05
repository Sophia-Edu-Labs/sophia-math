#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Skalarmultiplikation von Matrizen 🧮]
  #v(40pt)
  #only("1-")[- Matrizen sind essenziell in der linearen Algebra 📊]
  #only("2-")[- Operationen an Matrizen beinhalten die Skalarmultiplikation ✖️]
  #only("3-")[- Lass uns die Skalarmultiplikation genauer ansehen 🔍]

  #only("1")[
    #voiceover("Lass uns die Skalarmultiplikation von Matrizen, eine wichtige Operation in der linearen Algebra, durchgehen.")
  ]
  #only("2")[
    #voiceover("Unter den verschiedenen Matrixoperationen ist die Skalarmultiplikation grundlegend und weit verbreitet.")
  ]
  #only("3")[
    #voiceover("Wir werden uns ansehen, wie die Skalarmultiplikation mit Matrizen funktioniert.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Skalarmultiplikation: Definition 📝]
  #v(40pt)
  #only("1-")[- Skalar: eine einzelne Zahl 🔢]
  #only("2-")[- Matrix: rechteckiges Zahlenarray 🔳]
  #only("3-")[- Skalarmultiplikation: jedes Element wird mit dem Skalar multipliziert ➗]

  #only("1")[
    #voiceover("Zuerst, lass uns klären, was wir unter einem Skalar verstehen. Ein Skalar ist einfach eine einzelne Zahl.")
  ]
  #only("2")[
    #voiceover("Eine Matrix hingegen ist ein rechteckiges Array von Zahlen.")
  ]
  #only("3")[
    #voiceover("Bei der Skalarmultiplikation wird jedes Element der Matrix mit dem Skalar multipliziert.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispiel der Skalarmultiplikation 🌟]
  #v(20pt)
  #only("1-")[
    Sei $c = 2$ und $A = mat(1, 2; 3, 4)$
  ]
  #v(20pt)
  #only("2-")[
    Dann ist $c A = 2 dot mat(1, 2; 3, 4) = mat(2 dot 1, 2 dot 2; 2 dot 3, 2 dot 4)$
  ]
  #v(20pt)
  #only("3-")[
    $= mat(2, 4; 6, 8)$
  ]

  #only("1")[
    #voiceover("Schauen wir uns ein Beispiel an. Betrachte den Skalar c gleich 2 und eine Matrix A, die eine Zwei-mal-Zwei-Matrix mit den Elementen 1, 2 in der ersten Zeile und 3, 4 in der zweiten Zeile ist.")
  ]
  #only("2")[
    #voiceover("Um den Skalar mit der Matrix zu multiplizieren, multiplizieren wir jedes Element der Matrix mit 2. Also, 2 mal 1 ist 2, 2 mal 2 ist 4, 2 mal 3 ist 6 und 2 mal 4 ist 8.")
  ]
  #only("3")[
    #voiceover("Das Ergebnis ist eine neue Matrix mit den Elementen 2, 4 in der ersten Zeile und 6, 8 in der zweiten Zeile.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Punkte zum Merken 🗝️]
  #v(40pt)
  #only("1-")[- Jedes Element wird mit dem Skalar multipliziert 🔢]
  #only("2-")[- Die Dimensionen der Matrix bleiben unverändert 📏]
  #only("3-")[- Skalarmultiplikation ist distributiv ➕]
  #only("4-")[- Die Reihenfolge spielt keine Rolle: $c A = A c$ 🔄]

  #only("1")[
    #voiceover("Lass uns die wichtigsten Punkte zur Skalarmultiplikation von Matrizen zusammenfassen.")
  ]
  #only("2")[
    #voiceover("Erstens, erinnere dich daran, dass jedes Element der Matrix mit dem Skalar multipliziert wird.")
  ]
  #only("3")[
    #voiceover("Wichtig ist, dass die Dimensionen der Matrix nach der Skalarmultiplikation gleich bleiben.")
  ]
  #only("4")[
    #voiceover("Die Skalarmultiplikation ist distributiv über die Matrixaddition. Außerdem spielt die Reihenfolge keine Rolle - c mal A ist gleich A mal c.")
  ]
]