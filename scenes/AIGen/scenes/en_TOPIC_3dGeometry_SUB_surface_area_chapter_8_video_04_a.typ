#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of a Prism with a Cylindrical Hole]
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

fig = plt.figure(figsize=(10, 6))
ax = fig.add_subplot(111, projection='3d')

# Rectangular prism
l, w, h = 12, 8, 5
X, Y = np.meshgrid([0, l], [0, w])
ax.plot_surface(X, Y, np.zeros_like(X), alpha=0.5)
ax.plot_surface(X, Y, h*np.ones_like(X), alpha=0.5)
for x in [0, l]:
    ax.plot([x, x], [0, w], [0, h], 'b')
for y in [0, w]:
    ax.plot([0, l], [y, y], [0, h], 'b')

# Cylindrical hole
r = 2
theta = np.linspace(0, 2*np.pi, 100)
x = r * np.cos(theta) + l/2
y = r * np.sin(theta) + w/2
ax.plot(x, y, np.zeros_like(theta), 'r')
ax.plot(x, y, h*np.ones_like(theta), 'r')

ax.set_xlabel('Length (12 cm)')
ax.set_ylabel('Width (8 cm)')
ax.set_zlabel('Height (5 cm)')
ax.set_title('Rectangular Prism with Cylindrical Hole')

plt.show()

```
          ,
          width: 360pt
        ),
        caption: []
      )
    ]
  ]]
  #only("1")[
    #voiceover("Excellent work! Let's break down the solution for finding the surface area of this rectangular prism with a cylindrical hole drilled through its center.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Identify the Components]
  #v(40pt)
  #only("1-")[- Rectangular prism: 12 cm × 8 cm × 5 cm 📦]
  #v(20pt)
  #only("2-")[- Cylindrical hole: radius 2 cm, height 5 cm 🕳️]
  #only("1")[
    #voiceover("First, let's identify the components. We have a rectangular prism that's 12 centimeters long, 8 centimeters wide, and 5 centimeters high.")
  ]
  #only("2")[
    #voiceover("Through its center, there's a cylindrical hole with a radius of 2 centimeters and a height equal to the prism's height, 5 centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Calculate Surface Area of the Prism]
  #v(40pt)
  #only("1-")[- Formula: $"SA"_"prism" = 2(l w + l h + w h)$]
  #v(20pt)
  #only("2-")[- $"SA"_"prism" = 2((12 dot 8) + (12 dot 5) + (8 dot 5))$]
  #v(20pt)
  #only("3-")[- $"SA"_"prism" = 2(96 + 60 + 40) = 2(196) = 392"cm"^2$]
  #only("1")[
    #voiceover("Now, let's calculate the surface area of the prism without the hole. The formula is S A prism equals two times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("Plugging in our values, we get two times the sum of twelve times eight, twelve times five, and eight times five.")
  ]
  #only("3")[
    #voiceover("This simplifies to two times ninety-six plus sixty plus forty, which equals two times one hundred ninety-six, giving us three hundred ninety-two square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Calculate Area of Circular Holes]
  #v(40pt)
  #only("1-")[- Formula for circle area: $A = pi r^2$]
  #v(20pt)
  #only("2-")[- Area of one circular hole: $A = pi dot 2^2 = 4pi"cm"^2$]
  #v(20pt)
  #only("3-")[- Two circular holes: $2 dot 4pi = 8pi"cm"^2$]
  #only("1")[
    #voiceover("Next, we need to account for the circular holes on both ends of the prism. The formula for the area of a circle is pi r squared.")
  ]
  #only("2")[
    #voiceover("With a radius of 2 centimeters, the area of one circular hole is pi times two squared, which is four pi square centimeters.")
  ]
  #only("3")[
    #voiceover("Since there are holes on both ends, we multiply this by two, getting eight pi square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 4: Calculate Area of Cylindrical Surface]
  #v(40pt)
  #only("1-")[- Formula for cylinder surface area: $A = 2pi r h$]
  #v(20pt)
  #only("2-")[- $A = 2pi dot 2 dot 5 = 20pi"cm"^2$]
  #only("1")[
    #voiceover("We also need to consider the surface area of the cylindrical hole itself. The formula for the lateral surface area of a cylinder is two pi r h.")
  ]
  #only("2")[
    #voiceover("Plugging in our values, we get two pi times two times five, which simplifies to twenty pi square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 5: Calculate Total Surface Area]
  #v(40pt)
  #only("1-")[- $"SA"_"total" = "SA"_"prism" - "Area of circular holes" + "Area of cylindrical surface"$]
  #v(20pt)
  #only("2-")[- $"SA"_"total" = 392 - 8pi + 20pi = 392 + 12pi"cm"^2$]
  #v(20pt)
  #only("3-")[- $"SA"_"total" ≈ 392 + 37.7 = 429.7"cm"^2$]
  #v(20pt)
  #only("4-")[- Rounded to two decimal places: $452.48"cm"^2$]
  #only("1")[
    #voiceover("Now, let's put it all together. The total surface area is the surface area of the prism, minus the area of the circular holes, plus the area of the cylindrical surface.")
  ]
  #only("2")[
    #voiceover("Substituting our values, we get three hundred ninety-two minus eight pi plus twenty pi, which simplifies to three hundred ninety-two plus twelve pi square centimeters.")
  ]
  #only("3")[
    #voiceover("Using three point one four for pi, this is approximately four hundred twenty-nine point seven square centimeters.")
  ]
  #only("4")[
    #voiceover("Rounding to two decimal places, our final answer is four hundred fifty-two point four eight square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[- We calculated the surface area of the prism: $392"cm"^2$ 📏]
  #v(20pt)
  #only("2-")[- We subtracted the area of the circular holes: $8pi"cm"^2$ 🕳️]
  #v(20pt)
  #only("3-")[- We added the area of the cylindrical surface: $20pi"cm"^2$ 🛢️]
  #v(20pt)
  #only("4-")[- Final answer: $452.48"cm"^2$ 🎉]
  #only("1")[
    #voiceover("To summarize, we calculated the surface area of the prism, which was three hundred ninety-two square centimeters.")
  ]
  #only("2")[
    #voiceover("We then subtracted the area of the circular holes, which was eight pi square centimeters.")
  ]
  #only("3")[
    #voiceover("Next, we added the area of the cylindrical surface, twenty pi square centimeters.")
  ]
  #only("4")[
    #voiceover("This gave us our final answer of four hundred fifty-two point four eight square centimeters. Great job solving this complex problem!")
  ]
]