#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Composite Figure Surface Area]
  #v(40pt)

#only("1-")[
#align(center)[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np

fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection ='3d')

# Rectangular prism
l, w, h = 8, 6, 4
x = [0, l, l, 0, 0]
y = [0, 0, w, w, 0]
z = [0, 0, 0, 0, 0]
ax.plot(x, y, z, 'b')
ax.plot(x, y, [h]*5, 'b')
for i in range(4):
  ax.plot([x[i], x[i]], [y[i], y[i]], [0, h], 'b')

# Cylindrical hole
r = 1
theta = np.linspace(0, 2*np.pi, 100)
x_c = r * np.cos(theta) + l/2
y_c = r * np.sin(theta) + w/2
ax.plot(x_c, y_c, [0]*100, 'r')
ax.plot(x_c, y_c, [h]*100, 'r')

ax.set_xlabel('Length (cm)')
ax.set_ylabel('Width (cm)')
ax.set_zlabel('Height (cm)')
ax.set_title('Rectangular Prism with Cylindrical Hole')

plt.show()
```,
width: 360pt
),
caption: []
)
]
]
]
]

  #only("2-")[
    - Rectangular prism: 8 cm × 6 cm × 4 cm
    - Cylindrical hole: radius 1 cm, height 4 cm
  ]

  #only("3-")[
    #text(size: 24pt, weight: "bold")[Question: What is the total surface area? 🤔]
  ]

  #only("1")[
    #voiceover("Let's consider a composite figure.")
  ]

  #only("2")[
    #voiceover("We have a rectangular prism with dimensions 8 centimeters by 6 centimeters by 4 centimeters, and it has a cylindrical hole drilled through its center with a radius of 1 centimeter and a height of 4 centimeters.")
  ]

  #only("3")[
    #voiceover("Your task is to calculate the total surface area of this composite figure. Consider which surfaces are visible and which new surfaces are created by the cylindrical hole.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "A rectangular prism ($8 \\text{ cm} \\times 6 \\text{ cm} \\times 4 \\text{ cm}$) has a cylindrical hole (radius $1 \\text{ cm}$, height $4 \\text{ cm}$) drilled through its center. Find the total surface area.", 
answerOptions: ("Total Surface Area: 208.57 \\text{ cm}^2", "Total Surface Area: -413.14 \\text{ cm}^2"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("Total Surface Area: \key{a} \\text{ cm}^2"), 
answerOptionsTypes: ("a": "number",
) 
), 
)