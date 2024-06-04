#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Floating House Problem 🏠]
#v(40pt)
#only("1-")[
- A floating house weighs 50,000 kg
- Water density $rho = 1000$ kg/m³
]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Draw a rectangle representing the floating house
house = plt.Rectangle((0, 0), 5, 2, linewidth=2, edgecolor='k', facecolor='lightskyblue')
ax.add_patch(house)

# Draw water
water = plt.Rectangle((-1, -2), 7, 2, linewidth=0, facecolor='blue', alpha=0.5)
ax.add_patch(water)

# Add labels
ax.text(2.5, 1, '50,000 kg', ha='center', va='center', fontsize=14)
ax.text(2.5, -1, r'$\rho = 1000$ kg/m³', ha='center', va='center', fontsize=14)

# Set limits and remove ticks
ax.set_xlim(-1, 6)
ax.set_ylim(-2, 3)
ax.set_xticks([])
ax.set_yticks([])

# Show the plot
plt.show()
```, width: 360pt),
)
]
]
#v(20pt)
#only("3-")[
❓ Calculate the volume of water displaced by the floating house
]
#only("1")[
#voiceover("Consider a floating house problem. The house weighs 50,000 kilograms and is floating on water with a density of 1000 kilograms per cubic meter.")
]
#only("2")[
#voiceover("Here's a visual representation of the floating house on water.")
]
#only("3")[
#voiceover("The question is: What volume of water is displaced by this floating house?")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Approach]
#v(40pt)
#only("1-")[
Use the formula:
]
#v(20pt)
#only("2-")[
$ V = m / rho $
]
#v(20pt)
#only("3-")[
where:
- $V$ = volume of displaced water (in m³)
- $m$ = mass of the floating house (in kg)
- $rho$ = density of water (in kg/m³)
]
#only("1")[
#voiceover("To solve this, let's use the formula that relates volume, mass, and density.")
]
#only("2")[
#voiceover("Volume equals mass divided by density.")
]
#only("3")[
#voiceover("Here, V represents the volume of displaced water in cubic meters, m is the mass of the floating house in kilograms, and rho is the density of water in kilograms per cubic meter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[
Given:
- $m = 50,000$ kg
- $rho = 1000$ kg/m³
]
#v(20pt)
#only("2-")[
❓ What is the value of $V$, the volume of displaced water?
]
#only("1")[
#voiceover("We know that the mass of the house is 50,000 kilograms and the density of water is 1000 kilograms per cubic meter.")
]
#only("2")[
#voiceover("Now, it's your turn to calculate the volume of water displaced by the floating house. Use the given values and formula to find V. Good luck!")
]

]#questionDef(
questionText: "What is the volume of water displaced by the floating house? Use $ V = \frac{m}{\rho} $ where $ \rho $ for water is 1000 kg/m³. (Answer in cubic meters)",
answerOptions: ("V = $50$ m³", "V = $0$ m³"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("V = $\key{a}$ m³"),
answerOptionsTypes: (
"a": "number"
)
),
)