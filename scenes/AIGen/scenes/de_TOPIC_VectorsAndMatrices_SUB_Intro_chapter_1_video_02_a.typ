#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Skalarmultiplikation von Vektoren]
  #v(40pt)

  #only("1-")[
    #align(center)[
      $(2, 3) dot 4 = (8, 12)$
    ]
  ]

  #v(20pt)

  #only("2-")[
    - Multipliziere jede Komponente mit dem Skalar
  ]

  #v(10pt)

  #only("3-")[
    #align(center)[
      $(2 dot 4, 3 dot 4) = (8, 12)$
    ]
  ]

  #v(20pt)

  #only("4-")[
    - Ergebnis: $(8, 12)$
  ]

  #only("1")[
    #voiceover("Großartig! Du hast die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Wenn wir einen Vektor mit einem Skalar multiplizieren, multiplizieren wir jede Komponente des Vektors mit diesem Skalar.")
  ]

  #only("3")[
    #voiceover("In diesem Fall multiplizieren wir den Vektor (2, 3) mit dem Skalar 4. Also multiplizieren wir 2 mit 4 und 3 mit 4.")
  ]

  #only("4")[
    #voiceover("Das ergibt 8 für die erste Komponente und 12 für die zweite Komponente, was den Vektor (8, 12) ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Geometrische Interpretation]
  #v(40pt)

  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

        import matplotlib.pyplot as plt
import numpy as np

# Create vectors
v = np.array([2, 3])
v_scaled = 4 * v

# Create the plot
fig, ax = plt.subplots(figsize=(10, 10))

# Plot the original vector
ax.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='blue', label='Original (2, 3)')

# Plot the scaled vector
ax.quiver(0, 0, v_scaled[0], v_scaled[1], angles='xy', scale_units='xy', scale=1, color='red', label='Scaled 4(2, 3)')

# Set limits and aspect
ax.set_xlim(-1, 9)
ax.set_ylim(-1, 13)
ax.set_aspect('equal')

# Add grid and labels
ax.grid(True)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()

# Show the plot
plt.title('Scalar Multiplication of Vector')
plt.show()
        ```,
        width: 360pt
      ),
      caption: []
    )
  ]
]

  #only("1")[
    #voiceover("Nun, lass uns visualisieren, was die Skalarmultiplikation geometrisch mit einem Vektor macht.")
  ]

  #only("2")[
    #voiceover("In diesem Diagramm stellt der blaue Pfeil unseren ursprünglichen Vektor (2, 3) dar.")
  ]

  #only("3")[
    #voiceover("Der rote Pfeil zeigt das Ergebnis der Multiplikation dieses Vektors mit 4, was uns (8, 12) ergibt.")
  ]

  #only("4")[
    #voiceover("Wie du sehen kannst, streckt oder staucht die Skalarmultiplikation den Vektor, während seine Richtung gleich bleibt. In diesem Fall wurde unser Vektor auf das Vierfache seiner ursprünglichen Länge gestreckt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Punkte]
  #v(40pt)

  #only("1-")[
    - Skalarmultiplikation beeinflusst die Größe, nicht die Richtung 📏
  ]

  #only("2-")[
    - Multipliziere jede Komponente mit dem Skalar 🔢
  ]

  #only("3-")[
    - Negative Skalare kehren die Richtung um ↩️
  ]

  #only("4-")[
    - Skalar 0 ergibt den Nullvektor 0️⃣
  ]

  #only("1")[
    #voiceover("Lass uns einige wichtige Punkte zur Skalarmultiplikation von Vektoren zusammenfassen.")
  ]

  #only("2")[
    #voiceover("Erstens, die Skalarmultiplikation ändert die Größe eines Vektors, aber nicht seine Richtung, es sei denn, der Skalar ist negativ.")
  ]

  #only("3")[
    #voiceover("Zweitens, um eine Skalarmultiplikation durchzuführen, multiplizieren wir jede Komponente des Vektors mit dem Skalar.")
  ]

  #only("4")[
    #voiceover("Drittens, wenn wir mit einem negativen Skalar multiplizieren, wird die Richtung des Vektors umgekehrt.")
  ]

  #only("5")[
    #voiceover("Zuletzt, das Multiplizieren eines beliebigen Vektors mit dem Skalar 0 ergibt immer den Nullvektor.")
  ]
]