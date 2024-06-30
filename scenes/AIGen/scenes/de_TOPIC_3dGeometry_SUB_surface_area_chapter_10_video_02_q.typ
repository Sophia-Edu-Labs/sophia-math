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
    Betrachte einen Quader mit den Abmessungen:
    - Länge: 13 cm
    - Breite: 7 cm
    - Höhe: 5 cm
  ]

  #v(20pt)

  #only("2-")[
    #align(center)[
      #box()[
        #morphchildren(id: "plot")[
          #figure(
            pyimage(
```

            import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 13, 7, 5

# Plotting the cuboid
ax.bar3d(0, 0, 0, l, w, h, shade=True)

# Setting labels
ax.set_xlabel('Length (13 cm)')
ax.set_ylabel('Width (7 cm)')
ax.set_zlabel('Height (5 cm)')

# Adjusting view angle
ax.view_init(elev=20, azim=45)

plt.title('Cuboid')
plt.tight_layout()
plt.show()
            ```,
            width: 360pt
          ),
          caption: [Quader mit den Abmessungen 13 cm x 7 cm x 5 cm],
        )
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[
    Berechne die Oberfläche dieses Quaders.
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem betrachten, das die Oberfläche eines Quaders betrifft.")
  ]

  #only("2")[
    #voiceover("Wir haben einen Quader mit einer Länge von 13 Zentimetern, einer Breite von 7 Zentimetern und einer Höhe von 5 Zentimetern. Hier ist eine visuelle Darstellung unseres Quaders.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die gesamte Oberfläche dieses Quaders zu berechnen. Denke daran, alle sechs Flächen des Quaders in deine Berechnung einzubeziehen.")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "Was ist die Oberfläche eines Quaders mit den Abmessungen $13 	ext{ cm} 	imes 7 	ext{ cm} 	imes 5 	ext{ cm}$?", 
answerOptions: ("$\text{Surface Area} = 442 \\text{ cm}^2$", "$\text{Surface Area} = -880 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.10000010100000001),
), 
answerOptionMatcher:("$\text{Surface Area} = \key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)