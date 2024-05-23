#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🎉]
#v(40pt)
#only("1-")[Das ist die richtige Antwort! Lassen Sie uns die Lösung Schritt für Schritt durchgehen.]
#only("1")[
#voiceover("Großartige Arbeit! Das ist die richtige Antwort. Lassen Sie uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie man den Kern der gegebenen linearen Abbildung findet.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegebene Informationen]
#v(40pt)
#only("1-")[- Lineare Abbildung $T: R^2 \\to R^2$]
#v(20pt)
#only("2-")[- $T(mat(x; y)) = mat(x + y; x - y)$]
#only("1")[
#voiceover("Wir haben eine lineare Abbildung T von R² nach R² gegeben.")
]
#only("2")[
#voiceover("Die Abbildung T ist definiert durch T des Vektors x, y gleich dem Vektor x plus y, x minus y.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Definition des Kerns]
#v(40pt)
#only("1-")[- Kern von $T$: Menge aller Vektoren $v$, sodass $T(v) = 0$]
#v(20pt)
#only("2-")[- Mit anderen Worten, $"ker"(T) = \{v | T(v) = 0\}$]
#only("1")[
#voiceover("Erinnern Sie sich daran, dass der Kern einer linearen Abbildung T die Menge aller Vektoren v ist, sodass T von v gleich dem Nullvektor ist.")
]
#only("2")[
#voiceover("In Mengenschreibweise wird der Kern von T als die Menge aller Vektoren v geschrieben, sodass T von v gleich Null ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Den Kern finden]
#v(40pt)
#only("1-")[- Sei $v = mat(x; y)$]
#v(20pt)
#only("2-")[- $T(v) = 0$ bedeutet $mat(x + y; x - y) = mat(0; 0)$]
#v(20pt)
#only("3-")[- Lösen des Gleichungssystems:]
#v(10pt)
#only("4-")[  - $x + y = 0$]
#v(10pt)
#only("5-")[  - $x - y = 0$]
#only("1")[
#voiceover("Betrachten wir einen allgemeinen Vektor v in R², den wir als den Vektor x, y schreiben können.")
]
#only("2")[
#voiceover("Damit v im Kern liegt, muss T von v gleich dem Nullvektor sein. Das bedeutet, dass x plus y, x minus y gleich dem Vektor Null, Null sein muss.")
]
#only("3")[
#voiceover("Wir können dies als ein Gleichungssystem lösen.")
]
#only("4")[
#voiceover("Aus der ersten Komponente erhalten wir die Gleichung x plus y gleich Null.")
]
#only("5")[
#voiceover("Aus der zweiten Komponente erhalten wir die Gleichung x minus y gleich Null.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[- Addieren der Gleichungen: $2x = 0$, also $x = 0$]
#v(20pt)
#only("2-")[- Einsetzen von $x = 0$ in eine der Gleichungen: $y = 0$]
#v(20pt)
#only("3-")[- Daher, $"ker"(T) = \{mat(0; 0)\}$]
#only("1")[
#voiceover("Wenn wir die beiden Gleichungen addieren, erhalten wir zwei mal x gleich Null, was bedeutet, dass x Null sein muss.")
]
#only("2")[
#voiceover("Setzen wir x gleich Null in eine der ursprünglichen Gleichungen ein, finden wir, dass y ebenfalls Null sein muss.")
]
#only("3")[
#voiceover("Daher besteht der Kern von T nur aus dem Nullvektor. In Mengenschreibweise schreiben wir dies als den Kern von T gleich der Menge, die den Vektor Null, Null enthält.")
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

# Create a grid of points
x = np.linspace(-2, 2, 20)
y = np.linspace(-2, 2, 20)
X, Y = np.meshgrid(x, y)

# Compute T(x, y)
U = X + Y
V = X - Y

# Create the plot
plt.figure(figsize=(6, 6))
plt.quiver(X, Y, U, V, angles='xy', scale_units='xy', scale=1, color='b')
plt.scatter(0, 0, color='r', s=100, label='Kern')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Visualisierung der linearen Abbildung T')
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
#voiceover("Hier ist eine Visualisierung der linearen Abbildung T. Die blauen Pfeile repräsentieren die Abbildung verschiedener Punkte in R². Beachten Sie, dass alle Pfeile vom Ursprung wegzeigen, außer dem Ursprung selbst, der auf den Nullvektor abgebildet wird. Dies ist der Kern von T, hervorgehoben in Rot.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Kern von $T$: Menge der auf Null abgebildeten Vektoren 🎯]
#v(20pt)
#only("2-")[- Für $T(mat(x; y)) = mat(x + y; x - y)$, $"ker"(T) = \{mat(0; 0)\}$ ✅]
#only("1")[
#voiceover("Zusammenfassend ist der Kern einer linearen Abbildung T die Menge aller Vektoren, die unter T auf den Nullvektor abgebildet werden.")
]
#only("2")[
#voiceover("Für die gegebene Abbildung T von x, y gleich x plus y, x minus y haben wir festgestellt, dass der Kern von T nur aus dem Nullvektor besteht. Großartige Arbeit bei der Lösung dieses Problems!")
]
]