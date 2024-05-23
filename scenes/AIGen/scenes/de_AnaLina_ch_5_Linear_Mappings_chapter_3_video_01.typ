#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Lineare Abbildung]
#v(40pt)
#only("1-")[- Funktion zwischen Vektorräumen]
#v(20pt)
#only("2-")[- Erhält Vektoraddition und Skalarenmultiplikation]
#only("1")[
#voiceover("Eine lineare Abbildung, oft als T bezeichnet, ist eine Funktion zwischen zwei Vektorräumen, V und W.")
]
#only("2")[
#voiceover("Sie hat die besondere Eigenschaft, dass sie Vektoraddition und Skalarenmultiplikation erhält.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Bild einer linearen Abbildung]
#v(40pt)
#only("1-")[- Menge aller Vektoren $w$ in $W$, sodass $w = T(v)$ für ein $v$ in $V$]
#v(20pt)
#only("2-")[- Auch bekannt als der Wertebereich von $T$]
#v(20pt)
#only("3-")[- Bezeichnet als $"im"(T)$ oder $T(V)$]
#only("1")[
#voiceover("Das Bild einer linearen Abbildung T von V nach W ist die Menge aller Vektoren w in W, sodass w gleich T von v für einen Vektor v in V ist.")
]
#only("2")[
#voiceover("Mit anderen Worten, es ist die Menge aller Vektoren in W, die T von V abbildet. Es ist auch bekannt als der Wertebereich von T.")
]
#only("3")[
#voiceover("Wir bezeichnen das Bild von T als 'im' von T oder einfach T von V.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[- Sei $T: ℝ^2 -> ℝ^2$ definiert durch $T(mat(x;y)) = mat(x+y;x-y)$]
#v(20pt)
#only("2-")[- $T(mat(1;2)) = mat(3;-1)$, $T(mat(0;1)) = mat(1;-1)$, usw.]
#v(20pt)
#only("3-")[- $"im"(T) = \{mat(a;b) | a, b ∈ ℝ, a + b = 0\}$]
#only("1")[
#voiceover("Betrachten wir ein Beispiel. Angenommen, T ist eine lineare Abbildung von R 2 nach R 2, definiert durch T des Vektors x, y gleich dem Vektor x plus y, x minus y.")
]
#only("2")[
#voiceover("Zum Beispiel, T bildet den Vektor 1, 2 auf den Vektor 3, minus 1 ab. Es bildet 0, 1 auf 1, minus 1 ab, und so weiter.")
]
#only("3")[
#voiceover("Das Bild von T ist in diesem Fall die Menge aller Vektoren a, b in R 2, sodass a plus b gleich 0 ist.")
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

# Define the linear mapping T
def T(v):
    x, y = v
    return np.array([x + y, x - y])

# Create a grid of points in R^2
x = np.linspace(-5, 5, 20)
y = np.linspace(-5, 5, 20)
X, Y = np.meshgrid(x, y)

# Apply T to each point
Z1, Z2 = T([X, Y])

# Create the plot
plt.figure(figsize=(8, 8))
plt.quiver(X, Y, Z1, Z2, angles='xy', scale_units='xy', scale=1, color='b')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.title('Bild der linearen Abbildung T')
plt.xlabel('x')
plt.ylabel('y')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung der linearen Abbildung T. Jeder Vektor in R^2, dargestellt durch einen Punkt im Raster, wird von T auf einen anderen Vektor in R^2 abgebildet. Die blauen Pfeile zeigen, wohin jeder Vektor abgebildet wird.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Bild der linearen Abbildung $T: V -> W$ 🖼️]
#v(20pt)
#only("2-")[- Menge aller Vektoren $w$ in $W$, sodass $w = T(v)$ für ein $v$ in $V$ ✅]
#v(20pt)
#only("3-")[- Auch bekannt als Wertebereich von $T$ 📏]
#only("1")[
#voiceover("Zusammenfassend ist das Bild einer linearen Abbildung T von V nach W")
]
#only("2")[
#voiceover("die Menge aller Vektoren w in W, sodass w gleich T von v für einen Vektor v in V ist.")
]
#only("3")[
#voiceover("Es ist auch bekannt als der Wertebereich von T.")
]
]