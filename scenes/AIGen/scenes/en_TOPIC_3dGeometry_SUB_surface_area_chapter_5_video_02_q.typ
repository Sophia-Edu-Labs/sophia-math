#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Composite Figure Surface Area]
  #v(40pt)

  #only("1-")[
    #align(center)[
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

              # Cuboid
              x = [0, 6, 6, 0, 0]
              y = [0, 0, 4, 4, 0]
              z = [0, 0, 0, 0, 0]
              ax.plot(x, y, z, 'b')
              ax.plot(x, y, [3]*5, 'b')
              for i in range(4):
                ax.plot([x[i], x[i]], [y[i], y[i]], [0, 3], 'b')

              # Cube on top
              x = [1.5, 4.5, 4.5, 1.5, 1.5]
              y = [0.5, 0.5, 3.5, 3.5, 0.5]
              z = [3, 3, 3, 3, 3]
              ax.plot(x, y, z, 'b')
              ax.plot(x, y, [6]*5, 'b')
              for i in range(4):
                ax.plot([x[i], x[i]], [y[i], y[i]], [3, 6], 'b')

              ax.set_xlabel('Length (cm)')
              ax.set_ylabel('Width (cm)')
              ax.set_zlabel('Height (cm)')
              ax.set_title('Composite Figure: Cuboid with Cube on Top')

              plt.show()
              ```,
              width: 360pt
            ),
            caption: []
          )
        ]
      ]
    ]
  ]

  #only("2-")[
    - Cuboid: 6 cm × 4 cm × 3 cm
    - Cube: 3 cm side length
  ]

  #only("3-")[
    #text(size: 24pt, weight: "bold")[Question: What is the total surface area? 🤔]
  ]

  #only("1")[
    #voiceover("Let's consider a composite figure.")
  ]

  #only("2")[
    #voiceover("We have a cuboid with dimensions 6 centimeters by 4 centimeters by 3 centimeters, and on top of it, we have a cube with a side length of 3 centimeters.")
  ]

  #only("3")[
    #voiceover("Your task is to calculate the total surface area of this composite figure.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "A composite figure consists of a cuboid $(6 \\text{ cm} \\times 4 \\text{ cm} \\times 3 \\text{ cm})$ with a cube (side length $3 \\text{ cm}$) on top. What is the total surface area?", 
answerOptions: ("The total surface area is $126 \\text{ cm}^2$", "The total surface area is $-248 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.10000010100000001),
), 
answerOptionMatcher:("The total surface area is $\key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)