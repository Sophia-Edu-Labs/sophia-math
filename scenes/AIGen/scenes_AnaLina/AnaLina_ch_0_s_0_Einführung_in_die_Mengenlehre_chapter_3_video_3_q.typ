#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Potenzmenge]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

elements = [1, 2, 3]

fig, ax = plt.subplots()

circle = plt.Circle((0, 0), 1.5, color='blue', fill=False, linewidth=3)

theta = np.linspace(0, 2*np.pi, len(elements), endpoint=False)
x = 1.2 * np.cos(theta)
y = 1.2 * np.sin(theta)

ax.plot(x, y, 'o', color='black')
for i, txt in enumerate(elements):
    ax.annotate(txt, (x[i], y[i]), fontsize=16)

ax.add_artist(circle)

ax.set_xlim(-2, 2)
ax.set_ylim(-2, 2)
ax.set_aspect('equal')
ax.grid(True)
ax.set_xticks([])
ax.set_yticks([])
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)

plt.show()
```,
width: 360pt),
)
]
]
]
// The figure shows the set {1, 2, 3} represented as points on a circle. This figure is shown from slide 1 onward.

#v(30pt)
#only("2-")[
- Wie viele Teilmengen hat die Menge {1, 2, 3}? 🤔
]
// The question asking for the number of subsets is shown from slide 2 onward

#only("1")[
#voiceover("Betrachte die Menge {1, 2, 3}.")
]

#only("2")[
#voiceover("Wie viele Teilmengen hat diese Menge?")
]
]
#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Wie viele Teilmengen hat die Menge {1, 2, 3}?",
answerOptions: ("2", "4", "6", "8"),
correctAnswerIndex: 3,
freeTextDetail: (
fallbackOptionIndex: 3,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 0,
tolerance: none
)
),
answerOptionMatcher:("\key{a}"),
answerOptionsTypes: (
"a": "number"
)
),
)