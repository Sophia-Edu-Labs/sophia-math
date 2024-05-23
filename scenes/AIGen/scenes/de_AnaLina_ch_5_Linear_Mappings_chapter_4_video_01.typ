#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Dimensionsformel]
#v(40pt)
#only("1-")[Für eine lineare Abbildung $T: V -> W$:]
#v(20pt)
#only("2-")[$"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$]
#only("1")[
#voiceover("Die Dimensionsformel ist ein grundlegendes Ergebnis der linearen Algebra, das die Dimensionen des Definitionsbereichs, des Kerns und des Bildes einer linearen Abbildung miteinander in Beziehung setzt.")
]
#only("2")[
#voiceover("Genauer gesagt besagt die Dimensionsformel, dass für eine lineare Abbildung T von einem Vektorraum V in einen Vektorraum W die Dimension von V gleich der Dimension des Kerns von T plus der Dimension des Bildes von T ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Komponenten]
#v(40pt)
#only("1-")[- $V$: Definitionsbereich 🏠]
#v(20pt)
#only("2-")[- $ker(T)$: Kern (Nullraum) 🎯]
#v(20pt)
#only("3-")[- $im(T)$: Bild (Wertebereich) 🌠]
#only("1")[
#voiceover("Lassen Sie uns die Komponenten der Formel aufschlüsseln. V repräsentiert den Definitionsbereich, also den Vektorraum, in dem die Abbildung beginnt.")
]
#only("2")[
#voiceover("Der Kern von T, auch Nullraum genannt, ist die Menge aller Vektoren in V, die auf den Nullvektor in W abgebildet werden.")
]
#only("3")[
#voiceover("Das Bild von T, auch Wertebereich genannt, ist die Menge aller Vektoren in W, die Ausgaben der Abbildung sind.")
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

# Create a 3D plot
fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Define the points for the domain, kernel, and image
domain_points = np.array([[0, 0, 0], [1, 0, 0], [0, 1, 0], [0, 0, 1]])
kernel_points = np.array([[0, 0, 0], [1, 0, 0]])
image_points = np.array([[0, 0, 0], [0, 1, 0], [0, 0, 1]])

# Plot the points
ax.scatter(domain_points[:, 0], domain_points[:, 1], domain_points[:, 2], c='blue', marker='o', label='Domain (V)')
ax.scatter(kernel_points[:, 0], kernel_points[:, 1], kernel_points[:, 2], c='red', marker='x', label='Kernel (ker(T))')
ax.scatter(image_points[:, 0], image_points[:, 1], image_points[:, 2], c='green', marker='^', label='Image (im(T))')

# Set labels and title
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
ax.set_title('Visualization of Domain, Kernel, and Image')

# Add legend
ax.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung, die hilft, die Beziehung zwischen dem Definitionsbereich, dem Kern und dem Bild zu verstehen. Die blauen Punkte repräsentieren den Definitionsbereich V, die roten Kreuze repräsentieren den Kern, und die grünen Dreiecke repräsentieren das Bild.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Intuition]
#v(40pt)
#only("1-")[- $"dim"(V)$: Gesamtdimension 📏]
#v(20pt)
#only("2-")[- $"dim"("ker"(T))$: Verlorene Dimension 📉]
#v(20pt)
#only("3-")[- $"dim"("im"(T))$: Erhaltene Dimension 📈]
#only("1")[
#voiceover("Intuitiv repräsentiert die Dimension von V die Gesamtdimension des Definitionsbereichs.")
]
#only("2")[
#voiceover("Die Dimension des Kerns repräsentiert die Dimension, die durch die Abbildung 'verloren' oder 'zusammengefallen' ist.")
]
#only("3")[
#voiceover("Die Dimension des Bildes repräsentiert die Dimension, die durch die Abbildung 'erhalten' oder 'übertragen' wurde.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[$"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$ 📜]
#v(20pt)
#only("2-")[Definitionsbereichsdimension = Verlorene Dimension + Erhaltene Dimension 🧮]
#only("1")[
#voiceover("Zusammenfassend besagt die Dimensionsformel, dass die Dimension des Definitionsbereichs V gleich der Dimension des Kerns von T plus der Dimension des Bildes von T ist.")
]
#only("2")[
#voiceover("Mit anderen Worten, die Gesamtdimension des Definitionsbereichs kann in die im Kern verlorene Dimension und die im Bild erhaltene Dimension aufgeteilt werden.")
]
]