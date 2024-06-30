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
from mpl_toolkits.mplot3d.art3d import Poly3DCollection

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 10, 8, 5

# Vertices of the cuboid
vertices = [
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
]

# List of sides
sides = [
    [vertices[0], vertices[1], vertices[2], vertices[3]],
    [vertices[4], vertices[5], vertices[6], vertices[7]],
    [vertices[0], vertices[3], vertices[7], vertices[4]],
    [vertices[1], vertices[2], vertices[6], vertices[5]],
    [vertices[0], vertices[1], vertices[5], vertices[4]],
    [vertices[3], vertices[2], vertices[6], vertices[7]]
]

# Plot sides
for side in sides:
    poly3d = [[side[0], side[1], side[2], side[3]]]
    ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('Length (10 cm)')
ax.set_ylabel('Width (8 cm)')
ax.set_zlabel('Height (5 cm)')
ax.set_title('Cuboid with Surface Area 340 cm²')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]
  ]
  #only("1")[
    #voiceover("Keine Sorge, das war eine knifflige Frage. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einem Quader zu tun, der eine Oberfläche von 340 Quadratzentimetern hat. Seine Länge beträgt 10 Zentimeter, seine Breite 8 Zentimeter, und wir müssen seine Höhe herausfinden. Hier ist eine Visualisierung unseres Quaders.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Formel erinnern]
  #v(40pt)
  #only("1-")[- Oberfläche eines Quaders = $2("lw" + "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- Wobei $l$ = Länge, $w$ = Breite, $h$ = Höhe]
  #only("1")[
    #voiceover("Lass uns mit der Erinnerung an die Formel für die Oberfläche eines Quaders beginnen. Die Oberfläche ist gleich zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("In dieser Formel steht l für Länge, w für Breite und h für Höhe.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Bekannte Werte einsetzen]
  #v(40pt)
  #only("1-")[- Oberfläche = $340"cm"^2$]
  #v(20pt)
  #only("2-")[- Länge ($l$) = $10"cm"$]
  #v(20pt)
  #only("3-")[- Breite ($w$) = $8"cm"$]
  #v(20pt)
  #only("4-")[- Höhe ($h$) = unbekannt]
  #only("1")[
    #voiceover("Nun lass uns die bekannten Werte in unsere Formel einsetzen. Wir wissen, dass die Oberfläche 340 Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Die Länge beträgt 10 Zentimeter.")
  ]
  #only("3")[
    #voiceover("Die Breite beträgt 8 Zentimeter.")
  ]
  #only("4")[
    #voiceover("Und die Höhe müssen wir herausfinden.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Gleichung aufstellen]
  #v(40pt)
  #only("1-")[- $340 = 2(10 dot 8 + 10h + 8h)$]
  #v(20pt)
  #only("2-")[- $340 = 2(80 + 10h + 8h)$]
  #v(20pt)
  #only("3-")[- $340 = 2(80 + 18h)$]
  #only("1")[
    #voiceover("Lass uns unsere Gleichung aufstellen. Wir haben 340 gleich 2 mal die Summe aus 10 mal 8, plus 10 mal h, plus 8 mal h.")
  ]
  #only("2")[
    #voiceover("Wenn wir den ersten Term in den Klammern vereinfachen, erhalten wir 340 gleich 2 mal die Summe aus 80 plus 10h plus 8h.")
  ]
  #only("3")[
    #voiceover("Wenn wir ähnliche Terme kombinieren, haben wir 340 gleich 2 mal die Summe aus 80 plus 18h.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Nach h auflösen]
  #v(40pt)
  #only("1-")[- $340 = 2(80 + 18h)$]
  #v(20pt)
  #only("2-")[- $340 = 160 + 36h$]
  #v(20pt)
  #only("3-")[- $180 = 36h$]
  #v(20pt)
  #only("4-")[- $h = 180/36 = 5$]
  #only("1")[
    #voiceover("Nun lass uns nach h auflösen. Wir beginnen mit unserer Gleichung aus dem vorherigen Schritt.")
  ]
  #only("2")[
    #voiceover("Wenn wir die 2 ausmultiplizieren, erhalten wir 340 gleich 160 plus 36h.")
  ]
  #only("3")[
    #voiceover("Wenn wir 160 von beiden Seiten subtrahieren, bleibt 180 gleich 36h.")
  ]
  #only("4")[
    #voiceover("Schließlich, wenn wir beide Seiten durch 36 teilen, finden wir, dass h gleich 5 ist.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die Höhe des Quaders beträgt $5"cm"$. 📏]]
  #v(40pt)
  #only("2-")[💡 Denke immer daran, Einheiten in deiner Antwort anzugeben!]
  #only("1")[
    #voiceover("Daher beträgt die Höhe des Quaders 5 Zentimeter.")
  ]
  #only("2")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Denke daran, dass es immer wichtig ist, Einheiten in deiner endgültigen Antwort anzugeben. In diesem Fall wird die Höhe in Zentimetern gemessen.")
  ]
]