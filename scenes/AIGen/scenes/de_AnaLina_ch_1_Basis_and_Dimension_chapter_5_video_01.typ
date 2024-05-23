#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Koordinaten bezüglich einer Basis]
#v(40pt)
#only("1-")[- Koeffizienten der Linearkombination der Basisvektoren 📐]
#v(20pt)
#only("2-")[- Beispiel: $mat(3; 4) = a mat(1; 0) + b mat(0; 1)$ 🎯]
#v(20pt)
#only("3-")[- Koordinaten: $a = 3$ und $b = 4$ 🌟]
#only("1")[
#voiceover("Die Koordinaten eines Vektors bezüglich einer Basis sind die Koeffizienten der Linearkombination der Basisvektoren, die dem Vektor entspricht.")
]
#only("2")[
#voiceover("Zum Beispiel betrachten wir den Vektor (3; 4) und die Standardbasisvektoren (1; 0) und (0; 1). Wir können (3; 4) als Linearkombination dieser Basisvektoren schreiben.")
]
#only("3")[
#voiceover("Die Koeffizienten a und b in dieser Linearkombination sind die Koordinaten des Vektors (3; 4) bezüglich der Standardbasis. In diesem Fall ist a gleich 3 und b gleich 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Define the vectors
v = np.array([3, 4])
e1 = np.array([1, 0])
e2 = np.array([0, 1])

# Create the plot
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, e1[0], e1[1], angles='xy', scale_units='xy', scale=1, color='r', label='Basisvektor (1; 0)')
plt.quiver(0, 0, e2[0], e2[1], angles='xy', scale_units='xy', scale=1, color='b', label='Basisvektor (0; 1)')
plt.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='g', label='Vektor (3; 4)')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.xlim(-1, 4)
plt.ylim(-1, 5)
plt.legend()
plt.title('Koordinaten bezüglich einer Basis')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung des Konzepts. Die roten und blauen Pfeile repräsentieren die Standardbasisvektoren (1; 0) und (0; 1). Der grüne Pfeil ist der Vektor (3; 4). Wir können sehen, dass (3; 4) 3-mal (1; 0) plus 4-mal (0; 1) ist. Die Koordinaten von (3; 4) bezüglich der Standardbasis sind also (3, 4).")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Koordinaten: Koeffizienten der Linearkombination der Basisvektoren 🧮]
#v(20pt)
#only("2-")[- Beispiel: $mat(3; 4) = 3 mat(1; 0) + 4 mat(0; 1)$ 🎯]
#v(20pt)
#only("3-")[- Koordinaten von $mat(3; 4)$ bzgl. der Standardbasis: $(3, 4)$ 🌟]
#only("1")[
#voiceover("Zusammenfassend sind die Koordinaten eines Vektors bezüglich einer Basis die Koeffizienten der Linearkombination der Basisvektoren, die dem Vektor entspricht.")
]
#only("2")[
#voiceover("In unserem Beispiel kann der Vektor (3; 4) als 3-mal der erste Standardbasisvektor (1; 0) plus 4-mal der zweite Standardbasisvektor (0; 1) geschrieben werden.")
]
#only("3")[
#voiceover("Daher sind die Koordinaten von (3; 4) bezüglich der Standardbasis (3, 4).")
]
]