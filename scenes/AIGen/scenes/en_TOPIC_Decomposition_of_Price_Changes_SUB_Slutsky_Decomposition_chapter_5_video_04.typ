#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition Recap]
#v(40pt)
#only("1-")[
- Illustrated graphically using indifference curves and budget constraints 📈
]
#v(20pt)
#only("2-")[
- Indifference curves represent consumer preferences 😊
]
#v(20pt)
#only("3-")[
- Budget constraints show affordable combinations of goods 💰
]
#v(20pt)
#only("4-")[
- Price change causes budget constraint to pivot 🔄
]
#v(20pt)
#only("5-")[
- Substitution effect: movement along initial indifference curve 🔀
]
#v(20pt)
#only("6-")[
- Income effect: shift to a new indifference curve 💸
]
#only("1")[
#voiceover("Slutsky Decomposition can be illustrated graphically using indifference curves and budget constraints.")
]
#only("2")[
#voiceover("Indifference curves represent the consumer's preferences, showing combinations of goods that provide the same level of satisfaction.")
]
#only("3")[
#voiceover("Budget constraints show the combinations of goods that the consumer can afford given their income and the prices of the goods.")
]
#only("4")[
#voiceover("When a price changes, the budget constraint pivots, changing the set of affordable combinations.")
]
#only("5")[
#voiceover("The substitution effect is shown by the movement along the initial indifference curve, holding utility constant.")
]
#only("6")[
#voiceover("The income effect is shown by the shift to a new indifference curve, reflecting the change in purchasing power.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a new figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Set the limits for x and y axes
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)

# Add labels for x and y axes
ax.set_xlabel('Good 1', fontsize=14)
ax.set_ylabel('Good 2', fontsize=14)

# Plot the initial budget constraint
x1 = np.linspace(0, 10, 100)
y1 = 10 - x1
ax.plot(x1, y1, color='blue', linewidth=2, label='Initial Budget Constraint')

# Plot the initial indifference curve
x2 = np.linspace(0, 10, 100)
y2 = 10 / x2
ax.plot(x2, y2, color='red', linewidth=2, label='Initial Indifference Curve')

# Plot the pivoted budget constraint
y3 = 20 - 2 * x1
ax.plot(x1, y3, color='green', linewidth=2, label='Pivoted Budget Constraint')

# Plot the final indifference curve
y4 = 20 / x2
ax.plot(x2, y4, color='purple', linewidth=2, label='Final Indifference Curve')

# Add a legend
ax.legend(fontsize=12)

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Here's a graphical representation of Slutsky Decomposition. The blue line represents the initial budget constraint, and the red curve is the initial indifference curve.")
]
#only("2")[
#voiceover("When the price of Good 1 decreases, the budget constraint pivots outward, as shown by the green line.")
]
#only("3")[
#voiceover("The substitution effect is the movement along the initial indifference curve to the point of tangency with the new budget constraint.")
]
#only("4")[
#voiceover("The income effect is the shift from this point to the final consumption point on a higher indifference curve, shown in purple.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[
- Slutsky Decomposition separates price effect into substitution and income effects 🔍
]
#v(20pt)
#only("2-")[
- Graphically illustrated using indifference curves and budget constraints 📊
]
#v(20pt)
#only("3-")[
- Substitution effect: movement along initial indifference curve 🔄
]
#v(20pt)
#only("4-")[
- Income effect: shift to a new indifference curve 💰
]
#v(20pt)
#only("5-")[
- Crucial tool for analyzing consumer behavior 🧐
]
#only("1")[
#voiceover("To recap, Slutsky Decomposition separates the effect of a price change into substitution and income effects.")
]
#only("2")[
#voiceover("This can be illustrated graphically using indifference curves and budget constraints.")
]
#only("3")[
#voiceover("The substitution effect is shown by the movement along the initial indifference curve, holding utility constant.")
]
#only("4")[
#voiceover("The income effect is shown by the shift to a new indifference curve, reflecting the change in purchasing power.")
]
#only("5")[
#voiceover("Slutsky Decomposition is a crucial tool for analyzing how consumers respond to price changes.")
]
]