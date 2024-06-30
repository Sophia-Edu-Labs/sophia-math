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
from mpl_toolkits.mplot3d import Axes3D
from mpl_toolkits.mplot3d.art3d import Poly3DCollection

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 12, 7, 5

# Vertices of the cuboid
vertices = [
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
]

# List of sides' polygons
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
    poly = Poly3DCollection([side], color='cyan', alpha=0.1)
    ax.add_collection3d(poly)
    x = [vertex[0] for vertex in side]
    y = [vertex[1] for vertex in side]
    z = [vertex[2] for vertex in side]
    ax.plot(x + [x[0]], y + [y[0]], z + [z[0]], color='blue')

# Set labels and title
ax.set_xlabel('Length (12 m)')
ax.set_ylabel('Width (7 m)')
ax.set_zlabel('Height (5 m)')
ax.set_title('Cuboid 12m x 7m x 5m')

# Set axis limits
ax.set_xlim(0, l)
ax.set_ylim(0, w)
ax.set_zlim(0, h)

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben es mit einem Quader zu tun, der die Maße 12 Meter mal 7 Meter mal 5 Meter hat. Hier ist eine visuelle Darstellung unseres Quaders.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Die Formel identifizieren]
  #v(40pt)
  #only("1-")[- Oberfläche eines Quaders = $2(lw+ lh + wh)$]
  #v(20pt)
  #only("2-")[- Wobei $l$ die Länge, $w$ die Breite und $h$ die Höhe ist]
  #only("1")[
    #voiceover("Der erste Schritt ist, sich an die Formel für die Oberfläche eines Quaders zu erinnern. Die Oberfläche ist gleich zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("In dieser Formel steht $l$ für die Länge, $w$ für die Breite und $h$ für die Höhe des Quaders.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Werte einsetzen]
  #v(40pt)
  #only("1-")[- Länge ($l$) = 12 m]
  #v(20pt)
  #only("2-")[- Breite ($w$) = 7 m]
  #v(20pt)
  #only("3-")[- Höhe ($h$) = 5 m]
  #only("1")[
    #voiceover("Nun setzen wir unsere bekannten Werte ein. Die Länge beträgt 12 Meter,")
  ]
  #only("2")[
    #voiceover("die Breite beträgt 7 Meter,")
  ]
  #only("3")[
    #voiceover("und die Höhe beträgt 5 Meter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berechnen]
  #v(40pt)
  #only("1-")[Oberfläche = $2(lw+ lh + wh)$]
  #v(20pt)
  #only("2-")[$= 2((12 \cdot 7) + (12 \cdot 5) + (7 \cdot 5))$]
  #v(20pt)
  #only("3-")[$= 2(84 + 60 + 35)$]
  #v(20pt)
  #only("4-")[$= 2(179)$]
  #v(20pt)
  #only("5-")[$= 358 m²$]
  #only("1")[
    #voiceover("Lass uns Schritt für Schritt berechnen. Wir beginnen mit unserer Formel: Oberfläche ist gleich zwei mal die Summe aus Länge mal Breite, Länge mal Höhe und Breite mal Höhe.")
  ]
  #only("2")[
    #voiceover("Wenn wir unsere Werte einsetzen, erhalten wir zwei mal die Summe aus zwölf mal sieben, plus zwölf mal fünf, plus sieben mal fünf.")
  ]
  #only("3")[
    #voiceover("Lass uns die Multiplikationen in den Klammern zuerst lösen. Wir erhalten zwei mal die Summe aus vierundachtzig, plus sechzig, plus fünfunddreißig.")
  ]
  #only("4")[
    #voiceover("Wenn wir diese addieren, erhalten wir zwei mal einhundertneunundsiebzig.")
  ]
  #only("5")[
    #voiceover("Schließlich, wenn wir mit zwei multiplizieren, erhalten wir dreihundertachtundfünfzig Quadratmeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Die Oberfläche des Quaders beträgt 358 m²]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Immer die Einheiten in deiner Antwort angeben!]
  #only("1")[
    #voiceover("Also lautet unsere endgültige Antwort, dass die Oberfläche des Quaders dreihundertachtundfünfzig Quadratmeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, dass es wichtig ist, die richtigen Einheiten in deiner Antwort anzugeben. Hier haben wir es mit Fläche zu tun, also sind unsere Einheiten Quadratmeter.")
  ]
]