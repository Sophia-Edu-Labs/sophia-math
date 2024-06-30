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

# Large cube
x, y, z = np.meshgrid(np.arange(6), np.arange(6), np.arange(6), indexing='ij')
filled_large = (x < 5) & (y < 5) & (z < 5)
ax.voxels(x, y, z, filled_large, edgecolors='b')

# Small cube
x, y, z = np.meshgrid(np.arange(5, 11), np.arange(1, 7), np.arange(1, 7), indexing='ij')
filled_small = (x < 10) & (y < 6) & (z < 6)
ax.voxels(x, y, z, filled_small, edgecolors='r')

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Composite Figure: Two Cubes')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Keine Sorge, das war eine knifflige Frage. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben eine zusammengesetzte Figur, die aus zwei Würfeln besteht: einem größeren Würfel mit einer Seitenlänge von 5 cm und einem kleineren Würfel mit einer Seitenlänge von 3 cm, der an einer Seite des größeren Würfels befestigt ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Komponenten identifizieren]
  #v(40pt)
  #only("1-")[- Großer Würfel: Seitenlänge = 5 cm 📏]
  #v(20pt)
  #only("2-")[- Kleiner Würfel: Seitenlänge = 3 cm 📐]
  #only("1")[
    #voiceover("Zuerst identifizieren wir unsere Komponenten. Wir haben einen großen Würfel mit einer Seitenlänge von 5 Zentimetern.")
  ]
  #only("2")[
    #voiceover("Und wir haben einen kleineren Würfel mit einer Seitenlänge von 3 Zentimetern, der an einer Seite des größeren Würfels befestigt ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Oberfläche des großen Würfels berechnen]
  #v(40pt)
  #only("1-")[- Formel: $"SA"_"large" = 6s^2$, wobei $s$ die Seitenlänge ist]
  #v(20pt)
  #only("2-")[- $"SA"_"large" = 6 × (5"cm")^2 = 6 × 25"cm"^2 = 150"cm"^2$]
  #only("1")[
    #voiceover("Nun berechnen wir die Oberfläche des großen Würfels. Die Formel für die Oberfläche eines Würfels ist 6 mal das Quadrat seiner Seitenlänge.")
  ]
  #only("2")[
    #voiceover("Wenn wir 5 Zentimeter für die Seitenlänge einsetzen, erhalten wir 6 mal 5 zum Quadrat, was 6 mal 25 ergibt, also 150 Quadratzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Oberfläche des kleinen Würfels berechnen]
  #v(40pt)
  #only("1-")[- Formel: $"SA"_"small" = 6s^2$, wobei $s$ die Seitenlänge ist]
  #v(20pt)
  #only("2-")[- $"SA"_"small" = 6 × (3"cm")^2 = 6 × 9"cm"^2 = 54"cm"^2$]
  #only("1")[
    #voiceover("Als nächstes berechnen wir die Oberfläche des kleinen Würfels. Wir verwenden die gleiche Formel, aber mit einer Seitenlänge von 3 Zentimetern.")
  ]
  #only("2")[
    #voiceover("Das ergibt 6 mal 3 zum Quadrat, was 6 mal 9 ergibt, also 54 Quadratzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Gemeinsame Fläche berücksichtigen]
  #v(40pt)
  #only("1-")[- Gemeinsame Fläche: $5"cm" × 5"cm" = 25"cm"^2$]
  #v(20pt)
  #only("2-")[- Diese Fläche wird doppelt gezählt, daher müssen wir sie einmal abziehen]
  #only("1")[
    #voiceover("Nun müssen wir die gemeinsame Fläche zwischen den beiden Würfeln berücksichtigen. Diese Fläche hat eine Größe von 5 Zentimetern mal 5 Zentimetern, was 25 Quadratzentimeter ergibt.")
  ]
  #only("2")[
    #voiceover("Da diese Fläche sowohl in den Berechnungen für den großen als auch für den kleinen Würfel enthalten ist, haben wir sie doppelt gezählt. Wir müssen sie einmal abziehen, um eine doppelte Zählung zu vermeiden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 5: Gesamte Oberfläche berechnen]
  #v(40pt)
  #only("1-")[- $"SA"_"total" = "SA"_"large" + "SA"_"small" - "SA"_"shared"$]
  #v(20pt)
  #only("2-")[- $"SA"_"total" = 150"cm"^2 + 54"cm"^2 - 25"cm"^2 = 179"cm"^2$]
  #only("1")[
    #voiceover("Schließlich berechnen wir die gesamte Oberfläche. Wir addieren die Oberflächen des großen und des kleinen Würfels und ziehen dann die Fläche der gemeinsamen Seite ab.")
  ]
  #only("2")[
    #voiceover("Das ergibt 150 plus 54 minus 25, was 179 Quadratzentimeter ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die gesamte Oberfläche beträgt $179"cm"^2$. 🎉]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Bei zusammengesetzten Figuren darauf achten, gemeinsame Flächen nicht doppelt zu zählen!]
  #only("1")[
    #voiceover("Also lautet unsere endgültige Antwort, dass die gesamte Oberfläche der zusammengesetzten Figur 179 Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, bei zusammengesetzten Figuren darauf zu achten, gemeinsame Flächen nicht doppelt zu zählen. Dies ist ein häufiger Fehler, der zu falschen Antworten führen kann.")
  ]
]