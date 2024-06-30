#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of a Cuboid]
  #v(40pt)

  #only("1-")[
    Consider a cuboid with dimensions:
    - Length: 13 cm
    - Width: 7 cm
    - Height: 5 cm
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
          caption: [Cuboid with dimensions 13 cm x 7 cm x 5 cm],
        )
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[
    Calculate the surface area of this cuboid.
  ]

  #only("1")[
    #voiceover("Let's consider a problem involving the surface area of a cuboid.")
  ]

  #only("2")[
    #voiceover("We have a cuboid with a length of 13 centimeters, a width of 7 centimeters, and a height of 5 centimeters. Here's a visual representation of our cuboid.")
  ]

  #only("3")[
    #voiceover("Your task is to calculate the total surface area of this cuboid. Remember to consider all six faces of the cuboid in your calculation.")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "What is the surface area of a cuboid with dimensions $13 	ext{ cm} 	imes 7 	ext{ cm} 	imes 5 	ext{ cm}$?", 
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