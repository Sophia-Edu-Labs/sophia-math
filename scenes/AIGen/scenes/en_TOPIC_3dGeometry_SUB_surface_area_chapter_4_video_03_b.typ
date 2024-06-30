#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of a Cuboid]
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

# Cuboid dimensions
l, w, h = 11, 6, 4

# Plot cuboid
ax.bar3d(0, 0, 0, l, w, h, shade=True)

# Add labels
ax.set_xlabel('Length (11 cm)')
ax.set_ylabel('Width (6 cm)')
ax.set_zlabel('Height (4 cm)')

ax.text(5.5, 3, 4.5, 'Surface Area: 242 cm²', fontsize=12)

plt.title('Cuboid with Surface Area 242 cm²')
plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]
  #only("1")[
    #voiceover("Not quite. Let's go through the solution step-by-step to understand how we arrive at the height of 4 cm for this cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Recall the Formula]
  #v(40pt)
  #only("1-")[- Surface Area of a Cuboid = $2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- Where $l$ = length, $w$ = width, $h$ = height]
  #only("1")[
    #voiceover("First, let's recall the formula for the surface area of a cuboid. It's two times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("Here, l stands for length, w for width, and h for height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Plug in Known Values]
  #v(40pt)
  #only("1-")[- Given: Surface Area = 242 cm², $l$ = 11 cm, $w$ = 6 cm]
  #v(20pt)
  #only("2-")[- $242 = 2(11 dot 6 + 11h + 6h)$]
  #only("1")[
    #voiceover("Now, let's plug in the values we know. We're given that the surface area is 242 square centimeters, the length is 11 centimeters, and the width is 6 centimeters.")
  ]
  #only("2")[
    #voiceover("Substituting these into our formula, we get: 242 equals 2 times the quantity 11 times 6, plus 11h, plus 6h.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Simplify the Equation]
  #v(40pt)
  #only("1-")[- $242 = 2(66 + 11h + 6h)$]
  #v(20pt)
  #only("2-")[- $242 = 2(66 + 17h)$]
  #v(20pt)
  #only("3-")[- $242 = 132 + 34h$]
  #only("1")[
    #voiceover("Let's simplify this equation. First, we can calculate 11 times 6, which is 66.")
  ]
  #only("2")[
    #voiceover("Then, we can combine the terms with h, giving us 17h.")
  ]
  #only("3")[
    #voiceover("Now, we can distribute the 2, resulting in 242 equals 132 plus 34h.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Solve for h]
  #v(40pt)
  #only("1-")[- $242 - 132 = 34h$]
  #v(20pt)
  #only("2-")[- $110 = 34h$]
  #v(20pt)
  #only("3-")[- $h = 110/34 = 3.235...$]
  #v(20pt)
  #only("4-")[- $h ≈ 4$ cm (rounded to nearest cm)]
  #only("1")[
    #voiceover("To solve for h, we first subtract 132 from both sides.")
  ]
  #only("2")[
    #voiceover("This gives us 110 equals 34h.")
  ]
  #only("3")[
    #voiceover("Dividing both sides by 34, we get h equals 110 divided by 34, which is approximately 3.235.")
  ]
  #only("4")[
    #voiceover("Rounding to the nearest centimeter, we get 4 centimeters for the height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The height of the cuboid is 4 cm. 📏]]
  #v(40pt)
  #only("2-")[💡 Always remember to check your units!]
  #only("1")[
    #voiceover("So, our final answer is that the height of the cuboid is 4 centimeters.")
  ]
  #only("2")[
    #voiceover("Remember, it's always important to include the correct units in your answer. In this case, we're measuring length, so we use centimeters.")
  ]
]