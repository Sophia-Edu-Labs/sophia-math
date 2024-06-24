#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Advanced Surface Area of Composite Figures]
  #v(40pt)

  #only("1-")[
    #align(center)[
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

# Cuboid
x = [0, 4, 4, 0, 0]
y = [0, 0, 3, 3, 0]
z = [0, 0, 0, 0, 0]
ax.plot(x, y, z, 'b')
ax.plot(x, y, [2]*5, 'b')
for i in range(4):
    ax.plot([x[i], x[i]], [y[i], y[i]], [0, 2], 'b')

# Cylinder on top
radius = 1
height = 2
theta = np.linspace(0, 2*np.pi, 100)
z = np.linspace(2, 4, 100)
theta, z = np.meshgrid(theta, z)
x = radius*np.cos(theta) + 2
y = radius*np.sin(theta) + 1.5
ax.plot_surface(x, y, z, alpha=0.5)

ax.set_xlabel('Length (m)')
ax.set_ylabel('Width (m)')
ax.set_zlabel('Height (m)')
ax.set_title('Composite Figure: Cuboid with Cylinder')

plt.show()

```,
            width: 360pt
          ),
          caption: []
        )
      ]
    ]
  ]
  ]

  #only("2-")[
    - Cuboid: 4m × 3m × 2m
    - Cylinder: radius 1m, height 2m
  ]

  #only("3-")[
    #text(size: 24pt, weight: "bold")[Question: How to calculate the total surface area? 🤔]
  ]

  #only("1")[
    #voiceover("Welcome to our lesson on advanced surface area of composite figures. Imagine you're an architect designing a unique building. You might encounter structures that combine different shapes, like this one.")
  ]

  #only("2")[
    #voiceover("Here we have a composite figure consisting of a cuboid base with dimensions 4 meters by 3 meters by 2 meters, and on top of it, we have a cylinder with a radius of 1 meter and a height of 2 meters.")
  ]

  #only("3")[
    #voiceover("Our challenge today is to calculate the total surface area of this composite figure. This might seem tricky at first, but we'll break it down step by step. Are you ready to dive in?")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Approach to Solving]
  #v(40pt)

  #only("1-")[1. Identify individual shapes 🔍]
  #v(20pt)
  #only("2-")[2. Calculate surface areas separately 🧮]
  #v(20pt)
  #only("3-")[3. Identify hidden surfaces 🙈]
  #v(20pt)
  #only("4-")[4. Subtract hidden areas ➖]
  #v(20pt)
  #only("5-")[5. Sum up visible areas ➕]

  #only("1")[
    #voiceover("Let's approach this problem systematically. First, we need to identify the individual shapes that make up our composite figure.")
  ]

  #only("2")[
    #voiceover("Next, we'll calculate the surface areas of these shapes separately.")
  ]

  #only("3")[
    #voiceover("Then, we need to identify any surfaces that are hidden where the shapes meet.")
  ]

  #only("4")[
    #voiceover("We'll subtract these hidden areas from our calculations.")
  ]

  #only("5")[
    #voiceover("Finally, we'll sum up all the visible areas to get our total surface area.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Recap]
  #v(40pt)

  #only("1-")[- Composite figures combine multiple shapes 🏗️]
  #v(20pt)
  #only("2-")[- Surface area calculation requires careful analysis 🔬]
  #v(20pt)
  #only("3-")[- Key steps: Identify, Calculate, Adjust, Sum ✅]

  #only("1")[
    #voiceover("To recap, composite figures are structures that combine multiple shapes. In our example, we have a cuboid and a cylinder.")
  ]

  #only("2")[
    #voiceover("Calculating the surface area of such figures requires careful analysis. We can't simply add up the surface areas of the individual shapes.")
  ]

  #only("3")[
    #voiceover("The key steps are to identify the shapes, calculate their individual surface areas, adjust for hidden surfaces, and then sum up the visible areas. In our next lesson, we'll work through a detailed example to put these steps into practice.")
  ]
]