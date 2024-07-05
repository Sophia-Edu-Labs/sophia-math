#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Skalarprodukt von Vektoren]
#v(40pt)

#only("1-")[
  $vec(a) = (4, 2)$
  #v(10pt)
  $vec(b) = (1, 3)$
]

#only("2-")[
  $vec(a) dot vec(b) = (4 dot 1) + (2 dot 3)$
]

#only("3-")[
  $vec(a) dot vec(b) = 4 + 6 = 10$
]

#only("1")[
#voiceover("Gut gemacht! Du hast das Skalarprodukt korrekt berechnet. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit zwei Vektoren:")
]

#only("2")[
#voiceover("Um das Skalarprodukt zu berechnen, multiplizieren wir die entsprechenden Komponenten und summieren dann die Ergebnisse:")
]

#only("3")[
#voiceover("Vereinfacht ergibt das 4 plus 6, was 10 ergibt. Das ist tatsächlich die richtige Antwort!")
]

#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create vectors
a = np.array([4, 2])
b = np.array([1, 3])

# Create plot
fig, ax = plt.subplots(figsize=(8, 6))

# Plot vectors
ax.quiver(0, 0, a[0], a[1], angles='xy', scale_units='xy', scale=1, color='r', label='a=(4,2)')
ax.quiver(0, 0, b[0], b[1], angles='xy', scale_units='xy', scale=1, color='b', label='b=(1,3)')

# Set limits and aspect
ax.set_xlim(-1, 5)
ax.set_ylim(-1, 4)
ax.set_aspect('equal')

# Add labels and title
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Vectors a and b')

# Add grid and legend
ax.grid(True)
ax.legend()

plt.show()

```,
width: 360pt),
caption: [Visualisierung der Vektoren $vec(a)$ und $vec(b)$],
)
]
]
]

#only("4")[
#voiceover("Lass uns diese Vektoren visualisieren. Der rote Pfeil stellt den Vektor a dar, und der blaue Pfeil stellt den Vektor b dar. Das berechnete Skalarprodukt, 10, repräsentiert die Summe der Produkte ihrer entsprechenden Komponenten.")
]

#only("5-")[
- Skalarprodukt: $vec(a) dot vec(b) = 10$
- Geometrische Interpretation: $vec(a) dot vec(b) = |vec(a)| |vec(b)| cos(theta)$
]

#only("5")[
#voiceover("Das Skalarprodukt hat auch eine geometrische Interpretation. Es ist gleich dem Produkt der Beträge der Vektoren und dem Kosinus des Winkels zwischen ihnen. Diese Beziehung verbindet algebraische und geometrische Aspekte von Vektoren.")
]
]