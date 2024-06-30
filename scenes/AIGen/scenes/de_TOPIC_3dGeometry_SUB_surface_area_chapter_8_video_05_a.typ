#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche einer zusammengesetzten Figur]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube
cube_points = np.array([
    [0, 0, 0], [6, 0, 0], [6, 6, 0], [0, 6, 0],
    [0, 0, 6], [6, 0, 6], [6, 6, 6], [0, 6, 6]
])

# Cuboid
cuboid_points = np.array([
    [6, 1, 2], [10, 1, 2], [10, 4, 2], [6, 4, 2],
    [6, 1, 4], [10, 1, 4], [10, 4, 4], [6, 4, 4]
])

# Plot cube
for i, j in [(0,1), (1,2), (2,3), (3,0), (4,5), (5,6), (6,7), (7,4), (0,4), (1,5), (2,6), (3,7)]:
    ax.plot(*zip(cube_points[i], cube_points[j]), color='b')

# Plot cuboid
for i, j in [(0,1), (1,2), (2,3), (3,0), (4,5), (5,6), (6,7), (7,4), (0,4), (1,5), (2,6), (3,7)]:
    ax.plot(*zip(cuboid_points[i], cuboid_points[j]), color='r')

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Composite Figure: Cube (6cm) + Cuboid (4cm x 3cm x 2cm)')

plt.show()

```
          ,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben eine zusammengesetzte Figur, die aus einem Würfel mit einer Kantenlänge von 6 cm und einem kleineren Quader mit den Abmessungen 4 cm x 3 cm x 2 cm besteht, die an einer Fläche verbunden sind. Hier ist eine Visualisierung unserer zusammengesetzten Figur.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Identifiziere die Flächen]
  #v(40pt)
  #only("1-")[- Würfel: 6 Flächen, aber 1 ist geteilt 📦]
  #v(20pt)
  #only("2-")[- Quader: 6 Flächen, aber 1 ist geteilt 📦]
  #v(20pt)
  #only("3-")[- Insgesamt: 5 Würfelflächen + 5 Quaderflächen = 10 Flächen]
  #only("1")[
    #voiceover("Lass uns zunächst die Flächen identifizieren, die wir berechnen müssen. Der Würfel hat normalerweise 6 Flächen, aber eine Fläche wird mit dem Quader geteilt.")
  ]
  #only("2")[
    #voiceover("Ähnlich hat auch der Quader 6 Flächen, aber eine wird mit dem Würfel geteilt.")
  ]
  #only("3")[
    #voiceover("Insgesamt müssen wir also die Fläche von 5 Würfelflächen und 5 Quaderflächen berechnen, was uns 10 Flächen ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Berechne die Oberfläche des Würfels]
  #v(40pt)
  #only("1-")[- Würfel Kantenlänge: 6 cm]
  #v(20pt)
  #only("2-")[- Fläche einer Seite: $6"cm" × 6"cm" = 36"cm"^2$]
  #v(20pt)
  #only("3-")[- Fläche von 5 Seiten: $5 × 36"cm"^2 = 180"cm"^2$]
  #only("1")[
    #voiceover("Nun, lass uns die Oberfläche des Würfels berechnen. Wir wissen, dass die Kantenlänge des Würfels 6 Zentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Die Fläche einer Seite beträgt 6 Zentimeter mal 6 Zentimeter, was 36 Quadratzentimeter ergibt.")
  ]
  #only("3")[
    #voiceover("Wir müssen 5 Seiten des Würfels berücksichtigen, also multiplizieren wir 36 Quadratzentimeter mit 5, was uns 180 Quadratzentimeter ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berechne die Oberfläche des Quaders]
  #v(40pt)
  #only("1-")[- Quader Abmessungen: 4 cm × 3 cm × 2 cm]
  #v(20pt)
  #only("2-")[- Flächen: $4×3=12, 4×2=8, 3×2=6$ (alle in $"cm"^2$)]
  #v(20pt)
  #only("3-")[- Summe von 5 Flächen: $(2×12) + (2×8) + 6 = 46"cm"^2$]
  #only("1")[
    #voiceover("Als nächstes berechnen wir die Oberfläche des Quaders. Die Abmessungen des Quaders sind 4 Zentimeter mal 3 Zentimeter mal 2 Zentimeter.")
  ]
  #only("2")[
    #voiceover("Wir müssen die Flächen jeder Art von Seite berechnen: 4 mal 3 ergibt 12, 4 mal 2 ergibt 8 und 3 mal 2 ergibt 6, alles in Quadratzentimetern.")
  ]
  #only("3")[
    #voiceover("Wir haben zwei Flächen von jeweils 12 und 8 Quadratzentimetern und eine Fläche von 6 Quadratzentimetern. Wenn wir diese addieren, erhalten wir 46 Quadratzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Gesamtoberfläche]
  #v(40pt)
  #only("1-")[- Oberfläche des Würfels: $180"cm"^2$]
  #v(20pt)
  #only("2-")[- Oberfläche des Quaders: $46"cm"^2$]
  #v(20pt)
  #only("3-")[- Gesamt: $180"cm"^2 + 46"cm"^2 = 226"cm"^2$]
  #only("1")[
    #voiceover("Nun, lass uns unsere Ergebnisse addieren. Wir haben berechnet, dass die Oberfläche des Würfels 180 Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Und die Oberfläche des Quaders beträgt 46 Quadratzentimeter.")
  ]
  #only("3")[
    #voiceover("Wenn wir diese zusammenzählen, erhalten wir eine Gesamtoberfläche von 226 Quadratzentimetern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die Gesamtoberfläche beträgt $226"cm"^2$]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Überprüfe immer deine Einheiten!]
  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist, dass die Gesamtoberfläche der zusammengesetzten Figur 226 Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Denke daran, dass es immer wichtig ist, deine Einheiten zu überprüfen, wenn du mit Flächenproblemen arbeitest. In diesem Fall arbeiten wir mit Quadratzentimetern.")
  ]
]