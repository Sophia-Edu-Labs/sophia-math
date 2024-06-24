#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Electric Current]
#v(40pt)
What is electric current?
#v(20pt)
#only("-1")[a) The total charge in a conductor]#only("2-")[#text(fill:red)[a) The total charge in a conductor]]
#v(10pt)
#only("-2")[b) The flow of electric charges]#only("3-")[#text(fill:green)[b) The flow of electric charges]]
#v(10pt)
#only("-3")[c) The potential difference across a conductor]#only("4-")[#text(fill:red)[c) The potential difference across a conductor]]
#v(10pt)
#only("-4")[d) The resistance of a conductor]#only("5-")[#text(fill:red)[d) The resistance of a conductor]]

#only("1")[#voiceover("Excellent job! You've answered correctly. Let's break down each option to understand why.")]
#only("2")[#voiceover("Option a, the total charge in a conductor, is incorrect. While charge is related to current, it's not the same thing. The total charge is simply the amount of electric charge present, not its movement.")]
#only("3")[#voiceover("Option b, the flow of electric charges, is the correct answer. Electric current is indeed defined as the flow or movement of electric charges through a conductor.")]
#only("4")[#voiceover("Option c, the potential difference across a conductor, is incorrect. This is actually the definition of voltage, not current. Voltage can cause current to flow, but it's not the current itself.")]
#only("5")[#voiceover("Lastly, option d, the resistance of a conductor, is also incorrect. Resistance is the opposition to the flow of current, not the current itself.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Electric Current]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(10, 6))

# Create a wire
wire = plt.Rectangle((0.1, 0.4), 0.8, 0.2, fc='gray', ec='black')
ax.add_patch(wire)

# Create moving charges
x = np.linspace(0.2, 0.8, 5)
y = np.random.uniform(0.45, 0.55, 5)
scatter = ax.scatter(x, y, c='blue', s=100, zorder=2)

# Add arrow to show direction
ax.arrow(0.1, 0.3, 0.7, 0, head_width=0.05, head_length=0.05, fc='r', ec='r', width=0.01)

# Set labels and title
ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_xticks([])
ax.set_yticks([])
ax.set_title('Electric Current in a Conductor')

# Add labels
plt.text(0.5, 0.15, 'Direction of Current', ha='center', fontsize=12, color='r')
plt.text(0.5, 0.8, 'Conductor', ha='center', fontsize=12)
plt.text(0.2, 0.6, 'Moving Charges', ha='center', fontsize=12, color='blue')

plt.tight_layout()
plt.show()

```,
width: 360pt),
)
]
]
]

#only("2-")[- Current is the #text(weight: "bold")[flow of charges] 🔋➡️]
#only("3-")[- Measured in #text(weight: "bold")[Amperes (A)] 📏]
#only("4-")[- 1 A = 1 Coulomb/second ⏱️]

#only("1")[#voiceover("Let's visualize electric current. In this diagram, we see a conductor, represented by the gray rectangle. The blue dots represent electric charges, and the red arrow shows the direction of current flow.")]
#only("2")[#voiceover("Electric current is defined as the flow of electric charges. These charges are typically electrons in metal conductors, but can also be ions in solutions or plasmas.")]
#only("3")[#voiceover("We measure electric current in units called Amperes, symbolized by the letter A.")]
#only("4")[#voiceover("One Ampere is defined as one Coulomb of charge passing a point in the circuit per second. A Coulomb is the unit of electric charge.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Points]
#v(40pt)
#only("1-")[- Current is #text(weight: "bold")[movement] of charges, not static charge 🏃‍♂️💨]
#v(20pt)
#only("2-")[- Distinct from voltage (potential difference) ⚡]
#v(20pt)
#only("3-")[- Not the same as resistance (opposition to flow) 🚧]
#v(20pt)
#only("4-")[- Essential concept in electrical circuits ⚡🔌]

#only("1")[#voiceover("Let's summarize the key points about electric current. First, remember that current is about the movement of charges, not static charge. It's a dynamic process.")]
#only("2")[#voiceover("Second, current is distinct from voltage. Voltage is the potential difference that can cause current to flow, but it's not the current itself.")]
#only("3")[#voiceover("Third, current is not the same as resistance. Resistance opposes the flow of current, but it's a separate concept.")]
#only("4")[#voiceover("Finally, understanding electric current is essential for working with electrical circuits. It's a fundamental concept in electronics and electrical engineering.")]
]