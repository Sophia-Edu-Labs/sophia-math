#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of Composite Figures]
  #v(40pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube 1 (larger)
r1 = [0, 7]
for s, e in zip(np.array(list(np.ndindex((2,2,2)))), np.array(list(np.ndindex((2,2,2))))):
    if np.sum(np.abs(s-e)) == 1:
        ax.plot3D(*zip(r1[s], r1[e]), color="b")

# Cube 2 (smaller)
r2 = [7, 10]
for s, e in zip(np.array(list(np.ndindex((2,2,2)))), np.array(list(np.ndindex((2,2,2))))):
    if np.sum(np.abs(s-e)) == 1:
        ax.plot3D(*zip(r2[s], r2[e]), color="r")

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Composite Figure: Two Attached Cubes')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Excellent work! You've correctly calculated the surface area. Let's break down the solution step-by-step. Here's a visualization of our composite figure: two cubes attached at one face.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Identify the Cubes]
  #v(40pt)
  #only("1-")[- Cube 1: Side length = 7 cm 📏]
  #v(20pt)
  #only("2-")[- Cube 2: Side length = 3 cm 📏]
  #only("1")[
    #voiceover("First, let's identify our two cubes. We have a larger cube with a side length of 7 centimeters.")
  ]
  #only("2")[
    #voiceover("And a smaller cube with a side length of 3 centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Calculate Individual Surface Areas]
  #v(40pt)
  #only("1-")[- Formula: $"SA"_"cube" = 6s^2$, where $s$ is the side length]
  #v(20pt)
  #only("2-")[- Cube 1: $"SA"_1 = 6 × 7^2 = 6 × 49 = 294"cm"^2$]
  #v(20pt)
  #only("3-")[- Cube 2: $"SA"_2 = 6 × 3^2 = 6 × 9 = 54"cm"^2$]
  #only("1")[
    #voiceover("Now, let's calculate the surface area of each cube. The formula for the surface area of a cube is 6 times the square of its side length.")
  ]
  #only("2")[
    #voiceover("For the larger cube, we have 6 times 7 squared, which equals 6 times 49, giving us 294 square centimeters.")
  ]
  #only("3")[
    #voiceover("For the smaller cube, we have 6 times 3 squared, which equals 6 times 9, giving us 54 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Account for Attached Face]
  #v(40pt)
  #only("1-")[- One face is shared between cubes 🔗]
  #v(20pt)
  #only("2-")[- Subtract area of one face: $3^2 = 9"cm"^2$]
  #only("1")[
    #voiceover("However, we need to account for the fact that one face is shared between the cubes.")
  ]
  #only("2")[
    #voiceover("We need to subtract the area of this shared face. The area of the shared face is 3 squared, which is 9 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Calculate Total Surface Area]
  #v(40pt)
  #only("1-")[- $"Total SA" = "SA"_1 + "SA"_2 - "Shared Face"$]
  #v(20pt)
  #only("2-")[- $"Total SA" = 294"cm"^2 + 54"cm"^2 - 9"cm"^2$]
  #v(20pt)
  #only("3-")[- $"Total SA" = 339"cm"^2$]
  #only("1")[
    #voiceover("Now we can calculate the total surface area. It's the sum of the surface areas of both cubes, minus the area of the shared face.")
  ]
  #only("2")[
    #voiceover("So we have 294 plus 54, minus 9 square centimeters.")
  ]
  #only("3")[
    #voiceover("This gives us a total surface area of 339 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The total surface area of the composite figure is $339"cm"^2$. ✅]]
  #v(40pt)
  #only("2-")[💡 Remember: In composite figures, be careful not to count shared faces twice!]
  #only("1")[
    #voiceover("Therefore, our final answer is that the total surface area of the composite figure is 339 square centimeters.")
  ]
  #only("2")[
    #voiceover("Great job on this problem! Remember, when dealing with composite figures, it's crucial to be careful not to count shared faces twice. This attention to detail is key in solving more complex geometry problems.")
  ]
]