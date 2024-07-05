#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Skalarmultiplikation von Matrizen]
#v(40pt)

#only("1-")[
$3 dot mat(1, 2; 3, 4) = mat(?, ?; ?, ?)$
]

#v(20pt)

#only("2-")[
$3 dot mat(1, 2; 3, 4) = mat(3 dot 1, 3 dot 2; 3 dot 3, 3 dot 4)$
]

#v(20pt)

#only("3-")[
$3 dot mat(1, 2; 3, 4) = mat(3, 6; 9, 12)$
]

#only("1")[
#voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen damit, die Matrix mit dem Skalar 3 zu multiplizieren.")
]

#only("2")[
#voiceover("Um eine Matrix mit einem Skalar zu multiplizieren, multiplizieren wir jedes Element der Matrix mit diesem Skalar. Also multiplizieren wir jeden Eintrag mit 3.")
]

#only("3")[
#voiceover("Nachdem wir jedes Element mit 3 multipliziert haben, erhalten wir unser Endergebnis: eine Matrix mit 3 oben links, 6 oben rechts, 9 unten links und 12 unten rechts.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Transformation]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Original matrix
A = np.array([[1, 2], [3, 4]])

# Transformed matrix
B = 3 * A

# Create a grid of points
x = np.linspace(-5, 5, 10)
y = np.linspace(-5, 5, 10)
X, Y = np.meshgrid(x, y)

# Apply the transformations
U, V = np.dot(A, [X.flatten(), Y.flatten()])
U_scaled, V_scaled = np.dot(B, [X.flatten(), Y.flatten()])

# Plot
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 5))

ax1.quiver(X, Y, U.reshape(X.shape) - X, V.reshape(Y.shape) - Y, angles='xy', scale_units='xy', scale=1, color='b', label='Original')
ax1.set_xlim([-5, 5])
ax1.set_ylim([-5, 5])
ax1.set_aspect('equal')
ax1.grid(True)
ax1.set_title('Original Transformation')
ax1.legend()

ax2.quiver(X, Y, U_scaled.reshape(X.shape) - X, V_scaled.reshape(Y.shape) - Y, angles='xy', scale_units='xy', scale=1, color='r', label='Scaled')
ax2.set_xlim([-5, 5])
ax2.set_ylim([-5, 5])
ax2.set_aspect('equal')
ax2.grid(True)
ax2.set_title('Scaled Transformation')
ax2.legend()

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [Vergleich der ursprünglichen und skalierten Transformationen],
)
]
]

#only("1")[
#voiceover("Nun lass uns visualisieren, was diese Skalarmultiplikation mit der durch unsere Matrix dargestellten Transformation macht. Links sehen wir die ursprüngliche Transformation, und rechts sehen wir die Transformation nach der Multiplikation mit 3.")
]

#only("2")[
#voiceover("Beachte, wie die skalierte Transformation rechts den Raum mehr streckt als die ursprüngliche. Dies liegt daran, dass jede Komponente der Transformation um das Dreifache vergrößert wurde.")
]

#only("3")[
#voiceover("Diese Visualisierung hilft uns zu verstehen, dass die Skalarmultiplikation einer Matrix die von ihr dargestellte Transformation verstärkt oder reduziert, ohne ihre grundlegende Richtung oder Form zu ändern.")
]
]