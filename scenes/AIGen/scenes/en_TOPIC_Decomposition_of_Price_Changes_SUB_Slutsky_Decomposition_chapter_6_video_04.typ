#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition Example 📉]

#only("1-")[
- Price of good X decreases
]

#only("2-")[
- Total effect: $\Delta x = x_1 - x_0$
]

#only("3-")[
- Substitution effect: $\Delta x_s = x_s - x_0$
]

#only("4-")[
- Income effect: $\Delta x_i = x_1 - x_s$
]

#only("5-")[
$ \Delta x = \Delta x_s + \Delta x_i$
]

#only("1")[
#voiceover("Let's recap the example where the price of good X decreases.")
]

#only("2")[
#voiceover("The total effect on the quantity demanded of good X is the difference between the new quantity demanded, x sub 1, and the initial quantity demanded, x sub 0.")
]

#only("3")[
#voiceover("The substitution effect is the change in quantity demanded from x sub 0 to x sub s, where x sub s is the quantity demanded due to the substitution effect alone, holding utility constant.")
]

#only("4")[
#voiceover("The income effect is the change in quantity demanded from x sub s to x sub 1, as the consumer's purchasing power increases.")
]

#only("5")[
#voiceover("The total effect is the sum of the substitution effect and the income effect, as shown by the Slutsky equation.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation 📈]

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a new figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Set the limits for x and y axes
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)

# Add labels for the axes
ax.set_xlabel('Good Y')
ax.set_ylabel('Good X')

# Plot the initial budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='blue', linewidth=2, label='Initial Budget Line')

# Plot the new budget line after the price decrease
y_new = 12.5 - 1.25 * x
ax.plot(x, y_new, color='red', linewidth=2, label='New Budget Line')

# Plot the initial optimal bundle
ax.plot(4, 6, marker='o', markersize=10, color='blue', label='Initial Bundle')

# Plot the intermediate bundle after substitution effect
ax.plot(5, 5, marker='o', markersize=10, color='green', label='Intermediate Bundle')

# Plot the new optimal bundle
ax.plot(6, 4.5, marker='o', markersize=10, color='red', label='New Bundle')

# Add arrows for substitution and income effects
ax.annotate('Substitution Effect', xy=(5, 5), xytext=(6, 6),
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('Income Effect', xy=(6, 4.5), xytext=(7, 3.5),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add a legend
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("Here's a graphical representation of the Slutsky decomposition. The initial optimal bundle is at the point where the initial budget line is tangent to the highest possible indifference curve.")
]

#only("2")[
#voiceover("When the price of good X decreases, the budget line rotates outward. The substitution effect moves the consumption to the intermediate bundle on the same indifference curve.")
]

#only("3")[
#voiceover("The income effect then shifts consumption to the new optimal bundle on a higher indifference curve, as the consumer's real income has increased.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]

#only("1-")[
- Slutsky decomposition separates the effect of a price change into substitution and income effects
]

#only("2-")[
- Substitution effect: change in consumption due to relative price change, holding utility constant
]

#only("3-")[
- Income effect: change in consumption due to increased purchasing power
]

#only("4-")[
- Total effect = Substitution effect + Income effect
]

#only("5-")[
- Graphically, the substitution effect moves along the initial indifference curve, while the income effect shifts to a higher indifference curve
]

#only("1")[
#voiceover("The key takeaways from this example are:")
]

#only("2")[
#voiceover("The substitution effect is the change in consumption due to the change in relative prices, holding utility constant.")
]

#only("3")[
#voiceover("The income effect is the change in consumption due to the increase in the consumer's purchasing power.")
]

#only("4")[
#voiceover("The total effect of the price change is the sum of the substitution effect and the income effect.")
]

#only("5")[
#voiceover("Graphically, the substitution effect is shown by the movement along the initial indifference curve, while the income effect is the shift to a higher indifference curve.")
]

]