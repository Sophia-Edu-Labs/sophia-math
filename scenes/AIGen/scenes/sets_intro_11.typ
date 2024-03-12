#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Wenn wir zwei Mengen haben, können wir eine neue Menge bilden, die nur die Elemente enthält, die in beiden Mengen vorkommen. Diese Operation nennen wir Schnittmenge.")
]
#text(size: 30pt, weight: "bold")[Schnittmengen]
#v(40pt)
#only("2")[
#voiceover("Die Schnittmenge von zwei Mengen A und B ist die Menge aller Elemente, die sowohl in A als auch in B enthalten sind.")
]
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
# Elements of set A
elements_A = {'a': (-0.8, 0.3), 'b': (-0.4, -0.5), 'c': (0, 0)}
# Elements of set B
elements_B = {'c': (0, 0), 'd': (0.6, 0.4), 'e': (0.4, -0.6)}
# Define the figure and axis
fig, ax = plt.subplots()
ax.set_xlim(-1.5, 1.5)
ax.set_ylim(-1.5, 1.5)
ax.set_aspect('equal')
# Draw the circles representing the sets
circle_A = plt.Circle((-0.5, 0), 0.8, color='blue', fill=False, linewidth=3, label='Menge A')
circle_B = plt.Circle((0.5, 0), 0.8, color='green', fill=False, linewidth=3, label='Menge B')
# Add the elements to the sets
for k, v in elements_A.items():

  #Copy code
  ax.plot(v[0], v[1], 'o', color='red') # Point
  ax.text(v[0], v[1] + 0.1, k, color='black', fontsize=16) # Label

for k, v in elements_B.items():

  #Copy code
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
#voiceover("Wir schreiben A Schnittmenge B, wobei das Schnittmengenzeichen zwischen die Mengen gesetzt wird, um die Schnittmenge auszudrücken.")
]
#v(40pt)
#only("2-")[
- $A = {a, b, c}$
- $B = {c, d, e}$
]
#only("4")[
#voiceover("In diesem Beispiel enthält die Schnittmenge von A und B nur das Element c, da es das einzige Element ist, das in beiden Mengen vorkommt.")
]
#only("4-")[
- $A sect B = {c}$
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften der Schnittmenge]
#v(40pt)
#only("1")[
#voiceover("Die Schnittmenge hat, ähnlich wie die Vereinigung, einige wichtige Eigenschaften:")
]
#only("1-")[
- Kommutativität: $A sect B = B sect A$
]
#only("2")[
#voiceover("Die Reihenfolge der Mengen spielt keine Rolle. Der Schnitt von A mit B ist derselbe wie der Schnitt von B mit A.")
]
#only("3")[
#voiceover("Der Schnitt einer Menge mit sich selbst ergibt wieder die ursprüngliche Menge.")
]
#only("3-")[
- Idempotenz: $A sect A = A$
]
#only("4")[
#voiceover("Der Schnitt einer Menge A mit der leeren Menge ergibt immer die leere Menge, da es keine gemeinsamen Elemente gibt.")
]
#only("4-")[
- Absorbierendes Element: $A sect emptyset = emptyset$
]
]