#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Volumen eines Quaders]
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

# Cuboid dimensions
l, w, h = 8, 2, 3

# Create cuboid
x = np.array([0, l, l, 0, 0, l, l, 0])
y = np.array([0, 0, w, w, 0, 0, w, w])
z = np.array([0, 0, 0, 0, h, h, h, h])

# Plot vertices
ax.scatter(x, y, z)

# List of sides' vertices
verts = [[x[0],y[0],z[0]], [x[1],y[1],z[1]], [x[2],y[2],z[2]], [x[3],y[3],z[3]],
         [x[4],y[4],z[4]], [x[5],y[5],z[5]], [x[6],y[6],z[6]], [x[7],y[7],z[7]]]

# Plot sides
ax.add_collection3d(plt.fill_between(x, y, 0, facecolor='cyan', alpha=0.3), zs=0, zdir='z')
ax.add_collection3d(plt.fill_between(x, y, 0, facecolor='cyan', alpha=0.3), zs=h, zdir='z')
ax.add_collection3d(plt.fill_between(x, z, 0, facecolor='cyan', alpha=0.3), zs=0, zdir='y')
ax.add_collection3d(plt.fill_between(x, z, 0, facecolor='cyan', alpha=0.3), zs=w, zdir='y')
ax.add_collection3d(plt.fill_between(y, z, 0, facecolor='cyan', alpha=0.3), zs=0, zdir='x')
ax.add_collection3d(plt.fill_between(y, z, 0, facecolor='cyan', alpha=0.3), zs=l, zdir='x')

# Set labels and title
ax.set_xlabel('Length (8 m)')
ax.set_ylabel('Width (2 m)')
ax.set_zlabel('Height (3 m)')
ax.set_title('Cuboid 8m x 2m x 3m')

# Set axis limits
ax.set_xlim(0, l)
ax.set_ylim(0, w)
ax.set_zlim(0, h)

plt.show()
          ```,
          width: 360pt
        ),
        caption: [Quader mit den Maßen 8m x 2m x 3m]
      )
    ]
  ]]
  #only("1")[
    #voiceover("Ausgezeichnete Arbeit! Du hast das Volumen des Quaders korrekt berechnet. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir auf 48 Kubikmeter gekommen sind.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Die Formel identifizieren]
  #v(40pt)
  #only("1-")[- Volumen eines Quaders = Länge × Breite × Höhe]
  #v(20pt)
  #only("2-")[- $V = l × w × h$]
  #only("1")[
    #voiceover("Der erste Schritt ist, sich an die Formel für das Volumen eines Quaders zu erinnern. Das Volumen eines Quaders ist gleich seiner Länge multipliziert mit seiner Breite und dann multipliziert mit seiner Höhe.")
  ]
  #only("2")[
    #voiceover("Wir können dies als V gleich l mal w mal h schreiben, wobei V das Volumen, l die Länge, w die Breite und h die Höhe darstellt.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Werte einsetzen]
  #v(40pt)
  #only("1-")[- Länge (l) = 8 m]
  #v(10pt)
  #only("2-")[- Breite (w) = 2 m]
  #v(10pt)
  #only("3-")[- Höhe (h) = 3 m]
  #v(20pt)
  #only("4-")[- $V = 8"m" × 2"m" × 3"m"$]
  #only("1")[
    #voiceover("Nun setzen wir die im Beispiel gegebenen Werte ein. Wir haben eine Länge von 8 Metern,")
  ]
  #only("2")[
    #voiceover("eine Breite von 2 Metern,")
  ]
  #only("3")[
    #voiceover("und eine Höhe von 3 Metern.")
  ]
  #only("4")[
    #voiceover("Wenn wir diese in unsere Formel einsetzen, erhalten wir: Volumen gleich 8 Meter mal 2 Meter mal 3 Meter.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berechnen]
  #v(40pt)
  #only("1-")[- $V = 8"m" × 2"m" × 3"m"$]
  #v(20pt)
  #only("2-")[- $V = 16"m"^2 × 3"m"$]
  #v(20pt)
  #only("3-")[- $V = 48"m"^3$]
  #only("1")[
    #voiceover("Lass uns Schritt für Schritt berechnen. Zuerst multiplizieren wir 8 Meter mit 2 Metern.")
  ]
  #only("2")[
    #voiceover("Das ergibt 16 Quadratmeter. Dann multiplizieren wir dieses Ergebnis mit 3 Metern.")
  ]
  #only("3")[
    #voiceover("Das Endergebnis ist 48 Kubikmeter.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Das Volumen des Quaders beträgt $48"m"^3$]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Einheiten sind entscheidend!]
  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist, dass das Volumen des Quaders 48 Kubikmeter beträgt.")
  ]
  #only("2")[
    #voiceover("Es ist wichtig, daran zu denken, die richtigen Einheiten in deiner Antwort anzugeben. Hier handelt es sich um Volumen, daher sind unsere Einheiten Kubikmeter.")
  ]
]