#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Mengen]
#v(20pt)
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

elements_coordinates = [(-0.5, 0.5), (0.5, -0.5), (0.3, -0.7), (-0.8, -0.2), (1.5, 0.8), (-1.2, -0.8)]
elements_names = ["a", "f", "c", "d", "e", "b"]
elements = dict(zip(elements_names, elements_coordinates))

fig, ax = plt.subplots()
ax.set_xlim(-2, 2)
ax.set_ylim(-2, 2)
ax.set_aspect('equal')

circle = plt.Circle((0, 0), 1, color='green', fill=False, linewidth=3, label='$A$')

for k, v in elements.items():
      ax.plot(v[0], v[1], 'o', color='purple')
      ax.text(v[0], v[1] + 0.1, k, color='black', fontsize=12)


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
#v(30pt)
#only("-1")[$ A={...} $]#only("2-")[$ A={a,c,d,f} $]

#only("1")[
#voiceover("Toll, das ist richtig. Wir sehen ja, dass sich die Elemente a, c, d und f in der Menge A befinden.")
]
#only("2")[
#voiceover("Also schreiben wir die Menge A in Mengenschreibweise als A istgleich geschweifte Klammer auf a, c, d, f geschweifte Klammer zu.")
]

]
