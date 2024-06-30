#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche der L-förmigen Figur]
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

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

def cuboid_data(o, size=(1,1,1)):
    X = [[[0, 1, 0], [0, 0, 0], [1, 0, 0], [1, 1, 0]],
         [[0, 0, 0], [0, 0, 1], [1, 0, 1], [1, 0, 0]],
         [[1, 0, 1], [1, 0, 0], [1, 1, 0], [1, 1, 1]],
         [[0, 0, 1], [0, 0, 0], [0, 1, 0], [0, 1, 1]],
         [[0, 1, 0], [0, 1, 1], [1, 1, 1], [1, 1, 0]],
         [[0, 1, 1], [0, 0, 1], [1, 0, 1], [1, 1, 1]]]
    X = np.array(X).astype(float)
    for i in range(3):
        X[:,:,i] *= size[i]
    X += np.array(o)
    return X

def plotCubeAt(pos=(0,0,0), size=(1,1,1), ax=None, **kwargs):
    if ax is None:
        ax = plt.gca()
    X = cuboid_data(pos, size)
    ax.add_collection3d(Poly3DCollection(X, facecolors=['C0', 'C1', 'C2', 'C3', 'C4', 'C5'], **kwargs))

plotCubeAt((0, 0, 0), (7, 5, 3), ax=ax, alpha=0.5)
plotCubeAt((0, 0, 3), (3, 5, 4), ax=ax, alpha=0.5)

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')
ax.set_title('L-Shaped Figure')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Keine Sorge, wir gehen die Lösung gemeinsam durch. Hier ist eine visuelle Darstellung unserer L-förmigen Figur, die aus zwei Quadern besteht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Die Quader identifizieren]
  #v(40pt)
  #only("1-")[- Quader 1: 7 cm × 5 cm × 3 cm]
  #v(20pt)
  #only("2-")[- Quader 2: 3 cm × 5 cm × 4 cm]
  #only("1")[
    #voiceover("Lass uns mit der Identifizierung unserer beiden Quader beginnen. Der erste Quader misst 7 Zentimeter mal 5 Zentimeter mal 3 Zentimeter.")
  ]
  #only("2")[
    #voiceover("Der zweite Quader misst 3 Zentimeter mal 5 Zentimeter mal 4 Zentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Oberfläche von Quader 1 berechnen]
  #v(40pt)
  #only("1-")[- Formel: $"SA" = 2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- $"SA"_1 = 2((7×5) + (7×3) + (5×3))$]
  #v(20pt)
  #only("3-")[- $"SA"_1 = 2(35 + 21 + 15) = 2(71) = 142 "cm"^2$]
  #only("1")[
    #voiceover("Nun berechnen wir die Oberfläche des ersten Quaders. Wir verwenden die Formel: Oberfläche ist gleich zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir: Oberfläche 1 ist gleich 2 mal die Summe aus 7 mal 5, 7 mal 3 und 5 mal 3.")
  ]
  #only("3")[
    #voiceover("Vereinfacht ergibt das 2 mal 71, was 142 Quadratzentimeter ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Oberfläche von Quader 2 berechnen]
  #v(40pt)
  #only("1-")[- $"SA"_2 = 2((3×5) + (3×4) + (5×4))$]
  #v(20pt)
  #only("2-")[- $"SA"_2 = 2(15 + 12 + 20) = 2(47) = 94 "cm"^2$]
  #only("1")[
    #voiceover("Für den zweiten Quader folgen wir dem gleichen Prozess. Wir erhalten: Oberfläche 2 ist gleich 2 mal die Summe aus 3 mal 5, 3 mal 4 und 5 mal 4.")
  ]
  #only("2")[
    #voiceover("Vereinfacht ergibt das 2 mal 47, was 94 Quadratzentimeter ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Überlappende Fläche abziehen]
  #v(40pt)
  #only("1-")[- Überlappende Fläche: 5 cm × 3 cm = 15 cm²]
  #v(20pt)
  #only("2-")[- Diese Fläche wird zweimal gezählt, also 30 cm² abziehen]
  #only("1")[
    #voiceover("Nun müssen wir die überlappende Fläche berücksichtigen, wo sich die beiden Quader treffen. Diese Fläche beträgt 5 Zentimeter mal 3 Zentimeter, was 15 Quadratzentimeter ergibt.")
  ]
  #only("2")[
    #voiceover("Allerdings haben wir diese Fläche in unseren Berechnungen zweimal gezählt, einmal für jeden Quader. Daher müssen wir diese Fläche zweimal abziehen, was 30 Quadratzentimeter ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 5: Gesamte Oberfläche berechnen]
  #v(40pt)
  #only("1-")[- Gesamte Oberfläche = $"SA"_1 + "SA"_2 - $ Überlappende Fläche]
  #v(20pt)
  #only("2-")[- Gesamte Oberfläche = 142 cm² + 94 cm² - 30 cm² = 206 cm²]
  #only("1")[
    #voiceover("Schließlich können wir die gesamte Oberfläche berechnen. Es ist die Summe der Oberflächen beider Quader, minus der überlappenden Fläche.")
  ]
  #only("2")[
    #voiceover("Also haben wir 142 Quadratzentimeter plus 94 Quadratzentimeter, minus 30 Quadratzentimeter. Das ergibt insgesamt 206 Quadratzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die Oberfläche der L-förmigen Figur beträgt 206 cm²]]
  #v(40pt)
  #only("2-")[💡 Denk daran: Überprüfe immer deine Einheiten!]
  #only("1")[
    #voiceover("Daher beträgt die Oberfläche unserer L-förmigen Figur 206 Quadratzentimeter.")
  ]
  #only("2")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Denke daran, bei zusammengesetzten Figuren immer die überlappenden Flächen zu berücksichtigen, um Doppelzählungen zu vermeiden. Überprüfe immer deine Berechnungen und vergiss nicht, die richtigen Einheiten in deiner endgültigen Antwort anzugeben.")
  ]
]