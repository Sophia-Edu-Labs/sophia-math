#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche eines Quaders]
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

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 16, 10, 5

# Vertices of the cuboid
vertices = np.array([
    [0, 0, 0],
    [l, 0, 0],
    [l, w, 0],
    [0, w, 0],
    [0, 0, h],
    [l, 0, h],
    [l, w, h],
    [0, w, h]
])

# Faces of the cuboid
faces = [
    [vertices[j] for j in [0, 1, 2, 3]],
    [vertices[j] for j in [4, 5, 6, 7]], 
    [vertices[j] for j in [0, 3, 7, 4]],
    [vertices[j] for j in [1, 2, 6, 5]],
    [vertices[j] for j in [0, 1, 5, 4]],
    [vertices[j] for j in [2, 3, 7, 6]]
]

# Plot the cuboid
ax.add_collection3d(art3d.Poly3DCollection(faces, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

# Set labels
ax.set_xlabel('Length (16 cm)')
ax.set_ylabel('Width (10 cm)')
ax.set_zlabel('Height (5 cm)')

# Set limits
ax.set_xlim(0, l)
ax.set_ylim(0, w)
ax.set_zlim(0, h)

plt.title('Cuboid with Surface Area 400 cm²')
plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]
  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben einen Quader mit einer Oberfläche von 400 Quadratzentimetern, einer Länge von 16 Zentimetern und einer Breite von 10 Zentimetern. Wir müssen seine Höhe finden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Formel für die Oberfläche]
  #v(40pt)
  #only("1-")[- Oberfläche = $2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- Wobei $l$ = Länge, $w$ = Breite, $h$ = Höhe]
  #only("1")[
    #voiceover("Lass uns mit der Formel für die Oberfläche eines Quaders beginnen. Die Oberfläche ist gleich zwei mal die Summe von Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("In dieser Formel steht l für Länge, w für Breite und h für Höhe.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Bekannte Werte einsetzen]
  #v(40pt)
  #only("1-")[- Oberfläche = $400"cm"^2$]
  #v(20pt)
  #only("2-")[- $l = 16"cm"$, $w = 10"cm"$]
  #v(20pt)
  #only("3-")[- $400 = 2(16 * 10 + 16h + 10h)$]
  #only("1")[
    #voiceover("Nun lass uns die bekannten Werte in unsere Gleichung einsetzen. Wir wissen, dass die Oberfläche 400 Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Wir wissen auch, dass die Länge 16 Zentimeter und die Breite 10 Zentimeter beträgt.")
  ]
  #only("3")[
    #voiceover("Wenn wir diese Werte in unsere Gleichung einsetzen, erhalten wir: 400 ist gleich 2 mal die Summe von 16 mal 10, plus 16h, plus 10h.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Die Gleichung vereinfachen]
  #v(40pt)
  #only("1-")[- $400 = 2(160 + 16h + 10h)$]
  #v(20pt)
  #only("2-")[- $400 = 2(160 + 26h)$]
  #v(20pt)
  #only("3-")[- $400 = 320 + 52h$]
  #only("1")[
    #voiceover("Lass uns unsere Gleichung vereinfachen. Zuerst können wir 16 mal 10 innerhalb der Klammern multiplizieren.")
  ]
  #only("2")[
    #voiceover("Dann können wir die Terme mit h kombinieren, was uns 26h ergibt.")
  ]
  #only("3")[
    #voiceover("Nun können wir die 2 außerhalb der Klammern verteilen, was zu 320 plus 52h gleich 400 führt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Nach h auflösen]
  #v(40pt)
  #only("1-")[- $400 = 320 + 52h$]
  #v(20pt)
  #only("2-")[- $80 = 52h$]
  #v(20pt)
  #only("3-")[- $h = 80/52 = 5/3 = 1.538...$]
  #only("1")[
    #voiceover("Jetzt sind wir bereit, nach h aufzulösen. Wir beginnen mit 400 gleich 320 plus 52h.")
  ]
  #only("2")[
    #voiceover("Wenn wir 320 von beiden Seiten subtrahieren, erhalten wir 80 gleich 52h.")
  ]
  #only("3")[
    #voiceover("Wenn wir beide Seiten durch 52 teilen, erhalten wir h gleich 80 geteilt durch 52, was sich zu 5 Drittel oder ungefähr 1,538 vereinfacht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[Die Höhe des Quaders beträgt $5"cm"$. 📏]
  #v(40pt)
  #only("2-")[💡 Denke daran, auf die nächste ganze Zahl zu runden!]
  #only("1")[
    #voiceover("Da wir es mit physischen Messungen zu tun haben und die Frage nach der Höhe in Zentimetern fragt, müssen wir unsere Antwort auf die nächste ganze Zahl runden. Daher beträgt die Höhe des Quaders 5 Zentimeter.")
  ]
  #only("2")[
    #voiceover("Denke daran, bei der Lösung von realen Problemen den Kontext zu berücksichtigen und entsprechend zu runden. Großartige Arbeit bei der Lösung dieses Problems!")
  ]
]