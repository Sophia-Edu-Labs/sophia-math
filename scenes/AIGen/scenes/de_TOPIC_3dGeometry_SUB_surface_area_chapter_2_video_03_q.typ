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
    Betrachte einen Quader mit:
    - Länge: 5 cm
    - Breite: 3 cm
    - Höhe: 4 cm
  ]

  #v(20pt)

  #only("2-")[
    #align(center)[
      #box(width: 200pt, height: 150pt)[
        #morphchildren(id: "plot")[
          #figure(
            pyimage(
```

            import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 5, 3, 4

# Plotting the cuboid
ax.bar3d(0, 0, 0, l, w, h, shade=True)

# Setting labels
ax.set_xlabel('Length (5 cm)')
ax.set_ylabel('Width (3 cm)')
ax.set_zlabel('Height (4 cm)')

# Removing tick labels
ax.set_xticklabels([])
ax.set_yticklabels([])
ax.set_zticklabels([])

plt.title('Cuboid')
plt.tight_layout()
plt.show()
            ```,
            width: 300pt
          ),
          caption: [Quader mit den Maßen 5 cm x 3 cm x 4 cm]
        )
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[
    Frage: Was ist die Oberfläche dieses Quaders?
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem zur Oberfläche eines Quaders betrachten.")
  ]

  #only("2")[
    #voiceover("Wir haben einen Quader mit einer Länge von 5 Zentimetern, einer Breite von 3 Zentimetern und einer Höhe von 4 Zentimetern. Hier ist eine visuelle Darstellung unseres Quaders.")
  ]

  #only("3")[
    #voiceover("Nun ist es Deine Aufgabe, die Oberfläche dieses Quaders zu berechnen. Denke daran, alle sechs Flächen des Quaders in Deine Berechnung einzubeziehen.")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "Was ist die Oberfläche eines Quaders mit einer Länge von $5$ cm, einer Breite von $3$ cm und einer Höhe von $4$ cm?", 
answerOptions: ("$\text{Oberfläche} = 94$", "$\text{Oberfläche} = -184$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Oberfläche} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)