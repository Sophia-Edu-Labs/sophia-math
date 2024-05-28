#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Basis und Koordinaten Rückblick 🎓]
#v(40pt)
#only("1-")[- Basis: Menge von Vektoren, die einen Vektorraum aufspannen 🌌]
#v(20pt)
#only("2-")[- Koordinaten: relativ zur Basis ausgedrückt 📍]
#only("1")[
#voiceover("Lass uns wiederholen, was wir über Basis und Koordinaten gelernt haben. Eine Basis ist eine Menge von Vektoren, die einen Vektorraum aufspannen.")
]
#only("2")[
#voiceover("Koordinaten werden relativ zu dieser Basis ausgedrückt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Basis Beispiel]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the vectors
v1 = np.array([1, 0])
v2 = np.array([0, 1])

# Create a plot
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='(1, 0)')
plt.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b', label='(0, 1)')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.xlim(-2, 2)
plt.ylim(-2, 2)
plt.legend()
plt.title('Standardbasis in $RR^2$')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Zum Beispiel ist die Standardbasis in R 2 die Menge der Vektoren (1, 0) und (0, 1). Diese Vektoren spannen den gesamten 2D-Raum auf.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Koordinaten Beispiel]
#v(40pt)
#only("1-")[- Betrachte den Vektor $v = mat(2; 3)$ in $RR^2$]
#v(20pt)
#only("2-")[- Relativ zur Standardbasis $B = (mat(1; 0), mat(0; 1))$:]
#v(20pt)
#only("3-")[$ v = 2 mat(1; 0) + 3 mat(0; 1)$]
#only("1")[
#voiceover("Betrachten wir nun den Vektor (2, 3) in R 2.")
]
#only("2")[
#voiceover("Relativ zur Standardbasis (1, 0) und (0, 1) sind die Koordinaten dieses Vektors:")
]
#only("3")[
#voiceover("2 mal (1, 0) plus 3 mal (0, 1). Die Koordinaten sind also einfach (2, 3).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Basis: Menge von aufspannenden Vektoren 🌌]
#v(20pt)
#only("2-")[- Koordinaten: relativ zur Basis 📍]
#v(20pt)
#only("3-")[- Schlüsselkonzepte der linearen Algebra 🔑]
#only("1")[
#voiceover("Zusammenfassend ist eine Basis eine Menge von Vektoren, die einen Vektorraum aufspannen.")
]
#only("2")[
#voiceover("Koordinaten werden relativ zu dieser Basis ausgedrückt.")
]
#only("3")[
#voiceover("Dies sind Schlüsselkonzepte der linearen Algebra, die es uns ermöglichen, effektiv mit Vektoren und Vektorräumen zu arbeiten.")
]
]