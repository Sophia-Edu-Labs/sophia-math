#import "../sophiatheme.typ": *

//apply theme (and default setup)

#show: sophia-theme

#show figure.caption: it => [

#set text(size: 20pt)

#it.body

]

#slide()[

#only("1")[

#voiceover("Wenn wir zwei Mengen betrachten, kann es sein, dass die eine Menge komplett in der anderen enthalten ist.")

]

#text(size: 30pt, weight: "bold")[Teilmengen]

#v(40pt)

#only("2")[

#voiceover("In diesem Fall sprechen wir von einer Teilmenge. Eine Menge A ist Teilmenge einer Menge B, wenn jedes Element von A auch Element von B ist.")

]

#only("2-")[

#box()[

#morphchildren(id: "plot")[

#figure(

pyimage(```

import matplotlib.pyplot as plt

import numpy as np

# Elements of set A

elements_A = {'a': (-0.5, 0.5), 'b': (0.5, -0.5), 'c': (0, 0)}

# Elements of set B

elements_B = {'a': (-0.5, 0.5), 'b': (0.5, -0.5), 'c': (0, 0), 'd': (-0.9, -0.4), 'e': (0.4, 0.8)}

# Define the figure and axis

fig, ax = plt.subplots()

ax.set_xlim(-1.5, 1.5)

ax.set_ylim(-1.5, 1.5)

ax.set_aspect('equal')

# Draw the circles representing the sets

circle_A = plt.Circle((0, 0), 0.8, color='blue', fill=False, linewidth=3, label='Menge A')

circle_B = plt.Circle((0, 0), 1.2, color='green', fill=False, linewidth=3, label='Menge B')

# Add the elements to the sets

for k, v in elements_A.items():

  ax.plot(v[0], v[1], 'o', color='red') # Point

  ax.text(v[0], v[1] + 0.1, k, color='black', fontsize=16) # Label

  for k, v in elements_B.items():

    ax.plot(v[0], v[1], 'o', color='red') # Point

    ax.text(v[0], v[1] + 0.1, k, color='black', fontsize=16) # Label

# Add the circles to the plot

ax.add_artist(circle_A)

ax.add_artist(circle_B)

# Add legend and grid

ax.legend(fontsize=16, loc='upper left')

ax.grid(True)

# Hide the axes for a cleaner look

ax.set_xticks([])

ax.set_yticks([])

ax.spines['top'].set_visible(False)

ax.spines['right'].set_visible(False)

ax.spines['bottom'].set_visible(False)

ax.spines['left'].set_visible(False)

plt.show()

```,

width: 360pt),

caption: [],

)

]

]

]

#only("3")[

#voiceover("Wir schreiben A ist Teilmenge von B, mit dem zur Seite geöfffneten Halbkreis, um auszudrücken, dass A eine Teilmenge von B ist. In diesem Beispiel enthält die Menge B alle Elemente von A, nämlich a, b und c. Aber B enthält noch weitere Elemente, nämlich d und e.")

]

#v(40pt)

#only("3-")[

- $A subset.eq B$
]
#only("2-")[
- $A = {a, b, c}$

- $B = {a, b, c, d, e}$

]

#only("4")[

#voiceover("Beachte, dass jede Menge auch eine Teilmenge von sich selbst ist. Denn natürlich enthält jede Menge alle ihre eigenen Elemente. ...")

]

]

#slide()[

#text(size: 30pt, weight: "bold")[Echte Teilmengen]

#v(40pt)

#only("1")[

#voiceover("Es gibt noch den Begriff der echten Teilmenge. A ist eine echte Teilmenge von B, wenn A eine Teilmenge von B ist, aber nicht gleich B ist. Das heißt, B muss mindestens ein Element enthalten, das nicht in A ist.")

]

#only("1-")[

- $A subset B$

- $A eq.not B$

]

#v(40pt)

#only("2")[

#voiceover("In unserem Beispiel ist A eine echte Teilmenge von B, denn B enthält die Elemente d und e, die nicht in A sind.")

]

#only("2-")[

- ${a, b, c} subset {a, b, c, d, e}$

]

]

#slide()[

#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[
- $A subset.eq B$: A Teilmenge von B
]
#only("2-")[
- $A subset B$: A echte Teilmenge von B
]
#only("3-")[
- Jede Menge ist Teilmenge von sich selbst: $A subset.eq A$
]


#only("1")[
#voiceover("Fassen wir zusammen: A ist Teilmenge von B, wenn jedes Element von A auch Element von B ist. Wir schreiben dann A Teilmenge B.")
]
#only("2")[
#voiceover("A ist eine echte Teilmenge von B, wenn zusätzlich gilt, dass B mindestens ein Element hat, das nicht in A ist. Wir schreiben dann A ist echte Teilmenge von B...")
]
#only("3")[
#voiceover("Und nicht vergessen: Jede Menge ist auch Teilmenge von sich selbst.")
]

]