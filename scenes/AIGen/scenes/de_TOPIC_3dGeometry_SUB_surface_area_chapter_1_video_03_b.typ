#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche eines Würfels]
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
from itertools import product, combinations

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube
r = [0, 6]
for s, e in combinations(np.array(list(product(r, r, r))), 2):
    if np.sum(np.abs(s-e)) == r[1]-r[0]:
        ax.plot3D(*zip(s, e), color="b")

# Highlight one face
verts = [(0, 0, 0), (0, 6, 0), (6, 6, 0), (6, 0, 0)]
ax.add_collection3d(Poly3DCollection([verts], facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Cube with Edge Length 6 cm')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Leider war das nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einem Würfel zu tun, der eine Oberfläche von 216 Quadratzentimetern hat. Unsere Aufgabe ist es, die Länge einer Kante zu finden. Hier ist eine Visualisierung unseres Würfels.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Formel erinnern]
  #v(40pt)
  #only("1-")[- Oberfläche eines Würfels = 6 × (Kantenlänge)²]
  #v(20pt)
  #only("2-")[- $"SA" = 6s^2$, wobei $s$ die Kantenlänge ist]
  #only("1")[
    #voiceover("Der erste Schritt ist, sich an die Formel für die Oberfläche eines Würfels zu erinnern. Die Oberfläche eines Würfels ist gleich sechs mal das Quadrat seiner Kantenlänge.")
  ]
  #only("2")[
    #voiceover("Wir können dies als S A gleich 6 s Quadrat schreiben, wobei s die Kantenlänge darstellt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Bekannte Werte einsetzen]
  #v(40pt)
  #only("1-")[- Gegeben: Oberfläche = 216 cm²]
  #v(20pt)
  #only("2-")[- $216"cm"^2 = 6s^2$]
  #only("1")[
    #voiceover("Jetzt setzen wir das ein, was wir wissen. Uns wird gegeben, dass die Oberfläche 216 Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Also können wir unsere Gleichung als 216 Quadratzentimeter gleich 6 s Quadrat schreiben.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Nach s auflösen]
  #v(40pt)
  #only("1-")[- $216"cm"^2 = 6s^2$]
  #v(20pt)
  #only("2-")[- $36"cm"^2 = s^2$]
  #v(20pt)
  #only("3-")[- $s = 6"cm"$]
  #only("1")[
    #voiceover("Jetzt lösen wir nach s auf. Zuerst teilen wir beide Seiten durch 6.")
  ]
  #only("2")[
    #voiceover("Das ergibt 36 Quadratzentimeter gleich s Quadrat.")
  ]
  #only("3")[
    #voiceover("Wenn wir die Quadratwurzel von beiden Seiten nehmen, erhalten wir s gleich 6 Zentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die Länge einer Kante des Würfels beträgt 6 cm.]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Überprüfe immer deine Einheiten!]
  #only("1")[
    #voiceover("Also lautet unsere endgültige Antwort, dass die Länge einer Kante des Würfels 6 Zentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, dass es wichtig ist, die richtigen Einheiten in deiner Antwort anzugeben. Hier handelt es sich um eine Länge, daher sind unsere Einheiten Zentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überprüfung]
  #v(40pt)
  #only("1-")[- Kantenlänge = 6 cm]
  #v(20pt)
  #only("2-")[- Oberfläche = $6 × (6"cm")^2 = 6 × 36"cm"^2 = 216"cm"^2$]
  #v(20pt)
  #only("3-")[✅ Unsere Antwort stimmt!]
  #only("1")[
    #voiceover("Lass uns unsere Antwort überprüfen. Wir haben herausgefunden, dass die Kantenlänge 6 Zentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Wenn wir dies in unsere ursprüngliche Formel einsetzen, erhalten wir: Oberfläche gleich 6 mal 6 Zentimeter Quadrat, was 6 mal 36 Quadratzentimeter ist, was tatsächlich 216 Quadratzentimeter ergibt.")
  ]
  #only("3")[
    #voiceover("Also stimmt unsere Antwort! Großartige Arbeit bei der Lösung dieses Problems!")
  ]
]