#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1-")[
#text(size: 30pt, weight: "bold")[Exercise]
]
// The title "Exercise" is shown on this slide
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
// The figure shows the basis vectors (1, 0) and (0, 1) in red and blue respectively, and the vector v (2, 3) in green. This figure is shown from slide 2 onward.

#v(30pt)

#only("3-")[
Given:
- Basis $B = (mat(1; 0), mat(0; 1))$ in $RR^2$ 📏
- Vector $v = mat(2; 3)$ 🎯
]
// The given information is shown from slide 3 onward

#v(30pt)

#only("4-")[
Question: What are the coordinates of $v$ relative to the basis $B$? 🤔
]
// The question is shown from slide 4 onward

#only("1")[
#voiceover("Let's consider an exercise about coordinates and basis.")
]

#only("2")[
#voiceover("Here we have a visual representation of a basis B consisting of the vectors (1; 0) and (0; 1), and a vector v (2; 3).")
]

#only("3")[
#voiceover("Formally, we are given a basis B equals the vectors (1; 0) and (0; 1) in R 2, and a vector v equals (2; 3).")
]

#only("4")[
#voiceover("The question is: What are the coordinates of v relative to the basis B?")
]

]#questionDef(
questionText: "What are the coordinates of $v$ relative to the basis $B$?",
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