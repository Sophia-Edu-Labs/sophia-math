#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of Cuboid]
  #v(40pt)

  #only("1-")[
    A cuboid has:
    - Surface area: 198 m²
    - Length: 9 m
    - Width: 5 m
    - Height: h
  ]

  #v(20pt)

  #only("2-")[
    #text(fill: blue)[Find the height (h) of the cuboid.]
  ]

  #only("1")[
    #voiceover("Let's solve a problem about the surface area of a cuboid.")
  ]

  #only("2")[
    #voiceover("We have a cuboid with a surface area of 198 square meters. Its length is 9 meters and its width is 5 meters. Can you determine the height of this cuboid?")
  ]

  #only("3-")[
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

# Cuboid dimensions
l, w, h = 9, 5, 4  # We use a placeholder value for h

# Vertices of the cuboid
vertices = np.array([
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
])

# Plot vertices
ax.scatter3D(vertices[:, 0], vertices[:, 1], vertices[:, 2])

# List of sides
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
    side_with_closure = side + [side[0]]  # Create a new list with closure
    xs, ys, zs = zip(*side_with_closure)
    ax.plot(xs, ys, zs, 'b-')

# Label dimensions
ax.text(l/2, -0.5, 0, '9 m', ha='center')
ax.text(l+0.5, w/2, 0, '5 m', ha='center')
ax.text(l+0.5, 0, h/2, 'h', ha='center')

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')

plt.title('Cuboid with Unknown Height')
plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [Cuboid with dimensions 9m x 5m x h],
      )
    ]
  ]]

  #only("3")[
    #voiceover("Here's a visual representation of our cuboid. We know its length and width, but we need to find its height. Remember, the surface area is the total area of all six faces of the cuboid.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "A cuboid has a surface area of $198 	ext{ m}^2$ and dimensions of $9 	ext{ m} 	imes 5 	ext{ m} 	imes h$. What is the height $(h)$?", 
answerOptions: ("$h = 2$", "$h = 0$"), 
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