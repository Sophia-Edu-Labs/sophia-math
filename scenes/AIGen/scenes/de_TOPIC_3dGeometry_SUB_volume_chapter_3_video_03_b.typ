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

fig = plt.figure(figsize=(10, 7))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
length, width, height = 10, 4, 3

# Create cuboid
x = [0, length, length, 0, 0]
y = [0, 0, width, width, 0]
z = [0, 0, 0, 0, height]

ax.plot3D(x, y, z, 'blue')
ax.plot3D(x, y, [height]*5, 'blue')
ax.plot3D([0, 0], [0, 0], [0, height], 'blue')
ax.plot3D([length, length], [0, 0], [0, height], 'blue')
ax.plot3D([length, length], [width, width], [0, height], 'blue')
ax.plot3D([0, 0], [width, width], [0, height], 'blue')

ax.set_xlabel('Length (10 m)')
ax.set_ylabel('Width (4 m)')
ax.set_zlabel('Height (3 m)')
ax.set_title('Cuboid Dimensions')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Keine Sorge, lass uns die Lösung gemeinsam durchgehen. Wir haben es mit einem Quader zu tun, der 10 Meter lang, 4 Meter breit und 3 Meter hoch ist. Hier ist eine visuelle Darstellung unseres Quaders.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Die Formel identifizieren]
  #v(40pt)
  #only("1-")[- Volumen eines Quaders = Länge × Breite × Höhe]
  #v(20pt)
  #only("2-")[- $V = l × w × h$]
  #only("1")[
    #voiceover("Der erste Schritt besteht darin, sich an die Formel für das Volumen eines Quaders zu erinnern. Das Volumen eines Quaders ist gleich seiner Länge multipliziert mit seiner Breite multipliziert mit seiner Höhe.")
  ]
  #only("2")[
    #voiceover("Wir können dies als V gleich l mal w mal h schreiben, wobei V das Volumen, l die Länge, w die Breite und h die Höhe ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Werte einsetzen]
  #v(40pt)
  #only("1-")[- Länge, $l = 10"m"$]
  #v(10pt)
  #only("2-")[- Breite, $w = 4"m"$]
  #v(10pt)
  #only("3-")[- Höhe, $h = 3"m"$]
  #v(20pt)
  #only("4-")[- $V = 10"m" × 4"m" × 3"m"$]
  #only("1")[
    #voiceover("Nun setzen wir unsere bekannten Werte ein. Wir wissen, dass die Länge 10 Meter beträgt,")
  ]
  #only("2")[
    #voiceover("die Breite 4 Meter beträgt,")
  ]
  #only("3")[
    #voiceover("und die Höhe 3 Meter beträgt.")
  ]
  #only("4")[
    #voiceover("Wenn wir diese Werte in unsere Formel einsetzen, erhalten wir: Volumen gleich 10 Meter mal 4 Meter mal 3 Meter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Berechnen]
  #v(40pt)
  #only("1-")[- $V = 10"m" × 4"m" × 3"m"$]
  #v(20pt)
  #only("2-")[- $V = 40"m"^2 × 3"m"$]
  #v(20pt)
  #only("3-")[- $V = 120"m"^3$]
  #only("1")[
    #voiceover("Lass uns Schritt für Schritt berechnen. Zuerst multiplizieren wir 10 Meter mit 4 Metern.")
  ]
  #only("2")[
    #voiceover("Das ergibt 40 Quadratmeter. Dann multiplizieren wir dies mit 3 Metern.")
  ]
  #only("3")[
    #voiceover("Das Endergebnis ist 120 Kubikmeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[Das Volumen des Quaders beträgt $120"m"^3$]]
  #v(40pt)
  #only("2-")[💡 Denke daran: Einheiten sind bei Messungen entscheidend!]
  #only("1")[
    #voiceover("Also lautet unsere endgültige Antwort, dass das Volumen des Quaders 120 Kubikmeter beträgt.")
  ]
  #only("2")[
    #voiceover("Denke daran, dass es wichtig ist, die richtigen Einheiten in deiner Antwort anzugeben. Hier handelt es sich um Volumen, daher sind unsere Einheiten Kubikmeter.")
  ]
]