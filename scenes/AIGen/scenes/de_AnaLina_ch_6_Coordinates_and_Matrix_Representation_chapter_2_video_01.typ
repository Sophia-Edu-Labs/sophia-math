#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Lineare Abbildung]
#v(40pt)
#only("1-")[- Funktion, die Addition und skalare Multiplikation erhält 📈]
#v(20pt)
#only("2-")[- Beispiel: $T(mat(x; y)) = mat(2x; 3y)$ 🔄]
#only("1")[
#voiceover("Eine lineare Abbildung ist eine Funktion, die Addition und skalare Multiplikation erhält.")
]
#only("2")[
#voiceover("Zum Beispiel betrachten wir die Abbildung T, die einen Vektor (x; y) auf (2x; 3y) abbildet.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrixdarstellung]
#v(40pt)
#only("1-")[- Lineare Abbildung kann durch eine Matrix dargestellt werden 📜]
#v(20pt)
#only("2-")[- Beispiel: $T(mat(x; y)) = mat(2, 0; 0, 3) mat(x; y)$]
#only("1")[
#voiceover("Diese lineare Abbildung kann durch eine Matrix dargestellt werden.")
]
#only("2")[
#voiceover("In unserem Beispiel ist die Matrixdarstellung von T die 2x2-Matrix mit den Elementen 2, 0, 0 und 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Koordinatentransformation]
#v(40pt)
#only("1-")[- Matrix transformiert Koordinaten von einer Basis in eine andere 🔄]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

v1 = np.array([1, 0])  
v2 = np.array([0, 1])
v1_new = np.array([2, 0])  
v2_new = np.array([0, 3])

origin = np.array([[0, 0, 0], [0, 0, 0]]) 
plt.figure(figsize=(6, 6))
plt.quiver(*origin, v1[0], v1[1], color=['r'], scale=1, units='xy', label='Alte Basis')
plt.quiver(*origin, v2[0], v2[1], color=['r'], scale=1, units='xy')
plt.quiver(*origin, v1_new[0], v1_new[1], color=['b'], scale=1, units='xy', label='Neue Basis')
plt.quiver(*origin, v2_new[0], v2_new[1], color=['b'], scale=1, units='xy')

plt.grid()
plt.xlim(-1, 4)
plt.ylim(-1, 4)
plt.legend()
plt.title('Koordinatentransformation')
plt.xlabel('x')
plt.ylabel('y')
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Die Matrix transformiert Koordinaten von einer Basis in eine andere.")
]
#only("2")[
#voiceover("Im Diagramm repräsentieren die roten Pfeile die Standardbasisvektoren (1; 0) und (0; 1). Die blauen Pfeile repräsentieren die neuen Basisvektoren (2; 0) und (0; 3) nach Anwendung der Transformationsmatrix.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Lineare Abbildung: Funktion, die Addition und skalare Multiplikation erhält 📈]
#v(20pt)
#only("2-")[- Matrixdarstellung: lineare Abbildung durch eine Matrix dargestellt 📜]
#v(20pt)
#only("3-")[- Koordinatentransformation: Matrix transformiert Koordinaten von einer Basis in eine andere 🔄]
#only("1")[
#voiceover("Zusammenfassend ist eine lineare Abbildung eine Funktion, die Addition und skalare Multiplikation erhält.")
]
#only("2")[
#voiceover("Diese lineare Abbildung kann durch eine Matrix dargestellt werden.")
]
#only("3")[
#voiceover("Die Matrix transformiert Koordinaten von einer Basis in eine andere, wodurch wir die lineare Abbildung in einem neuen Koordinatensystem betrachten können.")
]
]