#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Electric Current]
#v(40pt)

#only("1-")[What is electric current? 🤔⚡]

#v(40pt)

#only("2-")[a) The total charge in a conductor]
#v(10pt)
#only("3-")[b) The flow of electric charges]
#v(10pt)
#only("4-")[c) The potential difference across a conductor]
#v(10pt)
#only("5-")[d) The resistance of a conductor]

#only("1")[
#voiceover("Let's explore a fundamental concept in electricity: electric current. What exactly is electric current?")
]

#only("2")[
#voiceover("Is it the total charge in a conductor?")
]

#only("3")[
#voiceover("Or is it the flow of electric charges?")
]

#only("4")[
#voiceover("Perhaps it's the potential difference across a conductor?")
]

#only("5")[
#voiceover("Or could it be the resistance of a conductor?")
]

#only("6-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create a simple circuit diagram
fig, ax = plt.subplots(figsize=(8, 6))

# Battery
ax.add_patch(plt.Rectangle((0.2, 0.4), 0.1, 0.2, fill=False))
ax.add_patch(plt.Rectangle((0.2, 0.6), 0.3, 0.05, fill=True))

# Wire
ax.plot([0.3, 0.7, 0.7, 0.3, 0.3], [0.5, 0.5, 0.9, 0.9, 0.65], 'k-', linewidth=2)

# Resistor
ax.plot([0.7, 0.75, 0.8, 0.85, 0.9, 0.95, 1.0], [0.9, 0.95, 0.85, 0.95, 0.85, 0.95, 0.9], 'k-', linewidth=2)

# Arrows for current
ax.arrow(0.5, 0.5, 0.1, 0, head_width=0.05, head_length=0.05, fc='r', ec='r', width=0.02)
ax.arrow(0.5, 0.9, -0.1, 0, head_width=0.05, head_length=0.05, fc='r', ec='r', width=0.02)

# Labels
ax.text(0.1, 0.5, 'Battery', fontsize=12)
ax.text(0.8, 0.8, 'Resistor', fontsize=12)
ax.text(0.45, 0.4, 'Current', color='r', fontsize=12)

ax.set_xlim(0, 1.2)
ax.set_ylim(0.3, 1)
ax.axis('off')

plt.title('Simple Circuit with Electric Current', fontsize=14)
plt.show()

```,
width: 360pt),
caption: [Simple circuit diagram showing electric current]
)
]
]
]

#only("6")[
#voiceover("As we consider these options, let's visualize a simple electric circuit. Here, we have a battery connected to a resistor by wires. The red arrows indicate the movement of electric charges through the circuit. This movement is key to understanding electric current.")
]
]

//Type: MC 
#questionDef( 
questionText: "What is electric current?", 
answerOptions: ("The total charge in a conductor", "The flow of electric charges", "The potential difference across a conductor", "The resistance of a conductor"),
correctAnswerIndex: 1 
)