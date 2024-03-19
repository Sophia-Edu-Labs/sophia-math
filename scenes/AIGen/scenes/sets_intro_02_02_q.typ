#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Betrachte die hier")
]
#text(size: 30pt, weight: "bold")[Mengen]
#v(20pt)
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
]
#only("2")[
#voiceover("visuell dargestellte Menge A.")
]
#v(20pt)
#only("3")[
#voiceover("Stelle die Menge A nun in Mengenschreibweise dar.")
]
#only("4")[
#voiceover("Tipp: Die Mengenschreibweise listet alle Elemente innerhalb von geschweiften Klammern, auch Mengenklammern genannt, auf.")
]
#v(30pt)
#only("4")[
$ A={...} $
]
#v(20pt)
]

#questionDef(
  questionText: "Stelle $A$ in Mengenschreibweise dar.",
  // use latex!{{}}
  answerOptions: ("A={a,c,d,f} oder eine äquivalente Aussage", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)