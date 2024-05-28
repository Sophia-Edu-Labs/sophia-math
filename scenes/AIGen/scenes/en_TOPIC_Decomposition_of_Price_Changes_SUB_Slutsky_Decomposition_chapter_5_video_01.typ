#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition]
#v(40pt)
#only("1-")[- Separates effect of price change into:]
#v(20pt)
#only("2-")[  - Substitution effect 🔄]
#v(20pt)
#only("3-")[  - Income effect 💰]
#only("1")[
#voiceover("Slutsky Decomposition is a way to separate the effect of a price change into two parts:")
]
#only("2")[
#voiceover("The substitution effect, which represents the change in consumption due to the change in relative prices,")
]
#only("3")[
#voiceover("and the income effect, which represents the change in consumption due to the change in purchasing power.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation]
#v(40pt)
#only("1-")[- Uses indifference curves 📈 and budget constraints 💸]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Define the indifference curves
def indifference_curve(x, a, b):
    return b / x

x = np.linspace(0.1, 5, 100)
a1, b1 = 4, 2
a2, b2 = 8, 4

# Plot the indifference curves
ax.plot(x, indifference_curve(x, a1, b1), color='blue', label='Initial IC')
ax.plot(x, indifference_curve(x, a2, b2), color='red', label='New IC')

# Define the budget constraints
def budget_constraint(x, m, p1, p2):
    return m / p2 - p1 / p2 * x

m1, p11, p21 = 20, 2, 2
m2, p12, p22 = 20, 1, 2

# Plot the budget constraints
ax.plot(x, budget_constraint(x, m1, p11, p21), color='green', label='Initial BC')
ax.plot(x, budget_constraint(x, m2, p12, p22), color='orange', label='New BC')

# Add labels and legend
ax.set_xlabel('Good 1')
ax.set_ylabel('Good 2')
ax.legend()

# Show the plot
plt.show()
```, width: 360pt))
]
]
#only("2")[
#voiceover("This can be illustrated graphically using indifference curves, which represent combinations of goods that provide the same level of satisfaction, and budget constraints, which represent the combinations of goods that can be purchased with a given income.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition Graph]
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

# Define the indifference curves
def indifference_curve(x, a, b):
    return b / x

x = np.linspace(0.1, 5, 100)
a1, b1 = 4, 2
a2, b2 = 8, 4

# Plot the indifference curves
ax.plot(x, indifference_curve(x, a1, b1), color='blue', label='Initial IC')
ax.plot(x, indifference_curve(x, a2, b2), color='red', label='New IC')

# Define the budget constraints
def budget_constraint(x, m, p1, p2):
    return m / p2 - p1 / p2 * x

m1, p11, p21 = 20, 2, 2
m2, p12, p22 = 20, 1, 2

# Plot the budget constraints
ax.plot(x, budget_constraint(x, m1, p11, p21), color='green', label='Initial BC')
ax.plot(x, budget_constraint(x, m2, p12, p22), color='orange', label='New BC')

# Add substitution and income effect arrows
ax.annotate('Substitution Effect', xy=(2.5, 1.5), xytext=(3, 2),
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('Income Effect', xy=(3.5, 2), xytext=(4, 2.5),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add labels and legend
ax.set_xlabel('Good 1')
ax.set_ylabel('Good 2')
ax.legend()

# Show the plot
plt.show()
```, width: 360pt))
]
]
#only("1")[
#voiceover("When the price of a good changes, the budget constraint rotates. The consumer moves from the initial point to a new point on the new budget constraint. This movement can be decomposed into the substitution effect, which is the movement along the initial indifference curve to the point where the new budget constraint is tangent, and the income effect, which is the movement from this point to the new optimal point on the new indifference curve.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Slutsky Decomposition separates price change effect 📊]
#v(20pt)
#only("2-")[- Graphically represented with indifference curves 📈 and budget constraints 💸]
#v(20pt)
#only("3-")[- Substitution effect 🔄: movement along initial IC]
#v(20pt)
#only("4-")[- Income effect 💰: movement to new IC]
#only("1")[
#voiceover("In summary, Slutsky Decomposition separates the effect of a price change into substitution and income effects.")
]
#only("2")[
#voiceover("This can be graphically represented using indifference curves and budget constraints.")
]
#only("3")[
#voiceover("The substitution effect is the movement along the initial indifference curve,")
]
#only("4")[
#voiceover("while the income effect is the movement to the new indifference curve.")
]
]