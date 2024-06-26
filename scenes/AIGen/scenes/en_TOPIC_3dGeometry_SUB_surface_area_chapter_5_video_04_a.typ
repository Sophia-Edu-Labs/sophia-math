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

# Rectangular prism
l, w, h = 8, 6, 4
x = [0, l, l, 0, 0]
y = [0, 0, w, w, 0]
z = [0, 0, 0, 0, 0]
ax.plot(x, y, z, 'b')
ax.plot(x, y, [h]*5, 'b')
for i in range(4):
  ax.plot([x[i], x[i]], [y[i], y[i]], [0, h], 'b')

# Cylindrical hole
r = 1
theta = np.linspace(0, 2*np.pi, 100)
x = r * np.cos(theta) + l/2
y = r * np.sin(theta) + w/2
ax.plot(x, y, [0]*100, 'r')
ax.plot(x, y, [h]*100, 'r')

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')
ax.set_title('Rectangular Prism with Cylindrical Hole')

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
    - Rectangular prism: 8 cm × 6 cm × 4 cm
    - Cylindrical hole: radius 1 cm, height 4 cm
  ]

  #only("1")[
    #voiceover("Excellent work on solving this problem! Let's walk through the solution step-by-step. We have a rectangular prism with a cylindrical hole drilled through its center.")
  ]

  #only("2")[
    #voiceover("The rectangular prism measures 8 centimeters in length, 6 centimeters in width, and 4 centimeters in height. The cylindrical hole has a radius of 1 centimeter and goes through the entire height of the prism, which is 4 centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Surface Area of Rectangular Prism]
  #v(40pt)

  #only("1-")[
    Surface Area = 2(lw + lh + wh)
  ]

  #only("2-")[
    = 2((8 × 6) + (8 × 4) + (6 × 4))
  ]

  #only("3-")[
    = 2(48 + 32 + 24)
  ]

  #only("4-")[
    = 2(104) = 208 cm²
  ]

  #only("1")[
    #voiceover("Let's start by calculating the surface area of the rectangular prism without the hole. The formula for the surface area of a rectangular prism is 2 times the sum of length times width, length times height, and width times height.")
  ]

  #only("2")[
    #voiceover("Plugging in our values, we get 2 times the sum of 8 times 6, 8 times 4, and 6 times 4.")
  ]

  #only("3")[
    #voiceover("Simplifying, we have 2 times the sum of 48, 32, and 24.")
  ]

  #only("4")[
    #voiceover("This gives us 2 times 104, which equals 208 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Area of Circular Holes]
  #v(40pt)

  #only("1-")[
    Area of one circular face = $pi r^2$
  ]

  #only("2-")[
    = $pi × (1 "cm")^2$ = $pi$ cm²
  ]

  #only("3-")[
    Area of two circular faces = $2pi$ cm²
  ]

  #only("1")[
    #voiceover("Now, we need to account for the cylindrical hole. The hole creates two circular faces, one on the top and one on the bottom of the prism. The area of a circle is pi times radius squared.")
  ]

  #only("2")[
    #voiceover("With a radius of 1 centimeter, the area of one circular face is simply pi square centimeters.")
  ]

  #only("3")[
    #voiceover("Since we have two circular faces, the total area is 2 pi square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Area of Cylindrical Surface]
  #v(40pt)

  #only("1-")[
    Area of cylindrical surface = 2$pi$rh
  ]

  #only("2-")[
    = 2$pi$ × 1 cm × 4 cm = 8$pi$ cm²
  ]

  #only("1")[
    #voiceover("The cylindrical hole also creates a curved surface inside the prism. The area of this surface is given by 2 pi times radius times height.")
  ]

  #only("2")[
    #voiceover("Plugging in our values, we get 2 pi times 1 centimeter times 4 centimeters, which simplifies to 8 pi square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Total Surface Area]
  #v(40pt)

  #only("1-")[
    Total Surface Area = Prism SA - Circular Holes + Cylindrical Surface
  ]

  #only("2-")[
    = 208 cm² - 2$pi$ cm² + 8$pi$ cm²
  ]

  #only("3-")[
    = 208 cm² + 6$pi$ cm²
  ]

  #only("4-")[
    ≈ 226.85 cm² (rounded to 2 decimal places)
  ]

  #only("1")[
    #voiceover("To find the total surface area, we need to take the surface area of the prism, subtract the area of the two circular faces, and add the area of the cylindrical surface.")
  ]

  #only("2")[
    #voiceover("Substituting our values, we get 208 square centimeters minus 2 pi square centimeters plus 8 pi square centimeters.")
  ]

  #only("3")[
    #voiceover("Simplifying, this becomes 208 square centimeters plus 6 pi square centimeters.")
  ]

  #only("4")[
    #voiceover("Using a calculator and rounding to two decimal places, we get approximately 226.85 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Conclusion]
  #v(40pt)

  #only("1-")[
    The total surface area of the composite figure is approximately 226.85 cm².
  ]

  #only("2-")[
    Key steps:
    1. Calculate prism surface area
    2. Calculate area of circular holes
    3. Calculate area of cylindrical surface
    4. Combine all components
  ]

  #only("1")[
    #voiceover("So, the total surface area of our composite figure is approximately 226.85 square centimeters.")
  ]

  #only("2")[
    #voiceover("To recap, we solved this problem by first calculating the surface area of the rectangular prism, then accounting for the circular holes on top and bottom, and finally adding the area of the cylindrical surface inside the prism. This approach of breaking down complex shapes into simpler components is a powerful technique in geometry.")
  ]
]