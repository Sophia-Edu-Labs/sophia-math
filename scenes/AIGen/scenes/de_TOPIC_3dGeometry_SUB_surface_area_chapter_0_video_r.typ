#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rückblick: Oberfläche von Würfeln 📦]
#v(40pt)
#only("1-")[- Stell dir vor, du verpackst ein Geschenk 🎁]
#only("2-")[- Wie viel Geschenkpapier brauchen wir? 🤔]
#only("3-")[- Die Oberfläche hilft uns, das zu berechnen! 📏]

#only("1")[
#voiceover("Lass uns das Konzept der Oberfläche für Würfel wiederholen. Stell dir vor, du verpackst ein Geschenk.")
]
#only("2")[
#voiceover("Wie würdest du bestimmen, wie viel Geschenkpapier du brauchst?")
]
#only("3")[
#voiceover("Hier kommt das Konzept der Oberfläche ins Spiel!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften eines Würfels 🧊]
#v(40pt)
#only("1-")[- 6 quadratische Flächen 🔲]
#only("2-")[- Alle Seiten gleich lang 📏]
#only("3-")[- Beispiel: Seitenlänge $s$ = 3 cm]

#only("1")[
#voiceover("Erinnern wir uns an die Eigenschaften eines Würfels. Ein Würfel hat 6 quadratische Flächen.")
]
#only("2")[
#voiceover("Alle Seiten eines Würfels sind gleich lang.")
]
#only("3")[
#voiceover("Zum Beispiel betrachten wir einen Würfel mit einer Seitenlänge von 3 Zentimetern.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Berechnung der Oberfläche]
#v(40pt)
#only("1-")[1. Fläche einer Seite: $s^2$]
#only("2-")[2. Multipliziere mit 6 Flächen]
#only("3-")[3. Formel: $"SA" = 6s^2$]

#only("1")[
#voiceover("Um die Oberfläche zu berechnen, finden wir zuerst die Fläche einer Seite. Die Fläche eines Quadrats ist die Seitenlänge zum Quadrat.")
]
#only("2")[
#voiceover("Da ein Würfel 6 identische Flächen hat, multiplizieren wir diese Fläche mit 6.")
]
#only("3")[
#voiceover("Das ergibt die Formel für die Oberfläche eines Würfels: S A gleich 6 mal s zum Quadrat, wobei s die Seitenlänge ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispielrechnung]
#v(40pt)
#only("1-")[Seitenlänge des Würfels: $s = 3"cm"$]
#v(10pt)
#only("2-")[Oberfläche: $"SA" = 6s^2$]
#v(10pt)
#only("3-")[$"SA" = 6 dot (3"cm")^2$]
#v(5pt)
#only("4-")[$"SA" = 6 dot 9"cm"^2 = 54"cm"^2$]

#only("1")[
#voiceover("Nehmen wir unseren Beispielwürfel mit einer Seitenlänge von 3 Zentimetern.")
]
#only("2")[
#voiceover("Wir wenden die Formel an: Oberfläche gleich 6 mal s zum Quadrat.")
]
#only("3")[
#voiceover("Setzen wir 3 Zentimeter für s ein, erhalten wir 6 mal 3 Zentimeter zum Quadrat.")
]
#only("4")[
#voiceover("Das ergibt 6 mal 9 Quadratzentimeter, was uns eine Gesamtoberfläche von 54 Quadratzentimetern gibt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 👁️]
#v(20pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D, art3d
import numpy as np

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cube vertices
vertices = np.array([[0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0],
                     [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]])

# Cube faces
faces = [[vertices[j] for j in [0, 1, 2, 3]],
         [vertices[j] for j in [4, 5, 6, 7]], 
         [vertices[j] for j in [0, 3, 7, 4]],
         [vertices[j] for j in [1, 2, 6, 5]],
         [vertices[j] for j in [0, 1, 5, 4]],
         [vertices[j] for j in [2, 3, 7, 6]]]

ax.add_collection3d(art3d.Poly3DCollection(faces, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

# Annotate side length
ax.text(0.5, -0.1, -0.1, 's', fontsize=14)

# Annotate one face
ax.text(0.4, 0.4, -0.1, '$s^2$', fontsize=14)

plt.title("Cube Surface Area", fontsize=16)
ax.set_box_aspect((1,1,1))
plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [Würfel mit Seitenlänge $s$],
)
]
]
]

#only("1")[
#voiceover("Hier ist eine visuelle Darstellung unseres Würfels. Jede Fläche hat eine Fläche von s zum Quadrat, wobei s die Seitenlänge ist. Um die Gesamtoberfläche zu erhalten, summieren wir die Flächen aller sechs Flächen.")
]

#v(20pt)
#only("2-")[$"Gesamtoberfläche" = 6 dot "Fläche einer Seite"$]


#only("3-")[$"SA" = 6 dot s^2$]

#only("2")[
#voiceover("Die Gesamtoberfläche ist 6 mal die Fläche einer Seite.")
]
#only("3")[
#voiceover("Das ergibt unsere Formel: Oberfläche gleich 6 mal s zum Quadrat.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[- Ein Würfel hat 6 identische quadratische Flächen 🔲]
#only("2-")[- Oberfläche = Fläche einer Seite × 6]
#only("3-")[- Formel: $"SA" = 6s^2$]
#only("4-")[- Beispiel: Für $s = 3"cm"$, $"SA" = 54"cm"^2$]

#only("1")[
#voiceover("Zusammenfassend hat ein Würfel 6 identische quadratische Flächen.")
]
#only("2")[
#voiceover("Die Oberfläche wird berechnet, indem die Fläche einer Seite gefunden und mit 6 multipliziert wird.")
]
#only("3")[
#voiceover("Das ergibt die Formel: Oberfläche gleich 6 mal s zum Quadrat, wobei s die Seitenlänge ist.")
]
#only("4")[
#voiceover("Für unseren Beispielwürfel mit einer Seitenlänge von 3 Zentimetern haben wir eine Oberfläche von 54 Quadratzentimetern berechnet.")
]
]