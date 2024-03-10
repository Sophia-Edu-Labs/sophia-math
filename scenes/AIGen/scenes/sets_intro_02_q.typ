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
    #voiceover("Ok, üben wir das mal: Betrachte die Menge X, die ")
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
]
#only("3")[
  #voiceover("Jetzt eine Frage an dich: Welche der folgenden Aussagen ist falsch?
  ")
]
#v(60pt)
#only("4-")[
- $a in X$
]
#v(20pt)
#only("4")[
  #voiceover("Ist es die Aussage, dass a in X enthalten ist?")
]
#only("5-")[
- $d in X$
]
#v(20pt)
#only("5")[
  #voiceover("Oder ist es die Aussage, dass d in X enthalten ist?")
]
#only("6")[- $e in.not X$]#only("7")[- $e$ #text(fill: red)[$in.not $]$X$]#only("8-")[- $e in.not X$]
#v(20pt)
#only("6")[
  #voiceover("Oder ist es die Aussage, dass e nicht in X enthalten ist? ...")
]
#only("7")[
  #voiceover("Das schreiben wir übrigens mit dem durchgestrichenen Elementsymbol. ...")
]
#only("8-")[
- $f in X$
]
#only("8")[
  #voiceover("Oder ist es die Aussage, dass f in X enthalten ist?")
]
]

#questionDef(
  questionText: "Welche der Aussagen ist falsch",
  // use latex!
  answerOptions: ("$a\in X$", "$d\in X$", "$e\\notin X$", "$f\in X$"),
  correctAnswerIndex: 3,
)