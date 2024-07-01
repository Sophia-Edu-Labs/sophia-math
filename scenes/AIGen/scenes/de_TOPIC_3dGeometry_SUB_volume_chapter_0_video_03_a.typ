#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volumen eines Würfels]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D, art3d
import numpy as np

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube
points = np.array([[0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0],
                   [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]])
Z = points
ax.scatter3D(Z[:, 0], Z[:, 1], Z[:, 2])

# List of sides' polygons
verts = [[Z[0], Z[1], Z[2], Z[3]], [Z[4], Z[5], Z[6], Z[7]], 
         [Z[0], Z[1], Z[5], Z[4]], [Z[2], Z[3], Z[7], Z[6]], 
         [Z[1], Z[2], Z[6], Z[5]], [Z[4], Z[7], Z[3], Z[0]]]

# Plot sides
ax.add_collection3d(art3d.Poly3DCollection(verts, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('Length (4 cm)')
ax.set_ylabel('Width (4 cm)')
ax.set_zlabel('Height (4 cm)')
ax.set_title('Cube with Side Length 4 cm')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Großartig! Du hast das Volumen des Würfels korrekt berechnet. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einem Würfel zu tun, der eine Seitenlänge von 4 Zentimetern hat. Hier ist eine Visualisierung unseres Würfels.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Die Formel erinnern]
  #v(40pt)
  #only("1-")[- Volumen eines Würfels = (Seitenlänge)³]
  #v(20pt)
  #only("2-")[- $V = s^3$, wobei $s$ die Seitenlänge ist]
  #only("1")[
    #voiceover("Der erste Schritt ist, sich an die Formel für das Volumen eines Würfels zu erinnern. Das Volumen eines Würfels ist gleich der Seitenlänge hoch drei.")
  ]
  #only("2")[
    #voiceover("Wir können dies als V gleich s hoch drei schreiben, wobei s die Seitenlänge darstellt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Werte einsetzen]
  #v(40pt)
  #only("1-")[- Seitenlänge, $s = 4"cm"$]
  #v(20pt)
  #only("2-")[- $V = (4"cm")^3$]
  #only("1")[
    #voiceover("Nun, lass uns unseren bekannten Wert einsetzen. Es wird angegeben, dass die Seitenlänge 4 Zentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Also setzen wir 4 Zentimeter für s in unsere Formel ein. Das ergibt: Volumen gleich 4 Zentimeter hoch drei.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berechnen]
  #v(40pt)
  #only("1-")[- $V = (4"cm")^3$]
  #v(20pt)
  #only("2-")[- $V = 4"cm" × 4"cm" × 4"cm"$]
  #v(20pt)
  #only("3-")[- $V = 64"cm"^3$]
  #only("1")[
    #voiceover("Jetzt lass uns berechnen. Wir müssen 4 Zentimeter hoch drei nehmen.")
  ]
  #only("2")[
    #voiceover("Das bedeutet, dass wir 4 Zentimeter dreimal miteinander multiplizieren.")
  ]
  #only("3")[
    #voiceover("4 mal 4 mal 4 ergibt 64. Also ist unsere endgültige Antwort 64 Kubikzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Das Volumen des Würfels beträgt $64"cm"^3$]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Einheiten sind entscheidend!]
  #only("1")[
    #voiceover("Also lautet unsere endgültige Antwort, dass das Volumen des Würfels 64 Kubikzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, dass es wichtig ist, die richtigen Einheiten in deiner Antwort anzugeben. Hier handelt es sich um Volumen, daher sind unsere Einheiten Kubikzentimeter.")
  ]
]