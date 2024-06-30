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
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(

```
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Larger cube
ax.bar3d(0, 0, 0, 4, 4, 4, color='lightblue', alpha=0.8)

# Smaller cube
ax.bar3d(4, 1, 0, 2, 2, 2, color='lightgreen', alpha=0.8)

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Composite Figure: Two Cubes')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Great job on solving this problem! Let's go through the solution step-by-step. We have a composite figure made up of two cubes: one with a side length of 4 cm and another with a side length of 2 cm, joined at one face.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Identify the Cubes]
  #v(40pt)
  #only("1-")[- Cube 1: Side length = 4 cm 🟦]
  #v(20pt)
  #only("2-")[- Cube 2: Side length = 2 cm 🟩]
  #only("1")[
    #voiceover("First, let's identify our two cubes. We have a larger cube with a side length of 4 centimeters.")
  ]
  #only("2")[
    #voiceover("And a smaller cube with a side length of 2 centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Calculate Surface Areas]
  #v(40pt)
  #only("1-")[- Surface Area of a Cube = 6 × (Side length)²]
  #v(20pt)
  #only("2-")[- Cube 1: $"SA"_1 = 6 × 4^2 = 6 × 16 = 96"cm"^2$]
  #v(20pt)
  #only("3-")[- Cube 2: $"SA"_2 = 6 × 2^2 = 6 × 4 = 24"cm"^2$]
  #only("1")[
    #voiceover("Now, let's calculate the surface areas. Remember, the surface area of a cube is six times the square of its side length.")
  ]
  #only("2")[
    #voiceover("For the larger cube, we have six times four squared, which equals ninety-six square centimeters.")
  ]
  #only("3")[
    #voiceover("For the smaller cube, we have six times two squared, which equals twenty-four square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Account for Joined Face]
  #v(40pt)
  #only("1-")[- Area of joined face = Side length² = $2^2 = 4"cm"^2$]
  #v(20pt)
  #only("2-")[- This area is counted twice, so we subtract it once]
  #only("1")[
    #voiceover("Now, we need to account for the face where the cubes are joined. This face has an area of two squared, which is four square centimeters.")
  ]
  #only("2")[
    #voiceover("Since this face is counted in both cubes' surface areas, we need to subtract it once to avoid counting it twice.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Calculate Total Surface Area]
  #v(40pt)
  #only("1-")[- Total SA = $"SA"_1 + "SA"_2 - "Joined Face Area"$]
  #v(20pt)
  #only("2-")[- Total SA = $96"cm"^2 + 24"cm"^2 - 4"cm"^2$]
  #v(20pt)
  #only("3-")[- Total SA = $116"cm"^2$]
  #only("1")[
    #voiceover("Finally, let's calculate the total surface area. We add the surface areas of both cubes and subtract the area of the joined face.")
  ]
  #only("2")[
    #voiceover("That's ninety-six plus twenty-four minus four square centimeters.")
  ]
  #only("3")[
    #voiceover("Which gives us a total of one hundred and sixteen square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The total surface area is $116"cm"^2$]]
  #v(40pt)
  #only("2-")[💡 Remember: In composite figures, be careful not to count shared faces twice!]
  #only("1")[
    #voiceover("So, our final answer is that the surface area of the composite figure is one hundred and sixteen square centimeters.")
  ]
  #only("2")[
    #voiceover("Great job! Remember, when dealing with composite figures, it's crucial to be careful not to count shared faces twice. This problem-solving skill will be useful in many future geometry problems.")
  ]
]