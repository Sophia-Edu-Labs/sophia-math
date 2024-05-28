#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Not quite, but don't worry! Let's go through the correct solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Graphical Representation]

#v(40pt)

#only("2-")[- Decrease in price of good X 📉]
// The decrease in price is shown from slide 2 onward

#only("2")[
#voiceover("We're considering a decrease in the price of good X.")
]

]

#slide()[

#only("1")[
#voiceover("This can be represented graphically using indifference curves and budget constraints. Let's see how.")
]

#text(size: 30pt, weight: "bold")[Indifference Curves and Budget Constraints]

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

# Plot indifference curves
x = np.linspace(0, 10, 100)
for i in range(1, 4):
    y = 10 / (i * x)
    ax.plot(x, y, color='blue', linestyle='-', label=f'Indifference Curve {i}')

# Plot initial budget constraint
x = np.linspace(0, 10, 100)
y = 10 - 2 * x
ax.plot(x, y, color='red', linestyle='-', label='Initial Budget Constraint')

# Plot new budget constraint
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='green', linestyle='-', label='New Budget Constraint')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Indifference Curves and Budget Constraints')
ax.legend()

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
// The indifference curves and budget constraints are visualized using matplotlib

#only("1")[
#voiceover("Here, the blue curves represent the indifference curves, and the red line represents the initial budget constraint.")
]

]
]

#slide()[

#text(size: 30pt, weight: "bold")[Substitution Effect]

#v(40pt)

#only("1-")[- Budget constraint pivots outward 🔄]
// The pivoting of the budget constraint is shown from slide 1 onward

#only("2-")[- Consumption moves along initial indifference curve ➡]
// The movement along the indifference curve is shown from slide 2 onward

#only("1")[
#voiceover("When the price of good X decreases, the budget constraint pivots outward, as shown by the green line.")
]

#only("2")[
#voiceover("The substitution effect is the movement along the initial indifference curve to a new point of tangency with the new budget constraint.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Income Effect]

#v(40pt)

#only("1-")[- Real income increases 💰]
// The increase in real income is shown from slide 1 onward

#only("2-")[- Shift to a higher indifference curve ⬆]
// The shift to a higher indifference curve is shown from slide 2 onward

#only("1")[
#voiceover("The decrease in price also increases the consumer's real income.")
]

#only("2")[
#voiceover("This allows the consumer to shift to a higher indifference curve, representing a higher level of utility.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Price decrease: budget constraint pivots outward 🔄]
// The pivoting of the budget constraint is shown from slide 1 onward

#only("2-")[- Substitution effect: movement along indifference curve ➡]
// The substitution effect is shown from slide 2 onward

#only("3-")[- Income effect: shift to higher indifference curve ⬆]
// The income effect is shown from slide 3 onward

#only("1")[
#voiceover("To summarize, a decrease in the price of good X is represented by an outward pivot of the budget constraint.")
]

#only("2")[
#voiceover("The substitution effect is the movement along the initial indifference curve to a new point of tangency.")
]

#only("3")[
#voiceover("The income effect is the shift to a higher indifference curve due to the increase in real income.")
]

]