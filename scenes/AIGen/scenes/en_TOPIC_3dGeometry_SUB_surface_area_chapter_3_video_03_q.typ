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
    - Length: 10 m
    - Width: 4 m
    - Height: 3 m
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
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(10, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 10, 4, 3

# Defining the vertices of the cuboid
vertices = [
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
]

# List of sides' vertices
edges = [
    [vertices[0], vertices[1], vertices[2], vertices[3]],
    [vertices[4], vertices[5], vertices[6], vertices[7]],
    [vertices[0], vertices[3], vertices[7], vertices[4]],
    [vertices[1], vertices[2], vertices[6], vertices[5]],
    [vertices[0], vertices[1], vertices[5], vertices[4]],
    [vertices[3], vertices[2], vertices[6], vertices[7]]
]

# Plotting the cuboid
for edge in edges:
    X, Y, Z = zip(*edge)
    ax.plot(X, Y, Z, color='b')

# Setting labels
ax.set_xlabel('Length (10 m)')
ax.set_ylabel('Width (4 m)')
ax.set_zlabel('Height (3 m)')

# Setting the viewing angle
ax.view_init(elev=20, azim=45)

plt.title('Cuboid')
plt.tight_layout()
plt.show()
            ```,
            width: 360pt
          ),
          caption: [Cuboid with dimensions 10 m x 4 m x 3 m]
        )]
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[
    Calculate the surface area of this cuboid.
  ]

  #only("1")[
    #voiceover("Let's consider a cuboid with specific dimensions.")
  ]

  #only("2")[
    #voiceover("Here we have a cuboid with a length of 10 meters, a width of 4 meters, and a height of 3 meters.")
  ]

  #only("3")[
    #voiceover("Your task is to calculate the surface area of this cuboid. Remember to consider all six faces of the cuboid in your calculation.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Calculate the surface area of a cuboid with dimensions $10 \\text{ m} \\times 4 \\text{ m} \\times 3 \\text{ m}$.", 
answerOptions: ("$\text{Surface Area} = 164 \\text{ m}^2$", "$\text{Surface Area} = -324 \\text{ m}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Surface Area} = \key{a} \\text{ m}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)