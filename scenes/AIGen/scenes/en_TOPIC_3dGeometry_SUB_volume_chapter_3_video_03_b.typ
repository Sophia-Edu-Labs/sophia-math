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

fig = plt.figure(figsize=(10, 7))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
length, width, height = 10, 4, 3

# Create cuboid
x = [0, length, length, 0, 0]
y = [0, 0, width, width, 0]
z = [0, 0, 0, 0, height]

ax.plot3D(x, y, z, 'blue')
ax.plot3D(x, y, [height]*5, 'blue')
ax.plot3D([0, 0], [0, 0], [0, height], 'blue')
ax.plot3D([length, length], [0, 0], [0, height], 'blue')
ax.plot3D([length, length], [width, width], [0, height], 'blue')
ax.plot3D([0, 0], [width, width], [0, height], 'blue')

ax.set_xlabel('Length (10 m)')
ax.set_ylabel('Width (4 m)')
ax.set_zlabel('Height (3 m)')
ax.set_title('Cuboid Dimensions')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Not quite, but don't worry! Let's go through the correct solution step by step. We're dealing with a cuboid that has dimensions of 10 meters in length, 4 meters in width, and 3 meters in height. Here's a visual representation of our cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Identify the Formula]
  #v(40pt)
  #only("1-")[- Volume of a cuboid = Length × Width × Height]
  #v(20pt)
  #only("2-")[- $V = l × w × h$]
  #only("1")[
    #voiceover("The first step is to recall the formula for the volume of a cuboid. The volume of a cuboid is equal to its length multiplied by its width multiplied by its height.")
  ]
  #only("2")[
    #voiceover("We can write this as V equals l times w times h, where V is volume, l is length, w is width, and h is height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Plug in Values]
  #v(40pt)
  #only("1-")[- Length, $l = 10"m"$]
  #v(10pt)
  #only("2-")[- Width, $w = 4"m"$]
  #v(10pt)
  #only("3-")[- Height, $h = 3"m"$]
  #v(20pt)
  #only("4-")[- $V = 10"m" × 4"m" × 3"m"$]
  #only("1")[
    #voiceover("Now, let's plug in our known values. We're given that the length is 10 meters,")
  ]
  #only("2")[
    #voiceover("the width is 4 meters,")
  ]
  #only("3")[
    #voiceover("and the height is 3 meters.")
  ]
  #only("4")[
    #voiceover("Substituting these values into our formula, we get: Volume equals 10 meters times 4 meters times 3 meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate]
  #v(40pt)
  #only("1-")[- $V = 10"m" × 4"m" × 3"m"$]
  #v(20pt)
  #only("2-")[- $V = 40"m"^2 × 3"m"$]
  #v(20pt)
  #only("3-")[- $V = 120"m"^3$]
  #only("1")[
    #voiceover("Let's calculate step by step. First, we'll multiply 10 meters by 4 meters.")
  ]
  #only("2")[
    #voiceover("This gives us 40 square meters. Then we multiply this by 3 meters.")
  ]
  #only("3")[
    #voiceover("The final result is 120 cubic meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The volume of the cuboid is $120"m"^3$]]
  #v(40pt)
  #only("2-")[💡 Remember: Units are crucial in measurements!]
  #only("1")[
    #voiceover("So, our final answer is that the volume of the cuboid is 120 cubic meters.")
  ]
  #only("2")[
    #voiceover("Remember, it's important to include the correct units in your answer. Here, we're dealing with volume, so our units are cubic meters.")
  ]
]