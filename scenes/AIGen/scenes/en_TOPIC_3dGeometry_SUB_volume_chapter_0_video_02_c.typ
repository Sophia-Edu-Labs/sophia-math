#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volume of a Cube]
  #v(40pt)
  How do you calculate the volume of a cube?
  #v(20pt)
  #only("-1")[a) side length × side length]#only("2-")[#text(fill:red)[a) side length × side length]]
  #v(10pt)
  #only("-2")[b) 6 × side length]#only("3-")[#text(fill:red)[b) 6 × side length]]
  #v(10pt)
  #only("-3")[c) side length × side length × side length]#only("4-")[#text(fill:green)[c) side length × side length × side length]]
  #v(10pt)
  #only("-4")[d) side length × side length × height]#only("5-")[#text(fill:red)[d) side length × side length × height]]

  #only("1")[#voiceover("Excellent job! You've answered correctly. Let's go through each option to understand why c is the right answer and why the others are incorrect.")]
  #only("2")[#voiceover("Option a, side length times side length, is incorrect. This formula actually calculates the area of one face of the cube, not its volume.")]
  #only("3")[#voiceover("Option b, 6 times side length, is also wrong. This formula calculates the sum of the lengths of all edges of a cube, not its volume.")]
  #only("4")[#voiceover("Option c, side length times side length times side length, is the correct answer! This formula gives us the volume of a cube.")]
  #only("5")[#voiceover("Option d, side length times side length times height, is incorrect for a cube. While this formula works for rectangular prisms, in a cube all sides are equal, so we don't need to distinguish between side length and height.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Understanding Cube Volume]
  #v(20pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube vertices
vertices = [
    [0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0],
    [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]
]

# Cube edges
edges = [
    [0, 1], [1, 2], [2, 3], [3, 0],  # bottom face
    [4, 5], [5, 6], [6, 7], [7, 4],  # top face
    [0, 4], [1, 5], [2, 6], [3, 7]   # connecting edges
]

# Plot edges
for edge in edges:
    ax.plot3D(*zip(*[vertices[i] for i in edge]), color="b")

# Label axes
ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')

# Set axis limits
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_zlim(0, 1)

# Add text annotations
ax.text(0.5, -0.1, 0, "side length", ha='center')
ax.text(-0.1, 0.5, 0, "side length", va='center')
ax.text(0, 0, 0.5, "side length", va='center')

plt.title("Cube Dimensions")
plt.show()
          ```,
          width: 360pt
        ),
        caption: [A cube with labeled dimensions]
      )
    ]
  ]]
  #only("1")[#voiceover("Let's visualize a cube to understand its volume better. A cube has three dimensions: length, width, and height. In a cube, all these dimensions are equal and we call this the 'side length'.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volume Formula]
  #v(40pt)
  #only("1-")[Volume of a cube = side length × side length × side length]
  #v(20pt)
  #only("2-")[Or more concisely: $V = s^3$]
  #v(20pt)
  #only("3-")[Where $s$ is the side length]
  #only("1")[#voiceover("The volume of a cube is calculated by multiplying the side length by itself three times. This is because we're finding the space inside a three-dimensional object.")]
  #only("2")[#voiceover("We can write this more concisely as V equals s cubed, where s represents the side length.")]
  #only("3")[#voiceover("This formula works because a cube has equal length, width, and height, all represented by s.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example Calculation]
  #v(20pt)
  #only("1-")[Let's calculate the volume of a cube with side length 4 cm:]
  #v(20pt)
  #only("2-")[$ V = s^3 = 4"cm" × 4"cm" × 4"cm" = 64"cm"^3 $]
  #v(40pt)
  #only("3-")[💡 Remember: The unit for volume is cubic units (e.g., cm³)]
  #only("1")[#voiceover("Let's try an example. Suppose we have a cube with a side length of 4 centimeters.")]
  #only("2")[#voiceover("We plug 4 into our formula: V equals 4 centimeters times 4 centimeters times 4 centimeters, which equals 64 cubic centimeters.")]
  #only("3")[#voiceover("Remember, the unit for volume is always cubic units. In this case, it's cubic centimeters.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaways]
  #v(40pt)
  #only("1-")[- Cube volume = side length³]
  #v(20pt)
  #only("2-")[- All sides of a cube are equal]
  #v(20pt)
  #only("3-")[- Units are important! (e.g., cm³, m³, etc.)]
  #v(20pt)
  #only("4-")[- Practice with different side lengths to master this concept]
  #only("1")[#voiceover("To summarize, the volume of a cube is calculated by cubing its side length.")]
  #only("2")[#voiceover("Remember, all sides of a cube are equal, which is why we use the same value three times.")]
  #only("3")[#voiceover("Always include units in your answer, typically cubic units like cubic centimeters or cubic meters.")]
  #only("4")[#voiceover("To really understand this concept, try calculating the volumes of cubes with different side lengths. With practice, you'll master this important geometric principle!")]
]