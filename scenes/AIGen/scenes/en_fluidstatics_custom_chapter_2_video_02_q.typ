#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Forces on a Dam]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Define dam dimensions
dam_width = 2
dam_height = 4
water_height = 3

# Draw the dam
dam = plt.Rectangle((0, 0), dam_width, dam_height, linewidth=2, edgecolor='black', facecolor='gray')
ax.add_patch(dam)

# Draw the water
water = plt.Rectangle((0, 0), dam_width, water_height, linewidth=2, edgecolor='blue', facecolor='lightskyblue', alpha=0.5)
ax.add_patch(water)

# Add labels
ax.text(dam_width/2, -0.5, f'{dam_width} m', ha='center', va='center', fontsize=14)
ax.text(dam_width + 0.5, dam_height/2, f'{dam_height} m', ha='left', va='center', fontsize=14)
ax.text(dam_width + 0.5, water_height, f'{water_height} m', ha='left', va='center', fontsize=14)
ax.text(dam_width/2, water_height/2, 'Water', ha='center', va='center', fontsize=16, color='white')

# Set axis limits and remove ticks
ax.set_xlim(-1, dam_width + 2)
ax.set_ylim(-1, dam_height + 1)
ax.set_xticks([])
ax.set_yticks([])

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
// The figure shows a simple diagram of the dam section with the given dimensions
#only("1")[
#voiceover("Consider this section of a dam that is 2 meters wide and 4 meters high. The top edge of this section is 1 meter below the water surface.")
]
#v(40pt)

#only("2-")[
#text(size: 20pt)[- $rho =$ density of water (kg/m³)]
#v(10pt)
#text(size: 20pt)[- $g =$ acceleration due to gravity (m/s²)]
#v(10pt)
#text(size: 20pt)[- $h =$ average depth of section (m)]  
#v(10pt)
#text(size: 20pt)[- $A =$ area of section (m²)]
]
// The relevant variables for the force calculation are listed
#only("2")[
#voiceover("To calculate the total force on this section, we'll use the formula F equals rho times g times h times A, where rho is the density of water, g is the acceleration due to gravity, h is the average depth of the section, and A is the area of the section.")
]

#v(40pt)
#only("3-")[
#text(size: 24pt, weight: "bold")[Calculate the total force $F$ on this dam section 🌊]
]
// The question to calculate the total force is posed
#only("3")[
#voiceover("Your task is to calculate the total force F on this dam section. Use the given formula and dimensions. Provide your answer in Newtons.")
]
]


]#questionDef(
questionText: "What is the total force $F$ on this dam section? Use $F = \rho \cdot g \cdot h \cdot A$. (Answer in Newtons)",
answerOptions: ("$196200$ N", "$100000$ N"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 0,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ N"),
answerOptionsTypes: (
"a": "number"
)
),
)