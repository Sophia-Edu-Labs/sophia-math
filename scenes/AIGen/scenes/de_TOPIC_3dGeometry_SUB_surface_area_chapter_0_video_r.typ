#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Oberfläche von Würfeln 📦]
  #v(40pt)
  #only("1-")[- Stell dir vor, du packst ein Geschenk ein 🎁]
  #only("2-")[- Wie viel Geschenkpapier brauchen wir? 🤔]
  #only("3-")[- Die Oberfläche hilft uns, das zu berechnen! 📐]
  
  #only("1")[
    #voiceover("Lass uns das Konzept der Oberfläche von Würfeln wiederholen. Stell dir vor, du packst ein Geschenk ein.")
  ]
  #only("2")[
    #voiceover("Wie viel Geschenkpapier würdest du brauchen, um die gesamte Box zu bedecken?")
  ]
  #only("3")[
    #voiceover("Hier kommt das Konzept der Oberfläche ins Spiel. Es hilft uns, die gesamte Fläche zu berechnen, die wir bedecken müssen.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung der Oberfläche]
  #v(40pt)
  #only("1-")[1. Bestimme die Form jeder Fläche 🔲]
  #only("2-")[2. Berechne die Fläche einer Seite 📏]
  #only("3-")[3. Zähle die Gesamtzahl der Flächen 🔢]
  #only("4-")[4. Multipliziere die Fläche einer Seite mit der Anzahl der Flächen ✖️]
  
  #only("1")[
    #voiceover("Lass uns Schritt für Schritt durchgehen, wie wir die Oberfläche eines Würfels berechnen. Zuerst bestimmen wir die Form jeder Fläche.")
  ]
  #only("2")[
    #voiceover("Als nächstes berechnen wir die Fläche einer Seite.")
  ]
  #only("3")[
    #voiceover("Dann zählen wir die Gesamtzahl der Flächen des Würfels.")
  ]
  #only("4")[
    #voiceover("Schließlich multiplizieren wir die Fläche einer Seite mit der Gesamtzahl der Flächen.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Formel für die Oberfläche]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube
r = [0, 1]
x, y = np.meshgrid(r, r)
one = np.ones_like(x)
zero = np.zeros_like(x)

# Plot the six faces
ax.plot_surface(x, y, zero, alpha=0.5, color='b')
ax.plot_surface(x, y, one, alpha=0.5, color='b')
ax.plot_surface(x, zero, y, alpha=0.5, color='b')
ax.plot_surface(x, one, y, alpha=0.5, color='b')
ax.plot_surface(zero, x, y, alpha=0.5, color='b')
ax.plot_surface(one, x, y, alpha=0.5, color='b')

# Label
ax.text(0.5, 0.5, -0.1, 's', fontsize=20)
ax.text(0.5, -0.1, 0.5, 's', fontsize=20)
ax.text(-0.1, 0.5, 0.5, 's', fontsize=20)

ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_zlim(0, 1)

ax.set_axis_off()

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]
  ]
  #only("2-")[Oberfläche $ = 6s^2 $]
  #only("3-")[Wobei $s$ die Seitenlänge ist]
  
  #only("1")[
    #voiceover("Lass uns die Formel für die Oberfläche eines Würfels wiederholen. Hier ist eine visuelle Darstellung eines Würfels.")
  ]
  #only("2")[
    #voiceover("Die Oberfläche eines Würfels ist gleich sechs mal s Quadrat.")
  ]
  #only("3")[
    #voiceover("Wobei s die Seitenlänge des Würfels ist.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Oberfläche: Gesamtfläche aller Flächen 📦]
  #only("2-")[- Bei Würfeln: alle Flächen sind Quadrate ⬜]
  #only("3-")[- Fläche einer Seite: $s^2$ 🔢]
  #only("4-")[- Anzahl der Flächen: 6 🎲]
  #only("5-")[- Formel: $"SA" = 6s^2$ 🧮]
  
  #only("1")[
    #voiceover("Lass uns zusammenfassen, was wir besprochen haben. Die Oberfläche ist die Gesamtfläche aller Flächen eines dreidimensionalen Objekts.")
  ]
  #only("2")[
    #voiceover("Bei Würfeln sind alle Flächen Quadrate.")
  ]
  #only("3")[
    #voiceover("Die Fläche einer Seite ist s Quadrat, wobei s die Seitenlänge ist.")
  ]
  #only("4")[
    #voiceover("Ein Würfel hat 6 Flächen.")
  ]
  #only("5")[
    #voiceover("Daher lautet die Formel für die Oberfläche eines Würfels S A gleich sechs mal s Quadrat.")
  ]
]