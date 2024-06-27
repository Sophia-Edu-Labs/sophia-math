#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche von Würfeln]
  #v(40pt)

#only("1-")[
#align(center)[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np
from itertools import product, combinations

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cube
r = [0, 1]
for s, e in combinations(np.array(list(product(r, r, r))), 2):
    if np.sum(np.abs(s-e)) == r[1]-r[0]:
        ax.plot3D(*zip(s, e), color="b")

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')
ax.set_title('Cube')

plt.show()
```,
width: 360pt
),
caption: []
)
]
]
]
  ]

  #only("2-")[- 📦 Würfel: 3D-Form mit gleichen Seiten]
  #v(20pt)
  #only("3-")[- 🧮 Oberfläche: Gesamtfläche aller Seiten]
  #v(20pt)
  #only("4-")[- 🤔 Wie berechnen wir das?]

  #only("1")[
    #voiceover("Willkommen zu unserer Lektion über die Oberfläche von Würfeln! Stell dir vor, du hast eine Geschenkbox in Form eines perfekten Würfels und möchtest sie mit Geschenkpapier einwickeln. Wie viel Papier würdest du benötigen?")
  ]

  #only("2")[
    #voiceover("Erstmal, lass uns daran erinnern, was ein Würfel ist. Ein Würfel ist eine dreidimensionale Form, bei der alle Seiten gleich sind. Es ist wie eine Box, bei der Länge, Breite und Höhe gleich sind.")
  ]

  #only("3")[
    #voiceover("Die Oberfläche eines Würfels ist die Gesamtfläche aller seiner Seiten. Mit anderen Worten, es ist die Menge an Papier, die wir benötigen würden, um jede Seite unserer würfelförmigen Geschenkbox zu bedecken.")
  ]

  #only("4")[
    #voiceover("Aber wie berechnen wir das? Lass es uns auf der nächsten Folie herausfinden!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung der Oberfläche]
  #v(40pt)

  #only("1-")[- 🎲 Ein Würfel hat 6 identische quadratische Flächen]
  #v(20pt)
  #only("2-")[- 📏 Fläche einer Seite = Seitenlänge zum Quadrat]
  #v(20pt)
  #only("3-")[- 🧮 Gesamtoberfläche = 6 × (Seitenlänge)²]
  #v(20pt)
  #only("4-")[- 📐 Formel: $S A = 6s^2$ wobei $s$ = Seitenlänge]

  #only("1")[
    #voiceover("Nun, lass uns über die Struktur eines Würfels nachdenken. Ein Würfel hat sechs Flächen, und alle diese Flächen sind identische Quadrate.")
  ]

  #only("2")[
    #voiceover("Die Fläche einer quadratischen Seite wird berechnet, indem die Seitenlänge mit sich selbst multipliziert wird. Zum Beispiel, wenn die Seitenlänge 3 Zentimeter beträgt, wäre die Fläche einer Seite 3 mal 3, also 9 Quadratzentimeter.")
  ]

  #only("3")[
    #voiceover("Da alle sechs Flächen identisch sind, können wir die Fläche einer Seite mit 6 multiplizieren, um die Gesamtoberfläche zu erhalten.")
  ]

  #only("4")[
    #voiceover("Das gibt uns unsere Formel: Die Oberfläche eines Würfels ist gleich 6 mal die Seitenlänge zum Quadrat. Wir schreiben dies als S A gleich 6 s Quadrat, wobei s die Seitenlänge darstellt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)

  #only("1-")[- 📦 Würfel: 3D-Form mit 6 gleichen quadratischen Flächen]
  #v(20pt)
  #only("2-")[- 🧮 Oberfläche: Gesamtfläche aller Seiten]
  #v(20pt)
  #only("3-")[- 📐 Formel: $S A = 6s^2$]
  #v(20pt)
  #only("4-")[- 💡 Merke: Fläche einer Seite mal 6 multiplizieren]

  #only("1")[
    #voiceover("Lass uns zusammenfassen, was wir gelernt haben. Ein Würfel ist eine dreidimensionale Form mit sechs gleichen quadratischen Flächen.")
  ]

  #only("2")[   
    #voiceover("Die Oberfläche eines Würfels ist die Gesamtfläche all dieser Flächen.")
  ]

  #only("3")[
    #voiceover("Wir berechnen sie mit der Formel: Oberfläche gleich 6 mal die Seitenlänge zum Quadrat.")
  ]

  #only("4")[
    #voiceover("Das Wichtige, das du dir merken solltest, ist, dass wir im Wesentlichen die Fläche einer Seite berechnen und diese dann mit 6 multiplizieren. Diese Methode ermöglicht es uns, effizient zu bestimmen, wie viel Material benötigt wird, um die gesamte Oberfläche eines Würfels zu bedecken.")
  ]
]