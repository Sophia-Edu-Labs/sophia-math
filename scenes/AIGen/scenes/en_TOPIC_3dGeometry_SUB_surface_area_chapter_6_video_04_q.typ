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
    Consider a rectangular prism with dimensions:
    - Length: 8 cm
    - Width: 6 cm
    - Height: 4 cm
  ]

  #only("2-")[
    A cylindrical hole is drilled through its center:
    - Radius: 1 cm
    - Height: 4 cm (same as prism height)
  ]

  #only("3-")[
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

# Prism
x = [0, 8, 8, 0, 0, 8, 8, 0]
y = [0, 0, 6, 6, 0, 0, 6, 6]
z = [0, 0, 0, 0, 4, 4, 4, 4]
ax.scatter(x, y, z, c='r', s=50)

# Connecting lines
for i in range(4):
    ax.plot([x[i], x[i+4]], [y[i], y[i+4]], [z[i], z[i+4]], 'r')
ax.plot([x[0], x[1], x[2], x[3], x[0]], [y[0], y[1], y[2], y[3], y[0]], [z[0]]*5, 'r')
ax.plot([x[4], x[5], x[6], x[7], x[4]], [y[4], y[5], y[6], y[7], y[4]], [z[4]]*5, 'r')

# Cylinder
theta = np.linspace(0, 2*np.pi, 100)
x_c = 4 + np.cos(theta)
y_c = 3 + np.sin(theta)
z_c = np.linspace(0, 4, 100)
X_c, Z_c = np.meshgrid(x_c, z_c)
Y_c, _ = np.meshgrid(y_c, z_c)
ax.plot_surface(X_c, Y_c, Z_c, alpha=0.5, color='b')

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')
ax.set_title('Rectangular Prism with Cylindrical Hole')

plt.show()
          ```,
          width: 360pt
        ),
        caption: [Rectangular Prism with Cylindrical Hole],
      )
    ]
  ]]

  #only("4-")[
    Find the total surface area of this composite figure.
  ]

  #only("1")[
    #voiceover("Let's consider a problem involving the surface area of a composite figure.")
  ]

  #only("2")[
    #voiceover("We have a rectangular prism with a length of 8 centimeters, a width of 6 centimeters, and a height of 4 centimeters.")
  ]

  #only("3")[
    #voiceover("A cylindrical hole is drilled through its center. The hole has a radius of 1 centimeter and goes all the way through the height of the prism, which is 4 centimeters.")
  ]

  #only("4")[
    #voiceover("Your task is to calculate the total surface area of this composite figure. Remember to consider both the remaining surface of the prism and the newly created surface of the cylindrical hole.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "A rectangular prism ($8 	ext{ cm} 	imes 6 	ext{ cm} 	imes 4 	ext{ cm}$) has a cylindrical hole (radius $1 	ext{ cm}$, height $4 	ext{ cm}$) drilled through its center. Find the total surface area.", 
answerOptions: ("\begin{matrix} \\text{Total Surface Area:} & 208.57 \\text{ cm}^2 \end{matrix}", "\begin{matrix} \\text{Total Surface Area:} & -413.14 \\text{ cm}^2 \end{matrix}"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("\begin{matrix} \\text{Total Surface Area:} & \key{a} \\text{ cm}^2 \end{matrix}"), 
answerOptionsTypes: ("a": "number",
) 
), 
)