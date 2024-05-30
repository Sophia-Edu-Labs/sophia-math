#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb eines Fußballes]
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
// Die Abbildung zeigt einen Fußball unter Wasser mit einem Kraftpfeil, der nach oben zeigt. Die Wasseroberfläche wird durch eine blaue Linie dargestellt. Beschriftungen wurden zur Klarheit hinzugefügt. Diese Abbildung wird während der gesamten Folie angezeigt.

#only("1")[
#voiceover("Betrachte einen offiziellen FIFA-Fußball mit einem Umfang zwischen 68 und 70 cm und einem Gewicht zwischen 410 und 450 Gramm.")
]

#only("2")[
#voiceover("Welche Kraft ist erforderlich, um einen solchen Fußball unter Wasser zu halten?")
]

#v(40pt)

#only("2-")[
💪🌊⚽ ?
]
// Die Emojis, die die Frage "Welche Kraft ist erforderlich, um einen Fußball unter Wasser zu halten?" darstellen, werden ab Folie 2 angezeigt.

]
]

#questionDef(
questionText: "Welche Kraft $F$ ist erforderlich, um den Fußball unter Wasser zu halten?",
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