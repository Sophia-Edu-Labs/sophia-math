#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Iceberg 🧊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create the figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Draw the water line
water_line = plt.axhline(y=0, color='blue', linestyle='-', linewidth=2, label='Water Line')

# Draw the iceberg
iceberg = plt.Polygon([(-1, -4), (1, -4), (0.5, 2), (-0.5, 2)], closed=True, color='white', edgecolor='black', linewidth=2, label='Iceberg')
ax.add_patch(iceberg)

# Add labels
ax.text(0, 1, '10.1%', fontsize=20, ha='center', va='center')
ax.text(0, -2, '89.9%', fontsize=20, ha='center', va='center')

# Set the limits and remove the ticks
ax.set_xlim(-2, 2)
ax.set_ylim(-5, 3)
ax.set_xticks([])
ax.set_yticks([])

# Add legend
ax.legend(handles=[water_line, iceberg], fontsize=12, loc='upper right')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Consider this iceberg floating in water.")
]
#v(20pt)
#only("2-")[
- What percentage is underwater? 🤔
]
#only("2")[
#voiceover("What percentage of the iceberg is underwater?")
]
]


]#questionDef(
questionText: "What percentage of the iceberg is underwater?",
answerOptions: ("$89.9\%$", "$10.1\%$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("\key{a}\%"),
answerOptionsTypes: (
"a": "number"
)
),
)