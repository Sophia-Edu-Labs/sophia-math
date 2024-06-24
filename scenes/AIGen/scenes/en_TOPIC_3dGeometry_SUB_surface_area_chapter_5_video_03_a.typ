#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[L-Shaped Figure Surface Area]
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

              fig = plt.figure(figsize=(10, 8))
              ax = fig.add_subplot(111, projection='3d')

              # Cuboid 1
              x1 = [0, 7, 7, 0, 0]
              y1 = [0, 0, 5, 5, 0]
              z1 = [0, 0, 0, 0, 0]
              ax.plot(x1, y1, z1, 'b')
              ax.plot(x1, y1, [3]*5, 'b')
              for i in range(4):
                  ax.plot([x1[i], x1[i]], [y1[i], y1[i]], [0, 3], 'b')

              # Cuboid 2
              x2 = [0, 3, 3, 0, 0]
              y2 = [0, 0, 5, 5, 0]
              z2 = [3, 3, 3, 3, 3]
              ax.plot(x2, y2, z2, 'r')
              ax.plot(x2, y2, [7]*5, 'r')
              for i in range(4):
                  ax.plot([x2[i], x2[i]], [y2[i], y2[i]], [3, 7], 'r')

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
  ]

  #only("2-")[
    - Blue cuboid: 7 cm × 5 cm × 3 cm
    - Red cuboid: 3 cm × 5 cm × 4 cm
  ]

  #only("1")[
    #voiceover("Great job on solving this problem! Let's walk through the solution step-by-step. We're dealing with an L-shaped figure formed by two cuboids.")
  ]

  #only("2")[
    #voiceover("As we can see in the diagram, we have a blue cuboid that's 7 centimeters long, 5 centimeters wide, and 3 centimeters high. On top of it, we have a red cuboid that's 3 centimeters long, 5 centimeters wide, and 4 centimeters high.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating Surface Area]
  #v(40pt)

  #only("1-")[
    1. Calculate area of each face
    2. Sum up all visible faces
    3. Subtract overlapping area
  ]

  #only("2-")[
    Blue cuboid faces:
    - Top: $7 * 5 = 35 "cm"^2$
    - Front: $7 * 3 = 21 "cm"^2$
    - Back: $7 * 3 = 21 "cm"^2$
    - Left side: $5 * 3 = 15 "cm"^2$
    - Right side: $5 * 3 = 15 "cm"^2$
  ]

  #only("1")[
    #voiceover("To calculate the surface area, we'll follow these steps: First, we'll calculate the area of each face. Then, we'll sum up all the visible faces. Finally, we'll subtract any overlapping areas.")
  ]

  #only("2")[
    #voiceover("Let's start with the blue cuboid. The top face is 7 by 5, giving us 35 square centimeters. The front and back are both 7 by 3, each 21 square centimeters. The left and right sides are both 5 by 3, each 15 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating Surface Area (Continued)]
  #v(40pt)

  #only("1-")[
    Red cuboid faces:
    - Top: $3 * 5 = 15 "cm"^2$
    - Front: $3 * 4 = 12 "cm"^2$
    - Back: $3 * 4 = 12 "cm"^2$
    - Right side: $5 * 4 = 20 "cm"^2$
  ]

  #only("2-")[
    Overlapping area:
    - Bottom of red cuboid: $3 * 5 = 15 "cm"^2$
  ]

  #only("1")[
    #voiceover("Now for the red cuboid. The top is 3 by 5, so 15 square centimeters. The front and back are both 3 by 4, each 12 square centimeters. The right side is 5 by 4, so 20 square centimeters.")
  ]

  #only("2")[
    #voiceover("We need to be careful not to count the bottom of the red cuboid, as it's not visible. This overlapping area is 3 by 5, or 15 square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Calculation]
  #v(40pt)

  #only("1-")[
    Total surface area:
    #only("1")[= Sum of all visible faces - Overlapping area]
    #only("2-")[= $(35 + 21 + 21 + 15 + 15) + (15 + 12 + 12 + 20) - 15$]
    #only("3-")[= $107 + 59 - 15$]
    #only("4-")[= $151 "cm"^2$]
  ]

  #only("1")[
    #voiceover("Now, let's put it all together. The total surface area will be the sum of all visible faces minus the overlapping area.")
  ]

  #only("2")[
    #voiceover("That's 35 plus 21 plus 21 plus 15 plus 15 for the blue cuboid, plus 15 plus 12 plus 12 plus 20 for the red cuboid, minus 15 for the overlapping area.")
  ]

  #only("3")[
    #voiceover("This simplifies to 107 plus 59 minus 15.")
  ]

  #only("4")[
    #voiceover("And our final answer is 151 square centimeters!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaways]
  #v(40pt)

  #only("1-")[
    - Break complex shapes into simpler ones 📐
    - Calculate area of each face 🧮
    - Remember to subtract overlapping areas ➖
    - Double-check your calculations ✅
  ]

  #only("1")[
    #voiceover("Great job solving this problem! Remember, when dealing with composite figures, it's helpful to break them down into simpler shapes. Calculate the area of each face, but be careful not to count overlapping areas twice. Always double-check your calculations. Keep practicing, and you'll master these types of problems in no time!")
  ]
]