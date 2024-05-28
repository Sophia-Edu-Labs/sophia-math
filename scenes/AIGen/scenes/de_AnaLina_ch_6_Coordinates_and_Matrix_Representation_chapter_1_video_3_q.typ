#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1-")[
#text(size: 30pt, weight: "bold")[Übung]
]
// Der Titel "Übung" wird auf dieser Folie angezeigt
#v(40pt)

#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Define the basis vectors and the vector v
basis_1 = np.array([1, 0])
basis_2 = np.array([0, 1])
v = np.array([2, 3])

# Create the plot
fig, ax = plt.subplots(figsize=(6, 6))

# Plot the basis vectors
ax.quiver(0, 0, basis_1[0], basis_1[1], angles='xy', scale_units='xy', scale=1, color='r', label='Basis 1')
ax.quiver(0, 0, basis_2[0], basis_2[1], angles='xy', scale_units='xy', scale=1, color='b', label='Basis 2')

# Plot the vector v
ax.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='g', label='Vector v')

# Add grid and labels
ax.grid(True)
ax.axhline(0, color='black', lw=0.5)
ax.axvline(0, color='black', lw=0.5)
ax.set_xlim(-1, 4)
ax.set_ylim(-1, 4)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()

plt.show()
```,
width: 360pt),
caption: [],
)
]
]
]
// Die Abbildung zeigt die Basisvektoren (1, 0) und (0, 1) in Rot bzw. Blau und den Vektor v (2, 3) in Grün. Diese Abbildung wird ab Folie 2 angezeigt.

#v(30pt)

#only("3-")[
Gegeben:
- Basis $B = (mat(1; 0), mat(0; 1))$ in $RR^2$ 📏
- Vektor $v = mat(2; 3)$ 🎯
]
// Die gegebenen Informationen werden ab Folie 3 angezeigt

#v(30pt)

#only("4-")[
Frage: Was sind die Koordinaten von $v$ relativ zur Basis $B$? 🤔
]
// Die Frage wird ab Folie 4 angezeigt

#only("1")[
#voiceover("Betrachten wir eine Übung zu Koordinaten und Basis.")
]

#only("2")[
#voiceover("Hier haben wir eine visuelle Darstellung einer Basis B, bestehend aus den Vektoren (1; 0) und (0; 1), und einem Vektor v (2; 3).")
]

#only("3")[
#voiceover("Formal haben wir eine Basis B, die aus den Vektoren (1; 0) und (0; 1) in R 2 besteht, und einen Vektor v, der (2; 3) ist.")
]

#only("4")[
#voiceover("Die Frage lautet: Was sind die Koordinaten von v relativ zur Basis B?")
]

]#questionDef(
questionText: "Was sind die Koordinaten von $v$ relativ zur Basis $B$?",
answerOptions: ("(2, 3)", "(1, 0)", "(0, 1)", "(3, 2)"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("(\key{a}, \key{b})"),
answerOptionsTypes: (
"a": "number",
"b": "number"
)
),
)