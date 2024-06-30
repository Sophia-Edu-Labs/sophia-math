#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of a Cube]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
import numpy as np
from itertools import product, combinations

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube
r = [0, 6]
for s, e in combinations(np.array(list(product(r, r, r))), 2):
    if np.sum(np.abs(s-e)) == r[1]-r[0]:
        ax.plot3D(*zip(s, e), color="b")

# Highlight one face
verts = [(0, 0, 0), (0, 6, 0), (6, 6, 0), (6, 0, 0)]
ax.add_collection3d(Poly3DCollection([verts], facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Cube with Edge Length 6 cm')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Not quite. Let's go through the correct solution step-by-step. We're dealing with a cube that has a surface area of 216 square centimeters. Our task is to find the length of one edge. Here's a visualization of our cube.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Recall the Formula]
  #v(40pt)
  #only("1-")[- Surface Area of a Cube = 6 × (Edge Length)²]
  #v(20pt)
  #only("2-")[- $"SA" = 6s^2$, where $s$ is the edge length]
  #only("1")[
    #voiceover("The first step is to recall the formula for the surface area of a cube. The surface area of a cube is equal to six times the square of its edge length.")
  ]
  #only("2")[
    #voiceover("We can write this as S A equals 6 s squared, where s represents the edge length.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Plug in Known Values]
  #v(40pt)
  #only("1-")[- Given: Surface Area = 216 cm²]
  #v(20pt)
  #only("2-")[- $216"cm"^2 = 6s^2$]
  #only("1")[
    #voiceover("Now, let's plug in what we know. We're given that the surface area is 216 square centimeters.")
  ]
  #only("2")[
    #voiceover("So we can write our equation as 216 square centimeters equals 6 s squared.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Solve for s]
  #v(40pt)
  #only("1-")[- $216"cm"^2 = 6s^2$]
  #v(20pt)
  #only("2-")[- $36"cm"^2 = s^2$]
  #v(20pt)
  #only("3-")[- $s = 6"cm"$]
  #only("1")[
    #voiceover("Now we solve for s. First, we divide both sides by 6.")
  ]
  #only("2")[
    #voiceover("This gives us 36 square centimeters equals s squared.")
  ]
  #only("3")[
    #voiceover("Taking the square root of both sides, we get s equals 6 centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The length of one edge of the cube is 6 cm.]]
  #v(40pt)
  #only("2-")[💡 Remember: Always check your units!]
  #only("1")[
    #voiceover("So our final answer is that the length of one edge of the cube is 6 centimeters.")
  ]
  #only("2")[
    #voiceover("Remember, it's important to include the correct units in your answer. Here, we're dealing with length, so our units are centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verification]
  #v(40pt)
  #only("1-")[- Edge length = 6 cm]
  #v(20pt)
  #only("2-")[- Surface Area = $6 × (6"cm")^2 = 6 × 36"cm"^2 = 216"cm"^2$]
  #v(20pt)
  #only("3-")[✅ Our answer checks out!]
  #only("1")[
    #voiceover("Let's verify our answer. We found that the edge length is 6 centimeters.")
  ]
  #only("2")[
    #voiceover("If we plug this back into our original formula, we get: Surface Area equals 6 times 6 centimeters squared, which is 6 times 36 square centimeters, which indeed equals 216 square centimeters.")
  ]
  #only("3")[
    #voiceover("So our answer checks out! Great job solving this problem!")
  ]
]