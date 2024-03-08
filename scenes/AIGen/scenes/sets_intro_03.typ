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

# Initial elements with 'a' and 'b'
elements = {'a': (-0.5, 0.5), 'b': (0.5, -0.5)}

# Add more elements
additional_elements = {'c': (0.3, -0.7), 'd': (-0.8, -0.2)}  # Adjusted position for 'c'
elements.update(additional_elements)

# Note: Element 'e' has been intentionally omitted based on the request

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

# Add legend and grid
ax.legend(fontsize=16, loc='upper left')
ax.grid(True)

# Hide the axes for a cleaner look
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
#only("3-")[- Mächtigkeit $|X|$#only("4-")[$=4$]]
#only("4")[#voiceover("In diesem Fall hier beträgt die Mächtigkeit von X vier, denn a, b, c und d sind in der Menge X, also vier Elemente.")]
]