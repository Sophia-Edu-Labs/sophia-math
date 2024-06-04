#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Floating Platform]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the dimensions
V = 50  # Volume in m³
draft = 0.5  # Draft in m

# Calculate the surface area
A = V / draft

# Create a 3D plot
fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Create the platform
x = np.linspace(0, np.sqrt(A), 100)
y = np.linspace(0, np.sqrt(A), 100)
X, Y = np.meshgrid(x, y)
Z = np.zeros_like(X)

# Plot the platform
ax.plot_surface(X, Y, Z, alpha=0.5, color='blue')

# Plot the water level
water_level = -draft * np.ones_like(X)
ax.plot_surface(X, Y, water_level, alpha=0.3, color='cyan')

# Add labels and title
ax.set_xlabel('Length (m)')
ax.set_ylabel('Width (m)')
ax.set_zlabel('Depth (m)')
ax.set_title('Floating Platform')

# Adjust the view angle
ax.view_init(elev=20, azim=45)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
// The figure shows a 3D visualization of the floating platform, with the platform in blue and the water level in cyan. The dimensions are based on the given volume and draft.

#v(20pt)

#only("1")[
#voiceover("Consider a floating platform with a volume of 50 cubic meters and a draft, that is the depth below water, of 0.5 meters.")
]

#v(20pt)

#only("2-")[
#text(size: 24pt)[Given:]
- Volume $V = 50 m^3$
- Draft $d = 0.5 m$
]
// The given information is listed from slide 2 onward

#v(20pt)

#only("3-")[
#text(size: 24pt)[Find the surface area $A$ using the formula:]
$ A = V / d $
]
// The formula to find the surface area is shown from slide 3 onward

#only("2")[
#voiceover("We are given that the volume is 50 cubic meters and the draft is 0.5 meters.")
]

#only("3")[
#voiceover("Our task is to determine the surface area of the platform using the formula A equals V divided by d, where A is the surface area, V is the volume, and d is the draft.")
]

]

]#questionDef(
questionText: "What is the surface area $A$ of the floating platform in square meters? Use the formula $A = \frac{V}{d}$.",
answerOptions: ("$A=100$ $m^2$", "$A=0$ $m^2$"),
correctAnswerIndex: 0,
freeTextDetail: (
  fallbackOptionIndex: 1,
  answerOptionsEquality: (
    a: (
      roundingDecimalPlaces: 2,
      tolerance: none
    )
  ),
  answerOptionMatcher:("$A=\key{a}$ $m^2$"),
  answerOptionsTypes: (
    "a": "number"
  )
),
)