#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of a Composite Figure]
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
x = np.array([0, 8, 8, 0, 0, 8, 8, 0])
y = np.array([0, 0, 6, 6, 0, 0, 6, 6])
z = np.array([0, 0, 0, 0, 4, 4, 4, 4])

ax.scatter(x, y, z)

for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'b')
    ax.plot([x[i], x[(i+1)%4]], [y[i], y[(i+1)%4]], [z[i], z[i]], 'b')
    ax.plot([x[i+4], x[((i+1)%4)+4]], [y[i+4], y[((i+1)%4)+4]], [z[i+4], z[i+4]], 'b')

# Cylindrical hole
r = 1
h = 4
theta = np.linspace(0, 2*np.pi, 100)
x_c = r * np.cos(theta) + 4
y_c = r * np.sin(theta) + 3
z_c = np.linspace(0, h, 100)
X_c, Z_c = np.meshgrid(x_c, z_c)
Y_c, _ = np.meshgrid(y_c, z_c)

ax.plot_surface(X_c, Y_c, Z_c, alpha=0.5, color='r')

ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Rectangular Prism with Cylindrical Hole')

plt.show()
          ```,
          width: 360pt
        ),
        caption: []
      )
    ]]
  ]
  #only("1")[
    #voiceover("Not quite. Let's go through the correct solution step by step. We have a rectangular prism with dimensions 8 cm by 6 cm by 4 cm, and a cylindrical hole with a radius of 1 cm and height of 4 cm drilled through its center. Here's a visualization of our composite figure.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Surface Area of Rectangular Prism]
  #v(40pt)
  #only("1-")[- Formula: $"SA"_"prism" = 2("lw"+ "lh" + "wh")$]
  #v(20pt)
  #only("2-")[- $"SA"_"prism" = 2((8 × 6) + (8 × 4) + (6 × 4))$]
  #v(20pt)
  #only("3-")[- $"SA"_"prism" = 2(48 + 32 + 24) = 2(104) = 208 "cm"^2$]
  #only("1")[
    #voiceover("First, let's calculate the surface area of the rectangular prism without the hole. The formula for the surface area of a rectangular prism is two times the sum of length times width, length times height, and width times height.")
  ]
  #only("2")[
    #voiceover("Plugging in our values, we get two times the sum of eight times six, eight times four, and six times four.")
  ]
  #only("3")[
    #voiceover("This simplifies to two times one hundred and four, which equals two hundred and eight square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Surface Area of Cylindrical Hole]
  #v(40pt)
  #only("1-")[- Formula: $"SA"_"hole" = 2pi r h$]
  #v(20pt)
  #only("2-")[- $"SA"_"hole" = 2pi × 1 "cm" × 4 "cm"$]
  #v(20pt)
  #only("3-")[- $"SA"_"hole" = 8pi "cm"^2 ≈ 25.13 "cm"^2$]
  #only("1")[
    #voiceover("Next, we need to calculate the surface area of the cylindrical hole. The formula for the lateral surface area of a cylinder is two pi times radius times height.")
  ]
  #only("2")[
    #voiceover("Substituting our values, we get two pi times one centimeter times four centimeters.")
  ]
  #only("3")[
    #voiceover("This simplifies to eight pi square centimeters, which is approximately twenty-five point one three square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Final Calculation]
  #v(40pt)
  #only("1-")[- Total SA = $"SA"_"prism" + "SA"_"hole"$]
  #v(20pt)
  #only("2-")[- Total SA $= 208 "cm"^2 + 25.13 "cm"^2$]
  #v(20pt)
  #only("3-")[- Total SA $≈ 233.13 "cm"^2$]
  #v(20pt)
  #only("4-")[- Rounded to 2 decimal places: $233.13 "cm"^2$]
  #only("1")[
    #voiceover("For the final step, we add the surface area of the prism to the surface area of the hole.")
  ]
  #only("2")[
    #voiceover("This gives us two hundred and eight square centimeters plus twenty-five point one three square centimeters.")
  ]
  #only("3")[
    #voiceover("The total is approximately two hundred and thirty-three point one three square centimeters.")
  ]
  #only("4")[
    #voiceover("Rounding to two decimal places, our final answer is two hundred and thirty-three point one three square centimeters.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Conclusion]
  #v(40pt)
  #only("1-")[The total surface area is $233.13 "cm"^2$.]
  #v(20pt)
  #only("2-")[💡 Remember: In composite figures, we often need to add surface areas!]
  #only("1")[
    #voiceover("So, the total surface area of our rectangular prism with a cylindrical hole is two hundred and thirty-three point one three square centimeters.")
  ]
  #only("2")[
    #voiceover("Remember, when dealing with composite figures, we often need to add the surface areas of different components. Great job on solving this complex problem!")
  ]
]