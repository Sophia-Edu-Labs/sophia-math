#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Problem]
#v(40pt)
#only("1-")[Gegeben $T: ℝ^4 -> ℝ^3$ mit $"dim"("ker"(T)) = 2$, finde $"dim"("im"(T))$ und erkläre die Beziehung.]
#only("1")[
#voiceover("Großartig! Das ist die richtige Lösung. Lassen Sie uns das Schritt für Schritt durchgehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Vorgehensweise]
#v(40pt)
#only("1-")[- Verwenden Sie die Dimensionsformel 📏]
#only("1")[
#voiceover("Um dieses Problem zu lösen, verwenden wir die Dimensionsformel für lineare Abbildungen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[$ "dim"(ℝ^4) = 4 $]
#only("1")[
#voiceover("Erstens, erinnern wir uns daran, dass die Dimension von ℝ^4 gleich 4 ist.")
]
#v(20pt)
#only("2-")[#text(fill: aqua)[Dimensionsformel:] $ "dim"(V) = "dim"("ker"(T)) + "dim"("im"(T)) $]
#only("2")[
#voiceover("Die Dimensionsformel besagt, dass die Dimension des Definitionsbereichs V gleich der Summe der Dimensionen des Kerns und des Bildes von T ist.")
]
#v(20pt)
#only("3-")[$ 4 = 2 + "dim"("im"(T)) $]
#only("3")[
#voiceover("Unter Einsetzen der gegebenen Werte haben wir 4 gleich 2 plus die Dimension des Bildes von T.")
]
#v(20pt)
#only("4-")[$ "dim"("im"(T)) = 4 - 2 = 2 $]
#only("4")[
#voiceover("Durch Lösen für die Dimension des Bildes erhalten wir 2.")
]
#v(20pt)
#only("5-")[🎉 $ "dim"("im"(T)) = 2 $]
#only("5")[
#voiceover("Daher beträgt die Dimension des Bildes von T 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beziehung]
#v(40pt)
#only("1-")[Die Summe der Dimensionen des Kerns und des Bildes entspricht der Dimension des Definitionsbereichs. 🧮]
#only("1")[
#voiceover("Die durch die Dimensionsformel gezeigte Beziehung ist, dass die Summe der Dimensionen des Kerns und des Bildes einer linearen Abbildung der Dimension ihres Definitionsbereichs entspricht.")
]
#v(20pt)
#only("2-")[$ "dim"(V) = "dim"("ker"(T)) + "dim"("im"(T)) $]
#only("2")[
#voiceover("In diesem Fall entspricht die Dimension von ℝ^4, die 4 ist, der Summe der Dimension des Kerns, die 2 ist, und der Dimension des Bildes, die wir ebenfalls als 2 gefunden haben.")
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
fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Define the linear mapping T
def T(x):
    return np.array([x[0] + x[1], x[2], 0])

# Create a grid of points in R^4
x = np.linspace(-1, 1, 10)
y = np.linspace(-1, 1, 10)
z = np.linspace(-1, 1, 10)
w = np.linspace(-1, 1, 10)
X, Y, Z, W = np.meshgrid(x, y, z, w)

# Apply the linear mapping to the grid points
U, V, _ = T([X, Y, Z, W])

# Plot the image of the grid points
ax.scatter(U, V, np.zeros_like(U), c='blue', alpha=0.5, label='Image')

# Plot the kernel
kernel = np.array([[1, -1, 0, 0], [0, 0, 1, 0]])
ax.plot(*kernel, np.zeros(2), c='red', label='Kernel')

# Add labels and legend
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
ax.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung der linearen Abbildung T von ℝ^4 nach ℝ^3. Die blauen Punkte repräsentieren das Bild von T, das in einer 2-dimensionalen Untermenge von ℝ^3 liegt. Die rote Linie repräsentiert den 2-dimensionalen Kern von T in ℝ^4.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Dimensionsformel: $ "dim"(V) = "dim"("ker"(T)) + "dim"("im"(T)) $ 📏]
#v(20pt)
#only("2-")[- $ "dim"("im"(T)) = 2 $ 🎉]
#v(20pt)
#only("3-")[- Beziehung: Summe der Dimensionen von Kern und Bild entspricht der Dimension des Definitionsbereichs 🧮]
#only("1")[
#voiceover("Zusammenfassend haben wir die Dimensionsformel verwendet, um die Dimension des Bildes von T zu finden.")
]
#only("2")[
#voiceover("Wir haben festgestellt, dass die Dimension des Bildes 2 beträgt.")
]
#only("3")[
#voiceover("Die Dimensionsformel zeigt die Beziehung, dass die Summe der Dimensionen des Kerns und des Bildes einer linearen Abbildung der Dimension ihres Definitionsbereichs entspricht.")
]
]