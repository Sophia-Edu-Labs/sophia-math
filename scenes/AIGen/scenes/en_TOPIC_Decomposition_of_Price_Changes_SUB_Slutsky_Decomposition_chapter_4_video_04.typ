#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mathematical Representation]
#v(40pt)
#only("1-")[Total Effect = Substitution Effect + Income Effect]
#only("1")[
#voiceover("Slutsky Decomposition can be mathematically represented as: The Total Effect of a price change is equal to the Substitution Effect plus the Income Effect.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Notation]
#v(40pt)
#only("1-")[Let:]
#v(20pt)
#only("2-")[- $x_1$ = new quantity demanded]
#v(10pt)
#only("3-")[- $x_0$ = initial quantity demanded]
#v(10pt)
#only("4-")[- $x_s$ = quantity demanded due to substitution effect]
#only("1")[
#voiceover("Let's introduce some notation.")
]
#only("2")[
#voiceover("x sub 1 represents the new quantity demanded after the price change.")
]
#only("3")[
#voiceover("x sub 0 represents the initial quantity demanded before the price change.")
]
#only("4")[
#voiceover("And x sub s represents the quantity demanded due to the substitution effect alone.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Equation]
#v(40pt)
#only("1-")[$ x_1 - x_0 = (x_s - x_0) + (x_1 - x_s) $]
#v(20pt)
#only("2-")[Total Effect = Substitution Effect + Income Effect]
#only("1")[
#voiceover("Using this notation, we can write the Slutsky equation as: x sub 1 minus x sub 0 equals open parenthesis x sub s minus x sub 0 close parenthesis plus open parenthesis x sub 1 minus x sub s close parenthesis.")
]
#only("2")[
#voiceover("This equation shows that the total effect of a price change, which is the difference between the new and initial quantities demanded, can be decomposed into the substitution effect, which is the difference between the quantity demanded due to substitution and the initial quantity, plus the income effect, which is the difference between the new quantity and the quantity due to substitution.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Set the limits of the plot
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)

# Draw arrows for each effect
ax.arrow(2, 2, 4, 0, head_width=0.3, head_length=0.5, fc='b', ec='b', label='Substitution Effect')
ax.arrow(6, 2, 2, 2, head_width=0.3, head_length=0.5, fc='g', ec='g', label='Income Effect')
ax.arrow(2, 2, 6, 2, head_width=0.3, head_length=0.5, fc='r', ec='r', label='Total Effect')

# Add labels for each point
ax.text(1.5, 1.5, r'$x_0$', fontsize=12)
ax.text(5.5, 1.5, r'$x_s$', fontsize=12)
ax.text(7.5, 4.5, r'$x_1$', fontsize=12)

# Add a legend
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("This graph visualizes the decomposition. The blue arrow represents the substitution effect, moving from the initial quantity x sub 0 to the quantity due to substitution x sub s. The green arrow represents the income effect, moving from x sub s to the new quantity x sub 1. The red arrow represents the total effect, the sum of the substitution and income effects, moving directly from x sub 0 to x sub 1.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 🔍]
#v(40pt)
#only("1-")[- Slutsky Decomposition: Total Effect = Substitution Effect + Income Effect]
#v(20pt)
#only("2-")[- Notation: $x_1$, $x_0$, $x_s$]
#v(20pt)
#only("3-")[- Slutsky Equation: $ x_1 - x_0 = (x_s - x_0) + (x_1 - x_s) $]
#only("1")[
#voiceover("To recap, Slutsky Decomposition states that the Total Effect of a price change is equal to the Substitution Effect plus the Income Effect.")
]
#only("2")[
#voiceover("We use the notation x sub 1 for the new quantity, x sub 0 for the initial quantity, and x sub s for the quantity due to substitution.")
]
#only("3")[
#voiceover("The Slutsky equation represents this decomposition mathematically, showing that the difference between the new and initial quantities is equal to the substitution effect plus the income effect.")
]
]