#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of L-Shaped Figure]
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

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

def cuboid_data(o, size=(1,1,1)):
    X = [[[0, 1, 0], [0, 0, 0], [1, 0, 0], [1, 1, 0]],
         [[0, 0, 0], [0, 0, 1], [1, 0, 1], [1, 0, 0]],
         [[1, 0, 1], [1, 0, 0], [1, 1, 0], [1, 1, 1]],
         [[0, 0, 1], [0, 0, 0], [0, 1, 0], [0, 1, 1]],
         [[0, 1, 0], [0, 1, 1], [1, 1, 1], [1, 1, 0]],
         [[0, 1, 1], [0, 0, 1], [1, 0, 1], [1, 1, 1]]]
    X = np.array(X).astype(float)
    for i in range(3):
        X[:,:,i] *= size[i]
    X += np.array(o)
    return X

def plotCubeAt(pos=(0,0,0), size=(1,1,1), ax=None, **kwargs):
    if ax is None:
        ax = plt.gca()
    X = cuboid_data(pos, size)
    ax.add_collection3d(Poly3DCollection(X, facecolors=['C0', 'C1', 'C2', 'C3', 'C4', 'C5'], **kwargs))

plotCubeAt((0, 0, 0), (7, 5, 3), ax=ax, alpha=0.5)
plotCubeAt((0, 0, 3), (3, 5, 4), ax=ax, alpha=0.5)

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')
ax.set_title('L-Shaped Figure')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]
  ]  
  #only("1")[
    #voiceover("Not quite, but let's walk through the correct solution step-by-step. We're dealing with an L-shaped figure formed by two cuboids. Here's a visual representation of our figure.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Identify the Cuboids]
  #v(40pt)
  #only("1-")[- Cuboid 1: 7 cm × 5 cm × 3 cm]
  #v(20pt)
  #only("2-")[- Cuboid 2: 3 cm × 5 cm × 4 cm]
  #only("1")[
    #voiceover("Let's start by identifying our two cuboids. The first cuboid measures 7 centimeters by 5 centimeters by 3 centimeters.")
  ]
  #only("2")[
    #voiceover("The second cuboid measures 3 centimeters by 5 centimeters by 4 centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Calculate Surface Area of Cuboid 1]
  #v(40pt)
  #only("1-")[- Formula: $"SA" = 2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- $"SA"_1 = 2((7×5) + (7×3) + (5×3))$]
  #v(20pt)
  #only("3-")[- $"SA"_1 = 2(35 + 21 + 15) = 2(71) = 142 "cm"^2$]
  #only("1")[
    #voiceover("Now, let's calculate the surface area of the first cuboid. We use the formula: Surface Area equals two times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("Plugging in our values, we get: Surface Area 1 equals 2 times the sum of 7 times 5, 7 times 3, and 5 times 3.")
  ]
  #only("3")[
    #voiceover("Simplifying, we get 2 times 71, which equals 142 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate Surface Area of Cuboid 2]
  #v(40pt)
  #only("1-")[- $"SA"_2 = 2((3×5) + (3×4) + (5×4))$]
  #v(20pt)
  #only("2-")[- $"SA"_2 = 2(15 + 12 + 20) = 2(47) = 94 "cm"^2$]
  #only("1")[
    #voiceover("For the second cuboid, we follow the same process. We get: Surface Area 2 equals 2 times the sum of 3 times 5, 3 times 4, and 5 times 4.")
  ]
  #only("2")[
    #voiceover("Simplifying, we get 2 times 47, which equals 94 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Subtract Overlapping Area]
  #v(40pt)
  #only("1-")[- Overlapping area: 5 cm × 3 cm = 15 cm²]
  #v(20pt)
  #only("2-")[- We count this area twice, so subtract 30 cm²]
  #only("1")[
    #voiceover("Now, we need to account for the overlapping area where the two cuboids meet. This area is 5 centimeters by 3 centimeters, which is 15 square centimeters.")
  ]
  #only("2")[
    #voiceover("However, we've counted this area twice in our calculations, once for each cuboid. So we need to subtract twice this area, which is 30 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 5: Calculate Total Surface Area]
  #v(40pt)
  #only("1-")[- Total SA = $"SA"_1 + "SA"_2 - $ Overlapping Area]
  #v(20pt)
  #only("2-")[- Total SA = 142 cm² + 94 cm² - 30 cm² = 206 cm²]
  #only("1")[
    #voiceover("Finally, we can calculate the total surface area. It's the sum of the surface areas of both cuboids, minus the overlapping area.")
  ]
  #only("2")[
    #voiceover("So, we have 142 square centimeters plus 94 square centimeters, minus 30 square centimeters. This gives us a total of 206 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The surface area of the L-shaped figure is 206 cm²]]
  #v(40pt)
  #only("2-")[💡 Remember: Always check your units!]
  #only("1")[
    #voiceover("Therefore, the surface area of our L-shaped figure is 206 square centimeters.")
  ]
  #only("2")[
    #voiceover("Great job solving this problem! Remember, when dealing with composite figures, it's crucial to account for any overlapping areas to avoid double-counting. Always double-check your calculations and don't forget to include the correct units in your final answer.")
  ]
]