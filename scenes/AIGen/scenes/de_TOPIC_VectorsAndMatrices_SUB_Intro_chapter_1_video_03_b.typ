#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Skalare Multiplikation von Vektoren]
  #v(40pt)

  #only("1-")[- Gegeben: Vektor $(1, -2)$ und Skalar $-3$]
  #v(20pt)
  #only("2-")[- Schritt 1: Multipliziere jede Komponente mit dem Skalar]
  #v(20pt)
  #only("3-")[- $-3 \cdot (1, -2) = (-3 \cdot 1, -3 \cdot (-2))$]
  #v(20pt)
  #only("4-")[- $= (-3, 6)$]

  #only("1")[
    #voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen.")
  ]

  #only("2")[
    #voiceover("Um einen Vektor mit einem Skalar zu multiplizieren, multiplizieren wir jede Komponente des Vektors mit dem Skalar.")
  ]

  #only("3")[
    #voiceover("Also multiplizieren wir minus 3 mit 1 und minus 3 mit minus 2.")
  ]

  #only("4")[
    #voiceover("Das ergibt minus 3 für die erste Komponente und plus 6 für die zweite Komponente. Somit ist unsere endgültige Antwort der Vektor minus 3, 6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualisierung der Transformation]
  #v(20pt)

  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Original vector
v = np.array([1, -2])

# Scaled vector
v_scaled = -3 * v

# Create the plot
fig, ax = plt.subplots(figsize=(10, 10))

# Set the limits and aspect ratio
ax.set_xlim(-7, 7)
ax.set_ylim(-7, 7)
ax.set_aspect('equal')

# Add grid
ax.grid(True, linestyle='--', alpha=0.7)

# Plot the axes
ax.axhline(y=0, color='k', linestyle='-', linewidth=0.5)
ax.axvline(x=0, color='k', linestyle='-', linewidth=0.5)

# Plot the original vector
ax.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='blue', label='Original (1, -2)')

# Plot the scaled vector
ax.quiver(0, 0, v_scaled[0], v_scaled[1], angles='xy', scale_units='xy', scale=1, color='red', label='Scaled (-3, 6)')

# Add labels and title
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Vector Scaling: (1, -2) → (-3, 6)')

# Add legend
ax.legend()

plt.show()
        ```,
        width: 360pt
      ),
      caption: [],
    )
  ]
]

  #only("1")[
    #voiceover("Lass uns diese Transformation visualisieren. Der blaue Pfeil repräsentiert unseren ursprünglichen Vektor 1, minus 2. Der rote Pfeil zeigt das Ergebnis der Multiplikation dieses Vektors mit minus 3, was uns den Vektor minus 3, 6 ergibt.")
  ]

  #only("2")[
    #voiceover("Beachte, wie die skalare Multiplikation nicht nur die Länge des Vektors verändert hat, sondern auch seine Richtung. Dies liegt daran, dass wir mit einem negativen Skalar multipliziert haben, was die Richtung des Vektors umkehrt.")
  ]

  #only("3")[
    #voiceover("Die Größe des Vektors wurde um den Faktor 3 skaliert, und seine Richtung wurde umgekehrt. Diese visuelle Darstellung hilft uns, die geometrische Bedeutung der skalaren Multiplikation von Vektoren zu verstehen.")
  ]
]