#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Koordinaten bezüglich einer Basis 📐]
#v(40pt)
#only("1-")[
- Koordinaten sind Koeffizienten der Linearkombination
]
#v(20pt)
#only("2-")[
- Beispiel: $mat(3; 4) = 3 mat(1; 0) + 4 mat(0; 1)$
]
#only("1")[
#voiceover("Erinnern Sie sich daran, dass die Koordinaten eines Vektors bezüglich einer Basis die Koeffizienten der Linearkombination der Basisvektoren sind, die den Vektor ergeben.")
]
#only("2")[
#voiceover("Zum Beispiel sind die Koordinaten des Vektors (3; 4) bezüglich der Standardbasis (1; 0) und (0; 1) 3 und 4, weil (3; 4) gleich 3 mal (1; 0) plus 4 mal (0; 1) ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 🎨]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the vectors
v = np.array([3, 4])
e1 = np.array([1, 0])
e2 = np.array([0, 1])

# Create the plot
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='b', label='(3, 4)')
plt.quiver(0, 0, e1[0], e1[1], angles='xy', scale_units='xy', scale=1, color='r', label='(1, 0)')
plt.quiver(0, 0, e2[0], e2[1], angles='xy', scale_units='xy', scale=1, color='g', label='(0, 1)')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.xlim(-1, 4)
plt.ylim(-1, 5)
plt.legend()
plt.title('Koordinaten bezüglich der Standardbasis')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung. Der blaue Vektor (3; 4) kann als Linearkombination des roten Vektors (1; 0) und des grünen Vektors (0; 1) ausgedrückt werden, die die Standardbasis bilden. Die Koeffizienten in dieser Linearkombination, 3 und 4, sind die Koordinaten von (3; 4) bezüglich dieser Basis.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎬]
#v(40pt)
#only("1-")[
- Koordinaten bzgl. Basis = Koeffizienten in Linearkombination 🧮
]
#v(20pt)
#only("2-")[
- $mat(v) = a mat(v)_1 + b mat(v)_2 + ... $ wobei $mat(v)_1, mat(v)_2, ...$ die Basis bilden
]
#v(20pt)
#only("3-")[
- Koordinaten von $mat(v)$ bzgl. $\{mat(v)_1, mat(v)_2, ...\}$ sind $(a, b, ...)$
]
#only("1")[
#voiceover("Zusammenfassend sind die Koordinaten eines Vektors bezüglich einer Basis die Koeffizienten in der Linearkombination der Basisvektoren, die den Vektor ergeben.")
]
#only("2")[
#voiceover("Wenn ein Vektor v gleich a mal v1 plus b mal v2 und so weiter ist, wobei v1, v2 und so weiter eine Basis bilden...")
]
#only("3")[
#voiceover("...dann sind die Koordinaten von v bezüglich dieser Basis {v1, v2, ...} (a, b, ...). Dies sind die Koeffizienten aus der Linearkombination.")
]
]