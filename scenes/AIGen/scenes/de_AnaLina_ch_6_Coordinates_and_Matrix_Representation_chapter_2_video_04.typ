#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Lass uns rekapitulieren: Eine lineare Abbildung kann durch eine Matrix dargestellt werden, die Koordinaten von einer Basis in eine andere transformiert.")
]
#text(size: 30pt, weight: "bold")[Rekapitulation der linearen Abbildung]
#v(40pt)
#only("2-")[
- Lineare Abbildung: $T: V \\to W$ 
]
#only("2")[
#voiceover("Eine lineare Abbildung T ist eine Funktion von einem Vektorraum V zu einem anderen Vektorraum W.")
]
#v(20pt)
#only("3-")[
- Matrixdarstellung: $[T]_B^C$
]
#only("3")[
#voiceover("Diese lineare Abbildung kann durch eine Matrix dargestellt werden, die durch T in eckigen Klammern mit dem Index B und dem Exponenten C bezeichnet wird.")
]
#v(20pt)
#only("4-")[
- Basiswechsel: $B$ (Definitionsbereich), $C$ (Zielbereich)
]
#only("4")[
#voiceover("Der Index B repräsentiert die Basis für den Definitionsbereich V, und der Exponent C repräsentiert die Basis für den Zielbereich W.")
]
#v(20pt)
#only("5-")[
- Koordinatentransformation: $[v]_B \\to [T(v)]_C$
]
#only("5")[
#voiceover("Die Matrix T transformiert die Koordinaten eines Vektors v bezüglich der Basis B in die Koordinaten des transformierten Vektors T von v bezüglich der Basis C.")
]
#v(40pt)
#only("6-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Create a 3D plot
fig = plt.figure(figsize=(6, 6))
ax = fig.add_subplot(111, projection='3d')

# Define the bases B and C
B = np.array([[1, 0, 0], [0, 1, 0], [0, 0, 1]])  # Standard basis
C = np.array([[1, 1, 0], [1, 0, 1], [0, 1, 1]])  # Different basis

# Define a vector v
v = np.array([2, 3, 1])

# Define the linear mapping T (example matrix)
T = np.array([[1, 2, 1], [0, 1, 1], [1, 1, 0]])

# Transform the vector v
Tv = T.dot(v)

# Plot the bases B and C
for i in range(3):
    ax.quiver(0, 0, 0, B[i, 0], B[i, 1], B[i, 2], color='b', arrow_length_ratio=0.1)
    ax.quiver(0, 0, 0, C[i, 0], C[i, 1], C[i, 2], color='r', arrow_length_ratio=0.1)

# Plot the vector v and its transformed vector Tv
ax.quiver(0, 0, 0, v[0], v[1], v[2], color='g', arrow_length_ratio=0.1)
ax.quiver(0, 0, 0, Tv[0], Tv[1], Tv[2], color='m', arrow_length_ratio=0.1)

# Set labels and title
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
ax.set_title('Linear Mapping')

# Add a legend
import matplotlib.patches as mpatches
blue_patch = mpatches.Patch(color='blue', label='Basis B')
red_patch = mpatches.Patch(color='red', label='Basis C')
green_patch = mpatches.Patch(color='green', label='Vector v')
magenta_patch = mpatches.Patch(color='magenta', label='Transformed vector Tv')
ax.legend(handles=[blue_patch, red_patch, green_patch, magenta_patch])

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("6")[
#voiceover("Dieses Diagramm veranschaulicht das Konzept. Die blauen Pfeile repräsentieren die Standardbasis B, die roten Pfeile repräsentieren eine andere Basis C. Der grüne Pfeil ist ein Vektor v, und der magentafarbene Pfeil ist der transformierte Vektor T von v unter der linearen Abbildung, die durch die Matrix T dargestellt wird.")
]
]