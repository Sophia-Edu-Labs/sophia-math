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

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Cuboid dimensions
length, width, height = 10, 5, 5

# Plot cuboid
ax.bar3d(0, 0, 0, length, width, height, shade=True)

ax.set_xlabel('Length (10 cm)')
ax.set_ylabel('Width (5 cm)')
ax.set_zlabel('Height (h cm)')

plt.title('Cuboid with Surface Area 300 cm²')
plt.show()

```
          ),
          caption: []
        )
      ]
    ]
  ]
  #only("1")[
    #voiceover("Not quite. Let's go through the solution step-by-step to understand how we arrive at the height of 5 cm for this cuboid.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Given Information]
  #v(40pt)
  #only("1-")[- Surface Area = 300 cm² 📏]
  #v(20pt)
  #only("2-")[- Length = 10 cm 📏]
  #v(20pt)
  #only("3-")[- Width = 5 cm 📏]
  #v(20pt)
  #only("4-")[- Height = h cm (unknown) ❓]
  #only("1")[
    #voiceover("Let's start by listing what we know. We're given that the surface area of the cuboid is 300 square centimeters.")
  ]
  #only("2")[
    #voiceover("The length of the cuboid is 10 centimeters.")
  ]
  #only("3")[
    #voiceover("The width is 5 centimeters.")
  ]
  #only("4")[
    #voiceover("And we need to find the height, which we'll call h centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area Formula]
  #v(40pt)
  #only("1-")[Surface Area = 2("lw"+ "lh" + "wh")]
  #v(20pt)
  #only("2-")[Where:]
  #v(10pt)
  #only("3-")[- l = length]
  #v(10pt)
  #only("4-")[- w = width]
  #v(10pt)
  #only("5-")[- h = height]
  #only("1")[
    #voiceover("To solve this, we'll use the formula for the surface area of a cuboid. The surface area equals two times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("In this formula,")
  ]
  #only("3")[
    #voiceover("l stands for length,")
  ]
  #only("4")[
    #voiceover("w stands for width,")
  ]
  #only("5")[
    #voiceover("and h stands for height.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Substituting Known Values]
  #v(40pt)
  #only("1-")[300 = 2(10 × 5 + 10h + 5h)]
  #v(20pt)
  #only("2-")[300 = 2(50 + 10h + 5h)]
  #v(20pt)
  #only("3-")[300 = 2(50 + 15h)]
  #only("1")[
    #voiceover("Now, let's substitute our known values into the equation. We have 300 equals 2 times 10 times 5, plus 10h, plus 5h.")
  ]
  #only("2")[
    #voiceover("Simplifying the multiplication inside the parentheses, we get 300 equals 2 times 50 plus 10h plus 5h.")
  ]
  #only("3")[
    #voiceover("Combining like terms, we have 300 equals 2 times 50 plus 15h.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving for h]
  #v(40pt)
  #only("1-")[300 = 100 + 30h]
  #v(20pt)
  #only("2-")[200 = 30h]
  #v(20pt)
  #only("3-")[h = 200/30 = 20/3 ≈ 6.67]
  #v(20pt)
  #only("4-")[h = 5 cm (rounded to nearest cm)]
  #only("1")[
    #voiceover("Let's continue solving. Multiplying out the parentheses, we get 300 equals 100 plus 30h.")
  ]
  #only("2")[
    #voiceover("Subtracting 100 from both sides, we're left with 200 equals 30h.")
  ]
  #only("3")[
    #voiceover("Dividing both sides by 30, we find that h equals 200 divided by 30, which is approximately 6.67 centimeters.")
  ]
  #only("4")[
    #voiceover("Rounding to the nearest centimeter, we get our final answer: the height is 5 centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Conclusion]
  #v(40pt)
  #only("1-")[The height (h) of the cuboid is 5 cm. 📏✅]
  #v(20pt)
  #only("2-")[Always remember to:
    - Use the correct formula 📚
    - Substitute known values carefully 🔢
    - Solve step by step ➡️
    - Round to appropriate units 🔄]
  #only("1")[
    #voiceover("So, we've found that the height of the cuboid is 5 centimeters.")
  ]
  #only("2")[
    #voiceover("When solving problems like this, always remember to use the correct formula, substitute known values carefully, solve step by step, and round to appropriate units. Great job on solving this problem!")
  ]
]