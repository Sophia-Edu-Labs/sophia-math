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

#text(size: 30pt, weight: "bold")[Mächtigkeit]
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
        # Adjust the radius here for a smaller circle in the legend
        radius = width // 8  # Decreased radius for a smaller circle
        circle = mpatches.Circle((radius - xdescent + width // 2, height // 2 - ydescent),
                                 radius, facecolor=orig_handle.get_facecolor(),
                                 edgecolor=orig_handle.get_edgecolor(),
                                 linewidth=orig_handle.get_linewidth(), transform=trans)
        return [circle]

# Define initial and additional elements together with two outside elements
elements_coordinates = [(-0.5, 0.5), (0.3, -0.7), (-1.0, -0.2), (1.5, 0), (0, 1), (1.5, 1)]

# Generate names a, b, c, ... for each element
elements_names = [f'{chr(97+i)}' for i in range(len(elements_coordinates))]

# Convert to dictionary for easy handling
elements = dict(zip(elements_names, elements_coordinates))

# Define the figure and axis
fig, ax = plt.subplots()
ax.set_xlim(-3, 3)
ax.set_ylim(-3, 3)
ax.set_aspect('equal')

# Draw the circles representing the sets and rename them to A and B
circle_a = plt.Circle((-0.5, 0), 1.5, color='green', fill=False, linewidth=3, label='Menge A')  # Renamed to Set A
circle_b = plt.Circle((1.2, 0.5), 2, color='orange', fill=False, linewidth=3, label='Menge B')  # Renamed to Set B

# Add the elements to the plot
for k, v in elements.items():
    ax.plot(v[0], v[1], 'o', color='purple')  # Point
    ax.text(v[0], v[1] + 0.1, k, color='black', fontsize=12)  # Label

# Add the circles to the plot
ax.add_artist(circle_a)
ax.add_artist(circle_b)

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

#v(20pt)
- $A={a,b,c,e}$
- $B={a,b,d,e, f}$
#v(20pt)
#only("-1")[$ |B|=? $]#only("2-")[$ |B|=5 $]
#only("1")[
  #voiceover("Super, das ist richtig. Um die Mächtigkeit einer Menge zu bestimmen, zählen wir einfach die Anzahl der Elemente. In diesem Fall sind ja die Elemente a,b,d, e und f in B.")
]
#only("2")[
  #voiceover("Und das macht 5 Elemente. Also ist die Mächtigkeit von B gleich 5.")
]

]
