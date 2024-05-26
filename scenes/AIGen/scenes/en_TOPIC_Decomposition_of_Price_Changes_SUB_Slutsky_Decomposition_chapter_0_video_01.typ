#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition]
#v(40pt)
#only("1-")[- Separates effect of price change]
#v(20pt)
#only("2-")[- Into substitution and income effects]
#only("1")[
#voiceover("Slutsky Decomposition is a method in economics that separates the effect of a price change...")
]
#only("2")[
#voiceover("...into two components: the substitution effect and the income effect.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitution Effect]
#v(40pt)
#only("1-")[- Change in consumption due to relative prices 💰]
#v(20pt)
#only("2-")[- Holding utility constant 📈]
#only("1")[
#voiceover("The substitution effect captures the change in consumption that results from a change in the relative prices of goods...")
]
#only("2")[
#voiceover("...while holding the consumer's utility, or satisfaction, constant.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Income Effect]
#v(40pt)
#only("1-")[- Change in consumption due to real income 💸]
#v(20pt)
#only("2-")[- Resulting from price change 📉]
#only("1")[
#voiceover("The income effect, on the other hand, measures the change in consumption that is due to the change in the consumer's real income...")
]
#only("2")[
#voiceover("...that results from the price change.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
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

# Plot the original budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='blue', label='Original Budget Line')

# Plot the new budget line after price change
y_new = 15 - 1.5*x
ax.plot(x, y_new, color='red', label='New Budget Line')

# Plot the indifference curves
x_ind = np.linspace(0, 10, 100)
y_ind1 = 10 / x_ind
y_ind2 = 20 / x_ind
ax.plot(x_ind, y_ind1, color='green', linestyle='--', label='Indifference Curve 1')
ax.plot(x_ind, y_ind2, color='purple', linestyle='--', label='Indifference Curve 2')

# Annotate the substitution and income effects
ax.annotate('Substitution Effect', xy=(4, 4), xytext=(2, 5),
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('Income Effect', xy=(6, 2), xytext=(7, 3),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add labels and legend
ax.set_xlabel('Good 1')
ax.set_ylabel('Good 2')
ax.legend()

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph visualizes the Slutsky Decomposition. The blue line is the original budget constraint, and the red line is the new budget constraint after a price change. The green and purple curves are indifference curves. The movement along the indifference curve represents the substitution effect, while the shift to a new indifference curve represents the income effect.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Slutsky Decomposition: Separates price change effect]
#v(20pt)
#only("2-")[- Substitution Effect: Change due to relative prices]
#v(20pt)
#only("3-")[- Income Effect: Change due to real income]
#only("1")[
#voiceover("In summary, Slutsky Decomposition is a tool that separates the effect of a price change...")
]
#only("2")[
#voiceover("...into the substitution effect, which is the change in consumption due to relative prices...")
]
#only("3")[
#voiceover("...and the income effect, which is the change in consumption due to real income.")
]
]