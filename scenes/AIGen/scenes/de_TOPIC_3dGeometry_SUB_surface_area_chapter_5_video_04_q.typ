#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche von zusammengesetzten Würfeln]
  #v(40pt)

  #only("1-")[
    Betrachte zwei Würfel:
    - Würfel A: Seitenlänge 4 cm
    - Würfel B: Seitenlänge 2 cm
  ]

  #only("2-")[
    An einer Seite verbunden:
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cube A
ax.bar3d(0, 0, 0, 4, 4, 4, color='lightblue', alpha=0.8)
ax.text(2, 2, 4.5, "Cube A", ha='center', va='center')

# Cube B
ax.bar3d(1, 1, 4, 2, 2, 2, color='lightgreen', alpha=0.8)
ax.text(2, 2, 6.5, "Cube B", ha='center', va='center')

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Composite Figure of Two Cubes')

plt.show()
          ```,
          width: 360pt
        ),
        caption: [Zusammengesetzte Figur aus zwei an einer Seite verbundenen Würfeln],
      )
    ]
  ]

  #only("3-")[
    Berechne die gesamte Oberfläche dieser zusammengesetzten Figur.
  ]

  #only("1")[
    #voiceover("Betrachten wir eine zusammengesetzte Figur, die aus zwei Würfeln besteht.")
  ]

  #only("2")[
    #voiceover("Wir haben Würfel A mit einer Seitenlänge von 4 Zentimetern und Würfel B mit einer Seitenlänge von 2 Zentimetern. Diese Würfel sind an einer Seite verbunden, wie in der Abbildung gezeigt.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die gesamte Oberfläche dieser zusammengesetzten Figur zu berechnen. Denke daran, welche Flächen freiliegen und welche verbunden sind.")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "Berechne die Oberfläche einer Figur, die aus zwei Würfeln besteht: einem mit einer Seitenlänge von $4 \\text{ cm}$ und einem anderen mit einer Seitenlänge von $2 \\text{ cm}$, die an einer Seite verbunden sind.", 
answerOptions: ("$\text{Oberfläche} = 104 \\text{ cm}^2$", "$\text{Oberfläche} = -204 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.10000010100000001),
), 
answerOptionMatcher:("$\text{Oberfläche} = \key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)