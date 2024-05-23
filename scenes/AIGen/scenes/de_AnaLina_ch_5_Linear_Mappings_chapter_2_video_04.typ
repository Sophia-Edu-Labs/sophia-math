#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Lassen Sie uns das Konzept des Kerns einer linearen Abbildung rekapitulieren.")
]
#text(size: 30pt, weight: "bold")[Kern einer linearen Abbildung]
#v(40pt)

#only("2-")[
- Gegeben eine lineare Abbildung $T: V -> W$ 🗺️
]

#only("2")[
#voiceover("Gegeben eine lineare Abbildung T vom Vektorraum V zum Vektorraum W,")
]

#v(20pt)

#only("3-")[
- Kern: Menge aller Vektoren $v$ in $V$, sodass $T(v) = 0$ 🎯
]

#only("3")[
#voiceover("der Kern von T ist die Menge aller Vektoren v in V, sodass T von v gleich dem Nullvektor ist.")
]

#v(20pt)

#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a 3D plot
fig = plt.figure(figsize=(6, 6))
ax = fig.add_subplot(111, projection='3d')

# Define the linear mapping T
def T(v):
    return np.array([v[0] + v[1], v[0] - v[1], 0])

# Create a grid of points in the domain
x = np.linspace(-2, 2, 20)
y = np.linspace(-2, 2, 20)
X, Y = np.meshgrid(x, y)

# Compute the image of the grid under T
Z1 = X + Y
Z2 = X - Y
Z3 = np.zeros_like(X)

# Plot the image of the grid
ax.plot_surface(Z1, Z2, Z3, alpha=0.3, color='blue')

# Plot the kernel (x-axis)
kernel_x = np.linspace(-2, 2, 100)
kernel_y = kernel_x
kernel_z = np.zeros_like(kernel_x)
ax.plot(kernel_x, kernel_y, kernel_z, color='red', linewidth=2, label='Kern')

# Set labels and title
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
ax.set_title('Lineare Abbildung und Kern')

# Add legend
ax.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]

#only("4")[
#voiceover("In dieser Visualisierung sehen wir eine lineare Abbildung T, die Vektoren von einem 2D-Raum V in einen 3D-Raum W abbildet. Die blaue Fläche stellt das Bild von T dar, während die rote Linie den Kern von T darstellt - die Menge der Vektoren in V, die auf den Nullvektor in W abgebildet werden.")
]

#v(20pt)

#only("5-")[
- Notation: $"ker"(T) = \{v ∈ V | T(v) = 0\}$ 📝
]

#only("5")[
#voiceover("Der Kern wird oft als 'ker' von T bezeichnet und in der Mengennotation als die Menge aller Vektoren v in V geschrieben, sodass T von v gleich null ist.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Punkte]
#v(40pt)

#only("1-")[
- Der Kern ist eine Teilmenge des Definitionsbereichs $V$ 🏠
]

#only("1")[
#voiceover("Denken Sie daran, der Kern ist immer eine Teilmenge des Definitionsbereichs V.")
]

#v(20pt)

#only("2-")[
- Vektoren im Kern werden auf den Nullvektor in $W$ abgebildet 🎯
]

#only("2")[
#voiceover("Alle Vektoren im Kern werden auf den Nullvektor im Zielbereich W abgebildet.")
]

#v(20pt)

#only("3-")[
- Der Kern gibt Aufschluss über die Abbildung 🔍
]

#only("3")[
#voiceover("Das Studium des Kerns kann wichtige Informationen über das Verhalten der linearen Abbildung liefern.")
]

#v(20pt)

#only("4-")[
- Die Dimension des Kerns steht in Beziehung zur Injektivität 📏
]

#only("4")[
#voiceover("Insbesondere steht die Dimension des Kerns in Beziehung zur Injektivität der Abbildung. Wenn der Kern nur den Nullvektor enthält, ist die Abbildung injektiv.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)

#only("1-")[
- Kern: $"ker"(T) = \{v ∈ V | T(v) = 0\}$ 🎯
]

#only("1")[
#voiceover("Zusammenfassend ist der Kern einer linearen Abbildung T von V nach W die Menge aller Vektoren v in V, sodass T von v gleich null ist.")
]

#v(20pt)

#only("2-")[
- Teilmenge des Definitionsbereichs, die auf den Nullvektor abgebildet wird 🏠
]

#only("2")[
#voiceover("Es ist eine Teilmenge des Definitionsbereichs, die auf den Nullvektor im Zielbereich abgebildet wird.")
]

#v(20pt)

#only("3-")[
- Liefert Einblicke in die Abbildung 🔍
]

#only("3")[
#voiceover("Das Studium des Kerns liefert wertvolle Einblicke in das Verhalten und die Eigenschaften der linearen Abbildung.")
]

#v(20pt)

#only("4-")[
- Wichtig für das Verständnis der Injektivität 📏
]

#only("4")[
#voiceover("Insbesondere ist der Kern eng mit der Injektivität der Abbildung verbunden, was ihn zu einem wichtigen Konzept in der linearen Algebra macht.")
]
]