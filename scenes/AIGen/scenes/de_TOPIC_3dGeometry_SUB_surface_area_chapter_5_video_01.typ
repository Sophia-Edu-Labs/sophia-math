#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Fortgeschrittene Oberflächenberechnung zusammengesetzter Figuren]
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

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid
x = [0, 4, 4, 0, 0]
y = [0, 0, 3, 3, 0]
z = [0, 0, 0, 0, 0]
ax.plot(x, y, z, 'b')
ax.plot(x, y, [2]*5, 'b')
for i in range(4):
    ax.plot([x[i], x[i]], [y[i], y[i]], [0, 2], 'b')

# Cylinder on top
radius = 1
height = 2
theta = np.linspace(0, 2*np.pi, 100)
z = np.linspace(2, 4, 100)
theta, z = np.meshgrid(theta, z)
x = radius*np.cos(theta) + 2
y = radius*np.sin(theta) + 1.5
ax.plot_surface(x, y, z, alpha=0.5)

ax.set_xlabel('Length (m)')
ax.set_ylabel('Width (m)')
ax.set_zlabel('Height (m)')
ax.set_title('Composite Figure: Cuboid with Cylinder')

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

  #only("2-")[
    - Quader: 4m × 3m × 2m
    - Zylinder: Radius 1m, Höhe 2m
  ]

  #only("3-")[
    #text(size: 24pt, weight: "bold")[Frage: Wie berechnet man die gesamte Oberfläche? 🤔]
  ]

  #only("1")[
    #voiceover("Willkommen zu unserer Lektion über die fortgeschrittene Oberflächenberechnung zusammengesetzter Figuren. Stell Dir vor, Du bist ein Architekt und entwirfst ein einzigartiges Gebäude. Du könntest auf Strukturen stoßen, die verschiedene Formen kombinieren, wie diese hier.")
  ]

  #only("2")[
    #voiceover("Hier haben wir eine zusammengesetzte Figur, die aus einem Quader mit den Maßen 4 Meter mal 3 Meter mal 2 Meter besteht, und darauf befindet sich ein Zylinder mit einem Radius von 1 Meter und einer Höhe von 2 Metern.")
  ]

  #only("3")[
    #voiceover("Unsere Herausforderung heute ist es, die gesamte Oberfläche dieser zusammengesetzten Figur zu berechnen. Das mag auf den ersten Blick schwierig erscheinen, aber wir werden es Schritt für Schritt durchgehen. Bist Du bereit, einzutauchen?")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Vorgehensweise zur Lösung]
  #v(40pt)

  #only("1-")[1. Einzelne Formen identifizieren 🔍]
  #v(20pt)
  #only("2-")[2. Oberflächen separat berechnen 🧮]
  #v(20pt)
  #only("3-")[3. Versteckte Flächen identifizieren 🙈]
  #v(20pt)
  #only("4-")[4. Versteckte Flächen abziehen ➖]
  #v(20pt)
  #only("5-")[5. Sichtbare Flächen summieren ➕]

  #only("1")[
    #voiceover("Lass uns dieses Problem systematisch angehen. Zuerst müssen wir die einzelnen Formen identifizieren, die unsere zusammengesetzte Figur bilden.")
  ]

  #only("2")[
    #voiceover("Als nächstes berechnen wir die Oberflächen dieser Formen separat.")
  ]

  #only("3")[
    #voiceover("Dann müssen wir alle Flächen identifizieren, die versteckt sind, wo die Formen aufeinandertreffen.")
  ]

  #only("4")[
    #voiceover("Wir werden diese versteckten Flächen von unseren Berechnungen abziehen.")
  ]

  #only("5")[
    #voiceover("Schließlich summieren wir alle sichtbaren Flächen, um unsere gesamte Oberfläche zu erhalten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)

  #only("1-")[- Zusammengesetzte Figuren kombinieren mehrere Formen 🏗️]
  #v(20pt)
  #only("2-")[- Die Berechnung der Oberfläche erfordert eine sorgfältige Analyse 🔬]
  #v(20pt)
  #only("3-")[- Wichtige Schritte: Identifizieren, Berechnen, Anpassen, Summieren ✅]

  #only("1")[
    #voiceover("Zusammenfassend sind zusammengesetzte Figuren Strukturen, die mehrere Formen kombinieren. In unserem Beispiel haben wir einen Quader und einen Zylinder.")
  ]

  #only("2")[
    #voiceover("Die Berechnung der Oberfläche solcher Figuren erfordert eine sorgfältige Analyse. Wir können nicht einfach die Oberflächen der einzelnen Formen addieren.")
  ]

  #only("3")[
    #voiceover("Die wichtigen Schritte sind: die Formen identifizieren, ihre individuellen Oberflächen berechnen, versteckte Flächen anpassen und dann die sichtbaren Flächen summieren. In unserer nächsten Lektion werden wir ein detailliertes Beispiel durchgehen, um diese Schritte in die Praxis umzusetzen.")
  ]
]