#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Lass uns nochmal zusammenfassen, was wir über Mengen gelernt haben.")
]
#text(size: 30pt, weight: "bold")[Mengen]
#v(40pt)
#only("2")[
#voiceover("Eine Menge ist eine Zusammenfassung verschiedener Objekte zu einem Ganzen.")
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
        radius = width // 8  
        circle = mpatches.Circle((radius - xdescent + width // 2, height // 2 - ydescent),
                                  radius, facecolor=orig_handle.get_facecolor(),
                                  edgecolor=orig_handle.get_edgecolor(),
                                  linewidth=orig_handle.get_linewidth(), transform=trans)
        return [circle]

elements = {'a': (-0.5, 0.5), 'b': (0.5, -0.5)}
additional_elements = {'c': (0.3, -0.7), 'd': (-0.8, -0.2)}
elements.update(additional_elements)

fig, ax = plt.subplots()
ax.set_xlim(-1.5, 1.5)
ax.set_ylim(-1.5, 1.5)
ax.set_aspect('equal')

circle = plt.Circle((0, 0), 1, color='blue', fill=False, linewidth=3, label='Menge A')

for k, v in elements.items():
    ax.plot(v[0], v[1], 'o', color='red')
    ax.text(v[0], v[1] + 0.1, k, color='black', fontsize=16)

ax.add_artist(circle)
plt.legend(handler_map={mpatches.Circle: HandlerCircle()}, fontsize=16, loc='upper left')

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
#voiceover("In dieser Visualisierung siehst du die Menge A, die aus den Elementen a, b, c und d besteht.")
]
#v(40pt)
#only("4-")[
- Menge $A$
]
#only("4")[
#voiceover("Wir bezeichnen die Menge mit dem Buchstaben A.")

]
#only("5-")[
- Elemente: a, b, c, d
]
#only("5")[

#voiceover("Die Objekte a, b, c, d, die in der Menge enthalten sind, nennen wir Elemente der Menge A.")
]
#only("6-")[
- $a in A$, $b in A$, $c in A$, $d in A$
]
#only("6")[
#voiceover("Wir drücken die Zugehörigkeit eines Elements zu einer Menge mit dem Elementsymbol aus und sagen: a ist Element von A, b ist Element von A, und so weiter.")
]
#only("7-")[

- $A = {a,b,c,d}$
]
#only("7")[
#voiceover("Schließlich können wir die Menge A auch in Mengenschreibweise angeben, indem wir alle ihre Elemente zwischen geschweiften Klammern auflisten.")
]
]