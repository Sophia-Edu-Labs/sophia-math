#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Surface Area of Composite Figures 📐]
  #v(40pt)
  #only("1-")[- Composite figures: combinations of basic shapes 🔷🔶]
  #only("2-")[- Real-world applications: architecture, packaging 🏠📦]
  #only("3-")[- Let's review the process of calculating surface area 🧮]

  #only("1")[
    #voiceover("Let's review the concept of surface area for composite figures. Composite figures are shapes made up of combinations of basic geometric shapes.")
  ]
  #only("2")[
    #voiceover("This concept is crucial in real-world applications like architecture and packaging design.")
  ]
  #only("3")[
    #voiceover("We'll review the process of calculating the surface area for these complex shapes.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating Surface Area: Step-by-Step]
  #v(20pt)
  #only("1-")[1️⃣ Break down the figure]
  #only("2-")[2️⃣ Calculate individual surface areas]
  #only("3-")[3️⃣ Subtract overlapping areas]
  #only("4-")[4️⃣ Sum up the results]

  #only("1")[
    #voiceover("Let's review the steps for calculating the surface area of a composite figure. First, we break down the composite figure into its basic component shapes.")
  ]
  #only("2")[
    #voiceover("Next, we calculate the surface area of each individual component shape using the appropriate formulas.")
  ]
  #only("3")[
    #voiceover("Then, we identify and subtract any overlapping areas to avoid double-counting.")
  ]
  #only("4")[
    #voiceover("Finally, we sum up all the individual surface areas, minus the overlaps, to get the total surface area of the composite figure.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example: L-shaped Prism]
  #v(20pt)
  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Define the vertices of the L-shaped prism
vertices = [
    [0, 0, 0], [2, 0, 0], [2, 1, 0], [3, 1, 0], [3, 3, 0], [0, 3, 0],
    [0, 0, 1], [2, 0, 1], [2, 1, 1], [3, 1, 1], [3, 3, 1], [0, 3, 1]
]

# Define the faces
faces = [
    [0, 1, 7, 6], [1, 2, 8, 7], [2, 3, 9, 8],
    [3, 4, 10, 9], [4, 5, 11, 10], [5, 0, 6, 11],
    [0, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 11]
]

# Create a list of face vertices
face_vertices = [[vertices[vert] for vert in face] for face in faces]

# Plot the faces
poly3d = Poly3DCollection(face_vertices, alpha=0.8, edgecolor='k')
ax.add_collection3d(poly3d)

# Set labels and title
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('L-shaped Prism')

# Set viewing angle
ax.view_init(elev=20, azim=45)

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]
  #only("2-")[
    #text(size: 20pt)[
      $"SA"_"total" = "SA"_"rectangle1" + "SA"_"rectangle2" - "SA"_"overlap"$
    ]
  ]
  #only("3-")[
    $"SA"_"total" = (3 dot 3 + 3 dot 1 + 3 dot 1) + (2 dot 1 + 2 dot 1 + 2 dot 2) - (1 dot 1)$
  ]
  #only("4-")[
    $"SA"_"total" = 15 + 8 - 1 = 22 "square units"$
  ]

  #only("1")[
    #voiceover("Let's review an example with this L-shaped prism. We'll calculate its surface area step by step.")
  ]
  #only("2")[
    #voiceover("We break it down into two rectangles and identify the overlapping area. The total surface area equals the sum of the surface areas of both rectangles, minus the area of overlap.")
  ]
  #only("3")[
    #voiceover("We calculate each part: for the larger rectangle, we have 3 times 3 plus 3 times 1 plus 3 times 1. For the smaller rectangle, we have 2 times 1 plus 2 times 1 plus 2 times 2. The overlap is 1 times 1.")
  ]
  #only("4")[
    #voiceover("Adding it all up, we get 15 plus 8 minus 1, which equals 22 square units.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Break down composite figures into basic shapes 🧩]
  #only("2-")[- Calculate surface areas separately 🔢]
  #only("3-")[- Subtract overlapping areas ➖]
  #only("4-")[- Sum up for total surface area ➕]

  #only("1")[
    #voiceover("To recap, when dealing with composite figures, first break them down into their basic component shapes.")
  ]
  #only("2")[
    #voiceover("Then, calculate the surface area of each component separately using the appropriate formulas.")
  ]
  #only("3")[
    #voiceover("Remember to identify and subtract any overlapping areas to avoid double-counting.")
  ]
  #only("4")[
    #voiceover("Finally, sum up all the individual surface areas, minus the overlaps, to get the total surface area of the composite figure. This method allows us to tackle complex shapes by breaking them down into manageable parts.")
  ]
]