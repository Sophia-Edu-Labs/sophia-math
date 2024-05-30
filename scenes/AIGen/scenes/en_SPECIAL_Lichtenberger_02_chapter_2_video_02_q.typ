#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Soccer Ball Buoyancy]
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

# Draw the water surface
ax.axhline(0, color='blue', linewidth=2)

# Draw the soccer ball
circle = plt.Circle((0, -1), 1, edgecolor='black', facecolor='white', linewidth=2)
ax.add_artist(circle)

# Draw the force arrow
ax.arrow(0, -1, 0, 2, head_width=0.2, head_length=0.3, fc='red', ec='red', linewidth=2)
ax.text(0.1, 0.2, 'F', color='red', fontsize=16)

# Set the limits and aspect ratio
ax.set_xlim(-2, 2)
ax.set_ylim(-3, 2)
ax.set_aspect('equal')

# Remove the axis ticks
ax.set_xticks([])
ax.set_yticks([])

# Add labels
ax.text(0, 1.5, 'Water Surface', color='blue', fontsize=16, ha='center')
ax.text(0, -2.5, 'Soccer Ball', color='black', fontsize=16, ha='center')

plt.show()
```,
width: 360pt),
)
]
]
// The figure shows a soccer ball underwater with a force arrow pointing upwards. The water surface is represented by a blue line. Labels are added for clarity. This figure is shown throughout the slide.

#only("1")[
#voiceover("Consider an official FIFA soccer ball with a circumference between 68 and 70 cm and a weight between 410 and 450 grams.")
]

#only("2")[
#voiceover("What force is needed to hold such a soccer ball underwater?")
]

#v(40pt)

#only("2-")[
💪🌊⚽ ?
]
// The emojis representing the question "What force is needed to hold a soccer ball underwater?" are shown from slide 2 onward.

]

]#questionDef(
questionText: "What is the force $F$ needed to hold the soccer ball underwater?",
answerOptions: ("$F = 48\ N$", "$F = 0\ N$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$F = \key{a}\ N$"),
answerOptionsTypes: (
"a": "number"
)
),
)