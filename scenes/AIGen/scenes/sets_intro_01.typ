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
    #voiceover("Was ist eine Menge?")
  ]
#text(size: 30pt, weight: "bold")[Mengen]
  #v(40pt)

  #only("2")[
    #voiceover("Eine Menge ist eine Zusammenfassung verschiedener Objekte zu einem Ganzen. Zum Beispiel kann man eine Menge an 10 Äpfeln betrachten. ...")
  ]

#only("3-")[
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
  #voiceover("Hier siehst du die Visualisierung einer Menge. Die Menge besteht aus den Roten Punkten a, b, c und d. ...
  ")
]
#v(40pt)
#only("4-")[
- Menge $A$
  ]
#only("4")[
  #voiceover("Also nochmal die Begriffe. Die Menge hier heißt A. ...
  ")
]
#only("5-")[
- Elemente: a, b, c, d
]
#only("5")[
  #voiceover("a, b, c, d, sind die Elemente der Menge A. ... Also ist alles was in der Menge ist ein Element der Menge.
  ")
]
#only("6")[- $a in A$, $b in A$, ...]#only("7")[- #text(fill:red)[$a in A$], $b in A$, ...]#only("8-")[- $a in A$, #text(fill:red)[$b in A$], ...]
#only("6")[
  #voiceover("Und das drückt man dann mit diesem runden E aus. Man sagt dann IN oder ist ELEMENT VON. ... Also heißt der")
]
#only("7")[
  #voiceover("linke Ausdruck a ist Element von a oder a ist in a.")
]
#only("8")[
  #voiceover("Und der rechte Ausdruck heisst b ist Element von A oder b ist in A.")
]
]