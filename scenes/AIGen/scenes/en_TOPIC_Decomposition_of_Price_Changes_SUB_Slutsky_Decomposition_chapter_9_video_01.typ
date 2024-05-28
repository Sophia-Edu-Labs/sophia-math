#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition 🛍️]
#v(40pt)
#only("1-")[- Separates effect of price change into:]
#v(20pt)
#only("2-")[  - Substitution effect 🔄]
#v(20pt)
#only("3-")[  - Income effect 💰]
#only("1")[
#voiceover("Slutsky Decomposition is a method that separates the effect of a price change into two components:")
]
#only("2")[
#voiceover("The substitution effect, which represents the change in consumption due to the change in relative prices, holding utility constant, and")
]
#only("3")[
#voiceover("The income effect, which represents the change in consumption due to the change in purchasing power, holding prices constant.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mathematical Representation 📜]
#v(40pt)
#only("1-")[$ "Total Effect" = "Substitution Effect" + "Income Effect" $]
#v(20pt)
#only("2-")[$ x_1 - x_0 = (x_s - x_0) + (x_1 - x_s) $]
#only("1")[
#voiceover("Mathematically, Slutsky Decomposition states that the total effect of a price change is equal to the sum of the substitution effect and the income effect.")
]
#only("2")[
#voiceover("Using notation, x sub 1 minus x sub 0, representing the total effect, equals x sub s minus x sub 0, the substitution effect, plus x sub 1 minus x sub s, the income effect.")
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

# Create a plot
fig, ax = plt.subplots(figsize=(6, 6))

# Plot the initial budget constraint
x = np.linspace(0, 10, 100)
y1 = 10 - x
ax.plot(x, y1, color='blue', label='Initial Budget Constraint')

# Plot the new budget constraint after price change
y2 = 12 - 1.5 * x
ax.plot(x, y2, color='red', label='New Budget Constraint')

# Plot the indifference curves
x = np.linspace(0, 10, 100)
y3 = 8 / x
ax.plot(x, y3, color='green', label='Indifference Curve 1')

x = np.linspace(0, 12, 100)
y4 = 10 / x
ax.plot(x, y4, color='purple', label='Indifference Curve 2')

# Label the initial and new equilibrium points
ax.scatter(4, 6, color='blue', label='Initial Equilibrium')
ax.scatter(3, 7.5, color='red', label='New Equilibrium')

# Add labels and legend
ax.set_xlabel('Good 1')
ax.set_ylabel('Good 2')
ax.set_title('Slutsky Decomposition')
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Graphically, Slutsky Decomposition can be illustrated using indifference curves and budget constraints. The initial equilibrium point shifts to a new equilibrium point due to the price change. The movement along the initial indifference curve represents the substitution effect, while the shift to a higher indifference curve represents the income effect.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Separates price change effect into substitution and income effects]
#v(20pt)
#only("2-")[- Mathematical representation: Total Effect = Substitution Effect + Income Effect]
#v(20pt)
#only("3-")[- Graphical representation using indifference curves and budget constraints]
#only("1")[
#voiceover("In summary, the key points of Slutsky Decomposition are:")
]
#only("2")[
#voiceover("It separates the effect of a price change into substitution and income effects, with a mathematical representation of the total effect equaling the sum of the substitution effect and the income effect.")
]
#only("3")[
#voiceover("And it can be graphically illustrated using indifference curves and budget constraints, showing the movement along an indifference curve for the substitution effect and the shift to a higher indifference curve for the income effect.")
]
]