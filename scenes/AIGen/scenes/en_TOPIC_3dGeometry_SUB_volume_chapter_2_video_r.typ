#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Volume of Cuboids 📦]
  #v(40pt)
  #only("1-")[- Cuboids are 3D shapes with rectangular faces 🧊]
  #only("2-")[- Volume measures the space inside a 3D object 🌟]
  #only("3-")[- Let's review how to calculate cuboid volume 🧮]
  
  #only("1")[
    #voiceover("Let's review the concept of volume for cuboids. Cuboids, also known as rectangular prisms, are three-dimensional shapes with six rectangular faces.")
  ]
  #only("2")[
    #voiceover("Volume is a measure of the amount of space inside a three-dimensional object.")
  ]
  #only("3")[
    #voiceover("We'll review how to calculate the volume of a cuboid step by step.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Cuboid Dimensions]
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

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 4, 3, 2

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

# Plot vertices
ax.scatter3D(vertices[:, 0], vertices[:, 1], vertices[:, 2])

# List of edges to plot
edges = [
    [0, 1], [1, 2], [2, 3], [3, 0],  # Bottom face
    [4, 5], [5, 6], [6, 7], [7, 4],  # Top face
    [0, 4], [1, 5], [2, 6], [3, 7]   # Connecting edges
]

# Plot edges
for edge in edges:
    ax.plot3D(*zip(*vertices[edge]), color="b")

# Label dimensions
ax.text(l/2, -0.5, 0, "Length (l)", fontsize=10)
ax.text(l+0.5, w/2, 0, "Width (w)", fontsize=10)
ax.text(0, w+0.5, h/2, "Height (h)", fontsize=10)

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

plt.title("Cuboid Dimensions")
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]
  
  #only("1")[
    #voiceover("A cuboid has three key dimensions: length, width, and height. In this diagram, we can see these dimensions labeled as l for length, w for width, and h for height.")
  ]
  #only("2")[
    #voiceover("To calculate the volume of a cuboid, we need to multiply these three dimensions together.")
  ]
  #only("3")[
    #voiceover("This gives us the formula: Volume equals length times width times height.")
  ]
  
  #v(20pt)
  #only("3-")[Volume Formula: $V = l dot w dot h$]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example Calculation 🧮]
  #v(40pt)
  #only("1-")[Given: Cuboid with]
  #only("2-")[- Length (l) = 5 cm]
  #only("3-")[- Width (w) = 3 cm]
  #only("4-")[- Height (h) = 2 cm]
  #v(20pt)
  #only("5-")[Volume $V = l dot w dot h$]
  #only("6-")[$V = 5 "cm" dot 3 "cm" dot 2 "cm"$]
  #only("7-")[$V = 30 "cm"^3$]
  
  #only("1")[
    #voiceover("Let's work through an example to calculate the volume of a cuboid.")
  ]
  #only("2")[
    #voiceover("We're given a cuboid with a length of 5 centimeters,")
  ]
  #only("3")[
    #voiceover("a width of 3 centimeters,")
  ]
  #only("4")[
    #voiceover("and a height of 2 centimeters.")
  ]
  #only("5")[
    #voiceover("We'll use our volume formula: Volume equals length times width times height.")
  ]
  #only("6")[
    #voiceover("Plugging in our values, we get 5 centimeters times 3 centimeters times 2 centimeters.")
  ]
  #only("7")[
    #voiceover("Multiplying these together, we get a volume of 30 cubic centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Volume of a cuboid: $V = l dot w dot h$ 📏]
  #only("2-")[- Multiply length, width, and height 🔢]
  #only("3-")[- Units are cubic (e.g., cm³, m³) 📊]
  #only("4-")[- Useful for real-world applications 🏠🎁]
  
  #only("1")[
    #voiceover("To recap, the volume of a cuboid is calculated by multiplying its length, width, and height.")
  ]
  #only("2")[
    #voiceover("Remember to always multiply all three dimensions together.")
  ]
  #only("3")[
    #voiceover("The resulting units will be cubic, such as cubic centimeters or cubic meters.")
  ]
  #only("4")[
    #voiceover("This formula is incredibly useful for many real-world applications, from calculating the space in a room to determining the size of a package.")
  ]
]