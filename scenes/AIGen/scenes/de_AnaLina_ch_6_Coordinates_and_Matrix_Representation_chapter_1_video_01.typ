#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Basis und Koordinaten]
#v(40pt)
#only("1-")[- Basis: Eine Menge von Vektoren, die einen Vektorraum aufspannen 🎛️]
#v(20pt)
#only("2-")[- Beispiel: In $RR^2$, $B = (mat(1;0), mat(0;1))$ 📐]
#v(40pt)
#only("3-")[- Koordinaten: Ausgedrückt relativ zur Basis 📍]
#v(20pt)
#only("4-")[- Beispiel: $v = mat(2;3) = 2 mat(1;0) + 3 mat(0;1)$ 🧮]
#only("1")[
#voiceover("Eine Basis ist eine Menge von Vektoren, die einen Vektorraum aufspannen. Mit anderen Worten, jeder Vektor in diesem Raum kann als Linearkombination der Basisvektoren ausgedrückt werden.")
]
#only("2")[
#voiceover("Zum Beispiel ist im zweidimensionalen reellen Raum R^2 die Standardbasis die Menge, die die Vektoren 1, 0 und 0, 1 enthält. Diese Vektoren zeigen jeweils entlang der x- und y-Achse.")
]
#only("3")[
#voiceover("Koordinaten eines Vektors werden relativ zur Basis ausgedrückt. Sie geben an, wie viel von jedem Basisvektor addiert werden muss, um den ursprünglichen Vektor zu erhalten.")
]
#only("4")[
#voiceover("Zum Beispiel kann der Vektor 2, 3 als 2 mal der erste Basisvektor 1, 0 plus 3 mal der zweite Basisvektor 0, 1 geschrieben werden. Die Koordinaten dieses Vektors relativ zur Standardbasis sind also 2 und 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

v1 = [1, 0]
v2 = [0, 1]
v = [2, 3]

origin = [0], [0]

plt.figure(figsize=(6,6))
plt.quiver(*origin, v1[0], v1[1], color='r', angles='xy', scale_units='xy', scale=1, label='Basisvektor (1,0)')
plt.quiver(*origin, v2[0], v2[1], color='g', angles='xy', scale_units='xy', scale=1, label='Basisvektor (0,1)')
plt.quiver(*origin, v[0], v[1], color='b', angles='xy', scale_units='xy', scale=1, label='Vektor (2,3)')

plt.xlim(-1, 4)
plt.ylim(-1, 4)
plt.grid()
plt.xlabel('x')
plt.ylabel('y')
plt.title('Basisvektoren und Koordinaten')
plt.legend()

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung. Die roten und grünen Pfeile repräsentieren die Standardbasisvektoren 1, 0 und 0, 1. Der blaue Pfeil ist der Vektor 2, 3. Wie Du sehen kannst, ist der blaue Vektor 2 mal der rote Vektor plus 3 mal der grüne Vektor.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Basis spannt den Vektorraum auf 🎛️]
#v(20pt)
#only("2-")[- Koordinaten sind relativ zur Basis 📍]
#v(20pt)
#only("3-")[- Jeder Vektor ist eine Linearkombination der Basisvektoren 🧮]
#only("1")[
#voiceover("Zusammenfassend spannt eine Basis den gesamten Vektorraum auf.")
]
#only("2")[
#voiceover("Koordinaten werden immer relativ zu dieser Basis ausgedrückt.")
]
#only("3")[
#voiceover("Und jeder Vektor im Raum kann eindeutig als Linearkombination der Basisvektoren ausgedrückt werden.")
]
]