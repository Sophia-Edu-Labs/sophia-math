#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Deep-Sea Pressure 🌊]
#v(40pt)
#only("1-")[
- Pressure increases with depth
]
#v(20pt)
#only("2-")[
- Formula: $ p = rho dot g dot h $
  - $ rho $ = density (kg/m³)
  - $ g $ = gravity (m/s²)
  - $ h $ = depth (m)
]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the depth values
depth = np.linspace(0, 1000, 100)

# Calculate the pressure values
rho = 1020
g = 9.81
pressure = rho * g * depth

# Create the plot
plt.figure(figsize=(6, 6))
plt.plot(pressure/1e6, -depth, linewidth=2, color='blue')
plt.xlabel('Pressure (MPa)')
plt.ylabel('Depth (m)')
plt.title('Pressure vs Depth in Seawater')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: [Pressure vs Depth in Seawater],
)
]
]
]

#only("1")[
#voiceover("In the deep sea, pressure increases as you go deeper.")
]

#only("2")[
#voiceover("The pressure can be calculated using the formula p equals rho times g times h, where rho is the density of seawater in kilograms per cubic meter, g is the acceleration due to gravity in meters per second squared, and h is the depth in meters.")
]

#only("3")[
#voiceover("This graph shows how the pressure increases linearly with depth. The deeper you go, the higher the pressure.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
#only("1-")[
Calculate the pressure at a depth of 1000 m in seawater.
]
#v(20pt)
#only("2-")[
Given:
- $ rho $ for seawater = 1020 kg/m³
- $ g $ = 9.81 m/s²
- $ h $ = 1000 m
]
#v(20pt)
#only("3-")[
Use the formula:
$ p = rho dot g dot h $
]
#v(20pt)
#only("4-")[
Express your answer in Pascals (Pa).
]

#only("1")[
#voiceover("Now it's your turn. Calculate the pressure at a depth of 1000 meters in seawater.")
]

#only("2")[
#voiceover("You are given that the density of seawater is 1020 kilograms per cubic meter, the acceleration due to gravity is 9.81 meters per second squared, and the depth is 1000 meters.")
]

#only("3")[
#voiceover("Use the formula p equals rho times g times h to calculate the pressure.")
]

#only("4")[
#voiceover("Express your answer in Pascals.")
]
]#questionDef(
questionText: "What is the pressure at a depth of 1000 m in seawater? Use $ p = \rho \cdot g \cdot h $ where $ \rho $ for seawater is $ 1020 \, \\text{kg/m}^3 $, $ g = 9.81 \, \\text{m/s}^2 $, and $ h = 1000 \, \\text{m} $. Express your answer in Pascals (Pa).",
answerOptions: ("$10006200$ Pa", "$0$ Pa"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ Pa"),
answerOptionsTypes: (
"a": "number"
)
),
)