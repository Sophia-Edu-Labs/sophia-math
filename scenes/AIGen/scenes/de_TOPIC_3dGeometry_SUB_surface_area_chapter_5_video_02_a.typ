#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche zusammengesetzter Figuren]
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
x = [0, 6, 6, 0, 0]
y = [0, 0, 4, 4, 0]
z = [0, 0, 0, 0, 0]
ax.plot(x, y, z, 'b')
ax.plot(x, y, [3]*5, 'b')
for i in range(4):
  ax.plot([x[i], x[i]], [y[i], y[i]], [0, 3], 'b')

# Cube on top
x = [1.5, 4.5, 4.5, 1.5, 1.5]
y = [0.5, 0.5, 3.5, 3.5, 0.5]
z = [3, 3, 3, 3, 3]
ax.plot(x, y, z, 'r')
ax.plot(x, y, [6]*5, 'r')
for i in range(4):
  ax.plot([x[i], x[i]], [y[i], y[i]], [3, 6], 'r')

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')
ax.set_title('Composite Figure: Cuboid with Cube on Top')

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
    - Quader: 6 cm × 4 cm × 3 cm
    - Würfel: 3 cm Kantenlänge
  ]

  #only("1")[
    #voiceover("Großartig, dass Du dieses Problem gelöst hast! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben eine zusammengesetzte Figur, die aus zwei Teilen besteht.")
  ]

  #only("2")[
    #voiceover("Zuerst haben wir einen Quader mit den Maßen 6 Zentimeter mal 4 Zentimeter mal 3 Zentimeter. Oben drauf befindet sich ein Würfel mit einer Kantenlänge von 3 Zentimetern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Oberfläche des Quaders]
  #v(40pt)

  #only("1-")[
    Oberfläche = 2(Länge × Breite + Länge × Höhe + Breite × Höhe)
  ]

  #only("2-")[
    $"SA"_"cuboid" = 2(6 × 4 + 6 × 3 + 4 × 3)$
  ]

  #only("3-")[
    $"SA"_"cuboid" = 2(24 + 18 + 12)$
  ]

  #only("4-")[
    $"SA"_"cuboid" = 2(54) = 108 "cm"^2$
  ]

  #only("1")[
    #voiceover("Lass uns mit der Berechnung der Oberfläche des Quaders beginnen. Die Formel für die Oberfläche eines Quaders ist das Doppelte der Summe der Flächen aller Seiten.")
  ]

  #only("2")[
    #voiceover("Wenn wir unsere Werte einsetzen, erhalten wir 2 mal die Summe von 6 mal 4, 6 mal 3 und 4 mal 3.")
  ]

  #only("3")[
    #voiceover("Vereinfacht ergibt das 2 mal die Summe von 24, 18 und 12.")
  ]

  #only("4")[
    #voiceover("Das ergibt 2 mal 54, was 108 Quadratzentimeter entspricht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Oberfläche des Würfels]
  #v(40pt)

  #only("1-")[
    Oberfläche = 6 × Kantenlänge zum Quadrat
  ]

  #only("2-")[
    $"SA"_"cube" = 6 × 3^2$
  ]

  #only("3-")[
    $"SA"_"cube" = 6 × 9 = 54 "cm"^2$
  ]

  #only("1")[
    #voiceover("Nun berechnen wir die Oberfläche des Würfels. Die Formel für die Oberfläche eines Würfels ist 6 mal das Quadrat seiner Kantenlänge.")
  ]

  #only("2")[
    #voiceover("Mit einer Kantenlänge von 3 Zentimetern haben wir 6 mal 3 zum Quadrat.")
  ]

  #only("3")[
    #voiceover("Das ergibt 6 mal 9, was 54 Quadratzentimeter entspricht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Anpassung für gemeinsame Fläche]
  #v(40pt)

  #only("1-")[
    - Unterseite des Würfels = Oberseite des Quaders
    - Fläche der gemeinsamen Seite = 3 cm × 3 cm = 9 cm²
  ]

  #only("2-")[
    Anpassung = -9 cm²
  ]

  #only("1")[
    #voiceover("Wir müssen jedoch vorsichtig sein. Die Unterseite des Würfels ist die gleiche wie die Oberseite des Quaders, wo sie sich treffen. Wir haben diese Fläche in unseren Berechnungen doppelt gezählt.")
  ]

  #only("2")[
    #voiceover("Diese gemeinsame Fläche hat eine Fläche von 3 mal 3, was 9 Quadratzentimeter entspricht. Wir müssen diese einmal von unserer Gesamtsumme abziehen, um eine Doppelzählung zu vermeiden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Gesamte Oberfläche]
  #v(40pt)

  #only("1-")[
    Gesamte Oberfläche = SA_cuboid + SA_cube - gemeinsame Fläche
  ]

  #only("2-")[
    $"Total SA" = 108 "cm"^2 + 54 "cm"^2 - 9 "cm"^2$
  ]

  #only("3-")[
    $"Total SA" = 153 "cm"^2$
  ]

  #only("1")[
    #voiceover("Nun fassen wir alles zusammen. Die gesamte Oberfläche ist die Summe der Oberflächen des Quaders und des Würfels, minus der Fläche der gemeinsamen Seite.")
  ]

  #only("2")[
    #voiceover("Wenn wir unsere Werte einsetzen, haben wir 108 Quadratzentimeter plus 54 Quadratzentimeter, minus 9 Quadratzentimeter.")
  ]

  #only("3")[
    #voiceover("Das ergibt eine gesamte Oberfläche von 153 Quadratzentimetern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)

  #only("1-")[
    Die gesamte Oberfläche der zusammengesetzten Figur beträgt 153 cm².
  ]

  #only("1")[
    #voiceover("Die endgültige Antwort lautet also, dass die gesamte Oberfläche unserer zusammengesetzten Figur 153 Quadratzentimeter beträgt. Großartige Arbeit bei der Lösung dieses Problems! Denke daran, bei zusammengesetzten Figuren zu berücksichtigen, wie die einzelnen Formen interagieren, und vermeide die doppelte Zählung gemeinsamer Flächen.")
  ]
]