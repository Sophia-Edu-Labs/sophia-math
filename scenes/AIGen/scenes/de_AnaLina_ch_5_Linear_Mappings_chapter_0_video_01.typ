#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Lineare Abbildung]
#v(40pt)
#only("1-")[- Funktion zwischen zwei Vektorräumen]
#only("2-")[- Erhält Vektoraddition und Skalarmultiplikation]
#only("1")[
#voiceover("Eine lineare Abbildung, auch bekannt als lineare Transformation, ist eine Funktion zwischen zwei Vektorräumen.")
]
#only("2")[
#voiceover("Was sie besonders macht, ist, dass sie zwei wichtige Operationen erhält: Vektoraddition und Skalarmultiplikation.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Erhaltung der Vektoraddition]
#v(40pt)
#only("1-")[- Für beliebige Vektoren $u, v$: $T(u + v) = T(u) + T(v)$ ➕]
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Create vectors
u = np.array([1, 2])
v = np.array([3, 1])

# Create a linear transformation matrix
T = np.array([[1, 1], [0, 1]])

# Apply transformation
Tu = T @ u
Tv = T @ v
Tuv = T @ (u + v)

# Plot original vectors
plt.quiver([0, 0], [0, 0], [u[0], v[0]], [u[1], v[1]], angles='xy', scale_units='xy', scale=1, color=['b', 'g'])
plt.text(u[0], u[1], 'u', color='b', fontsize=14)
plt.text(v[0], v[1], 'v', color='g', fontsize=14)

# Plot transformed vectors
plt.quiver([0, 0, Tu[0]+Tv[0]], [0, 0, Tu[1]+Tv[1]], [Tu[0], Tv[0], -Tuv[0]], [Tu[1], Tv[1], -Tuv[1]], angles='xy', scale_units='xy', scale=1, color=['c', 'm', 'r'])
plt.text(Tu[0], Tu[1], 'T(u)', color='c', fontsize=14)
plt.text(Tv[0], Tv[1], 'T(v)', color='m', fontsize=14)
plt.text(Tu[0]+Tv[0], Tu[1]+Tv[1], 'T(u+v)', color='r', fontsize=14)

plt.xlim(-1, 5)
plt.ylim(-1, 5)
plt.grid()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Zuerst betrachten wir die Erhaltung der Vektoraddition. Für zwei beliebige Vektoren u und v ist eine lineare Abbildung T, die auf die Summe von u und v angewendet wird, gleich der Summe von T auf u und T auf v.")
]
#only("2")[
#voiceover("Hier ist eine Visualisierung. Die blauen und grünen Vektoren sind u und v. Wenn wir die lineare Abbildung T anwenden, erhalten wir die cyanfarbenen und magentafarbenen Vektoren T von u und T von v. Beachten Sie, dass, wenn wir zuerst u und v addieren und dann T anwenden, dargestellt in Rot, wir das gleiche Ergebnis erhalten wie bei der Addition von T von u und T von v.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Erhaltung der Skalarmultiplikation]
#v(40pt)
#only("1-")[- Für beliebigen Vektor $u$ und Skalar $c$: $T(c u) = c T(u)$ 🔢]
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a vector and scalar
u = np.array([2, 1])
c = 2

# Create a linear transformation matrix
T = np.array([[1, 1], [0, 1]])

# Apply transformation
Tu = T @ u
Tcu = T @ (c * u)

# Plot original vector
plt.quiver(0, 0, u[0], u[1], angles='xy', scale_units='xy', scale=1, color='b')
plt.text(u[0], u[1], 'u', color='b', fontsize=14)

# Plot scaled vector
plt.quiver(0, 0, c*u[0], c*u[1], angles='xy', scale_units='xy', scale=1, color='g')
plt.text(c*u[0], c*u[1], 'cu', color='g', fontsize=14)

# Plot transformed vectors
plt.quiver(0, 0, Tu[0], Tu[1], angles='xy', scale_units='xy', scale=1, color='c')
plt.text(Tu[0], Tu[1], 'T(u)', color='c', fontsize=14)
plt.quiver(0, 0, Tcu[0], Tcu[1], angles='xy', scale_units='xy', scale=1, color='m')
plt.text(Tcu[0], Tcu[1], 'T(cu)', color='m', fontsize=14)

plt.xlim(-1, 6)
plt.ylim(-1, 6)
plt.grid()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Als nächstes betrachten wir die Erhaltung der Skalarmultiplikation. Für einen beliebigen Vektor u und Skalar c ist eine lineare Abbildung T, die auf das Produkt von c und u angewendet wird, gleich c mal T, angewendet auf u.")
]
#only("2")[
#voiceover("In dieser Visualisierung ist der blaue Vektor u. Wenn wir ihn um den Faktor 2 skalieren, erhalten wir den grünen Vektor cu. Die Anwendung der linearen Abbildung T auf u ergibt den cyanfarbenen Vektor T von u. Und wenn wir u zuerst skalieren und dann T anwenden, dargestellt in Magenta, erhalten wir das gleiche Ergebnis wie bei der Skalierung von T von u um 2.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Lineare Abbildung: Funktion zwischen Vektorräumen]
#v(20pt)
#only("2-")[- Erhält Vektoraddition: $T(u + v) = T(u) + T(v)$]
#v(20pt)
#only("3-")[- Erhält Skalarmultiplikation: $T(c u) = c T(u)$]
#only("1")[
#voiceover("Zusammenfassend ist eine lineare Abbildung eine Funktion zwischen zwei Vektorräumen.")
]
#only("2")[
#voiceover("Sie erhält die Vektoraddition, was bedeutet, dass T von u plus v gleich T von u plus T von v ist.")
]
#only("3")[
#voiceover("Sie erhält auch die Skalarmultiplikation, sodass T von cu gleich c mal T von u ist. Diese Eigenschaften definieren eine lineare Abbildung und machen sie zu einem grundlegenden Konzept in der linearen Algebra.")
]
]