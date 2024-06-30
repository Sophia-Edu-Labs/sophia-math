#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of Composite Cubes]
  #v(40pt)

  #only("1-")[
    Consider two cubes:
    - Cube A: side length 4 cm
    - Cube B: side length 2 cm
  ]

  #only("2-")[
    Joined at one face:
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
        caption: [Composite figure of two cubes joined at one face],
      )
    ]
  ]

  #only("3-")[
    Calculate the total surface area of this composite figure.
  ]

  #only("1")[
    #voiceover("Let's consider a composite figure made up of two cubes.")
  ]

  #only("2")[
    #voiceover("We have Cube A with a side length of 4 centimeters, and Cube B with a side length of 2 centimeters. These cubes are joined at one face, as shown in the figure.")
  ]

  #only("3")[
    #voiceover("Your task is to calculate the total surface area of this composite figure. Remember to consider which faces are exposed and which are joined together.")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "Calculate the surface area of a figure made up of two cubes: one with side length $4 \\text{ cm}$ and another with side length $2 \\text{ cm}$, joined at one face.", 
answerOptions: ("$\text{Surface Area} = 104 \\text{ cm}^2$", "$\text{Surface Area} = -204 \\text{ cm}^2$"), 
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