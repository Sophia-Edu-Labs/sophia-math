#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Polar Bear on Ice Floe 🐻❄]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Draw the water
water = plt.Rectangle((-5, -5), 10, 5, color='blue', alpha=0.5)
ax.add_patch(water)

# Draw the ice floe
ice_floe = plt.Rectangle((-2, -0.5), 4, 0.5, color='white')
ax.add_patch(ice_floe)

# Draw the polar bear
bear = plt.Circle((0, 0.5), 0.5, color='white', edgecolor='black', linewidth=2)
ax.add_patch(bear)
ax.text(0, 1, '400 kg', ha='center', va='bottom', fontsize=12)

# Set the limits and remove the axes
ax.set_xlim(-5, 5)
ax.set_ylim(-5, 5)
ax.axis('off')

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
// The figure shows a polar bear standing on an ice floe floating in water. The polar bear is labeled with its mass of 400 kg.
#only("2-")[
- Polar bear mass: 400 kg 🐻
- Ice floe sinks 2.5 cm ⬇
]
// The given information about the polar bear's mass and the ice floe sinking is shown as bullet points from slide 2 onward.
#only("3-")[
#text(size: 25pt)[What is the area of the ice floe? 🧊]
]
// The question asking for the area of the ice floe is shown on slide 3.
#only("1")[
#voiceover("Consider the following situation: A polar bear steps onto an ice floe floating in water.")
]
#only("2")[
#voiceover("The polar bear has a mass of 400 kilograms. When it steps onto the ice floe, the floe sinks 2.5 centimeters deeper into the water.")
]  
#only("3")[
#voiceover("Based on this information, can you determine the area of the ice floe?")
]
]


]#questionDef(
questionText: "What is the area of the ice floe in square meters?",
answerOptions: ("$16 \, m^2$", "$10 \, m^2$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a} \, m^2$"),
answerOptionsTypes: (
"a": "number"
)
),
)