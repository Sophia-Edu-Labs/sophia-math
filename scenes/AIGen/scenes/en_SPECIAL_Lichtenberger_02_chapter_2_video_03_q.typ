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

# Set up the figure
fig, ax = plt.subplots(figsize=(6, 6))

# Draw the water level
water_level = 0.8
ax.axhline(water_level, color='blue', linewidth=2, linestyle='--', label='Water Level')

# Draw the iceberg
iceberg_height = 1.0
iceberg_width = 1.0
iceberg = plt.Rectangle((0, 0), iceberg_width, iceberg_height, color='white', edgecolor='black', linewidth=2)
ax.add_artist(iceberg)

# Add labels
ax.text(0.5, 1.1, 'Iceberg', ha='center', va='bottom', fontsize=14)
ax.text(1.1, water_level, 'Water', ha='left', va='center', fontsize=14, color='blue')

# Set the limits and remove the ticks
ax.set_xlim(-0.1, 1.5)
ax.set_ylim(-0.1, 1.5)
ax.set_xticks([])
ax.set_yticks([])

# Add legend
ax.legend(fontsize=12, loc='upper right')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Consider an iceberg floating in water.")
]
#v(40pt)
#only("2-")[
#text(size: 24pt, weight: "bold")[Question ❓]
#v(20pt)
What percentage of the iceberg is underwater? 🌊
]
#only("2")[
#voiceover("The question is: What percentage of the iceberg is underwater?")
]
]


]#questionDef(
questionText: "What percentage of an iceberg is underwater?",
answerOptions: ("89.9\%", "50\%"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 1,
tolerance: 1
)
),
answerOptionMatcher:("\key{a}\%"),
answerOptionsTypes: (
"a": "number"
)
),
)