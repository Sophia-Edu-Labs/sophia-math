#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Wenn wir zwei Mengen haben, können wir eine neue Menge bilden, die alle Elemente der beiden Mengen enthält. Diese Operation nennen wir Vereinigung.")
]
#text(size: 30pt, weight: "bold")[Vereinigung von Mengen]
#v(40pt)
#only("2")[
#voiceover("Die Vereinigung von zwei Mengen A und B ist die Menge aller Elemente, die entweder in A oder in B (oder in beiden) enthalten sind.")
]
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.legend_handler import HandlerPatch
import matplotlib.patches as mpatches

class HandlerCircle(HandlerPatch):
    def create_artists(self, legend, orig_handle,
                        xdescent, ydescent, width, height, fontsize, trans):
        # Adjust the radius here for a smaller circle in the legend
        radius = width // 8  # Decreased radius for a smaller circle
        circle = mpatches.Circle((radius - xdescent + width // 2, height // 2 - ydescent),
                                 radius, facecolor=orig_handle.get_facecolor(),
                                 edgecolor=orig_handle.get_edgecolor(),
                                 linewidth=orig_handle.get_linewidth(), transform=trans)
        return [circle]

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
    ax.plot(v[0], v[1], 'o', color='red')  # Point
    ax.text(v[0], v[1] + 0.1, k, color='black', fontsize=16)  # Label
for k, v in elements_B.items():
    ax.plot(v[0], v[1], 'o', color='red')  # Point
    ax.text(v[0], v[1] + 0.1, k, color='black', fontsize=16)  # Label

# Add the circles to the plot
ax.add_artist(circle_A)
ax.add_artist(circle_B)

# Register the custom handler with the modified smaller circle for the legend
plt.legend(handler_map={mpatches.Circle: HandlerCircle()}, fontsize=16, loc='upper left')

# Add grid and clean up axes
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
caption: [],
)
]
]
]
#only("3")[
#voiceover("Wir schreiben A Vereinigung B, wobei das Vereinigungszeichen zwischen die Mengen gesetzt wird, um die Vereinigung auszudrücken.")
]
#v(40pt)
#only("2-")[
- $A = {a, b, c}$
- $B = {c, d, e}$
]
#only("4")[
#voiceover("In diesem Beispiel enthält die Vereinigung von A und B die Elemente a, b, c, d und e. Beachte, dass das Element c, das in beiden Mengen vorkommt, nur einmal in der Vereinigung auftaucht.")
]
#only("4-")[
- $A union B = {a, b, c, d, e}$
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften der Vereinigung]
#v(40pt)
#only("1")[
#voiceover("Die Vereinigung von Mengen hat einige wichtige Eigenschaften:")
]
#only("1-")[
- Kommutativität: $A union B = B union A$
]
#only("2")[
#voiceover("Die Reihenfolge der Mengen spielt keine Rolle. A vereinigt mit B ist dasselbe wie B vereinigt mit A.")
]
#only("3")[
#voiceover("Die Vereinigung einer Menge mit sich selbst ergibt wieder die ursprüngliche Menge.")
]
#only("3-")[
- Idempotenz: $A union A = A$
]
#only("4")[
#voiceover("Die leere Menge, also die Menge ohne Elemente, vereinigt mit einer Menge A ergibt immer A.")
]
#only("4-")[
- Neutrales Element: $A union emptyset = A$
]
]