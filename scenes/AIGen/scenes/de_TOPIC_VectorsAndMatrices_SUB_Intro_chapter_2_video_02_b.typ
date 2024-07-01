#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Berechnung des Skalarprodukts]
#v(40pt)

#only("1-")[Lass uns das Skalarprodukt der Vektoren $vec(3, 4)$ und $vec(1, 2)$ berechnen:]
#v(20pt)

#only("2-")[$(3, 4) dot (1, 2)$]
#v(10pt)

#only("3-")[$ = 3 dot 1 + 4 dot 2$]
#v(10pt)

#only("4-")[$ = 3 + 8$]
#v(10pt)

#only("5-")[$ = 11$]

#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen.")
]

#only("2")[
#voiceover("Wir beginnen mit unseren beiden Vektoren: (3, 4) und (1, 2).")
]

#only("3")[
#voiceover("Um das Skalarprodukt zu berechnen, multiplizieren wir die entsprechenden Komponenten und addieren dann die Ergebnisse. Also multiplizieren wir 3 mit 1 und 4 mit 2.")
]

#only("4")[
#voiceover("Das ergibt 3 plus 8.")
]

#only("5")[
#voiceover("Wenn wir diese zusammenzählen, erhalten wir 11, was unser Endergebnis ist.")
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
v1 = np.array([3, 4])
v2 = np.array([1, 2])

# Create plot
fig, ax = plt.subplots(figsize=(8, 8))

# Plot vectors
ax.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='(3, 4)')
ax.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b', label='(1, 2)')

# Set limits and aspect
ax.set_xlim(-1, 5)
ax.set_ylim(-1, 5)
ax.set_aspect('equal')

# Add labels and title
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Vectors (3, 4) and (1, 2)')

# Add grid and legend
ax.grid(True)
ax.legend()

plt.show()

```,
width: 360pt),
caption: [Vektoren (3, 4) und (1, 2)],
)
]
]

#only("1")[
#voiceover("Schauen wir uns nun die geometrische Interpretation dieser Vektoren an.")
]

#only("2")[
#voiceover("Der rote Vektor repräsentiert (3, 4), während der blaue Vektor (1, 2) darstellt.")
]

#only("3")[
#voiceover("Das von uns berechnete Skalarprodukt, 11, steht im Zusammenhang mit den Beträgen dieser Vektoren und dem Winkel zwischen ihnen.")
]

#only("4")[
#voiceover("Tatsächlich ist das Skalarprodukt gleich dem Produkt der Beträge der Vektoren und dem Kosinus des Winkels zwischen ihnen.")
]

#only("5")[
#voiceover("Diese geometrische Interpretation hilft uns zu verstehen, warum das Skalarprodukt in vielen Anwendungen nützlich ist, wie zum Beispiel bei der Berechnung von Arbeit in der Physik oder bei der Bestimmung von Projektionen in der linearen Algebra.")
]
]