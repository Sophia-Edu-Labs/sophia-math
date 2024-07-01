#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rückblick: Vektoraddition und Dimension 🧮]
#v(40pt)
#only("1-")[- Vektoren sind essenziell in Physik und Mathematik 🔬]
#only("2-")[- Wir werden wiederholen, wie man Vektoren addiert und ihre Dimension versteht 📏]
#only("3-")[- Dies hilft bei der Lösung von Problemen in der realen Welt 🌍]

#only("1")[
#voiceover("Lass uns die Vektoraddition und Dimensionen wiederholen. Vektoren sind grundlegende Werkzeuge in Physik und Mathematik.")
]
#only("2")[
#voiceover("Wir werden wiederholen, wie man Vektoren addiert und was ihre Dimension bedeutet.")
]
#only("3")[
#voiceover("Diese Konzepte sind entscheidend für die Lösung vieler realer Probleme, von der Navigation bis zur Computergrafik.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vektoraddition 🔢]
#v(20pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create vectors
v1 = np.array([2, 1])
v2 = np.array([1, 2])
v_sum = v1 + v2

# Plot
plt.figure(figsize=(8, 6))
plt.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='v1 = (2, 1)')
plt.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b', label='v2 = (1, 2)')
plt.quiver(0, 0, v_sum[0], v_sum[1], angles='xy', scale_units='xy', scale=1, color='g', label='v1 + v2 = (3, 3)')

plt.xlim(-0.5, 4)
plt.ylim(-0.5, 4)
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.grid(True)
plt.legend()
plt.title('Vector Addition')
plt.xlabel('x')
plt.ylabel('y')

plt.show()

```,
width: 360pt),
caption: [Visualisierung der Vektoraddition],
)
]
]
]

#v(20pt)
#only("2-")[- Um Vektoren zu addieren, addiere die entsprechenden Komponenten]
#only("3-")[$vec(v)_1 + vec(v)_2 = (2, 1) + (1, 2) = (3, 3)$]

#only("1")[
#voiceover("Lass uns die Vektoraddition wiederholen. In diesem Diagramm haben wir zwei Vektoren: v1 in Rot und v2 in Blau.")
]
#only("2")[
#voiceover("Um Vektoren zu addieren, addieren wir einfach ihre entsprechenden Komponenten.")
]
#only("3")[
#voiceover("Zum Beispiel ist der Vektor v1 (2, 1) und der Vektor v2 (1, 2). Wenn wir diese addieren, erhalten wir (2 plus 1, 1 plus 2), was (3, 3) ergibt. Dies wird durch den grünen Vektor in unserem Diagramm dargestellt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vektordimension 📏]
#v(40pt)
#only("1-")[- Dimension = Anzahl der Komponenten im Vektor]
#only("2-")[- 2D Vektor: $(x, y)$ - 2 Komponenten]
#only("3-")[- 3D Vektor: $(x, y, z)$ - 3 Komponenten]
#only("4-")[- n-dimensionaler Vektor: $n$ Komponenten]

#only("1")[
#voiceover("Nun, lass uns das Konzept der Vektordimension wiederholen.")
]
#only("2")[
#voiceover("Ein zweidimensionaler Vektor, wie (x, y), hat zwei Komponenten.")
]
#only("3")[
#voiceover("Ein dreidimensionaler Vektor, (x, y, z), hat drei Komponenten.")
]
#only("4")[
#voiceover("Im Allgemeinen hat ein n-dimensionaler Vektor n Komponenten.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[- Vektoraddition: Addiere die entsprechenden Komponenten 🔢]
#only("2-")[- $(a, b) + (c, d) = (a+c, b+d)$]
#only("3-")[- Vektordimension: Anzahl der Komponenten 📏]
#only("4-")[- Entscheidend für verschiedene Anwendungen 🌍]

#only("1")[
#voiceover("Zusammenfassend haben wir wiederholt, dass die Vektoraddition durch das Addieren der entsprechenden Komponenten erfolgt.")
]
#only("2")[
#voiceover("Zum Beispiel, (a, b) plus (c, d) ergibt (a plus c, b plus d).")
]
#only("3")[
#voiceover("Die Dimension eines Vektors ist einfach die Anzahl der Komponenten, die er hat.")
]
#only("4")[
#voiceover("Diese Konzepte sind in verschiedenen Bereichen entscheidend, von der Physik bis zur Computergrafik, und helfen uns, komplexe Probleme in mehreren Dimensionen zu modellieren und zu lösen.")
]
]