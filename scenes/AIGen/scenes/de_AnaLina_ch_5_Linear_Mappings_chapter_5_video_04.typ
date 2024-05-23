#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung der Dimensionsformel]

#v(40pt)

#only("1-")[- Für eine lineare Abbildung $T: V \\to W$]
#v(20pt)
#only("2-")[- $dim(V) = dim(ker(T)) + dim(im(T))$]
#v(20pt)
#only("3-")[- Bezieht sich auf Dimensionen von Kern und Bild 🔗]

#only("1")[
#voiceover("Lassen Sie uns die Dimensionsformel für lineare Abbildungen zusammenfassen. Für eine lineare Abbildung T vom Vektorraum V zum Vektorraum W...")
]

#only("2")[
#voiceover("Die Dimensionsformel besagt, dass die Dimension von V gleich der Dimension des Kerns von T plus der Dimension des Bildes von T ist.")
]

#only("3")[
#voiceover("Diese Formel hilft uns, die Beziehung zwischen den Dimensionen des Kerns und des Bildes der linearen Abbildung zu verstehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visuelle Darstellung]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Create a 3D figure
fig = plt.figure(figsize=(6, 6))
ax = fig.add_subplot(111, projection='3d')

# Define the vector spaces
V = np.array([[0, 0, 0], [1, 0, 0], [0, 1, 0], [0, 0, 1]])
W = np.array([[0, 0, 0], [2, 0, 0], [0, 2, 0]])

# Plot the vector spaces
ax.scatter(V[:, 0], V[:, 1], V[:, 2], c='blue', label='V')
ax.scatter(W[:, 0], W[:, 1], W[:, 2], c='red', label='W')

# Plot the linear mapping
for v in V:
    w = np.array([2*v[0], 2*v[1], 0])
    ax.plot([v[0], w[0]], [v[1], w[1]], [v[2], w[2]], 'k-', linewidth=0.5)

# Add labels and legend
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
ax.legend()

# Adjust the view
ax.view_init(elev=20, azim=45)

plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Hier ist eine visuelle Darstellung. Die blauen Punkte repräsentieren den Vektorraum V, und die roten Punkte repräsentieren den Vektorraum W. Die schwarzen Linien zeigen die lineare Abbildung T von V nach W.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Bedeutung der Formel]

#v(40pt)

#only("1-")[- Bietet Einblick in die Abbildung 🔍]
#v(20pt)
#only("2-")[- Hilft bei der Berechnung unbekannter Dimensionen 🧮]
#v(20pt)
#only("3-")[- Nützlich in verschiedenen Anwendungen 🌍]

#only("1")[
#voiceover("Die Dimensionsformel bietet wertvolle Einblicke in das Verhalten der linearen Abbildung.")
]

#only("2")[
#voiceover("Sie ermöglicht es uns, unbekannte Dimensionen zu berechnen, wenn wir die anderen kennen. Zum Beispiel, wenn wir die Dimensionen von V und dem Kern kennen, können wir die Dimension des Bildes finden.")
]

#only("3")[
#voiceover("Diese Formel findet in verschiedenen mathematischen Anwendungen Verwendung und hilft uns, die Eigenschaften linearer Abbildungen besser zu verstehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- Dimensionsformel: $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$ 📜]
#v(20pt)
#only("2-")[- Bezieht sich auf Dimensionen von Kern und Bild 🔗]
#v(20pt)
#only("3-")[- Bietet Einblicke und hilft bei Berechnungen 💡]

#only("1")[
#voiceover("Zusammenfassend besagt die Dimensionsformel für eine lineare Abbildung T von V nach W, dass die Dimension von V gleich der Dimension des Kerns von T plus der Dimension des Bildes von T ist.")
]

#only("2")[
#voiceover("Diese Formel stellt eine Beziehung zwischen den Dimensionen des Kerns und des Bildes der linearen Abbildung her.")
]

#only("3")[
#voiceover("Sie bietet wertvolle Einblicke in das Verhalten der Abbildung und hilft bei der Berechnung unbekannter Dimensionen, was sie zu einem nützlichen Werkzeug in verschiedenen mathematischen Anwendungen macht.")
]
]