#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure in High Buildings]
#v(40pt)
#only("1-")[
- Water pressure varies with height due to gravity 🌊
]
#only("2-")[
- Ground floor pressure: 4 bar
- Fourth floor: 14 m higher
]
#only("3-")[
- Use formula: $ Delta p = rho dot g dot h $
  - $ rho $ = water density (1000 kg/m³)
  - $ g $ = gravitational acceleration (9.81 m/s²) 
  - $ h $ = height difference (m)
]
#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a simple building plot
fig, ax = plt.subplots(figsize=(4, 6))

# Draw the building
ax.plot([0, 0], [0, 14], linewidth=2, color='black')
ax.plot([1, 1], [0, 14], linewidth=2, color='black')
ax.plot([0, 1], [0, 0], linewidth=2, color='black')
ax.plot([0, 1], [14, 14], linewidth=2, color='black')

# Add floor labels
ax.text(-0.5, 0, 'Ground Floor', fontsize=12)
ax.text(-0.5, 14, '4th Floor', fontsize=12)

# Add height arrow
ax.annotate('', xy=(1.1, 14), xytext=(1.1, 0), 
            arrowprops=dict(facecolor='red', edgecolor='red', width=1, headwidth=8, headlength=10))
ax.text(1.2, 7, '14 m', fontsize=12, color='red')

# Clean up the plot
ax.set_xlim(-1, 2)
ax.set_ylim(-1, 15)
ax.axis('off')

plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("In high buildings, water pressure varies with height due to the force of gravity acting on the water column.")
]

#only("2")[
#voiceover("In this problem, we're given that the ground floor water pressure is 4 bar and the fourth floor is 14 meters higher.")
]

#only("3")[
#voiceover("To calculate the pressure difference, we can use the formula Delta p equals rho times g times h, where rho is the density of water, g is gravitational acceleration, and h is the height difference.")
]

#only("4")[
#voiceover("Based on this information, what is the pressure difference between the ground floor and the fourth floor? Give your answer in bar.")
]


]#questionDef(
questionText: "What is the pressure difference $\Delta p$ between the ground floor and the fourth floor, which is $14 \, \\text{m}$ higher, if the ground floor pressure is $4$ bar? Use $\Delta p = \rho \cdot g \cdot h$. (Answer in bar)",
answerOptions: ("$1.37$ bar", "$0$ bar$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: 0.01
)
),
answerOptionMatcher:("$\key{a}$ bar"),
answerOptionsTypes: (
"a": "number"
)
),
)