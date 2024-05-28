#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Income Effect in Hicks Decomposition 💰]
#v(40pt)
#only("1-")[- Shows how consumption changes due to a change in real income]
#v(20pt)
#only("2-")[- Adjusted for the substitution effect]
#v(20pt)
#only("3-")[- Formula: $I E = x(p, m) - h(p, u)$]
#v(20pt)
#only("4-")[- $x(p, m)$: Marshallian demand (actual consumption)]
#v(20pt)
#only("5-")[- $h(p, u)$: Hicksian demand (consumption adjusted for substitution effect)]
#only("1")[
#voiceover("The income effect in Hicks Decomposition shows how consumption changes due to a change in real income.")
]
#only("2")[
#voiceover("This change in consumption is adjusted for the substitution effect, which means we isolate the impact of the change in real income.")
]
#only("3")[
#voiceover("The income effect can be calculated using the formula: Income Effect equals x of p, m minus h of p, u.")
]
#only("4")[
#voiceover("Here, x of p, m represents the Marshallian demand, which is the actual consumption at prices p and income m.")
]
#only("5")[
#voiceover("On the other hand, h of p, u represents the Hicksian demand, which is the consumption adjusted for the substitution effect at prices p and utility level u.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation 📈]
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

# Plot the initial budget constraint
x = np.linspace(0, 10, 100)
y1 = 10 - x
ax.plot(x, y1, color='blue', label='Initial Budget Constraint')

# Plot the new budget constraint after price change
y2 = 12 - 1.2 * x
ax.plot(x, y2, color='red', label='New Budget Constraint')

# Plot the indifference curves
x = np.linspace(0, 10, 100)
y3 = 8 / x
ax.plot(x, y3, color='green', label='Initial Indifference Curve')
y4 = 9.6 / x
ax.plot(x, y4, color='purple', label='New Indifference Curve')

# Mark the initial and final consumption points
ax.scatter(4, 6, color='blue', label='Initial Consumption')
ax.scatter(5, 6, color='red', label='Final Consumption')

# Add labels and legend
ax.set_xlabel('Good 1')
ax.set_ylabel('Good 2')
ax.set_title('Income Effect')
ax.legend()

# Display the plot
plt.show()
```,
width: 360pt),
)
]
]
#v(20pt)
#only("2-")[- Initial budget constraint (blue) and indifference curve (green)]
#v(20pt)
#only("3-")[- New budget constraint (red) after price change]
#v(20pt)
#only("4-")[- New indifference curve (purple) at the same utility level]
#v(20pt)
#only("5-")[- Income effect: Movement from initial (blue) to final (red) consumption]
#only("1")[
#voiceover("Let's look at the graphical representation of the income effect.")
]
#only("2")[
#voiceover("We start with the initial budget constraint in blue and the initial indifference curve in green.")
]
#only("3")[
#voiceover("After a price change, we have a new budget constraint, shown in red.")
]
#only("4")[
#voiceover("To isolate the income effect, we draw a new indifference curve, in purple, at the same utility level as the initial one.")
]
#only("5")[
#voiceover("The income effect is the movement from the initial consumption point, in blue, to the final consumption point, in red, along the new indifference curve.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎬]
#v(40pt)
#only("1-")[- Income effect shows change in consumption due to change in real income]
#v(20pt)
#only("2-")[- Adjusted for substitution effect]
#v(20pt)
#only("3-")[- Calculated as the difference between Marshallian and Hicksian demand]
#v(20pt)
#only("4-")[- Graphically, it's the movement along the new indifference curve]
#only("1")[
#voiceover("To summarize, the income effect in Hicks Decomposition shows the change in consumption due to a change in real income.")
]
#only("2")[
#voiceover("This change is adjusted for the substitution effect, isolating the impact of the change in real income.")
]
#only("3")[
#voiceover("The income effect is calculated as the difference between the Marshallian demand and the Hicksian demand.")
]
#only("4")[
#voiceover("Graphically, the income effect is represented by the movement along the new indifference curve from the initial to the final consumption point.")
]
]