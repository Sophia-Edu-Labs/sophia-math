#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
#only("1-")[Write the 6th root of 64 in notation. 📝]
#only("1")[
#voiceover("Write the 6th root of 64 in notation.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 2))

# Remove the plot box
ax.axis('off')

# Add the question text
ax.text(0.5, 0.5, 'Write the 6th root of 64 in notation:', fontsize=20, ha='center', va='center')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("What is the correct notation for the 6th root of 64?")
]]
#questionDef(
questionText: "Write the 6th root of 64 in notation.",
answerOptions: ("$\\sqrt[6]{64}$", "$\\sqrt[64]{6}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\\sqrt[\key{a}]{\key{b}}$"),
answerOptionsTypes: (
"a": "number",
"b": "number"
)
),
)