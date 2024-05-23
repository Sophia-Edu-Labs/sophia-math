#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung: Basiswechsel 🔄]

#v(40pt)

#only("1-")[- Eine neue Menge von Basisvektoren finden 🆕]
#v(20pt)
#only("2-")[- Koordinaten relativ zur neuen Basis ausdrücken 📐]

#only("1")[
#voiceover("Zur Zusammenfassung: Ein Basiswechsel beinhaltet das Finden einer neuen Menge von Basisvektoren.")
]

#only("2")[
#voiceover("Sobald wir die neuen Basisvektoren haben, drücken wir die Koordinaten der Vektoren relativ zu dieser neuen Basis aus.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]

#v(40pt)

#only("1-")[Betrachten Sie den Vektor $v = mat(2; 0)$ und die neue Basis $B = (mat(1; 1), mat(1; -1))$.]

#v(20pt)

#only("2-")[Die Koordinaten von $v$ relativ zu $B$ sind $(1, 1)$.]

#only("1")[
#voiceover("Zum Beispiel: Betrachten Sie den Vektor v, der der Spaltenvektor 2, 0 ist, und die neue Basis B, die die Vektoren 1, 1 und 1, -1 ist.")
]

#only("2")[
#voiceover("Die Koordinaten von v relativ zur neuen Basis B sind 1, 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📊]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

v = np.array([2, 0])
b1 = np.array([1, 1])
b2 = np.array([1, -1])

fig, ax = plt.subplots()

ax.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='b', label='v')
ax.quiver(0, 0, b1[0], b1[1], angles='xy', scale_units='xy', scale=1, color='r', label='b1')
ax.quiver(0, 0, b2[0], b2[1], angles='xy', scale_units='xy', scale=1, color='g', label='b2')

ax.set_xlim(-2.5, 2.5)
ax.set_ylim(-2.5, 2.5)
ax.grid()
ax.set_aspect('equal')
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Hier ist eine Visualisierung. Der blaue Vektor ist v, und die roten und grünen Vektoren sind die neuen Basisvektoren b1 und b2.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- Basiswechsel = neue Basisvektoren finden & Koordinaten relativ zu ihnen ausdrücken 🔍]
#v(20pt)
#only("2-")[- Wichtig für das Verständnis von linearen Transformationen und Matrixdarstellungen 🗝️]

#only("1")[
#voiceover("Zusammenfassend bedeutet ein Basiswechsel, eine neue Menge von Basisvektoren zu finden und die Koordinaten relativ zu diesen neuen Vektoren auszudrücken.")
]

#only("2")[
#voiceover("Das Verständnis, wie man die Basis wechselt, ist entscheidend für das Verständnis von linearen Transformationen und deren Matrixdarstellungen.")
]
]