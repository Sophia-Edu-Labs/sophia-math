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
    #voiceover("Betrachte die Mengen ")
  ]
#text(size: 30pt, weight: "bold")[Mächtigkeit]
  #v(40pt)

#only("2")[
  #voiceover("X und üpsilon. Was ist die Mächtigkeit von X? Und was ist die Mächtigkeit von üpsilon?")
  ]

#only("2-")[
#box()[
  #morphchildren(id: "plot")[
#figure(
  pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define initial and additional elements together with two outside elements
# Adjusting point 'd' position (now referred to as 'P_4') to the left
elements_coordinates = [(-0.5, 0.5), (0.5, -0.5), (0.3, -0.7), (-1.0, -0.2), (1.5, 0), (-1.2, 1.2), (0, 1)]  # Added new point

# Generate names a, b, c, ... for each element
elements_names = [f'{chr(97+i)}' for i in range(len(elements_coordinates))]

# Convert to dictionary for easy handling
elements = dict(zip(elements_names, elements_coordinates))

# Define the figure and axis
fig, ax = plt.subplots()
ax.set_xlim(-3, 3)
ax.set_ylim(-3, 3)
ax.set_aspect('equal')

# Increase the radius of the first circle representing set X, and move it a bit to the left
circle_x = plt.Circle((-0.5, 0), 1.5, color='green', fill=False, linewidth=3, label='Set X')  # Increased radius to 1.5

# Increase the radius of the second circle representing set Y with a larger radius and different color
circle_y = plt.Circle((1.2, 0.5), 2, color='orange', fill=False, linewidth=3, label='Set Y')  # Increased radius to 2

# Add the elements to the plot
for k, v in elements.items():
    ax.plot(v[0], v[1], 'o', color='purple')  # Point
    ax.text(v[0], v[1] + 0.1, k, color='black', fontsize=12)  # Label

# Add the circles to the plot
ax.add_artist(circle_x)
ax.add_artist(circle_y)

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
]
#questionDef(
  questionText: "Was ist $|X|$, die Mächtigkeit von X? Und was ist $|Y|$, die Mächtigkeit von Y?",
  // use latex!
  answerOptions: ("$|X|=6, |Y|=5$", "$|X|=0, |Y|=0$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
        )
      ),
      answerOptionMatcher:("$|X|=\key{a}, |Y|=\key{b}$"),
      answerOptionsTypes: (
        "a": "number",
        "b": "number"
      )
  ),
)
