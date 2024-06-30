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
    A cuboid has:
    - Surface area: 400 cm²
    - Length: 16 cm
    - Width: 10 cm
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
l, w, h = 16, 10, 5  # Using h=5 for visualization

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
    [vertices[2], vertices[3], vertices[7], vertices[6]]
]

# Plot sides
poly3d = [[(vertex[0], vertex[1], vertex[2]) for vertex in side] for side in sides]
ax.add_collection3d(Poly3DCollection(poly3d, facecolors='skyblue', linewidths=1, edgecolors='navy', alpha=0.6))

# Set labels
ax.set_xlabel('Length (16 cm)')
ax.set_ylabel('Width (10 cm)')
ax.set_zlabel('Height (h cm)')

# Set title
plt.title('Cuboid with Unknown Height')

# Adjust view angle
ax.view_init(elev=20, azim=45)

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
    #voiceover("Let's solve a problem about the surface area of a cuboid.")
  ]

  #only("2")[
    #voiceover("We have a cuboid with a surface area of 400 square centimeters. Its length is 16 centimeters, and its width is 10 centimeters. The height is unknown and represented by h.")
  ]

  #only("3")[
    #voiceover("Your task is to find the height of this cuboid. Use the given information about the surface area and the known dimensions to calculate the unknown height, h.")
  ]
]]

//Type: Numeric
#questionDef(
questionText: "A cuboid has a surface area of $400 	ext{ cm}^2$ and dimensions of $16 	ext{ cm} 	imes 10 	ext{ cm} 	imes h$. What is the height $(h)$?", 
answerOptions: ("$h = 4$", "$h = -4$"), 
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