#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of Cuboids]
  #v(40pt)

  #only("1-")[
    Consider a cuboid with:
    - Surface area: 242 cm²
    - Length: 11 cm
    - Width: 6 cm
    - Height: h cm
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

# Cuboid dimensions
l, w, h = 11, 6, 4  # Using h=4 for visualization

# Vertices of the cuboid
vertices = [
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
]

# List of sides' polygons
sides = [
    [vertices[0], vertices[1], vertices[2], vertices[3]],
    [vertices[4], vertices[5], vertices[6], vertices[7]],
    [vertices[0], vertices[3], vertices[7], vertices[4]],
    [vertices[1], vertices[2], vertices[6], vertices[5]],
    [vertices[0], vertices[1], vertices[5], vertices[4]],
    [vertices[3], vertices[2], vertices[6], vertices[7]]
]

# Plot sides
for side in sides:
    poly3d = [side]
    ax.add_collection3d(Poly3DCollection(poly3d, facecolors='skyblue', linewidths=1, edgecolors='r', alpha=.25))

# Set labels
ax.set_xlabel('Length (11 cm)')
ax.set_ylabel('Width (6 cm)')
ax.set_zlabel('Height (h cm)')

# Set title
plt.title('Cuboid with Unknown Height')

plt.tight_layout()
plt.show()
            ```,
            width: 300pt
          ),
          caption: [Cuboid with unknown height],
        )
      ]
    ]
  ]

  #v(20pt)

  #only("3-")[
    Find the height (h) of the cuboid.
  ]

  #only("1")[
    #voiceover("Let's consider a problem involving the surface area of a cuboid.")
  ]

  #only("2")[
    #voiceover("We have a cuboid with a surface area of 242 square centimeters. Its length is 11 centimeters and its width is 6 centimeters. However, the height is unknown and represented by h centimeters.")
  ]

  #only("3")[
    #voiceover("Your task is to determine the height of this cuboid. Can you find the value of h?")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "If a cuboid has a surface area of $242 \\text{ cm}^2$ and dimensions of $11 \\text{ cm} \\times 6 \\text{ cm} \\times h$, what is the height $(h)$?", 
answerOptions: ("$h = 5$", "$h = -6$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$h = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)