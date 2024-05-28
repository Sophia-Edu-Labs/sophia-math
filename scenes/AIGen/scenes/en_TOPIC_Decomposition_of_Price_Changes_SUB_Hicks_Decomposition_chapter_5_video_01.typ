#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hicks vs Slutsky Decomposition]
#v(40pt)
#only("1-")[- Both decompose price change effects 💰]
#v(20pt)
#only("2-")[- Substitution effect 🔄 + Income effect 💸]
#only("1")[
#voiceover("Both Hicks and Slutsky Decompositions break down the effects of a price change into substitution and income effects.")
]
#only("2")[
#voiceover("The substitution effect captures the change in consumption due to the change in relative prices, while the income effect captures the change in consumption due to the change in purchasing power.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks Decomposition]
#v(40pt)
#only("1-")[- Holds utility constant 📈]
#v(20pt)
#only("2-")[- Compensated demand 🛒]
#only("1")[
#voiceover("Hicks Decomposition holds utility constant when analyzing the effects of a price change.")
]
#only("2")[
#voiceover("It uses compensated demand, which adjusts income to keep the consumer on the same indifference curve.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition]
#v(40pt)
#only("1-")[- Holds income constant 💰]
#v(20pt)
#only("2-")[- Uncompensated demand 🛍️]
#only("1")[
#voiceover("Slutsky Decomposition, on the other hand, holds income constant.")
]
#only("2")[
#voiceover("It uses uncompensated demand, which does not adjust income and allows the consumer to move to a different indifference curve.")
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

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Plot the initial budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='blue', label='Initial Budget Line')

# Plot the new budget line after price change
y_new = 20 - 2*x
ax.plot(x, y_new, color='red', label='New Budget Line')

# Plot the indifference curves
x_ic = np.linspace(0, 10, 100)
y_ic1 = 10 / x_ic
y_ic2 = 20 / x_ic
ax.plot(x_ic, y_ic1, color='green', linestyle='--', label='Initial Indifference Curve')
ax.plot(x_ic, y_ic2, color='purple', linestyle='--', label='New Indifference Curve')

# Annotate the initial and new equilibrium points
ax.annotate('Initial Equilibrium', xy=(5, 5), xytext=(6, 6),
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('New Equilibrium (Hicks)', xy=(5, 10), xytext=(6, 11),
            arrowprops=dict(facecolor='black', shrink=0.05))
ax.annotate('New Equilibrium (Slutsky)', xy=(6.67, 6.67), xytext=(7.5, 7.5),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add labels and title
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Hicks vs Slutsky Decomposition')
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
#voiceover("This graph shows the difference between Hicks and Slutsky Decompositions. The blue line is the initial budget constraint, and the red line is the new budget constraint after a price change. The green and purple curves are the indifference curves.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Hicks: utility constant 📈, compensated demand 🛒]
#v(20pt)
#only("2-")[- Slutsky: income constant 💰, uncompensated demand 🛍️]
#v(20pt)
#only("3-")[- Different equilibrium points 🎯]
#only("1")[
#voiceover("In summary, Hicks Decomposition holds utility constant and uses compensated demand,")
]
#only("2")[
#voiceover("while Slutsky Decomposition holds income constant and uses uncompensated demand.")
]
#only("3")[
#voiceover("This leads to different new equilibrium points after a price change, as shown in the graph.")
]
]