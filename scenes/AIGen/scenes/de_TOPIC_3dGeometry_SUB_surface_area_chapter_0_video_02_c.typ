#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Oberfläche eines Würfels]
#v(40pt)

#only("1-")[Wie berechnet man die Oberfläche eines Würfels?]
#v(40pt)

#only("-1")[a) 6 × Seitenlänge]#only("2-")[#text(fill:red)[a) 6 × Seitenlänge]]
#v(10pt)
#only("-2")[b) Seitenlänge × Seitenlänge]#only("3-")[#text(fill:red)[b) Seitenlänge × Seitenlänge]]
#v(10pt)
#only("-3")[c) 6 × (Seitenlänge × Seitenlänge)]#only("4-")[#text(fill:green)[c) 6 × (Seitenlänge × Seitenlänge)]]
#v(10pt)
#only("-4")[d) Seitenlänge × Seitenlänge × Seitenlänge]#only("5-")[#text(fill:red)[d) Seitenlänge × Seitenlänge × Seitenlänge]]

#only("1")[#voiceover("Das ist richtig! Gute Arbeit!")]
#only("2")[#voiceover("Option a, 6 mal Seitenlänge, ist falsch. Das würde uns eine Länge geben, keine Fläche.")]
#only("3")[#voiceover("Option b, Seitenlänge mal Seitenlänge, ist auch falsch. Das berechnet nur die Fläche einer Seite des Würfels, nicht aller sechs.")]
#only("4")[#voiceover("Option c, 6 mal Seitenlänge mal Seitenlänge, ist richtig! Diese Formel gibt uns die gesamte Oberfläche eines Würfels. Wir erklären gleich, warum.")]
#only("5")[#voiceover("Option d, Seitenlänge mal Seitenlänge mal Seitenlänge, ist falsch. Das berechnet eigentlich das Volumen eines Würfels, nicht die Oberfläche.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verständnis der Würfeloberfläche]
#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
import numpy as np

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cube points and edges
points = np.array([[0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0],
                   [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]])
edges = [[0, 1], [1, 2], [2, 3], [3, 0],
         [4, 5], [5, 6], [6, 7], [7, 4],
         [0, 4], [1, 5], [2, 6], [3, 7]]

# Plot edges
for edge in edges:
    ax.plot3D(*zip(*points[edge]), color="blue")

# Highlight one face
verts = [points[0], points[1], points[2], points[3]]
ax.add_collection3d(Poly3DCollection([verts], facecolors='red', alpha=0.5))

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')
ax.set_title('Cube with One Face Highlighted')

plt.show()

```,
width: 360pt),
)
]
]
]

#only("2-")[🧊 Ein Würfel hat 6 identische quadratische Flächen]
#v(20pt)
#only("3-")[📏 Die Fläche jeder Seite = Seitenlänge × Seitenlänge]
#v(20pt)
#only("4-")[🔢 Gesamte Oberfläche = 6 × (Seitenlänge × Seitenlänge)]

#only("1")[#voiceover("Lass uns einen Würfel visualisieren, um seine Oberfläche zu verstehen. Hier haben wir einen Würfel mit einer hervorgehobenen roten Fläche.")]
#only("2")[#voiceover("Ein Würfel hat sechs identische quadratische Flächen. Jede Fläche trägt zur gesamten Oberfläche bei.")]
#only("3")[#voiceover("Die Fläche jeder Seite wird berechnet, indem man die Seitenlänge mit sich selbst multipliziert. Das ergibt Seitenlänge zum Quadrat.")]
#only("4")[#voiceover("Um die gesamte Oberfläche zu erhalten, müssen wir alle sechs Flächen berücksichtigen. Also multiplizieren wir die Fläche einer Seite mit 6. Das ergibt unsere Formel: 6 mal Seitenlänge zum Quadrat.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispielrechnung]
#v(40pt)

#only("1-")[Berechnen wir die Oberfläche eines Würfels mit einer Seitenlänge von 4 cm:]
#v(20pt)
#only("2-")[Oberfläche = 6 × (Seitenlänge × Seitenlänge)]
#v(10pt)
#only("3-")[= 6 × (4 cm × 4 cm)]
#v(10pt)
#only("4-")[= 6 × 16 cm²]
#v(10pt)
#only("5-")[= 96 cm²]

#only("1")[#voiceover("Lass uns ein Beispiel durchgehen, um unser Verständnis zu festigen.")]
#only("2")[#voiceover("Wir verwenden unsere Formel: Oberfläche gleich 6 mal Seitenlänge zum Quadrat.")]
#only("3")[#voiceover("Wenn unser Würfel eine Seitenlänge von 4 Zentimetern hat, setzen wir dies in unsere Formel ein.")]
#only("4")[#voiceover("4 mal 4 ergibt 16 Quadratzentimeter für eine Seite. Das multiplizieren wir dann mit 6.")]
#only("5")[#voiceover("Das Ergebnis sind 96 Quadratzentimeter. Das ist die gesamte Oberfläche unseres Würfels.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)

#only("1-")[📐 Formel für die Oberfläche: 6 × (Seitenlänge)²]
#v(20pt)
#only("2-")[🔑 Merke: Es ist nicht 6 × Seitenlänge]
#v(20pt)
#only("3-")[📏 Nicht mit dem Volumen verwechseln: (Seitenlänge)³]
#v(20pt)
#only("4-")[💡 Übe mit verschiedenen Seitenlängen!]

#only("1")[#voiceover("Zusammenfassend: Die Schlüsselformel für die Oberfläche eines Würfels ist 6 mal die Seitenlänge zum Quadrat.")]
#only("2")[#voiceover("Es ist wichtig, sich zu merken, dass es nicht einfach 6 mal die Seitenlänge ist. Dieser häufige Fehler würde uns eine Länge geben, keine Fläche.")]
#only("3")[#voiceover("Außerdem, sei vorsichtig, die Oberfläche nicht mit dem Volumen zu verwechseln. Das Volumen wird durch die Seitenlänge hoch drei berechnet.")]
#only("4")[#voiceover("Um dieses Konzept wirklich zu meistern, versuche die Oberfläche für Würfel mit unterschiedlichen Seitenlängen zu berechnen. Diese Übung wird dir helfen, dein Verständnis zu festigen.")]
]