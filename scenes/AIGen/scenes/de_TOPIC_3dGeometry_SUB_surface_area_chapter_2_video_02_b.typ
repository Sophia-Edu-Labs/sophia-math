#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Oberfläche eines Quaders]
#v(40pt)
Wie berechnet man die Oberfläche eines Quaders?
#v(40pt)
#only("-1")[a) Länge × Breite × Höhe]#only("2-")[#text(fill:red)[a) Länge × Breite × Höhe]]
#v(10pt)
#only("-2")[b) 2(Länge × Breite + Länge × Höhe + Breite × Höhe)]#only("3-")[#text(fill:green)[b) 2(Länge × Breite + Länge × Höhe + Breite × Höhe)]]
#v(10pt)
#only("-3")[c) Länge + Breite + Höhe]#only("4-")[#text(fill:red)[c) Länge + Breite + Höhe]]
#v(10pt)
#only("-4")[d) 6 × (Länge × Breite)]#only("5-")[#text(fill:red)[d) 6 × (Länge × Breite)]]

#only("1")[#voiceover("Großartig! Du hast richtig geantwortet. Lass uns jede Option durchgehen, um zu verstehen, warum b die richtige Antwort ist und warum die anderen falsch sind.")]
#only("2")[#voiceover("Option a, Länge mal Breite mal Höhe, ist falsch. Diese Formel berechnet tatsächlich das Volumen eines Quaders, nicht seine Oberfläche.")]
#only("3")[#voiceover("Option b, zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe, ist korrekt. Dies ist tatsächlich die Formel zur Berechnung der Oberfläche eines Quaders. Wir werden gleich erklären, warum.")]
#only("4")[#voiceover("Option c, Länge plus Breite plus Höhe, ist falsch. Diese Berechnung stellt keine sinnvolle Messung eines Quaders dar.")]
#only("5")[#voiceover("Option d, sechs mal Länge mal Breite, ist ebenfalls falsch. Obwohl es nahe dran ist, da es erkennt, dass ein Quader sechs Flächen hat, berücksichtigt es nur eine Art von Fläche.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Den Quader verstehen]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D, art3d
import numpy as np

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid vertices
vertices = np.array([[0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0],
                     [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]])

# Cuboid faces
faces = [[vertices[j] for j in [0, 1, 2, 3]],
         [vertices[j] for j in [4, 5, 6, 7]], 
         [vertices[j] for j in [0, 3, 7, 4]],
         [vertices[j] for j in [1, 2, 6, 5]],
         [vertices[j] for j in [0, 1, 5, 4]],
         [vertices[j] for j in [2, 3, 7, 6]]]

ax.add_collection3d(art3d.Poly3DCollection(faces, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')

plt.title('Cuboid')
plt.show()

```,
width: 360pt),
)
]
]
]
#only("1")[#voiceover("Lass uns mit der Visualisierung eines Quaders beginnen. Ein Quader, auch bekannt als rechteckiges Prisma, hat sechs rechteckige Flächen. Jedes Paar gegenüberliegender Flächen ist identisch.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die Formel aufschlüsseln]
#v(40pt)
#only("1-")[2(Länge × Breite + Länge × Höhe + Breite × Höhe)]
#v(20pt)
#only("2-")[= 2("lw"+ "lh" + "wh")]
#v(20pt)
#only("3-")[Wobei L = Länge, W = Breite, H = Höhe]

#only("1")[#voiceover("Nun lass uns die richtige Formel aufschlüsseln: zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")]
#only("2")[#voiceover("Wir können diese Notation vereinfachen, indem wir L für Länge, W für Breite und H für Höhe verwenden.")]
#only("3")[#voiceover("Diese Formel berücksichtigt alle sechs Flächen des Quaders. Lass uns sehen, wie das auf der nächsten Folie funktioniert.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die Formel erklären]
#v(40pt)
#only("1-")[- Vorder- und Rückseite: 2 × (L × H)]
#only("2-")[- Links und Rechts: 2 × (W × H)]
#only("3-")[- Oben und Unten: 2 × (L × W)]
#v(20pt)
#only("4-")[Gesamt: 2(LH + WH + LW)]

#only("1")[#voiceover("Die Vorder- und Rückseite sind identisch, jede mit einer Fläche von Länge mal Höhe. Wir multiplizieren mit zwei, um beide Flächen zu berücksichtigen.")]
#only("2")[#voiceover("Ähnlich haben die linken und rechten Flächen jeweils eine Fläche von Breite mal Höhe, ebenfalls multipliziert mit zwei.")]
#only("3")[#voiceover("Schließlich haben die oberen und unteren Flächen jeweils eine Fläche von Länge mal Breite, erneut multipliziert mit zwei.")]
#only("4")[#voiceover("Wenn wir diese alle zusammenzählen, erhalten wir zwei mal die Summe aus Länge mal Höhe, Breite mal Höhe und Länge mal Breite - genau unsere Formel!")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Warum andere Optionen falsch sind]
#v(40pt)
#only("1-")[a) L × W × H = Volumen, nicht Oberfläche 📦]
#v(20pt)
#only("2-")[c) L + W + H = Keine sinnvolle Messung 🤔]
#v(20pt)
#only("3-")[d) 6 × (L × W) = Berücksichtigt nur eine Art von Fläche 🔲]

#only("1")[#voiceover("Option a, Länge mal Breite mal Höhe, berechnet das Volumen des Quaders, das den dreidimensionalen Raum misst, nicht die Oberfläche.")]
#only("2")[#voiceover("Option c, Länge plus Breite plus Höhe, stellt keine sinnvolle Messung eines Quaders dar. Es addiert einfach drei Längen zusammen, ohne die Fläche zu berücksichtigen.")]
#only("3")[#voiceover("Option d, sechs mal Länge mal Breite, erkennt zwar, dass ein Quader sechs Flächen hat, geht aber fälschlicherweise davon aus, dass alle Flächen die gleichen Abmessungen wie die Länge-Breite-Fläche haben.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Oberfläche eines Quaders = 2("lw"+ "lh" + "wh") 📏]
#v(20pt)
#only("2-")[- Berücksichtigt alle 6 Flächen des Quaders 🧊]
#v(20pt)
#only("3-")[- Unterschied zum Volumen (L × W × H) 📦]

#only("1")[#voiceover("Zusammenfassend wird die Oberfläche eines Quaders mit der Formel berechnet: zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")]
#only("2")[#voiceover("Diese Formel berücksichtigt alle sechs Flächen des Quaders, wobei gegenüberliegende Flächen die gleichen Abmessungen haben.")]
#only("3")[#voiceover("Denke daran, dass dies anders ist als das Volumen, das Länge mal Breite mal Höhe ist. Die Oberfläche misst die Gesamtfläche aller äußeren Flächen, während das Volumen den dreidimensionalen Raum innerhalb des Quaders misst.")]
]