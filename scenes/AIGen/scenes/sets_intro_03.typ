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
    #voiceover("Was können wir über eine Menge sagen, außer was für Elemente sie enthält? ... ")
  ]
#text(size: 30pt, weight: "bold")[Mächtigkeit]
  #v(40pt)

#only("2")[
  #voiceover("Wir können noch sagen, wie VIELE Elemente sie umfasst. ... Das beschreiben wir mit dem Konzept der Mächtigkeit. ... Die Mächtigkeit einer Menge ist nichts anderes, als die Anzahl der Elemente, die die Menge enthält.")
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

# Initial elements with 'a' and 'b'
elements = {'a': (-0.5, 0.5), 'b': (0.5, -0.5)}

# Add more elements
additional_elements = {'c': (0.3, -0.7), 'd': (-0.8, -0.2)}  # Adjusted position for 'c'
elements.update(additional_elements)

# Define the figure and axis
fig, ax = plt.subplots()
ax.set_xlim(-1.5, 1.5)
ax.set_ylim(-1.5, 1.5)
ax.set_aspect('equal')

# Draw the circle representing the set
circle = plt.Circle((0, 0), 1, color='blue', fill=False, linewidth=3, label='Menge A')

# Add the elements to the set
for k, v in elements.items():
    ax.plot(v[0], v[1], 'o', color='red')  # Point
    ax.text(v[0], v[1] + 0.1, k, color='black', fontsize=16)  # Label

# Add the circle to the plot
ax.add_artist(circle)

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
  #voiceover("Die Mächtigkeit einer Menge schreibt man mit senkrechten Strichen, die man um die Menge herum zieht. ...")
]
#v(40pt)
#only("3-")[- Mächtigkeit $|A|$#only("4-")[$=4$]]
#only("4")[#voiceover("In diesem Fall hier beträgt die Mächtigkeit von A vier, denn a, b, c und d sind in der Menge A, also vier Elemente. Wir zählen also einfach die Elemente, die in der Menge enthalten sind, um die Mächtigkeit zu ermitteln.")]
#only("5-")[$ |A| = |{a,b,c,d}|=4$]
#only("5")[#voiceover("Wenn wir A in Mengenschreibweise schreiben, wird das besonders gut deutlich. Da zählen wir einfach nur die Elemente innerhalb der geschweiften Klammern.")]
]