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

# Draw the circle representing the set
circle = plt.Circle((0, 0), 1, color='green', fill=False, linewidth=3, label='Menge X')

# Add the elements to the set
for k, v in elements.items():
    ax.plot(v[0], v[1], 'o', color='purple')  # Point
    ax.text(v[0], v[1] + 0.1, k, color='black', fontsize=12)  # Label

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

#only("1")[
  #voiceover("Das ist leider falsch, schade! Gehen wir die Optionen einzeln durch:")
]

#v(60pt)
#only("-1")[- $a in X$]#only("2-")[#text(fill:green)[- $a in X$]]
#only("2")[
  #voiceover("A ist ja in X, also ist die erste Aussage Richtig.")
]
#v(20pt)
#only("-2")[- $d in X$]#only("3-")[#text(fill:green)[- $d in X$]]
#only("3")[
  #voiceover("D ist auch in X, also ist die zweite Aussage auch richtig.")
]
#v(20pt)
#only("-3")[- $e in.not X$]#only("4-")[#text(fill:green)[- $e in.not X$]]
#only("4")[
  #voiceover("E ist wie die Aussage angibt, nicht in X, also ist die dritte Aussage auch richtig.")
]
#v(20pt)
#only("-4")[- $f in X$]#only("5-")[#text(fill:red)[- $f in X$]]
#only("5")[
  #voiceover("Schliesslich ist f nicht in X. Also ist die letzte Aussage falsch und damit die gesuchte Antwort!")
]
]