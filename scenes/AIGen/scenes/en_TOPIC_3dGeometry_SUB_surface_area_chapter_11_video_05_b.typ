#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Cuboid Surface Area]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D, art3d
import numpy as np

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 16, 10, 5

# Vertices of the cuboid
vertices = np.array([
    [0, 0, 0],
    [l, 0, 0],
    [l, w, 0],
    [0, w, 0],
    [0, 0, h],
    [l, 0, h],
    [l, w, h],
    [0, w, h]
])

# Faces of the cuboid
faces = [
    [vertices[j] for j in [0, 1, 2, 3]],
    [vertices[j] for j in [4, 5, 6, 7]], 
    [vertices[j] for j in [0, 3, 7, 4]],
    [vertices[j] for j in [1, 2, 6, 5]],
    [vertices[j] for j in [0, 1, 5, 4]],
    [vertices[j] for j in [2, 3, 7, 6]]
]

# Plot the cuboid
ax.add_collection3d(art3d.Poly3DCollection(faces, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

# Set labels
ax.set_xlabel('Length (16 cm)')
ax.set_ylabel('Width (10 cm)')
ax.set_zlabel('Height (5 cm)')

# Set limits
ax.set_xlim(0, l)
ax.set_ylim(0, w)
ax.set_zlim(0, h)

plt.title('Cuboid with Surface Area 400 cm²')
plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]
  #only("1")[
    #voiceover("Not quite, but let's go through the correct solution step by step. We have a cuboid with a surface area of 400 square centimeters, a length of 16 centimeters, and a width of 10 centimeters. We need to find its height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Surface Area Formula]
  #v(40pt)
  #only("1-")[- Surface Area = $2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- Where $l$ = length, $w$ = width, $h$ = height]
  #only("1")[
    #voiceover("Let's start by recalling the formula for the surface area of a cuboid. The surface area equals two times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("In this formula, l stands for length, w for width, and h for height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Substitute Known Values]
  #v(40pt)
  #only("1-")[- Surface Area = $400"cm"^2$]
  #v(20pt)
  #only("2-")[- $l = 16"cm"$, $w = 10"cm"$]
  #v(20pt)
  #only("3-")[- $400 = 2(16 * 10 + 16h + 10h)$]
  #only("1")[
    #voiceover("Now, let's substitute the known values into our equation. We know that the surface area is 400 square centimeters.")
  ]
  #only("2")[
    #voiceover("We also know that the length is 16 centimeters and the width is 10 centimeters.")
  ]
  #only("3")[
    #voiceover("Substituting these values into our equation, we get: 400 equals 2 times the sum of 16 times 10, plus 16h, plus 10h.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Simplify the Equation]
  #v(40pt)
  #only("1-")[- $400 = 2(160 + 16h + 10h)$]
  #v(20pt)
  #only("2-")[- $400 = 2(160 + 26h)$]
  #v(20pt)
  #only("3-")[- $400 = 320 + 52h$]
  #only("1")[
    #voiceover("Let's simplify our equation. First, we can multiply 16 by 10 inside the parentheses.")
  ]
  #only("2")[
    #voiceover("Then, we can combine the terms with h, giving us 26h.")
  ]
  #only("3")[
    #voiceover("Now, we can distribute the 2 outside the parentheses, resulting in 320 plus 52h equals 400.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Solve for h]
  #v(40pt)
  #only("1-")[- $400 = 320 + 52h$]
  #v(20pt)
  #only("2-")[- $80 = 52h$]
  #v(20pt)
  #only("3-")[- $h = 80/52 = 5/3 = 1.538...$]
  #only("1")[
    #voiceover("Now we're ready to solve for h. We start with 400 equals 320 plus 52h.")
  ]
  #only("2")[
    #voiceover("Subtracting 320 from both sides gives us 80 equals 52h.")
  ]
  #only("3")[
    #voiceover("Dividing both sides by 52, we get h equals 80 divided by 52, which simplifies to 5 thirds or approximately 1.538.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[The height of the cuboid is $5"cm"$. 📏]
  #v(40pt)
  #only("2-")[💡 Remember to round to the nearest whole number!]
  #only("1")[
    #voiceover("Since we're dealing with physical measurements and the question asks for the height in centimeters, we need to round our answer to the nearest whole number. Therefore, the height of the cuboid is 5 centimeters.")
  ]
  #only("2")[
    #voiceover("Remember, when solving real-world problems, it's important to consider the context and round appropriately. Great job on solving this problem!")
  ]
]