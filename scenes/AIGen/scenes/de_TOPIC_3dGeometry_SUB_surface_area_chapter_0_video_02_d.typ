#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Oberfläche eines Würfels]
#v(40pt)
Wie berechnet man die Oberfläche eines Würfels?
#v(40pt)
#only("-1")[a) 6 × Seitenlänge]#only("2-")[#text(fill:red)[a) 6 × Seitenlänge]]
#v(10pt)
#only("-2")[b) Seitenlänge × Seitenlänge]#only("3-")[#text(fill:red)[b) Seitenlänge × Seitenlänge]]
#v(10pt)
#only("-3")[c) 6 × (Seitenlänge × Seitenlänge)]#only("4-")[#text(fill:green)[c) 6 × (Seitenlänge × Seitenlänge)]]
#v(10pt)
#only("-4")[d) Seitenlänge × Seitenlänge × Seitenlänge]#only("5-")[#text(fill:red)[d) Seitenlänge × Seitenlänge × Seitenlänge]]

#only("1")[#voiceover("Leider war das nicht die richtige Antwort. Lass uns jede Option durchgehen, um zu verstehen, warum c die richtige Wahl ist und warum die anderen falsch sind.")]
#only("2")[#voiceover("Option a, sechs mal Seitenlänge, ist falsch. Dies würde uns nur die Summe der Längen aller Kanten geben, nicht die Oberfläche.")]
#only("3")[#voiceover("Option b, Seitenlänge mal Seitenlänge, ist auch falsch. Dies würde uns nur die Fläche einer Seite des Würfels geben, nicht die gesamte Oberfläche.")]
#only("4")[#voiceover("Option c, sechs mal Seitenlänge mal Seitenlänge, ist korrekt! Diese Formel gibt uns die gesamte Oberfläche eines Würfels. Wir erklären gleich, warum.")]
#only("5")[#voiceover("Option d, Seitenlänge mal Seitenlänge mal Seitenlänge, ist falsch. Diese Formel berechnet tatsächlich das Volumen eines Würfels, nicht die Oberfläche.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Den Würfel verstehen]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
import numpy as np

fig = plt.figure(figsize=(8, 8))
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

# Plot cube
ax.add_collection3d(Poly3DCollection(faces, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

# Set axis labels
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

# Set axis limits
ax.set_xlim([0, 1])
ax.set_ylim([0, 1])
ax.set_zlim([0, 1])

plt.title('Cube')
plt.show()

```,
width: 360pt),
)
]
]
]
#only("1")[#voiceover("Lass uns mit der Visualisierung eines Würfels beginnen. Ein Würfel ist eine dreidimensionale Form mit sechs identischen quadratischen Flächen. Jede Kante des Würfels hat die gleiche Länge, die wir als Seitenlänge bezeichnen.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Oberfläche eines Würfels]
#v(40pt)
#only("1-")[- Ein Würfel hat 6 identische quadratische Flächen 🎲]
#v(20pt)
#only("2-")[- Fläche einer Fläche = Seitenlänge × Seitenlänge]
#v(20pt)
#only("3-")[- Gesamte Oberfläche = 6 × (Fläche einer Fläche)]
#only("1")[#voiceover("Um die Oberfläche zu verstehen, lass es uns aufschlüsseln. Erstens, erinnere dich daran, dass ein Würfel sechs identische quadratische Flächen hat.")]
#only("2")[#voiceover("Die Fläche einer Fläche wird berechnet, indem die Seitenlänge mit sich selbst multipliziert wird. Dies liegt daran, dass jede Fläche ein Quadrat ist.")]
#only("3")[#voiceover("Um die gesamte Oberfläche zu erhalten, müssen wir die Flächen aller sechs Flächen addieren. Da sie alle identisch sind, können wir einfach die Fläche einer Fläche mit sechs multiplizieren.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die Formel]
#v(40pt)
#only("1-")[Oberfläche = 6 × (Seitenlänge × Seitenlänge)]
#v(20pt)
#only("2-")[#text(fill: blue)[SA = 6s²], wobei s die Seitenlänge ist]
#v(20pt)
#only("3-")[💡 Deshalb war Option c richtig!]
#only("1")[#voiceover("Also, die Formel für die Oberfläche eines Würfels ist sechs mal Seitenlänge mal Seitenlänge.")]
#only("2")[#voiceover("Wir können dies kürzer schreiben als S A gleich sechs s Quadrat, wobei s die Seitenlänge darstellt.")]
#only("3")[#voiceover("Dies ist genau das, was Option c aussagte, weshalb es die richtige Antwort war!")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Wenn die Seitenlänge eines Würfels 5 cm beträgt:]
#v(20pt)
#only("2-")[SA = 6 × (5 cm × 5 cm)]
#v(20pt)
#only("3-")[SA = 6 × 25 cm²]
#v(20pt)
#only("4-")[SA = 150 cm²]
#only("1")[#voiceover("Lass uns ein Beispiel durchgehen. Angenommen, wir haben einen Würfel mit einer Seitenlänge von 5 Zentimetern.")]
#only("2")[#voiceover("Wir setzen dies in unsere Formel ein: Oberfläche gleich sechs mal fünf Zentimeter mal fünf Zentimeter.")]
#only("3")[#voiceover("Fünf mal fünf ist fünfundzwanzig, also haben wir sechs mal fünfundzwanzig Quadratzentimeter.")]
#only("4")[#voiceover("Sechs mal fünfundzwanzig ist hundertfünfzig, also beträgt die gesamte Oberfläche hundertfünfzig Quadratzentimeter.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Oberfläche eines Würfels = 6 × (Seitenlänge)² 📏]
#v(20pt)
#only("2-")[- Denke daran: Es ist nicht 6 × Seitenlänge (das ist die Summe der Kantenlängen) 🚫]
#v(20pt)
#only("3-")[- Es ist auch nicht Seitenlänge³ (das ist das Volumen) 🚫]
#v(20pt)
#only("4-")[- Übe das Berechnen der Oberflächen von Würfeln unterschiedlicher Größe! 💪]
#only("1")[#voiceover("Zusammenfassend wird die Oberfläche eines Würfels berechnet, indem man sechs mit dem Quadrat der Seitenlänge multipliziert.")]
#only("2")[#voiceover("Denke daran, es ist nicht einfach sechs mal die Seitenlänge - das würde dir nur die Summe der Längen aller Kanten geben.")]
#only("3")[#voiceover("Und es ist nicht die Seitenlänge hoch drei - das würde dir das Volumen des Würfels geben.")]
#only("4")[#voiceover("Übe weiter mit Würfeln unterschiedlicher Größe, um dich mit dieser Formel vertraut zu machen. Großartige Arbeit beim Verstehen dieses Konzepts!")]
]