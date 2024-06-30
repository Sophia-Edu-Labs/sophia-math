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
import numpy as np

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
l, w, h = 9, 5, 3

# Create cuboid
xx, yy = np.meshgrid(range(2), range(2))
ax.plot_surface(xx*l, yy*w, np.zeros((2,2)), alpha=0.5)
ax.plot_surface(xx*l, yy*w, np.ones((2,2))*h, alpha=0.5)
ax.plot_surface(np.zeros((2,2)), xx*w, yy*h, alpha=0.5)
ax.plot_surface(np.ones((2,2))*l, xx*w, yy*h, alpha=0.5)
ax.plot_surface(xx*l, np.zeros((2,2)), yy*h, alpha=0.5)
ax.plot_surface(xx*l, np.ones((2,2))*w, yy*h, alpha=0.5)

# Set labels
ax.set_xlabel('Length (9 cm)')
ax.set_ylabel('Width (5 cm)')
ax.set_zlabel('Height (3 cm)')

ax.set_title('Cuboid')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Great job! You've correctly calculated the volume of the cuboid. Let's go through the solution step-by-step. Here's a visualization of our cuboid with length 9 cm, width 5 cm, and height 3 cm.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Recall the Formula]
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
  #text(size: 30pt, weight: "bold")[Step 2: Substitute Values]
  #v(40pt)
  #only("1-")[- Length, $l = 9"cm"$]
  #v(10pt)
  #only("2-")[- Width, $w = 5"cm"$]
  #v(10pt)
  #only("3-")[- Height, $h = 3"cm"$]
  #v(20pt)
  #only("4-")[- $V = 9"cm" × 5"cm" × 3"cm"$]
  #only("1")[
    #voiceover("Now, let's substitute our known values. We're given that the length is 9 centimeters,")
  ]
  #only("2")[
    #voiceover("the width is 5 centimeters,")
  ]
  #only("3")[
    #voiceover("and the height is 3 centimeters.")
  ]
  #only("4")[
    #voiceover("Substituting these into our formula, we get V equals 9 centimeters times 5 centimeters times 3 centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate]
  #v(40pt)
  #only("1-")[- $V = 9"cm" × 5"cm" × 3"cm"$]
  #v(20pt)
  #only("2-")[- $V = 45"cm"^2 × 3"cm"$]
  #v(20pt)
  #only("3-")[- $V = 135"cm"^3$]
  #only("1")[
    #voiceover("Now let's calculate. First, let's multiply 9 by 5.")
  ]
  #only("2")[
    #voiceover("9 times 5 is 45, so we have 45 square centimeters times 3 centimeters.")
  ]
  #only("3")[
    #voiceover("Finally, 45 times 3 is 135. So our final answer is 135 cubic centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The volume of the cuboid is $135"cm"^3$]]
  #v(40pt)
  #only("2-")[💡 Remember: Units are crucial in geometry!]
  #only("1")[
    #voiceover("So, our final answer is that the volume of the cuboid is 135 cubic centimeters.")
  ]
  #only("2")[
    #voiceover("Remember, it's crucial to include the correct units in your answer. Here, we're dealing with volume, so our units are cubic centimeters. Great job solving this problem!")
  ]
]