#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche von Quadern]
  #v(40pt)

  #only("1-")[
    Betrachte einen Quader mit:
    - Oberfläche: 242 cm²
    - Länge: 11 cm
    - Breite: 6 cm
    - Höhe: h cm
  ]

  #v(20pt)

  #only("2-")[
    #align(center)[
      #box(width: 300pt, height: 200pt)[
        #morphchildren(id: "plot")[
          #figure(
            pyimage(
```

            import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Quaderdimensionen
l, w, h = 11, 6, 4  # Verwende h=4 zur Visualisierung

# Eckpunkte des Quaders
vertices = [
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
]

# Liste der Seitenpolygone
sides = [
    [vertices[0], vertices[1], vertices[2], vertices[3]],
    [vertices[4], vertices[5], vertices[6], vertices[7]],
    [vertices[0], vertices[3], vertices[7], vertices[4]],
    [vertices[1], vertices[2], vertices[6], vertices[5]],
    [vertices[0], vertices[1], vertices[5], vertices[4]],
    [vertices[3], vertices[2], vertices[6], vertices[7]]
]

# Seiten plotten
for side in sides:
    poly3d = [side]
    ax.add_collection3d(Poly3DCollection(poly3d, facecolors='skyblue', linewidths=1, edgecolors='r', alpha=.25))

# Beschriftungen setzen
ax.set_xlabel('Länge (11 cm)')
ax.set_ylabel('Breite (6 cm)')
ax.set_zlabel('Höhe (h cm)')

# Titel setzen
plt.title('Quader mit unbekannter Höhe')

plt.tight_layout()
plt.show()
            ```,
            width: 300pt
          ),
          caption: [Quader mit unbekannter Höhe],
        )
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[
    Finde die Höhe (h) des Quaders.
  ]

  #only("1")[
    #voiceover("Betrachten wir ein Problem, das die Oberfläche eines Quaders betrifft.")
  ]

  #only("2")[
    #voiceover("Wir haben einen Quader mit einer Oberfläche von 242 Quadratzentimetern. Seine Länge beträgt 11 Zentimeter und seine Breite 6 Zentimeter. Die Höhe ist jedoch unbekannt und wird durch h Zentimeter dargestellt.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die Höhe dieses Quaders zu bestimmen. Kannst du den Wert von h herausfinden?")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "Wenn ein Quader eine Oberfläche von $242 \\text{ cm}^2$ und Abmessungen von $11 \\text{ cm} \\times 6 \\text{ cm} \\times h$ hat, wie groß ist die Höhe $(h)$?", 
answerOptions: ("$h = 5$", "$h = -6$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$h = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)