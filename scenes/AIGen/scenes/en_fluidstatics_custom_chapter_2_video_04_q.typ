#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dam Water Pressure]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 4))

# Draw the dam
dam_height = 10
dam_width = 2
ax.plot([0, 0], [0, dam_height], color='black', linewidth=2)
ax.plot([0, dam_width], [dam_height, dam_height], color='black', linewidth=2)
ax.plot([dam_width, dam_width], [0, dam_height], color='black', linewidth=2)

# Draw the water
water_depth = 10
ax.fill_between([0, dam_width], [dam_height, dam_height], [dam_height - water_depth, dam_height - water_depth], color='blue', alpha=0.5)

# Label the water depth
ax.annotate(f'Water depth = {water_depth} m', xy=(dam_width/2, dam_height - water_depth/2), xytext=(dam_width + 1, dam_height - water_depth/2), 
            arrowprops=dict(facecolor='black', arrowstyle='->'), fontsize=12, ha='left', va='center')

# Add a question mark at the bottom
ax.text(dam_width/2, 0, '?', fontsize=24, ha='center', va='bottom', color='red')

# Set the limits and remove the axes
ax.set_xlim(-1, dam_width + 2)
ax.set_ylim(0, dam_height + 1)
ax.axis('off')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
// The figure shows a simple dam diagram with the water depth labeled. A red question mark is placed at the bottom, indicating the question about pressure at that point.
#v(40pt)
#only("2-")[
Given:
- Water depth $h = 10$ m
- Water density $rho = 1000$ kg/m³
- Gravitational acceleration $g = 9.81$ m/s²
]
// The given information is listed from slide 2 onward
#v(40pt)
#only("3-")[
Calculate the pressure $p$ at the bottom of the dam using:
]
#v(20pt)
#only("3-")[
$p = rho dot g dot h$
]
// The formula to calculate pressure is shown on slide 3

#only("1")[
#voiceover("Consider a dam with a water depth of 10 meters.")
]

#only("2")[
#voiceover("We know the water density is 1000 kilograms per cubic meter and the gravitational acceleration is 9.81 meters per second squared.")
]

#only("3")[
#voiceover("Calculate the pressure at the bottom of the dam using the formula p equals rho times g times h, where p is pressure, rho is water density, g is gravitational acceleration, and h is water depth.")
]

]

]#questionDef(
  questionText: "What is the pressure $p$ at the bottom of the dam? Use $p = \rho \cdot g \cdot h$. (Answer in Pascals)",
  answerOptions: ("$p = 98100$ Pa", "$p = 0$ Pa"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: 2
      )
    ),
    answerOptionMatcher:("$p = \key{a}$ Pa"),
    answerOptionsTypes: (
      "a": "number"  
          )
  ),
)