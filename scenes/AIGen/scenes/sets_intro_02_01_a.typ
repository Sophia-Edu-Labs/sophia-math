#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Mengen]
#v(40pt)
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

elements_coordinates = [(-0.5, 0.5), (0.5, -0.5), (0.3, -0.7), (-0.8, -0.2), (1.5, 0), (-1.2, 0.8)]
elements_names = ["a", "b", "c", "d", "e", "f"]
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
#v(20pt)
$ A={a,b,c,d} $
#only("2")[
#voiceover("Super, das ist richtig. Gegeben ist die Menge A, die aus den Elementen a, b, c und d besteht. Gehen wir nun die einzelnen Aussagen durch.")
]
#v(20pt)
#only("-2")[#text()[- $a in A$]]#only("3-")[#text(fill: green)[- $a in A$]]
#v(10pt)
#only("3")[
#voiceover("a ist Element von A, da a in der Mengenschreibweise von A vorkommt. Wir erkennen auch am Diagramm, dass sich A in der Menge A befindet. Also ist diese Aussage korrekt.")
]
#v(20pt)
#only("-3")[- $e in A$]#only("4-")[#text(fill: red)[- $e in A$]]
#v(10pt)
#only("4")[
#voiceover("e ist nicht Element von A, da e nicht in der Mengenschreibweise von A vorkommt. Wir sehen auch, dass sich e nicht innerhalb des Kreises befindet. Also ist diese Aussage nicht korrekt.")
]
#v(20pt)
#only("-4")[- $f in A$]#only("5-")[#text(fill: red)[- $f in A$]]
#v(10pt)
#only("5")[
#voiceover("Auch f ist nicht Element von A. Wir erkennen, dass f nicht in der Mengenschreibweise von A vorkommt und sich auch nicht innerhalb des Kreises befindet. Also ist auch diese Aussage nicht korrekt.")
]
]