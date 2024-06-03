#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Eisbär auf Eisscholle 🐻❄]
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
// Die Abbildung zeigt einen Eisbären, der auf einer Eisscholle steht, die im Wasser schwimmt. Der Eisbär ist mit seiner Masse von 400 kg beschriftet.
#only("2-")[
- Masse des Eisbären: 400 kg 🐻
- Eisscholle sinkt um 2,5 cm ⬇
]
// Die angegebenen Informationen über die Masse des Eisbären und das Sinken der Eisscholle werden ab Folie 2 als Aufzählungspunkte angezeigt.
#only("3-")[
#text(size: 25pt)[Wie groß ist die Fläche der Eisscholle? 🧊]
]
// Die Frage nach der Fläche der Eisscholle wird auf Folie 3 angezeigt.
#only("1")[
#voiceover("Betrachte die folgende Situation: Ein Eisbär tritt auf eine Eisscholle, die im Wasser schwimmt.")
]
#only("2")[
#voiceover("Der Eisbär hat eine Masse von 400 Kilogramm. Wenn er auf die Eisscholle tritt, sinkt die Scholle um 2,5 Zentimeter tiefer ins Wasser.")
]  
#only("3")[
#voiceover("Kannst du anhand dieser Informationen die Fläche der Eisscholle bestimmen?")
]
]


]#questionDef(
questionText: "Wie groß ist die Fläche der Eisscholle in Quadratmetern?",
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