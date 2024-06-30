#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche von zusammengesetzten Figuren]
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

# Cube 1 (larger)
r1 = [0, 7]
for s, e in zip(np.array(list(np.ndindex((2,2,2)))), np.array(list(np.ndindex((2,2,2))))):
    if np.sum(np.abs(s-e)) == 1:
        ax.plot3D(*zip(r1[s], r1[e]), color="b")

# Cube 2 (smaller)
r2 = [7, 10]
for s, e in zip(np.array(list(np.ndindex((2,2,2)))), np.array(list(np.ndindex((2,2,2))))):
    if np.sum(np.abs(s-e)) == 1:
        ax.plot3D(*zip(r2[s], r2[e]), color="r")

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Composite Figure: Two Attached Cubes')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Ausgezeichnete Arbeit! Du hast die Oberfläche korrekt berechnet. Lass uns die Lösung Schritt für Schritt durchgehen. Hier ist eine Visualisierung unserer zusammengesetzten Figur: zwei Würfel, die an einer Seite verbunden sind.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Identifiziere die Würfel]
  #v(40pt)
  #only("1-")[- Würfel 1: Kantenlänge = 7 cm 📏]
  #v(20pt)
  #only("2-")[- Würfel 2: Kantenlänge = 3 cm 📏]
  #only("1")[
    #voiceover("Zuerst identifizieren wir unsere beiden Würfel. Wir haben einen größeren Würfel mit einer Kantenlänge von 7 Zentimetern.")
  ]
  #only("2")[
    #voiceover("Und einen kleineren Würfel mit einer Kantenlänge von 3 Zentimetern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Berechne die einzelnen Oberflächen]
  #v(40pt)
  #only("1-")[- Formel: $"SA"_"cube" = 6s^2$, wobei $s$ die Kantenlänge ist]
  #v(20pt)
  #only("2-")[- Würfel 1: $"SA"_1 = 6 × 7^2 = 6 × 49 = 294"cm"^2$]
  #v(20pt)
  #only("3-")[- Würfel 2: $"SA"_2 = 6 × 3^2 = 6 × 9 = 54"cm"^2$]
  #only("1")[
    #voiceover("Nun berechnen wir die Oberfläche jedes Würfels. Die Formel für die Oberfläche eines Würfels ist 6 mal das Quadrat seiner Kantenlänge.")
  ]
  #only("2")[
    #voiceover("Für den größeren Würfel haben wir 6 mal 7 zum Quadrat, was 6 mal 49 ergibt und uns 294 Quadratzentimeter gibt.")
  ]
  #only("3")[
    #voiceover("Für den kleineren Würfel haben wir 6 mal 3 zum Quadrat, was 6 mal 9 ergibt und uns 54 Quadratzentimeter gibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berücksichtige die verbundene Fläche]
  #v(40pt)
  #only("1-")[- Eine Fläche wird zwischen den Würfeln geteilt 🔗]
  #v(20pt)
  #only("2-")[- Subtrahiere die Fläche einer Seite: $3^2 = 9"cm"^2$]
  #only("1")[
    #voiceover("Wir müssen jedoch berücksichtigen, dass eine Fläche zwischen den Würfeln geteilt wird.")
  ]
  #only("2")[
    #voiceover("Wir müssen die Fläche dieser geteilten Seite subtrahieren. Die Fläche der geteilten Seite ist 3 zum Quadrat, was 9 Quadratzentimeter ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Berechne die gesamte Oberfläche]
  #v(40pt)
  #only("1-")[- $"Total SA" = "SA"_1 + "SA"_2 - "Shared Face"$]
  #v(20pt)
  #only("2-")[- $"Total SA" = 294"cm"^2 + 54"cm"^2 - 9"cm"^2$]
  #v(20pt)
  #only("3-")[- $"Total SA" = 339"cm"^2$]
  #only("1")[
    #voiceover("Nun können wir die gesamte Oberfläche berechnen. Es ist die Summe der Oberflächen beider Würfel, minus der Fläche der geteilten Seite.")
  ]
  #only("2")[
    #voiceover("Also haben wir 294 plus 54, minus 9 Quadratzentimeter.")
  ]
  #only("3")[
    #voiceover("Das ergibt eine Gesamtoberfläche von 339 Quadratzentimetern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die gesamte Oberfläche der zusammengesetzten Figur beträgt $339"cm"^2$. ✅]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Bei zusammengesetzten Figuren darauf achten, geteilte Flächen nicht doppelt zu zählen!]
  #only("1")[
    #voiceover("Daher lautet unsere endgültige Antwort, dass die gesamte Oberfläche der zusammengesetzten Figur 339 Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Großartige Arbeit bei diesem Problem! Denke daran, bei zusammengesetzten Figuren darauf zu achten, geteilte Flächen nicht doppelt zu zählen. Diese Aufmerksamkeit fürs Detail ist der Schlüssel zur Lösung komplexerer Geometrieprobleme.")
  ]
]