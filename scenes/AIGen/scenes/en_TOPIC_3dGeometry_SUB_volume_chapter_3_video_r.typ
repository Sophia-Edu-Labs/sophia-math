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
  #only("3-")[- Let's review the formula for cuboid volume 📏]
  
  #only("1")[
    #voiceover("Let's review the volume of cuboids. Cuboids are three-dimensional shapes with six rectangular faces.")
  ]
  #only("2")[
    #voiceover("Volume is a measure of the space inside a three-dimensional object.")
  ]
  #only("3")[
    #voiceover("We'll revisit the formula used to calculate the volume of a cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Cuboid Volume Formula]
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

# Cuboid vertices
vertices = np.array([
    [0, 0, 0], [l, 0, 0], [l, w, 0], [0, w, 0],
    [0, 0, h], [l, 0, h], [l, w, h], [0, w, h]
])

# Plot cuboid
ax.scatter3D(vertices[:, 0], vertices[:, 1], vertices[:, 2])

# List of sides to plot
sides = [
    [0, 1, 2, 3], [4, 5, 6, 7], [0, 1, 5, 4],
    [2, 3, 7, 6], [1, 2, 6, 5], [0, 3, 7, 4]
]

for s in sides:
    ax.plot3D(vertices[s, 0], vertices[s, 1], vertices[s, 2], 'b-')

# Label dimensions
ax.text(l/2, -0.5, 0, 'l', fontsize=14)
ax.text(l+0.5, w/2, 0, 'w', fontsize=14)
ax.text(0, w+0.5, h/2, 'h', fontsize=14)

ax.set_xlabel('Length')
ax.set_ylabel('Width')
ax.set_zlabel('Height')
ax.set_title('Cuboid')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
        caption: [],
      )
    ]
  ]]
  #only("2-")[Volume Formula: $V = l dot w dot h$]
  #v(10pt)
  #only("3-")[Where:]
  #only("4-")[- $l$ = length]
  #only("5-")[- $w$ = width]
  #only("6-")[- $h$ = height]

  #only("1")[
    #voiceover("Here's a visual representation of a cuboid. As you can see, it has three dimensions: length, width, and height.")
  ]
  #only("2")[
    #voiceover("The formula for the volume of a cuboid is V equals l times w times h.")
  ]
  #only("3")[
    #voiceover("Let's break down what each variable represents:")
  ]
  #only("4")[
    #voiceover("l stands for length,")
  ]
  #only("5")[
    #voiceover("w stands for width,")
  ]
  #only("6")[
    #voiceover("and h stands for height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Formula 🧮]
  #v(40pt)
  #only("1-")[Example: Cuboid with dimensions]
  #only("2-")[- Length = 5 cm]
  #only("3-")[- Width = 3 cm]
  #only("4-")[- Height = 2 cm]
  #v(20pt)
  #only("5-")[Calculation:]
  #only("6-")[$V = 5 "cm" dot 3 "cm" dot 2 "cm"$]
  #only("7-")[$V = 30 "cm"^3$]

  #only("1")[
    #voiceover("Let's apply this formula to an example. Consider a cuboid with the following dimensions:")
  ]
  #only("2")[
    #voiceover("Length equals 5 centimeters,")
  ]
  #only("3")[
    #voiceover("Width equals 3 centimeters,")
  ]
  #only("4")[
    #voiceover("and Height equals 2 centimeters.")
  ]
  #only("5")[
    #voiceover("Now, let's calculate the volume:")
  ]
  #only("6")[
    #voiceover("We multiply 5 centimeters by 3 centimeters by 2 centimeters.")
  ]
  #only("7")[
    #voiceover("This gives us a volume of 30 cubic centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Cuboid volume formula: $V = l dot w dot h$ 📏]
  #only("2-")[- Multiply length, width, and height 🔢]
  #only("3-")[- Units are cubic (e.g., cm³, m³) 📊]
  #only("4-")[- Useful for various real-world calculations 🏠🚚📦]

  #only("1")[
    #voiceover("To summarize, the volume of a cuboid is calculated using the formula V equals l times w times h.")
  ]
  #only("2")[
    #voiceover("We simply multiply the length, width, and height of the cuboid.")
  ]
  #only("3")[
    #voiceover("Remember, the resulting units will be cubic, such as cubic centimeters or cubic meters.")
  ]
  #only("4")[
    #voiceover("This formula is incredibly useful for various real-world calculations, from determining the size of a room to figuring out how much a moving truck can hold.")
  ]
]