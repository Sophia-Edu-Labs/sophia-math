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
l, w, h = 9, 5, 3

# Plot cuboid
ax.bar3d(0, 0, 0, l, w, h, shade=True)

# Add labels
ax.set_xlabel('Length (9 m)')
ax.set_ylabel('Width (5 m)')
ax.set_zlabel('Height (3 m)')

ax.text(4.5, 2.5, 3.5, 'Surface Area = 198 m²', fontsize=12)

plt.title('Cuboid with Surface Area 198 m²')
plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]
  #only("1")[
    #voiceover("Excellent work! You've correctly solved this problem. Let's walk through the solution step-by-step to understand how we arrive at the height of 3 meters for this cuboid.")
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
    #voiceover("Here, l represents length, w represents width, and h represents height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Plug in Known Values]
  #v(40pt)
  #only("1-")[- Given: Surface Area = 198 m², $l$ = 9 m, $w$ = 5 m]
  #v(20pt)
  #only("2-")[- $198 = 2(9 dot 5 + 9h + 5h)$]
  #only("1")[
    #voiceover("Now, let's plug in the values we know. We're given that the surface area is 198 square meters, the length is 9 meters, and the width is 5 meters.")
  ]
  #only("2")[
    #voiceover("Substituting these into our formula, we get: 198 equals 2 times the quantity 9 times 5, plus 9h, plus 5h.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Simplify the Equation]
  #v(40pt)
  #only("1-")[- $198 = 2(45 + 9h + 5h)$]
  #v(20pt)
  #only("2-")[- $198 = 2(45 + 14h)$]
  #v(20pt)
  #only("3-")[- $198 = 90 + 28h$]
  #only("1")[
    #voiceover("Let's simplify this equation. First, we can calculate 9 times 5, which is 45.")
  ]
  #only("2")[
    #voiceover("Then, we can combine 9h and 5h to get 14h.")
  ]
  #only("3")[
    #voiceover("Now, we can distribute the 2, giving us 198 equals 90 plus 28h.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Solve for h]
  #v(40pt)
  #only("1-")[- $198 - 90 = 28h$]
  #v(20pt)
  #only("2-")[- $108 = 28h$]
  #v(20pt)
  #only("3-")[- $h = 108/28 = 3"m"$]
  #only("1")[
    #voiceover("To solve for h, first we subtract 90 from both sides.")
  ]
  #only("2")[
    #voiceover("This gives us 108 equals 28h.")
  ]
  #only("3")[
    #voiceover("Finally, we divide both sides by 28, and we get h equals 3 meters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[#text(size: 24pt)[The height of the cuboid is 3 meters.]]
  #v(40pt)
  #only("2-")[💡 Always check your answer by plugging it back into the original equation!]
  #only("1")[
    #voiceover("So, our final answer is that the height of the cuboid is 3 meters.")
  ]
  #only("2")[
    #voiceover("As a good practice, always remember to check your answer by plugging it back into the original equation to make sure it works!")
  ]
]