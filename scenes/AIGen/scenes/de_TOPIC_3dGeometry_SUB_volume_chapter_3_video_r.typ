#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Volumen von Quadern 📦]
  #v(40pt)
  #only("1-")[- Quader sind 3D-Formen mit rechteckigen Flächen 🧊]
  #only("2-")[- Volumen misst den Raum innerhalb eines 3D-Objekts 🌟]
  #only("3-")[- Lass uns die Formel für das Volumen eines Quaders überprüfen 📏]
  
  #only("1")[
    #voiceover("Lass uns das Volumen von Quadern überprüfen. Quader sind dreidimensionale Formen mit sechs rechteckigen Flächen.")
  ]
  #only("2")[
    #voiceover("Volumen ist ein Maß für den Raum innerhalb eines dreidimensionalen Objekts.")
  ]
  #only("3")[
    #voiceover("Wir werden die Formel zur Berechnung des Volumens eines Quaders erneut betrachten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Formel für das Quader-Volumen]
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

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 4, 3, 2

# Cuboid vertices
vertices = np.array([
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
])

# Plot cuboid
ax.scatter3D(vertices[:, 0], vertices[:, 1], vertices[:, 2])

# List of sides to plot
sides = [
    [0, 1, 2, 3], [4, 5, 6, 7], [0, 1, 5, 4],
    [2, 3, 7, 6], [1, 2, 6, 5], [0, 3, 7, 4]
]

for s in sides:
    ax.plot3D(vertices[s, 0], vertices[s, 1], vertices[s, 2], 'b-')

# Label dimensions
ax.text(l/2, -0.5, 0, 'l', fontsize=14)
ax.text(l+0.5, w/2, 0, 'w', fontsize=14)
ax.text(0, w+0.5, h/2, 'h', fontsize=14)

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')
ax.set_title('Cuboid')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]
  #only("2-")[Volumenformel: $V = l dot w dot h$]
  #v(10pt)
  #only("3-")[Wobei:]
  #only("4-")[- $l$ = Länge]
  #only("5-")[- $w$ = Breite]
  #only("6-")[- $h$ = Höhe]

  #only("1")[
    #voiceover("Hier ist eine visuelle Darstellung eines Quaders. Wie du sehen kannst, hat er drei Dimensionen: Länge, Breite und Höhe.")
  ]
  #only("2")[
    #voiceover("Die Formel für das Volumen eines Quaders ist V gleich l mal w mal h.")
  ]
  #only("3")[
    #voiceover("Lass uns aufschlüsseln, was jede Variable bedeutet:")
  ]
  #only("4")[
    #voiceover("l steht für Länge,")
  ]
  #only("5")[
    #voiceover("w steht für Breite,")
  ]
  #only("6")[
    #voiceover("und h steht für Höhe.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Formel 🧮]
  #v(40pt)
  #only("1-")[Beispiel: Quader mit den Maßen]
  #only("2-")[- Länge = 5 cm]
  #only("3-")[- Breite = 3 cm]
  #only("4-")[- Höhe = 2 cm]
  #v(20pt)
  #only("5-")[Berechnung:]
  #only("6-")[$V = 5 "cm" dot 3 "cm" dot 2 "cm"$]
  #only("7-")[$V = 30 "cm"^3$]

  #only("1")[
    #voiceover("Lass uns diese Formel an einem Beispiel anwenden. Betrachte einen Quader mit den folgenden Maßen:")
  ]
  #only("2")[
    #voiceover("Länge gleich 5 Zentimeter,")
  ]
  #only("3")[
    #voiceover("Breite gleich 3 Zentimeter,")
  ]
  #only("4")[
    #voiceover("und Höhe gleich 2 Zentimeter.")
  ]
  #only("5")[
    #voiceover("Nun, lass uns das Volumen berechnen:")
  ]
  #only("6")[
    #voiceover("Wir multiplizieren 5 Zentimeter mit 3 Zentimeter und 2 Zentimeter.")
  ]
  #only("7")[
    #voiceover("Das ergibt ein Volumen von 30 Kubikzentimetern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Formel für das Volumen eines Quaders: $V = l dot w dot h$ 📏]
  #only("2-")[- Multipliziere Länge, Breite und Höhe 🔢]
  #only("3-")[- Einheiten sind kubisch (z.B. cm³, m³) 📊]
  #only("4-")[- Nützlich für verschiedene Berechnungen im Alltag 🏠🚚📦]

  #only("1")[
    #voiceover("Zusammenfassend wird das Volumen eines Quaders mit der Formel V gleich l mal w mal h berechnet.")
  ]
  #only("2")[
    #voiceover("Wir multiplizieren einfach die Länge, Breite und Höhe des Quaders.")
  ]
  #only("3")[
    #voiceover("Denke daran, dass die resultierenden Einheiten kubisch sein werden, wie Kubikzentimeter oder Kubikmeter.")
  ]
  #only("4")[
    #voiceover("Diese Formel ist unglaublich nützlich für verschiedene Berechnungen im Alltag, von der Bestimmung der Raumgröße bis hin zur Berechnung, wie viel ein Umzugswagen fassen kann.")
  ]
]