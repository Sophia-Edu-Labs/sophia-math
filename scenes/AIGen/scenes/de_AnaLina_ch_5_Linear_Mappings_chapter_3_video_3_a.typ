#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung]
#v(40pt)
#only("1-")[Gegeben $T: RR^2 -> RR^2$ definiert durch $T(mat(x; y)) = mat(x + y; x - y)$, finde das Bild von $T$.]
// Die Übung wird ab Folie 1 gezeigt
#only("1")[
#voiceover("Großartige Arbeit! Das ist die richtige Lösung. Lassen Sie uns das Schritt für Schritt gemeinsam durchgehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Vorgehensweise]
#v(40pt)
#only("1-")[- Verstehen der Definition des Bildes 📚]
// Die Vorgehensweise, die Definition des Bildes zu verstehen, wird ab Folie 1 gezeigt
#only("2-")[- Analyse der gegebenen linearen Abbildung 🔍]
// Die Vorgehensweise, die gegebene lineare Abbildung zu analysieren, wird ab Folie 2 gezeigt
#only("3-")[- Bestimmen der Menge aller möglichen Ausgaben 🎯]
// Die Vorgehensweise, die Menge aller möglichen Ausgaben zu bestimmen, wird ab Folie 3 gezeigt
#only("1")[
#voiceover("Um das Bild zu finden, müssen wir zuerst seine Definition verstehen. Das Bild einer linearen Abbildung ist die Menge aller Vektoren, die als Ausgaben der Abbildung erhalten werden können.")
]
#only("2")[
#voiceover("Als nächstes analysieren wir die gegebene lineare Abbildung T. Sie nimmt einen Vektor (x; y) und bildet ihn auf (x plus y; x minus y) ab.")
]
#only("3")[
#voiceover("Wir müssen also die Menge aller möglichen Vektoren bestimmen, die in dieser Form erhalten werden können.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[Sei $mat(a; b)$ ein beliebiger Vektor in $RR^2$.]
#v(20pt)
#only("2-")[Damit $mat(a; b)$ im Bild von $T$ liegt, muss es ein $mat(x; y)$ geben, sodass $T(mat(x; y)) = mat(a; b)$.]
#v(20pt)
#only("3-")[Das bedeutet: $mat(x + y; x - y) = mat(a; b)$]
#v(20pt)
#only("4-")[Komponenten gleichsetzen: $x + y = a$ und $x - y = b$]
#v(20pt)
#only("5-")[Addieren der Gleichungen: $(x + y) + (x - y) = a + b$, was zu $2x = a + b$ vereinfacht wird]
#v(20pt)
#only("6-")[Daher ist das Bild von $T$ die Menge aller Vektoren $mat(a; b)$, sodass $a + b$ gerade ist.]
#only("1")[
#voiceover("Beginnen wir mit einem beliebigen Vektor (a; b) in R-2.")
]
#only("2")[
#voiceover("Damit dieser Vektor im Bild von T liegt, muss es einen Vektor (x; y) geben, sodass T von (x; y) gleich (a; b) ist.")
]
#only("3")[
#voiceover("Unter Verwendung der Definition von T bedeutet dies, dass (x plus y; x minus y) gleich (a; b) sein muss.")
]
#only("4")[
#voiceover("Durch Gleichsetzen der entsprechenden Komponenten erhalten wir zwei Gleichungen: x plus y gleich a und x minus y gleich b.")
]
#only("5")[
#voiceover("Wenn wir diese beiden Gleichungen addieren, erhalten wir 2x gleich a plus b.")
]
#only("6")[
#voiceover("Das bedeutet, dass a plus b eine gerade Zahl sein muss, damit (a; b) im Bild von T liegt. Daher ist das Bild von T die Menge aller Vektoren (a; b), sodass a plus b gerade ist.")
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

# Create a grid of points
x = np.linspace(-5, 5, 20)
y = np.linspace(-5, 5, 20)
X, Y = np.meshgrid(x, y)

# Compute the sum of components
Z = X + Y

# Create the plot
plt.figure(figsize=(6, 6))
plt.contourf(X, Y, Z, levels=[-4, -2, 0, 2, 4], cmap='coolwarm', alpha=0.5)
plt.colorbar(ticks=[-4, -2, 0, 2, 4], label='a + b')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.title('Bild von T')
plt.xlabel('a')
plt.ylabel('b')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung des Bildes. Die farbigen Bänder repräsentieren die Bereiche, in denen a plus b gerade ist. Jeder Vektor (a; b), der auf diesen Bändern liegt, befindet sich im Bild von T.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Bild: Menge aller möglichen Ausgaben einer Abbildung 🖼️]
#v(20pt)
#only("2-")[- Für $T(mat(x; y)) = mat(x + y; x - y)$, ist das Bild alle $mat(a; b)$, bei denen $a + b$ gerade ist ➗2️⃣]
#v(20pt)
#only("3-")[- Visualisiert als abwechselnde Bänder in $RR^2$ 🌈]
#only("1")[
#voiceover("Zusammenfassend ist das Bild einer linearen Abbildung die Menge aller möglichen Ausgabevektoren.")
]
#only("2")[
#voiceover("Für die gegebene Abbildung T besteht das Bild aus allen Vektoren (a; b), bei denen a plus b eine gerade Zahl ist.")
]
#only("3")[
#voiceover("Visuell erscheint dies als abwechselnde Bänder in der Ebene.")
]
]