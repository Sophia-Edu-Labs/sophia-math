#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition Graphical Representation]
#v(40pt)
#only("1-")[Slutsky Decomposition can be illustrated graphically using \_\_\_\_\_.]
#v(40pt)
#only("-1")[a) supply and demand curves]#only("2-")[#text(fill:red)[a) supply and demand curves]]
#v(10pt)
#only("-2")[b) production possibility frontiers]#only("3-")[#text(fill:red)[b) production possibility frontiers]]
#v(10pt)
#only("-3")[c) indifference curves and budget constraints]#only("4-")[#text(fill:green)[c) indifference curves and budget constraints]]
#v(10pt)
#only("-4")[d) marginal cost curves]#only("5-")[#text(fill:red)[d) marginal cost curves]]

#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Supply and demand curves are not used to illustrate Slutsky Decomposition graphically.")]
#only("3")[#voiceover("Production possibility frontiers are also not the right tool for illustrating Slutsky Decomposition.")]
#only("4")[#voiceover("Indifference curves and budget constraints are indeed used to graphically represent Slutsky Decomposition. Well done!")]
#only("5")[#voiceover("Marginal cost curves are not related to Slutsky Decomposition.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Slutsky Decomposition separates the effect of a price change into:]
#v(20pt)
#only("2-")[   - Substitution effect 🔄]
#only("3-")[   - Income effect 💰]
#v(40pt)
#only("4-")[2. These effects can be illustrated using:]
#v(20pt)
#only("5-")[   - Indifference curves 📈]
#only("6-")[   - Budget constraints 💸]

#only("1")[#voiceover("Let's break this down step by step.")]
#only("2")[#voiceover("First, remember that Slutsky Decomposition separates the effect of a price change into the substitution effect...")]
#only("3")[#voiceover("...and the income effect.")]
#only("4")[#voiceover("These effects can be illustrated graphically using...")]
#only("5")[#voiceover("...indifference curves, which represent consumer preferences...")]
#only("6")[#voiceover("...and budget constraints, which represent the consumer's purchasing power.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. A price change is represented by a pivot of the budget constraint.]
#v(20pt)
#only("2-")[2. The substitution effect is the movement along the original indifference curve.]
#v(20pt)
#only("3-")[3. The income effect is the shift to a new indifference curve.]

#only("1")[#voiceover("When a price changes, it's represented by a pivot of the budget constraint.")]
#only("2")[#voiceover("The substitution effect is shown by the movement along the original indifference curve.")]
#only("3")[#voiceover("And the income effect is the shift to a new indifference curve.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphical Illustration]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Define utility function
def utility(x, y):
    return x**(0.5) * y**(0.5)

# Generate points on the indifference curve
x = np.linspace(0.1, 10, 100)
y = (utility(5, 5) / x)**2

# Plot the indifference curves
ax.plot(x, y, 'b', label='Original IC')
ax.plot(x, 2*y, 'g', label='New IC')

# Plot the budget constraints
ax.plot([0, 10], [10, 0], 'r', label='Original BC')
ax.plot([0, 20], [5, 0], 'purple', label='New BC')

# Plot the optimal choices
ax.scatter(5, 5, s=100, c='b', label='Original Choice')
ax.scatter(10, 2.5, s=100, c='g', label='New Choice')

# Add arrows for substitution and income effects
ax.annotate('Substitution Effect', xy=(7.5, 3.75), xytext=(6, 6), 
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('Income Effect', xy=(8.75, 3.125), xytext=(12, 1), 
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Slutsky Decomposition')
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a graphical representation of Slutsky Decomposition.")]
#only("2")[#voiceover("The blue curve is the original indifference curve, and the red line is the original budget constraint.")]
#only("3")[#voiceover("When the price of good X decreases, the budget constraint pivots outward to the purple line.")]
#only("4")[#voiceover("The substitution effect is the movement along the original indifference curve from the blue point to the point on the purple line.")]
#only("5")[#voiceover("The income effect is the shift from this point to the green point on the new, higher indifference curve.")]
#only("6")[#voiceover("This illustrates how Slutsky Decomposition breaks down the total effect of a price change into the substitution and income effects.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Slutsky Decomposition: Substitution Effect + Income Effect]
#v(20pt)
#only("2-")[- Graphical representation uses indifference curves and budget constraints]
#v(20pt)
#only("3-")[- Price change shown by pivot of budget constraint]
#v(20pt)
#only("4-")[- Substitution effect: movement along original IC]
#v(20pt)
#only("5-")[- Income effect: shift to new IC]

#only("1")[#voiceover("To recap, Slutsky Decomposition separates a price change effect into substitution and income effects.")]
#only("2")[#voiceover("This is graphically represented using indifference curves and budget constraints.")]
#only("3")[#voiceover("A price change is shown by a pivot of the budget constraint.")]
#only("4")[#voiceover("The substitution effect is the movement along the original indifference curve.")]
#only("5")[#voiceover("And the income effect is the shift to a new indifference curve.")]
]