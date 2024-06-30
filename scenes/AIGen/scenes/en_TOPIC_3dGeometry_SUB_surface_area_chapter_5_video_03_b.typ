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

# Large cube
x, y, z = np.meshgrid(np.arange(6), np.arange(6), np.arange(6), indexing='ij')
filled_large = (x < 5) & (y < 5) & (z < 5)
ax.voxels(x, y, z, filled_large, edgecolors='b')

# Small cube
x, y, z = np.meshgrid(np.arange(5, 11), np.arange(1, 7), np.arange(1, 7), indexing='ij')
filled_small = (x < 10) & (y < 6) & (z < 6)
ax.voxels(x, y, z, filled_small, edgecolors='r')

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Composite Figure: Two Cubes')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Let's review the correct solution step-by-step.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Identify the Components]
  #v(40pt)
  #only("1-")[- Large cube: side length = 5 cm 📏]
  #v(20pt)
  #only("2-")[- Small cube: side length = 3 cm 📐]
  #only("1")[
    #voiceover("First, let's identify our components. We have a large cube with a side length of 5 centimeters.")
  ]
  #only("2")[
    #voiceover("And we have a smaller cube with a side length of 3 centimeters attached to one face of the larger cube.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Calculate Surface Area of Large Cube]
  #v(40pt)
  #only("1-")[- Formula: $"SA"_"large" = 6s^2$, where $s$ is the side length]
  #v(20pt)
  #only("2-")[- $"SA"_"large" = 6 × (5"cm")^2 = 6 × 25"cm"^2 = 150"cm"^2$]
  #only("1")[
    #voiceover("Now, let's calculate the surface area of the large cube. The formula for the surface area of a cube is 6 times the square of its side length.")
  ]
  #only("2")[
    #voiceover("Plugging in 5 centimeters for the side length, we get 6 times 5 squared, which equals 6 times 25, giving us 150 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate Surface Area of Small Cube]
  #v(40pt)
  #only("1-")[- Formula: $"SA"_"small" = 6s^2$, where $s$ is the side length]
  #v(20pt)
  #only("2-")[- $"SA"_"small" = 6 × (3"cm")^2 = 6 × 9"cm"^2 = 54"cm"^2$]
  #only("1")[
    #voiceover("Next, let's calculate the surface area of the small cube. We use the same formula, but with a side length of 3 centimeters.")
  ]
  #only("2")[
    #voiceover("This gives us 6 times 3 squared, which equals 6 times 9, resulting in 54 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Account for Shared Face]
  #v(40pt)
  #only("1-")[- Shared face area: $5"cm" × 5"cm" = 25"cm"^2$]
  #v(20pt)
  #only("2-")[- This area is counted twice, so we need to subtract it once]
  #only("1")[
    #voiceover("Now, we need to account for the shared face between the two cubes. This face has an area of 5 centimeters times 5 centimeters, which is 25 square centimeters.")
  ]
  #only("2")[
    #voiceover("Since this area is included in both the large and small cube calculations, we've counted it twice. We need to subtract it once to avoid double-counting.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 5: Calculate Total Surface Area]
  #v(40pt)
  #only("1-")[- $"SA"_"total" = "SA"_"large" + "SA"_"small" - "SA"_"shared"$]
  #v(20pt)
  #only("2-")[- $"SA"_"total" = 150"cm"^2 + 54"cm"^2 - 25"cm"^2 = 179"cm"^2$]
  #only("1")[
    #voiceover("Finally, let's calculate the total surface area. We add the surface areas of the large and small cubes, then subtract the area of the shared face.")
  ]
  #only("2")[
    #voiceover("This gives us 150 plus 54 minus 25, which equals 179 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The total surface area is $179"cm"^2$. 🎉]]
  #v(40pt)
  #only("2-")[💡 Remember: In composite figures, be careful not to double-count shared surfaces!]
  #only("1")[
    #voiceover("So, our final answer is that the total surface area of the composite figure is 179 square centimeters.")
  ]
  #only("2")[
    #voiceover("Remember, when dealing with composite figures, it's crucial to be careful not to double-count shared surfaces. This is a common mistake that can lead to incorrect answers.")
  ]
]