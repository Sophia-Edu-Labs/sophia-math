#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Ok, üben wir das mal: Betrachte die Menge A, die ")
]
#text(size: 30pt, weight: "bold")[Mengen]
#v(20pt)
#only("2")[
#voiceover("aus allen Elementen innerhalb des grünen Kreises besteht...")
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
]
#v(20pt)
#only("3-")[
$ A={a,b,c,d} $
]
#only("3")[
#voiceover("Also besteht A aus den Elementen a, b, c und d. Jetzt eine Aufgabe an dich: Bestimme, welche der folgenden Aussagen richtig ist.
")
]
#v(30pt)
#only("4-")[
- $a in A$
]
#v(20pt)
#only("4")[
#voiceover("Ist es die Aussage, dass a in A enthalten ist?")
]
#only("5-")[
- $e in A$
]
#v(20pt)
#only("5")[
#voiceover("Oder ist es die Aussage, dass e in A enthalten ist?")
]
#only("6")[
- $f in A$
]
#v(20pt)
#only("6")[
#voiceover("Oder ist es die Aussage, dass f in A enthalten ist?...")
]
]
#questionDef(
questionText: "Bestimme die korrekte Antwort",
// use latex!
answerOptions: ("$a\\in A$", "$e\\in A$", "$f\\in A$"),
correctAnswerIndex: 0,
)