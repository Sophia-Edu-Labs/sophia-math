#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Polar Bear on Ice Floe 🐻❄️]
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

# Draw the ice floe
ice_floe = plt.Rectangle((-5, -0.5), 10, 1, color='lightblue')
ax.add_artist(ice_floe)

# Draw the water
water = plt.Rectangle((-6, -3), 12, 2.5, color='blue')
ax.add_artist(water)

# Draw the polar bear
bear = plt.Circle((0, 0.5), 0.5, color='white')
ax.add_artist(bear)
ax.text(0, 0.5, '400 kg 🐻', ha='center', va='center')

# Set the limits and remove the axes
ax.set_xlim(-6, 6)
ax.set_ylim(-3, 3)
ax.set_axis_off()

plt.show()
```,
width: 360pt),
)
]
]
#v(20pt)
#only("2-")[
Given:
- Polar bear mass: 400 kg
- Ice floe sinks an additional 2.5 cm when the polar bear steps on it
]
#v(20pt)
#only("3-")[
❓ What is the area of the ice floe? 
]

#only("1")[
#voiceover("Consider the following situation: A polar bear steps onto an ice floe.")
]
#only("2")[
#voiceover("We know that the polar bear has a mass of 400 kilograms, and that the ice floe sinks an additional 2.5 centimeters into the water when the polar bear steps on it.")
]
#only("3")[
#voiceover("The question is: What is the area of the ice floe?")
]
]

#questionDef(
questionText: "What is the area of the ice floe in square meters?",
answerOptions: ("16 m^2", "10 m^2"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("\key{a} m^2"),
answerOptionsTypes: (
"a": "number"
)
),
)
]#questionDef(
questionText: "What is the area of the ice floe in square meters?",
answerOptions: ("$16 \, \text{m}^2$", "$10 \, \text{m}^2$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("\key{a} \, \text{m}^2"),
answerOptionsTypes: (
"a": "number"
)
),
)