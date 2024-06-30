#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Oberfläche von Würfeln 📦]
  #v(40pt)
  #only("1-")[- Würfel sind 3D-Formen mit gleichen Seiten 🧊]
  #only("2-")[- Die Oberfläche ist die Gesamtfläche aller Flächen 🔍]
  #only("3-")[- Lass uns die Formel und ihre Anwendung überprüfen 📏]

  #only("1")[
    #voiceover("Lass uns das Konzept der Oberfläche von Würfeln überprüfen. Würfel sind dreidimensionale Formen, bei denen alle Seiten gleich lang sind.")
  ]
  #only("2")[
    #voiceover("Die Oberfläche eines Würfels ist die Gesamtfläche aller seiner Flächen.")
  ]
  #only("3")[
    #voiceover("Wir werden die Formel für die Oberfläche und ihre Anwendung überprüfen, einschließlich wie man die Seitenlänge findet, wenn die Oberfläche gegeben ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Formel für die Oberfläche]
  #v(40pt)
  #only("1-")[
    #align(center)[
      $"SA" = 6s^2$
    ]
  ]
  #only("2-")[
    #align(center)[
      wobei $s$ = Seitenlänge
    ]
  ]
  #only("3-")[
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

# Label
ax.text(0.5, 0.5, 1.1, "s", fontsize=20)
ax.text(0.5, 1.1, 0.5, "s", fontsize=20)
ax.text(1.1, 0.5, 0.5, "s", fontsize=20)

ax.set_axis_off()
plt.tight_layout()
plt.show()
          ```,
          width: 300pt
        ),
        caption: [],
      )
    ]
  ]
  ]

  #only("1")[
    #voiceover("Lass uns die Formel für die Oberfläche eines Würfels überprüfen. Die Oberfläche, die wir als SA bezeichnen, ist gleich sechs mal s Quadrat.")
  ]
  #only("2")[
    #voiceover("Hierbei steht s für die Länge einer Seite des Würfels.")
  ]
  #only("3")[
    #voiceover("Dieses Diagramm zeigt einen Würfel. Jede Seite des Würfels hat die Länge s. Die Formel sechs s Quadrat ergibt sich daraus, dass ein Würfel sechs Flächen hat, und jede Fläche ist ein Quadrat mit der Fläche s Quadrat.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Lösen für die Seitenlänge]
  #v(20pt)
  #only("1-")[Gegeben: Oberfläche ($"SA"$)]
  #only("2-")[Schritt 1: Starte mit $"SA" = 6s^2$]
  #only("3-")[Schritt 2: Teile beide Seiten durch 6]
  #only("4-")[Schritt 3: Ziehe die Quadratwurzel]
  #v(20pt)
  #only("5-")[
    #align(center)[
      $s = sqrt("SA"/6)$
    ]
  ]

  #only("1")[
    #voiceover("Nun, lass uns überprüfen, wie man die Seitenlänge findet, wenn die Oberfläche gegeben ist.")
  ]
  #only("2")[
    #voiceover("Wir starten mit unserer Formel: Oberfläche ist gleich sechs s Quadrat.")
  ]
  #only("3")[
    #voiceover("Um s zu isolieren, teilen wir zuerst beide Seiten der Gleichung durch sechs.")
  ]
  #only("4")[
    #voiceover("Dann ziehen wir die Quadratwurzel aus beiden Seiten.")
  ]
  #only("5")[
    #voiceover("Das gibt uns unsere Formel für die Seitenlänge: s ist gleich die Quadratwurzel der Oberfläche geteilt durch sechs.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Formel für die Oberfläche: $"SA" = 6s^2$ 📏]
  #only("2-")[- Um die Seitenlänge zu finden: $s = sqrt("SA"/6)$ 🧮]
  #only("3-")[- Nützlich für verschiedene Berechnungen 🔢]
  #only("4-")[- Denke daran, die richtigen Einheiten zu verwenden! 📐]

  #only("1")[
    #voiceover("Lass uns zusammenfassen, was wir überprüft haben. Die Oberfläche eines Würfels wird durch die Formel SA gleich sechs s Quadrat gegeben, wobei s die Seitenlänge ist.")
  ]
  #only("2")[
    #voiceover("Wenn die Oberfläche gegeben ist und wir die Seitenlänge finden müssen, können wir die Formel s gleich die Quadratwurzel von SA geteilt durch sechs verwenden.")
  ]
  #only("3")[
    #voiceover("Diese Formeln sind nützlich für verschiedene Berechnungen, die Würfel betreffen, wie zum Beispiel die Menge an Material, die benötigt wird, um ein kubisches Objekt zu bedecken.")
  ]
  #only("4")[
    #voiceover("Denke daran, immer die richtigen Einheiten in deinen Berechnungen und Endergebnissen zu verwenden!")
  ]
]