#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

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
  #v(40pt)

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
        # Adjust the radius here for a smaller circle in the legend
        radius = width // 8  # Decreased radius for a smaller circle
        circle = mpatches.Circle((radius - xdescent + width // 2, height // 2 - ydescent),
                                 radius, facecolor=orig_handle.get_facecolor(),
                                 edgecolor=orig_handle.get_edgecolor(),
                                 linewidth=orig_handle.get_linewidth(), transform=trans)
        return [circle]

# Define initial and additional elements together with two outside elements
elements_coordinates = [(-0.5, 0.5), (0.5, -0.5), (0.3, -0.7), (-0.8, -0.2), (1.5, 0), (-1.2, 1.2)]

# Generate names P_1, P_2, ... for each element
elements_names = ["a", "b", "c", "d", "e", "f"]

# Convert to dictionary for easy handling
elements = dict(zip(elements_names, elements_coordinates))

# Define the figure and axis
fig, ax = plt.subplots()
ax.set_xlim(-2, 2)
ax.set_ylim(-2, 2)
ax.set_aspect('equal')

# Draw the circle representing the set and update label to 'Menge A'
circle = plt.Circle((0, 0), 1, color='green', fill=False, linewidth=3, label='Menge A')

# Add the elements to the set
for k, v in elements.items():
    ax.plot(v[0], v[1], 'o', color='purple')  # Point
    ax.text(v[0], v[1] + 0.1, k, color='black', fontsize=12)  # Label

# Add the circle to the plot
ax.add_artist(circle)

# Register the custom handler with the modified smaller circle
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
  #voiceover("Jetzt eine Aufgabe an dich: Bestimme, welche der folgenden Aussagen richtig ist.
  ")
]
#v(60pt)
#only("4-")[
- $f in A$
]
#v(20pt)
#only("4")[
  #voiceover("Ist es die Aussage, dass f in A enthalten ist?")
]
#only("5-")[
- $d in A$
]
#v(20pt)
#only("5")[
  #voiceover("Oder ist es die Aussage, dass d in A enthalten ist?")
]
#only("6")[- $b in.not A$]#only("7")[- $b$ #text(fill: red)[$in.not $]$A$]#only("8-")[- $b in.not A$]
#v(20pt)
#only("6")[
  #voiceover("Oder ist es die Aussage, dass b nicht in A enthalten ist? ...")
]
#only("7")[
  #voiceover("Das schreiben wir übrigens mit dem durchgestrichenen Elementsymbol. ...")
]
]

#questionDef(
  questionText: "Bestimme die korrekte Antwort",
  // use latex!
  answerOptions: ("$f\\in A$", "$d\\in A$", "$b\\not\\in X$"),
  correctAnswerIndex: 1,
)