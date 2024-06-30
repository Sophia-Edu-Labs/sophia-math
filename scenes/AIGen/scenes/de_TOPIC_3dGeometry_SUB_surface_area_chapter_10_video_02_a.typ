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
l, w, h = 13, 7, 5

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
    poly3d = [[vertices[0], vertices[1], vertices[2], vertices[3]] for vertices in [side]]
    ax.add_collection3d(Poly3DCollection(poly3d, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('Length (13 cm)')
ax.set_ylabel('Width (7 cm)')
ax.set_zlabel('Height (5 cm)')
ax.set_title('Cuboid 13 cm x 7 cm x 5 cm')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einem Quader zu tun, der die Abmessungen 13 Zentimeter mal 7 Zentimeter mal 5 Zentimeter hat. Hier ist eine visuelle Darstellung unseres Quaders.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Die Formel erinnern]
  #v(40pt)
  #only("1-")[- Oberfläche eines Quaders = $2(lw + lh + wh)$]
  #v(20pt)
  #only("2-")[- Wobei $l$ = Länge, $w$ = Breite, $h$ = Höhe]
  #only("1")[
    #voiceover("Der erste Schritt ist, sich an die Formel für die Oberfläche eines Quaders zu erinnern. Sie lautet: zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("In dieser Formel steht $l$ für Länge, $w$ für Breite und $h$ für Höhe.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Werte einsetzen]
  #v(40pt)
  #only("1-")[- $l$ = 13 cm, $w$ = 7 cm, $h$ = 5 cm]
  #v(20pt)
  #only("2-")[- Oberfläche = $2(13 \times 7 + 13 \times 5 + 7 \times 5)$ cm²]
  #only("1")[
    #voiceover("Nun setzen wir unsere Werte ein. Wir haben eine Länge von 13 Zentimetern, eine Breite von 7 Zentimetern und eine Höhe von 5 Zentimetern.")
  ]
  #only("2")[
    #voiceover("Wenn wir diese in unsere Formel einsetzen, erhalten wir: Oberfläche gleich zwei mal die Summe aus dreizehn mal sieben, plus dreizehn mal fünf, plus sieben mal fünf, alles in Quadratzentimetern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berechnen]
  #v(40pt)
  #only("1-")[- Oberfläche = $2(91 + 65 + 35)$ cm²]
  #v(20pt)
  #only("2-")[- Oberfläche = $2(191)$ cm²]
  #v(20pt)
  #only("3-")[- Oberfläche = 382 cm²]
  #only("1")[
    #voiceover("Lass uns Schritt für Schritt berechnen. Zuerst ist dreizehn mal sieben gleich einundneunzig, dreizehn mal fünf gleich fünfundsechzig, und sieben mal fünf gleich fünfunddreißig.")
  ]
  #only("2")[
    #voiceover("Wenn wir diese addieren, erhalten wir einhunderteinundneunzig in den Klammern.")
  ]
  #only("3")[
    #voiceover("Schließlich, durch Multiplikation mit zwei, erhalten wir unsere Antwort: dreihundertzweiundachtzig Quadratzentimeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die Oberfläche des Quaders beträgt 382 cm²]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Immer die Einheiten in deiner Antwort angeben!]
  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist, dass die Oberfläche des Quaders dreihundertzweiundachtzig Quadratzentimeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, es ist immer wichtig, die richtigen Einheiten in deiner Antwort anzugeben. Hier handelt es sich um Fläche, daher sind unsere Einheiten Quadratzentimeter.")
  ]
]