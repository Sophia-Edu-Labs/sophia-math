#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Skalarmultiplikation von Vektoren]
  #v(40pt)

  #only("1-")[- Gegeben: Vektor $(0, 5)$ und Skalar $7$]
  #v(20pt)
  #only("2-")[- Multipliziere jede Komponente mit $7$:]
  #v(10pt)
  #only("3-")[  $7 \cdot (0, 5) = (7 \cdot 0, 7 \cdot 5)$]
  #v(20pt)
  #only("4-")[- Ergebnis: $(0, 35)$]

  #only("1")[
    #voiceover("Großartig! Du hast dieses Problem korrekt gelöst. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Um einen Vektor mit einem Skalar zu multiplizieren, multiplizieren wir jede Komponente des Vektors mit dem Skalar.")
  ]

  #only("3")[
    #voiceover("In diesem Fall multiplizieren wir den Vektor $(0, 5)$ mit dem Skalar $7$. Also multiplizieren wir $0$ mit $7$ und $5$ mit $7$.")
  ]

  #only("4")[
    #voiceover("Das ergibt $7$ mal $0$, was $0$ ist, und $7$ mal $5$, was $35$ ist. Daher ist das Ergebnis der Vektor $(0, 35)$.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualisierung]
  #v(20pt)

  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create vectors
v = np.array([0, 5])
v_scaled = np.array([0, 35])

# Create the plot
fig, ax = plt.subplots(figsize=(8, 8))

# Plot the vectors
ax.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='blue', label='Original (0, 5)')
ax.quiver(0, 0, v_scaled[0], v_scaled[1], angles='xy', scale_units='xy', scale=1, color='red', label='Scaled (0, 35)')

# Set limits and aspect
ax.set_xlim(-1, 1)
ax.set_ylim(0, 40)
ax.set_aspect('equal')

# Add labels and title
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Scalar Multiplication of Vector')

# Add grid and legend
ax.grid(True)
ax.legend()

plt.show()
        ```,
        width: 360pt
      ),
      caption: [],
    )
  ]]

  #only("1")[
    #voiceover("Lass uns diese Skalarmultiplikation visualisieren. Der blaue Vektor stellt unseren ursprünglichen Vektor $(0, 5)$ dar.")
  ]

  #only("2")[
    #voiceover("Wenn wir ihn mit $7$ multiplizieren, erhalten wir den roten Vektor, der $(0, 35)$ ist. Beachte, dass er siebenmal länger ist als der ursprüngliche Vektor, aber immer noch in die gleiche Richtung zeigt.")
  ]

  #only("3")[
    #voiceover("Dies veranschaulicht eine wichtige Eigenschaft der Skalarmultiplikation: Sie ändert die Größe des Vektors, aber nicht seine Richtung.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Punkte]
  #v(40pt)

  #only("1-")[- Skalarmultiplikation skaliert einen Vektor 📏]
  #v(20pt)
  #only("2-")[- Ändert die Größe, nicht die Richtung 🧭]
  #v(20pt)
  #only("3-")[- Formel: $c \cdot (x, y) = (c \cdot x, c \cdot y)$]

  #only("1")[
    #voiceover("Zusammenfassend skaliert die Skalarmultiplikation einen Vektor. In diesem Fall haben wir unseren Vektor um den Faktor $7$ skaliert.")
  ]

  #only("2")[
    #voiceover("Es ist wichtig zu beachten, dass die Skalarmultiplikation die Größe eines Vektors ändert, aber nicht seine Richtung.")
  ]

  #only("3")[
    #voiceover("Die allgemeine Formel für die Skalarmultiplikation lautet: $c$ mal der Vektor $(x, y)$ ergibt den Vektor $(c \cdot x, c \cdot y)$, wobei $c$ der Skalar ist.")
  ]
]