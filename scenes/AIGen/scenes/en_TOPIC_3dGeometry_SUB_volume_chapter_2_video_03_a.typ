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

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
length, width, height = 5, 3, 4

# Draw cuboid
ax.bar3d(0, 0, 0, length, width, height, shade=True)

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')

ax.set_title('Cuboid: 5 cm × 3 cm × 4 cm')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Great job! You've correctly calculated the volume of the cuboid. Let's go through the solution step by step. Here's a visualization of our cuboid with length 5 cm, width 3 cm, and height 4 cm.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Recall the Formula]
  #v(40pt)
  #only("1-")[- Volume of a cuboid = Length × Width × Height]
  #v(20pt)
  #only("2-")[- $V = l dot w dot h$]
  #only("1")[
    #voiceover("The first step is to recall the formula for the volume of a cuboid. The volume is equal to the product of its length, width, and height.")
  ]
  #only("2")[
    #voiceover("We can write this as V equals l times w times h, where V is volume, l is length, w is width, and h is height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Substitute Values]
  #v(40pt)
  #only("1-")[- Length (l) = 5 cm]
  #v(10pt)
  #only("2-")[- Width (w) = 3 cm]
  #v(10pt)
  #only("3-")[- Height (h) = 4 cm]
  #v(20pt)
  #only("4-")[- $V = 5"cm" dot 3"cm" dot 4"cm"$]
  #only("1")[
    #voiceover("Now, let's substitute the given values. We have a length of 5 centimeters,")
  ]
  #only("2")[
    #voiceover("a width of 3 centimeters,")
  ]
  #only("3")[
    #voiceover("and a height of 4 centimeters.")
  ]
  #only("4")[
    #voiceover("Substituting these into our formula, we get: Volume equals 5 centimeters times 3 centimeters times 4 centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate]
  #v(40pt)
  #only("1-")[- $V = 5"cm" dot 3"cm" dot 4"cm"$]
  #v(20pt)
  #only("2-")[- $V = 15"cm"^2 dot 4"cm"$]
  #v(20pt)
  #only("3-")[- $V = 60"cm"^3$]
  #only("1")[
    #voiceover("Let's calculate step by step. First, we multiply 5 centimeters by 3 centimeters.")
  ]
  #only("2")[
    #voiceover("This gives us 15 square centimeters. Then we multiply this by 4 centimeters.")
  ]
  #only("3")[
    #voiceover("The final result is 60 cubic centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The volume of the cuboid is $60"cm"^3$]]
  #v(40pt)
  #only("2-")[💡 Remember: Units are crucial in geometry!]
  #only("1")[
    #voiceover("So, our final answer is that the volume of the cuboid is 60 cubic centimeters.")
  ]
  #only("2")[
    #voiceover("Remember, it's crucial to include the correct units in your answer. Here, we're dealing with volume, so our units are cubic centimeters.")
  ]
]