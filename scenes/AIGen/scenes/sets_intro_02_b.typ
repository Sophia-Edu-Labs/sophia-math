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

#v(60pt)
#only("-2")[- $f in A$]#only("3-")[#text(fill:red)[- $f in A$]]
#v(20pt)
#only("-3")[- $d in A$]#only("4-")[#text(fill:green)[- $d in A$]]
#v(20pt)
#only("-4")[- $b in.not A$]#only("5-")[#text(fill:red)[- $b in.not A$]]
#v(20pt)
#only("2-")[
$ A={a,b,c,d} $
]

#only("1")[
  #voiceover("Super, das ist richtig. Wir beginnen damit, A in Mengenschreibweise zu notieren.")
]
#only("2")[
  #voiceover("A ist die Menge der Elemente a, b, c und d. Gehen wir nun die Aussagen einzeln durch.")
]
#only("3")[
  #voiceover("f ist nicht in A enthalten, sonst wäre es in der Mengenschreibweise notiert. Also ist diese Aussage falsch.")
]
#only("4")[
  #voiceover("d ist in A enthalten, da es in der Mengenschreibweise enthalten ist. also ist diese Aussage wahr.")
]
#only("5")[
  #voiceover("Auch b ist in A enthalten, da es in der Mengenschreibweise vorkommt. also ist die Aussage, dass b nicht in A enthalten ist, falsch.")
]
]
