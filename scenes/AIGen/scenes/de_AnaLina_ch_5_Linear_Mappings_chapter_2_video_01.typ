#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Kern einer linearen Abbildung]
#v(40pt)
#only("1-")[- Auch bekannt als Nullraum 🌌]
#v(20pt)
#only("2-")[- Für eine lineare Abbildung $T: V -> W$]
#v(20pt)
#only("3-")[- Menge aller Vektoren $v$ in $V$, sodass $T(v) = 0$]
#only("1")[
#voiceover("Der Kern, auch bekannt als Nullraum, ist ein wichtiges Konzept in der linearen Algebra im Zusammenhang mit linearen Abbildungen.")
]
#only("2")[
#voiceover("Betrachten Sie eine lineare Abbildung T von einem Vektorraum V zu einem Vektorraum W.")
]
#only("3")[
#voiceover("Der Kern von T ist die Menge aller Vektoren v in V, sodass T von v gleich dem Nullvektor ist.")
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

# Definiere die lineare Abbildung T
def T(v):
    return np.array([v[0] + v[1], v[0] - v[1]])

# Erstelle ein Gitter von Punkten
x = np.linspace(-2, 2, 20)
y = np.linspace(-2, 2, 20)
X, Y = np.meshgrid(x, y)

# Berechne T(v) für jeden Punkt
U = X + Y
V = X - Y

# Erstelle das Diagramm
plt.figure(figsize=(6, 6))
plt.quiver(X, Y, U, V, angles='xy', scale_units='xy', scale=1, color='b', label='T(v)')
plt.quiver(0, 0, 1, -1, angles='xy', scale_units='xy', scale=1, color='r', label='Kern')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Kern der linearen Abbildung')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung des Kerns. Die blauen Pfeile repräsentieren die lineare Abbildung T, die auf verschiedene Vektoren angewendet wird. Der rote Pfeil repräsentiert einen Vektor im Kern, der unter T auf den Nullvektor abgebildet wird.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften 🧬]
#v(40pt)
#only("1-")[- Der Kern ist ein Unterraum von $V$]
#v(20pt)
#only("2-")[- Wenn $T(v) = 0$, dann ist $v$ im Kern]
#v(20pt)
#only("3-")[- Dimension von $V$ = $"dim"("ker"(T)) + "dim"("im"(T))$]
#only("1")[
#voiceover("Der Kern hat einige wichtige Eigenschaften. Erstens ist er ein Unterraum des Vektorraums V.")
]
#only("2")[
#voiceover("Wenn ein Vektor v unter T auf den Nullvektor abgebildet wird, dann ist v im Kern.")
]
#only("3")[
#voiceover("Die Dimension von V entspricht der Summe der Dimensionen des Kerns von T und des Bildes von T. Dies ist als Satz von Rang und Kern bekannt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎬]
#v(40pt)
#only("1-")[- Kern (Nullraum) einer linearen Abbildung $T: V -> W$]
#v(20pt)
#only("2-")[- Menge aller Vektoren $v$ in $V$, sodass $T(v) = 0$]
#v(20pt)
#only("3-")[- Der Kern ist ein Unterraum von $V$]
#v(20pt)
#only("4-")[- $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$]
#only("1")[
#voiceover("Zusammenfassend ist der Kern oder Nullraum einer linearen Abbildung T von V nach W...")
]
#only("2")[
#voiceover("...die Menge aller Vektoren v in V, sodass T von v gleich dem Nullvektor ist.")
]
#only("3")[
#voiceover("Der Kern ist ein Unterraum des Vektorraums V.")
]
#only("4")[
#voiceover("Und die Dimension von V entspricht der Summe der Dimensionen des Kerns von T und des Bildes von T.")
]
]