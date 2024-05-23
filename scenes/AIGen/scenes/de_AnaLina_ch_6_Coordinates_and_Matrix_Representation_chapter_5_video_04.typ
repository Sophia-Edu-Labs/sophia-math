#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Lassen Sie uns rekapitulieren, wie man die Matrixdarstellung einer linearen Abbildung bezüglich einer neuen Basis findet.")
]
#text(size: 30pt, weight: "bold")[Matrixdarstellung mit neuer Basis]
// Der Titel "Matrixdarstellung mit neuer Basis" wird auf dieser Folie angezeigt
#v(40pt)
#only("2")[
#voiceover("Angenommen, wir haben eine lineare Abbildung $T$ und möchten ihre Matrixdarstellung bezüglich einer neuen Basis $B$ finden.")
]
#only("2-")[
- Lineare Abbildung: $T$
- Neue Basis: $B$
]
// Die lineare Abbildung T und die neue Basis B werden ab Folie 2 angezeigt
#v(20pt)
#only("3")[
#voiceover("Dazu müssen wir die ursprüngliche Matrixdarstellung von $T$, nennen wir sie $A$, mit der Basiswechselmatrix multiplizieren, die wir als $P$ bezeichnen.")
]
#only("3-")[
- Ursprüngliche Matrixdarstellung: $A$
- Basiswechselmatrix: $P$
]
// Die ursprüngliche Matrix A und die Basiswechselmatrix P werden ab Folie 3 angezeigt
#v(20pt)
#only("4")[
#voiceover("Die Basiswechselmatrix $P$ ist die Matrix, die Koordinaten von der Standardbasis in die neue Basis $B$ transformiert.")
]
#only("4-")[
$P$: Standardbasis $→$ Neue Basis $B$
]
// Die Rolle der Basiswechselmatrix P wird ab Folie 4 angezeigt
#v(20pt)
#only("5")[
#voiceover("Die Matrixdarstellung von $T$ bezüglich der neuen Basis $B$ ergibt sich also aus dem Produkt $P A P^(-1)$.")
]
#only("5-")[
$[T]_B = P A P^(-1)$
]
// Die Formel für die Matrixdarstellung bezüglich der neuen Basis wird ab Folie 5 angezeigt
]

#slide()[
#only("1")[
#voiceover("Lassen Sie uns diesen Prozess visualisieren.")
]
#text(size: 30pt, weight: "bold")[Visualisierung]
// Der Titel "Visualisierung" wird auf dieser Folie angezeigt
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Create a 3D plot
fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Define the standard basis vectors
e1 = np.array([1, 0, 0])
e2 = np.array([0, 1, 0])
e3 = np.array([0, 0, 1])

# Define the new basis vectors
v1 = np.array([1, 1, 0])
v2 = np.array([-1, 1, 0])
v3 = np.array([0, 0, 1])

# Plot the standard basis vectors
ax.quiver(0, 0, 0, e1[0], e1[1], e1[2], color='red', arrow_length_ratio=0.1)
ax.quiver(0, 0, 0, e2[0], e2[1], e2[2], color='green', arrow_length_ratio=0.1)
ax.quiver(0, 0, 0, e3[0], e3[1], e3[2], color='blue', arrow_length_ratio=0.1)

# Plot the new basis vectors
ax.quiver(0, 0, 0, v1[0], v1[1], v1[2], color='purple', arrow_length_ratio=0.1)
ax.quiver(0, 0, 0, v2[0], v2[1], v2[2], color='orange', arrow_length_ratio=0.1)
ax.quiver(0, 0, 0, v3[0], v3[1], v3[2], color='cyan', arrow_length_ratio=0.1)

# Set labels and title
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
ax.set_title('Basiswechsel')

# Add a legend
red_patch = plt.Line2D([0], [0], color='red', label='Standardbasis')
purple_patch = plt.Line2D([0], [0], color='purple', label='Neue Basis')
ax.legend(handles=[red_patch, purple_patch])

plt.tight_layout()
plt.show()
```, width: 360pt),
caption: [],
)
]
]
]
// Die Abbildung zeigt ein 3D-Diagramm mit den Standardbasisvektoren (rot, grün, blau) und den neuen Basisvektoren (lila, orange, cyan). Eine Legende wird hinzugefügt, um zwischen der Standard- und der neuen Basis zu unterscheiden. Diese Abbildung wird ab Folie 2 angezeigt.
#only("2")[
#voiceover("Hier repräsentieren die roten, grünen und blauen Vektoren die Standardbasis, während die lila, orange und cyan Vektoren die neue Basis $B$ darstellen.")
]
#only("3")[
#voiceover("Die Basiswechselmatrix $P$ transformiert Koordinaten von der Standardbasis in die neue Basis.")
]
#only("4")[
#voiceover("Und die ursprüngliche Matrix $A$ repräsentiert die lineare Abbildung $T$ bezüglich der Standardbasis.")
]
#only("5")[
#voiceover("Durch Multiplikation von $P$, $A$ und $P$ invers erhalten wir die Matrixdarstellung von $T$ bezüglich der neuen Basis $B$.")
]
]

#slide()[
#only("1")[
#voiceover("Zusammenfassend:")
]
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("2")[
#voiceover("Um die Matrixdarstellung einer linearen Abbildung bezüglich einer neuen Basis zu finden:")
]
#only("2-")[
1. 📜 Ursprüngliche Matrixdarstellung: $A$
]
#only("3-")[
2. 🔄 Basiswechselmatrix: $P$
]
#only("4-")[
3. 🧮 Multiplizieren: $[T]_B = P A P^(-1)$
]
#only("2")[
#voiceover("Wir benötigen die ursprüngliche Matrixdarstellung $A$ der linearen Abbildung,")
]
#only("3")[
#voiceover("die Basiswechselmatrix $P$, die Koordinaten von der Standardbasis in die neue Basis transformiert,")
]
#only("4")[
#voiceover("und dann multiplizieren wir $P$, $A$ und $P$ invers, um die Matrixdarstellung bezüglich der neuen Basis zu erhalten.")
]
]