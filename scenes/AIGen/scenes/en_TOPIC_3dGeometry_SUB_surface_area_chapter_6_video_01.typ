#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of Composite Figures]
  #v(40pt)
  
  #only("1-")[- Imagine designing a unique package 📦]
  #v(20pt)
  #only("2-")[- Complex shapes in architecture 🏛️]
  #v(20pt)
  #only("3-")[- Calculating paint needed for a sculpture 🎨]
  
  #only("1")[
    #voiceover("Welcome to our lesson on the surface area of composite figures. Have you ever wondered how to calculate the amount of wrapping paper needed for a uniquely shaped gift box?")
  ]
  #only("2")[
    #voiceover("Or perhaps you've marveled at complex architectural designs and wondered how engineers determine the amount of material needed for the exterior?")
  ]
  #only("3")[
    #voiceover("Maybe you're an artist trying to figure out how much paint you'll need for a sculpture? These are all situations where understanding the surface area of composite figures comes in handy.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[What are Composite Figures?]
  #v(40pt)
  
  #only("1-")[- Combination of basic 3D shapes]
  #v(20pt)
  #only("2-")[- Examples: Cubes + Cylinders, Spheres + Cones]
  #v(20pt)
  #only("3-")[- Real-world applications 🏠🚀🗽]
  
  #only("1")[
    #voiceover("Composite figures are three-dimensional objects made up of two or more basic shapes combined together.")
  ]
  #only("2")[
    #voiceover("For instance, you might have a figure that's part cube and part cylinder, or maybe a combination of a sphere and a cone.")
  ]
  #only("3")[
    #voiceover("These types of shapes are all around us - in buildings, vehicles, monuments, and more. Understanding how to work with them is crucial in many fields.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Approach to Finding Surface Area]
  #v(40pt)
  
  #only("1-")[1. Identify component shapes]
  #v(20pt)
  #only("2-")[2. Calculate individual surface areas]
  #v(20pt)
  #only("3-")[3. Subtract overlapping areas]
  #v(20pt)
  #only("4-")[4. Sum remaining areas]
  
  #only("1")[
    #voiceover("Now, let's break down our approach to finding the surface area of these composite figures. First, we need to identify the basic shapes that make up our composite figure.")
  ]
  #only("2")[
    #voiceover("Next, we calculate the surface area of each individual shape using the appropriate formulas.")
  ]
  #only("3")[
    #voiceover("Then, we need to consider any areas where these shapes overlap. We subtract these overlapping areas to avoid counting them twice.")
  ]
  #only("4")[
    #voiceover("Finally, we sum up all the remaining surface areas to get the total surface area of our composite figure.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example: Cylinder on a Cube]
  #v(20pt)
  
  #only("1-")[
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

# Cube
r = [0, 1]
x, y = np.meshgrid(r, r)
ax.plot_surface(x, y, np.zeros_like(x), alpha=0.5)
ax.plot_surface(x, y, np.ones_like(x), alpha=0.5)
for z in r:
    ax.plot3D([0, 1], [0, 0], [z, z], 'b')
    ax.plot3D([0, 1], [1, 1], [z, z], 'b')
    ax.plot3D([0, 0], [0, 1], [z, z], 'b')
    ax.plot3D([1, 1], [0, 1], [z, z], 'b')

# Cylinder
theta = np.linspace(0, 2*np.pi, 100)
z = np.linspace(1, 2, 100)
theta, z = np.meshgrid(theta, z)
x = 0.5 + 0.5*np.cos(theta)
y = 0.5 + 0.5*np.sin(theta)
ax.plot_surface(x, y, z, alpha=0.5)

ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_zlim(0, 2)
ax.set_box_aspect((1,1,2))
ax.set_axis_off()

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]
  
  #only("2-")[
    $"SA"_"total" = "SA"_"cube" + "SA"_"cylinder" - "SA"_"overlap"$
  ]
  
  #only("1")[
    #voiceover("Let's look at an example. Here we have a cylinder sitting on top of a cube. How would we find the surface area of this composite figure?")
  ]
  #only("2")[
    #voiceover("We can express this mathematically as: The total surface area equals the surface area of the cube plus the surface area of the cylinder, minus the area where they overlap.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Recap]
  #v(40pt)
  
  #only("1-")[- Composite figures: combination of basic shapes]
  #v(20pt)
  #only("2-")[- Approach: Identify, Calculate, Subtract overlaps, Sum]
  #v(20pt)
  #only("3-")[- Real-world applications in design and engineering]
  
  #only("1")[
    #voiceover("To recap, composite figures are combinations of basic three-dimensional shapes.")
  ]
  #only("2")[
    #voiceover("Our approach to finding their surface area involves identifying the component shapes, calculating individual surface areas, subtracting overlapping areas, and summing the results.")
  ]
  #only("3")[
    #voiceover("This concept has numerous real-world applications in fields like design, engineering, and architecture. Understanding it allows us to solve complex problems involving unique shapes and structures.")
  ]
]