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
    Consider a cuboid with:
    - Length: 5 cm
    - Width: 3 cm
    - Height: 4 cm
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
          caption: [Cuboid with dimensions 5 cm x 3 cm x 4 cm]
        )
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[
    Question: What is the surface area of this cuboid?
  ]

  #only("1")[
    #voiceover("Let's consider a problem related to the surface area of a cuboid.")
  ]

  #only("2")[
    #voiceover("We have a cuboid with a length of 5 centimeters, a width of 3 centimeters, and a height of 4 centimeters. Here's a visual representation of our cuboid.")
  ]

  #only("3")[
    #voiceover("Now, your task is to calculate the surface area of this cuboid. Remember to consider all six faces of the cuboid in your calculation.")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "What is the surface area of a cuboid with length $5$ cm, width $3$ cm, and height $4$ cm?", 
answerOptions: ("$\text{Surface Area} = 94$", "$\text{Surface Area} = -184$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Surface Area} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)