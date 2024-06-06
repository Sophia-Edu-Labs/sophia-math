#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
#only("1-")[Is $root(4, -16)$ real?]
#only("1")[
#voiceover("Consider the fourth root of negative 16.")
]
#only("2")[
#voiceover("Is this value real?")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
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

# Draw the real number line
ax.axhline(0, color='black', lw=1)
ax.set_ylim(-1, 1)
ax.set_yticks([])

# Mark zero
ax.text(0, -0.1, '0', ha='center', va='top', fontsize=12)

# Mark -16
ax.plot(-16, 0, 'ro', markersize=10)
ax.text(-16, -0.1, '-16', ha='center', va='top', fontsize=12)

# Draw a question mark at the fourth root of -16
ax.text(2, 0.5, '?', ha='center', va='center', fontsize=24, color='blue')
ax.text(2, 0.2, '$root(4, -16)$', ha='center', va='center', fontsize=12, color='blue')

# Hide the top and right spines
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)

# Set the x-axis limits and label
ax.set_xlim(-20, 20)
ax.set_xlabel('Real Number Line')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization on the real number line. We see the point negative 16. The question is: where does the fourth root of this number lie on the real line?")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[Is $root(4, -16)$ real? 🤔]
#only("1")[
#voiceover("So, is the fourth root of negative 16 a real number?")
]
#only("2")[
#voiceover("Think about it and provide your answer.")
]
]#questionDef(
questionText: "Is $\sqrt[4]{-16}$ real?",
answerOptions: ("Yes", "No"),
correctAnswerIndex: 1,
freeTextDetail: (
fallbackOptionIndex: 0,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$key{a}$"),
answerOptionsTypes: (
"a": "string"
)
),
)