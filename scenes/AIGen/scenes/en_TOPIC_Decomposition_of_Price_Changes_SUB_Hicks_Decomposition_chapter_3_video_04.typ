#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap how to graphically represent Hicks Decomposition.")
]
#text(size: 30pt, weight: "bold")[Hicks Decomposition Recap]
#v(40pt)
#only("2-")[
- Graphical representation 📈
]
#only("2")[
#voiceover("Hicks Decomposition can be graphically represented using indifference curves and budget constraints.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Indifference Curves and Budget Constraints]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Generate data for indifference curves
x = np.linspace(0, 10, 100)
y1 = 10 / x
y2 = 20 / x

# Generate data for budget constraints
x_budget = np.linspace(0, 10, 100)
y_budget1 = 50 / x_budget
y_budget2 = 100 / x_budget

# Create the plot
fig, ax = plt.subplots(figsize=(8, 6))

# Plot indifference curves
ax.plot(x, y1, color='blue', label='Indifference Curve 1')
ax.plot(x, y2, color='blue', label='Indifference Curve 2')

# Plot budget constraints
ax.plot(x_budget, y_budget1, color='red', linestyle='--', label='Budget Constraint 1')
ax.plot(x_budget, y_budget2, color='red', linestyle='--', label='Budget Constraint 2')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Indifference Curves and Budget Constraints')
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Indifference curves represent levels of utility, while budget constraints show the consumer's affordable combinations of goods.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitution and Income Effects]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Generate data for indifference curves
x = np.linspace(0, 10, 100)
y1 = 10 / x
y2 = 20 / x

# Generate data for budget constraints
x_budget = np.linspace(0, 10, 100)
y_budget1 = 50 / x_budget
y_budget2 = 100 / x_budget

# Create the plot
fig, ax = plt.subplots(figsize=(8, 6))

# Plot indifference curves
ax.plot(x, y1, color='blue', label='Indifference Curve 1')
ax.plot(x, y2, color='blue', label='Indifference Curve 2')

# Plot budget constraints
ax.plot(x_budget, y_budget1, color='red', linestyle='--', label='Initial Budget Constraint')
ax.plot(x_budget, y_budget2, color='red', linestyle='--', label='New Budget Constraint')

# Plot initial and new consumption bundles
ax.scatter(5, 2, color='black', label='Initial Bundle')
ax.scatter(6.67, 3, color='green', label='Substitution Effect')
ax.scatter(8, 2.5, color='purple', label='Income Effect')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Substitution and Income Effects')
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("The movement from the initial to the new consumption bundle can be separated into substitution and income effects.")
]
#only("2-")[
- Substitution effect: movement along the same indifference curve 🔄
]
#only("2")[
#voiceover("The substitution effect is the movement along the same indifference curve when the price changes, keeping utility constant.")
]
#only("3-")[
- Income effect: movement to a higher indifference curve due to increased purchasing power 💰
]
#only("3")[
#voiceover("The income effect is the movement to a higher indifference curve due to increased purchasing power after the price change.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[
- Hicks Decomposition can be graphically represented 📊
]
#only("1")[
#voiceover("In summary, Hicks Decomposition can be graphically represented...")
]
#only("2-")[
- Indifference curves represent utility levels 📈
]
#only("2")[
#voiceover("...using indifference curves to represent utility levels...")
]
#only("3-")[
- Budget constraints show affordable combinations 💸
]
#only("3")[
#voiceover("...and budget constraints to show affordable combinations of goods.")
]
#only("4-")[
- Substitution and income effects are separated 🔍
]
#only("4")[
#voiceover("The substitution and income effects of a price change can be separated and visualized on the graph.")
]
]