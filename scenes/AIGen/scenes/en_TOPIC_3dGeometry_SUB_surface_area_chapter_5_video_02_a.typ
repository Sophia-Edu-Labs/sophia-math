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

              # Cuboid
              x = [0, 6, 6, 0, 0]
              y = [0, 0, 4, 4, 0]
              z = [0, 0, 0, 0, 0]
              ax.plot(x, y, z, 'b')
              ax.plot(x, y, [3]*5, 'b')
              for i in range(4):
                ax.plot([x[i], x[i]], [y[i], y[i]], [0, 3], 'b')

              # Cube on top
              x = [1.5, 4.5, 4.5, 1.5, 1.5]
              y = [0.5, 0.5, 3.5, 3.5, 0.5]
              z = [3, 3, 3, 3, 3]
              ax.plot(x, y, z, 'r')
              ax.plot(x, y, [6]*5, 'r')
              for i in range(4):
                ax.plot([x[i], x[i]], [y[i], y[i]], [3, 6], 'r')

              ax.set_xlabel('Length (cm)')
              ax.set_ylabel('Width (cm)')
              ax.set_zlabel('Height (cm)')
              ax.set_title('Composite Figure: Cuboid with Cube on Top')

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
    - Cuboid: 6 cm × 4 cm × 3 cm
    - Cube: 3 cm side length
  ]

  #only("1")[
    #voiceover("Great job on solving this problem! Let's walk through the solution step-by-step. We have a composite figure consisting of two parts.")
  ]

  #only("2")[
    #voiceover("First, we have a cuboid with dimensions 6 centimeters by 4 centimeters by 3 centimeters. On top of it, we have a cube with a side length of 3 centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Surface Area of Cuboid]
  #v(40pt)

  #only("1-")[
    Surface Area = 2(length × width + length × height + width × height)
  ]

  #only("2-")[
    $"SA"_"cuboid" = 2(6 × 4 + 6 × 3 + 4 × 3)$
  ]

  #only("3-")[
    $"SA"_"cuboid" = 2(24 + 18 + 12)$
  ]

  #only("4-")[
    $"SA"_"cuboid" = 2(54) = 108 "cm"^2$
  ]

  #only("1")[
    #voiceover("Let's start by calculating the surface area of the cuboid. The formula for the surface area of a cuboid is twice the sum of the area of all faces.")
  ]

  #only("2")[
    #voiceover("Substituting our values, we get 2 times the sum of 6 times 4, 6 times 3, and 4 times 3.")
  ]

  #only("3")[
    #voiceover("Simplifying, we have 2 times the sum of 24, 18, and 12.")
  ]

  #only("4")[
    #voiceover("This gives us 2 times 54, which equals 108 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Surface Area of Cube]
  #v(40pt)

  #only("1-")[
    Surface Area = 6 × side length squared
  ]

  #only("2-")[
    $"SA"_"cube" = 6 × 3^2$
  ]

  #only("3-")[
    $"SA"_"cube" = 6 × 9 = 54 "cm"^2$
  ]

  #only("1")[
    #voiceover("Now, let's calculate the surface area of the cube. The formula for the surface area of a cube is 6 times the square of its side length.")
  ]

  #only("2")[
    #voiceover("With a side length of 3 centimeters, we have 6 times 3 squared.")
  ]

  #only("3")[
    #voiceover("This gives us 6 times 9, which equals 54 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Adjusting for Shared Face]
  #v(40pt)

  #only("1-")[
    - Cube's bottom face = Cuboid's top face
    - Area of shared face = 3 cm × 3 cm = 9 cm²
  ]

  #only("2-")[
    Adjustment = -9 cm²
  ]

  #only("1")[
    #voiceover("However, we need to be careful here. The bottom face of the cube is the same as the top face of the cuboid where they meet. We've counted this face twice in our calculations.")
  ]

  #only("2")[
    #voiceover("This shared face has an area of 3 times 3, which is 9 square centimeters. We need to subtract this once from our total to avoid double-counting.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Total Surface Area]
  #v(40pt)

  #only("1-")[
    Total Surface Area = SA_cuboid + SA_cube - Shared Face
  ]

  #only("2-")[
    $"Total SA" = 108 "cm"^2 + 54 "cm"^2 - 9 "cm"^2$
  ]

  #only("3-")[
    $"Total SA" = 153 "cm"^2$
  ]

  #only("1")[
    #voiceover("Now, let's put it all together. The total surface area is the sum of the surface areas of the cuboid and the cube, minus the area of the shared face.")
  ]

  #only("2")[
    #voiceover("Substituting our values, we have 108 square centimeters plus 54 square centimeters, minus 9 square centimeters.")
  ]

  #only("3")[
    #voiceover("This gives us a total surface area of 153 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[
    The total surface area of the composite figure is 153 cm².
  ]

  #only("1")[
    #voiceover("So, the final answer is that the total surface area of our composite figure is 153 square centimeters. Great job on solving this problem! Remember, when dealing with composite figures, it's important to consider how the individual shapes interact and avoid double-counting shared surfaces.")
  ]
]