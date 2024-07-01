#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Skalarmultiplikation von Vektoren]
  #v(40pt)

  #only("1-")[- Skalieren eines Vektors 📏]
  #v(20pt)
  #only("2-")[- Multiplizieren jeder Komponente mit einem Skalar 🔢]
  #v(20pt)
  #only("3-")[- Skalar: eine einzelne Zahl 1️⃣]
  #v(20pt)
  #only("4-")[- Verändert die Größe, behält die Richtung bei 🧭]
  #v(20pt)
  #only("5-")[ Ausnahme: negative Skalare kehren die Richtung um ↩️]

  #only("1")[
    #voiceover("Willkommen zu unserer Einführung in die Skalarmultiplikation von Vektoren. Stell dir vor, du entwirfst ein Videospiel und musst die Geschwindigkeit und Richtung der Bewegung einer Figur steuern. Hier kommt die Skalarmultiplikation ins Spiel.")
  ]
  #only("2")[
    #voiceover("Die Skalarmultiplikation beinhaltet das Multiplizieren jeder Komponente eines Vektors mit einer einzelnen Zahl, dem sogenannten Skalar.")
  ]
  #only("3")[
    #voiceover("Ein Skalar ist in diesem Kontext einfach ein einzelner numerischer Wert. Es kann jede reelle Zahl sein, wie 2, minus 3 oder 0,5.")
  ]
  #only("4")[
    #voiceover("Wenn wir einen Vektor mit einem Skalar multiplizieren, ändern wir seine Größe - also seine Länge oder Größe - während die Richtung normalerweise gleich bleibt.")
  ]
  #only("5")[
    #voiceover("Es gibt eine Ausnahme: Wenn wir mit einem negativen Skalar multiplizieren, kehrt sich die Richtung des Vektors um und zeigt in die entgegengesetzte Richtung.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wie es funktioniert]
  #v(40pt)

  #only("1-")[$ vec(v) = mat(2; 3) $   (Originalvektor)]
  #v(20pt)
  #only("2-")[$ 2 dot vec(v) = 2 dot mat(2; 3) = mat(2 dot 2; 2 dot 3) = mat(4; 6) $]
  #v(20pt)
  #only("3-")[$ -0.5 dot vec(v) = -0.5 dot mat(2; 3) = mat(-0.5 dot 2; -0.5 dot 3) = mat(-1; -1.5) $]

  #only("1")[
    #voiceover("Schauen wir uns an, wie das in der Praxis funktioniert. Betrachten wir einen Vektor v, dargestellt als Spaltenvektor mit den Komponenten 2 und 3.")
  ]
  #only("2")[
    #voiceover("Wenn wir diesen Vektor mit dem Skalar 2 multiplizieren, multiplizieren wir jede Komponente mit 2. Also, 2 mal 2 ergibt 4, und 2 mal 3 ergibt 6. Unser resultierender Vektor ist 4, 6.")
  ]
  #only("3")[
    #voiceover("Nun, lass uns versuchen, mit einem negativen Skalar zu multiplizieren, sagen wir minus 0,5. Wir multiplizieren jede Komponente mit minus 0,5. Minus 0,5 mal 2 ist minus 1, und minus 0,5 mal 3 ist minus 1,5. Unser resultierender Vektor ist minus 1, minus 1,5. Beachte, wie sich die Richtung umgekehrt hat.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualisierung]
  #v(20pt)

  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

# Original vector
v = np.array([2, 3])

# Scaled vectors
v2 = 2 * v
v_neg = -0.5 * v

# Create the plot
plt.figure(figsize=(8, 6))
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')

# Plot the vectors
plt.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='b', label='v')
plt.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='r', label='2v')
plt.quiver(0, 0, v_neg[0], v_neg[1], angles='xy', scale_units='xy', scale=1, color='g', label='-0.5v')

plt.xlim(-3, 5)
plt.ylim(-3, 7)
plt.xlabel('x')
plt.ylabel('y')
plt.title('Scalar Multiplication of Vectors')
plt.legend()
plt.grid(True)
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Lass uns diese Vektoren visualisieren. Der blaue Pfeil stellt unseren ursprünglichen Vektor v dar. Der rote Pfeil zeigt den Vektor, multipliziert mit 2, der länger ist, aber in die gleiche Richtung zeigt. Der grüne Pfeil stellt den Vektor dar, multipliziert mit minus 0,5, der kürzer ist und in die entgegengesetzte Richtung zeigt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)

  #only("1-")[- Skalarmultiplikation: Vektor × einzelne Zahl]
  #v(20pt)
  #only("2-")[- Multipliziert jede Komponente des Vektors]
  #v(20pt)
  #only("3-")[- Verändert die Größe, behält normalerweise die Richtung bei]
  #v(20pt)
  #only("4-")[- Negative Skalare kehren die Richtung um]

  #only("1")[
    #voiceover("Zusammenfassend beinhaltet die Skalarmultiplikation das Multiplizieren eines Vektors mit einer einzelnen Zahl, einem Skalar.")
  ]
  #only("2")[
    #voiceover("Dieser Vorgang multipliziert jede Komponente des Vektors mit dem Skalar.")
  ]
  #only("3")[
    #voiceover("Die Skalarmultiplikation verändert die Größe des Vektors, normalerweise während die Richtung gleich bleibt.")
  ]
  #only("4")[
    #voiceover("Allerdings kehrt die Multiplikation mit einem negativen Skalar die Richtung des Vektors um. Dieses Konzept ist in vielen Anwendungen wichtig, von der Physik bis zur Computergrafik, und ermöglicht es uns, Vektoren nach Bedarf zu skalieren und zu manipulieren.")
  ]
]