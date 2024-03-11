#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Hey Leute, heute sprechen wir über Schnittmengen. Das sind Mengen, die nur die Elemente enthalten, die zwei gegebene Mengen gemeinsam haben.")

]
#text(size: 30pt, weight: "bold")[Schnittmengen]
#v(40pt)
#only("2")[
#voiceover("Angenommen, wir haben zwei Mengen A und B. Die Schnittmenge von A und B, geschrieben als A Schnitt B, ist die Menge aller Elemente, die sowohl in A als auch in B enthalten sind.")
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
)
]
]
]
#only("3")[
#voiceover("In unserem Beispiel hat die Menge A die Elemente a, b, c und d. Die Menge B hat die Elemente b, c, e und f. Die Schnittmenge A Schnitt B enthält nur die Elemente b und c, denn nur diese kommen in beiden Mengen vor.")
]
#v(40pt)
#only("3-")[
$A = {a, b, c, d}$
$B = {b, c, e, f}$
$A sect B = {b, c}$ ]
#only("4")[
#voiceover("Beachte: Wenn zwei Mengen keine gemeinsamen Elemente haben, ist ihre Schnittmenge die leere Menge. Das ist die Menge, die keine Elemente enthält.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften von Schnittmengen]
#v(40pt)
#only("1-")[
Kommutativität: $A sect B = B sect A$ ] #only("2-")[
Assoziativität: $(A sect B) sect C = A sect (B sect C)$
] #only("3-")[
Idempotenz: $A sect A = A$ ]
#only("1")[
#voiceover("Schnittmengen haben einige nützliche Eigenschaften. Erstens: Die Reihenfolge spielt keine Rolle. A Schnitt B ist gleich B Schnitt A.")

]
#only("2")[

#voiceover("Zweitens: Wenn wir mehrere Schnittmengen bilden, ist die Reihenfolge egal, in der wir das tun. A Schnitt B Schnitt C ist gleich A Schnitt, öffnende Klammer B Schnitt C, schließende Klammer.")
]
#only("3")[
#voiceover("Und drittens: Der Schnitt einer Menge mit sich selbst ist wieder die Menge selbst. A Schnitt A ist gleich A.")
]
]
#slide()[

#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[
$A sect B$: Schnittmenge von A und B ] #only("2-")[
Enthält nur Elemente, die in beiden Mengen sind
] #only("3-")[
Wichtige Eigenschaften: Kommutativität, Assoziativität, Idempotenz ]
#only("1")[
#voiceover("Okay, fassen wir zusammen. Die Schnittmenge von A und B, geschrieben als A Schnitt B, ist die Menge aller Elemente, die sowohl in A als auch in B enthalten sind.")

]
#only("2")[
#voiceover("Anders gesagt: Die Schnittmenge enthält nur die Elemente, die die beiden Ausgangsmengen gemeinsam haben.")

]
#only("3")[
#voiceover("Wichtige Eigenschaften von Schnittmengen sind die Kommutativität, die Assoziativität und die Idempotenz. Mit diesem Wissen bist du bestens gerüstet, um mit Schnittmengen zu arbeiten!")
]
]