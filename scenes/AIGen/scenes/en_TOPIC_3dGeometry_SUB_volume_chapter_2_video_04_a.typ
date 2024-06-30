#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volume of a Cuboid]
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

# Cuboid dimensions
l, w, h = 8, 2, 3

# Create cuboid
x = np.array([0, l, l, 0, 0, l, l, 0])
y = np.array([0, 0, w, w, 0, 0, w, w])
z = np.array([0, 0, 0, 0, h, h, h, h])

# Plot vertices
ax.scatter(x, y, z)

# List of sides' vertices
verts = [[x[0],y[0],z[0]], [x[1],y[1],z[1]], [x[2],y[2],z[2]], [x[3],y[3],z[3]],
         [x[4],y[4],z[4]], [x[5],y[5],z[5]], [x[6],y[6],z[6]], [x[7],y[7],z[7]]]

# Plot sides
ax.add_collection3d(plt.fill_between(x, y, 0, facecolor='cyan', alpha=0.3), zs=0, zdir='z')
ax.add_collection3d(plt.fill_between(x, y, 0, facecolor='cyan', alpha=0.3), zs=h, zdir='z')
ax.add_collection3d(plt.fill_between(x, z, 0, facecolor='cyan', alpha=0.3), zs=0, zdir='y')
ax.add_collection3d(plt.fill_between(x, z, 0, facecolor='cyan', alpha=0.3), zs=w, zdir='y')
ax.add_collection3d(plt.fill_between(y, z, 0, facecolor='cyan', alpha=0.3), zs=0, zdir='x')
ax.add_collection3d(plt.fill_between(y, z, 0, facecolor='cyan', alpha=0.3), zs=l, zdir='x')

# Set labels and title
ax.set_xlabel('Length (8 m)')
ax.set_ylabel('Width (2 m)')
ax.set_zlabel('Height (3 m)')
ax.set_title('Cuboid 8m x 2m x 3m')

# Set axis limits
ax.set_xlim(0, l)
ax.set_ylim(0, w)
ax.set_zlim(0, h)

plt.show()
          ```,
          width: 360pt
        ),
        caption: [Cuboid with dimensions 8m x 2m x 3m]
      )
    ]
  ]]
  #only("1")[
    #voiceover("Excellent work! You've correctly calculated the volume of the cuboid. Let's walk through the solution step by step to understand how we arrived at 48 cubic meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Identify the Formula]
  #v(40pt)
  #only("1-")[- Volume of a cuboid = length × width × height]
  #v(20pt)
  #only("2-")[- $V = l × w × h$]
  #only("1")[
    #voiceover("The first step is to recall the formula for the volume of a cuboid. The volume of a cuboid is equal to its length multiplied by its width and then multiplied by its height.")
  ]
  #only("2")[
    #voiceover("We can write this as V equals l times w times h, where V represents volume, l is length, w is width, and h is height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Plug in Values]
  #v(40pt)
  #only("1-")[- Length (l) = 8 m]
  #v(10pt)
  #only("2-")[- Width (w) = 2 m]
  #v(10pt)
  #only("3-")[- Height (h) = 3 m]
  #v(20pt)
  #only("4-")[- $V = 8"m" × 2"m" × 3"m"$]
  #only("1")[
    #voiceover("Now, let's plug in the values given in the question. We have a length of 8 meters,")
  ]
  #only("2")[
    #voiceover("a width of 2 meters,")
  ]
  #only("3")[
    #voiceover("and a height of 3 meters.")
  ]
  #only("4")[
    #voiceover("Substituting these into our formula, we get: Volume equals 8 meters times 2 meters times 3 meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate]
  #v(40pt)
  #only("1-")[- $V = 8"m" × 2"m" × 3"m"$]
  #v(20pt)
  #only("2-")[- $V = 16"m"^2 × 3"m"$]
  #v(20pt)
  #only("3-")[- $V = 48"m"^3$]
  #only("1")[
    #voiceover("Let's calculate step by step. First, we multiply 8 meters by 2 meters.")
  ]
  #only("2")[
    #voiceover("This gives us 16 square meters. Then we multiply this result by 3 meters.")
  ]
  #only("3")[
    #voiceover("The final result is 48 cubic meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The volume of the cuboid is $48"m"^3$]]
  #v(40pt)
  #only("2-")[💡 Remember: Units are crucial!]
  #only("1")[
    #voiceover("So, our final answer is that the volume of the cuboid is 48 cubic meters.")
  ]
  #only("2")[
    #voiceover("It's important to remember to include the correct units in your answer. Here, we're dealing with volume, so our units are cubic meters.")
  ]
]