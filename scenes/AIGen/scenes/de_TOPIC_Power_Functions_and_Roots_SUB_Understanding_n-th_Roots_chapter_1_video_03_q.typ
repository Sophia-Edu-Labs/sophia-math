#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Übung]
#v(40pt)
#only("1-")[Schreibe die 6. Wurzel von 64 in Notation. 📝]
#only("1")[
#voiceover("Schreibe die 6. Wurzel von 64 in Notation.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
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
ax.text(0.5, 0.5, 'Schreibe die 6. Wurzel von 64 in Notation:', fontsize=20, ha='center', va='center')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Wie lautet die korrekte Notation für die 6. Wurzel von 64?")
]

#questionDef(
questionText: "Schreibe die 6. Wurzel von 64 in Notation.",
answerOptions: ("$root(6, 64)$", "$root(64, 6)$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$root(\key{a}, \key{b})$"),
answerOptionsTypes: (
"a": "number",
"b": "number"
)
),
)
]#questionDef(
questionText: "Schreibe die 6. Wurzel von 64 in Notation.",
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