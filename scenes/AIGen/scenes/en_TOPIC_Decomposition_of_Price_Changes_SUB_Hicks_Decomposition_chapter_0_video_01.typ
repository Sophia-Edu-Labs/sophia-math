#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hicks Decomposition 🔍]
#v(40pt)
#only("1-")[- Separates effect of price change into:]
#v(20pt)
#only("2-")[ - Substitution effect 🔄]
#v(10pt)
#only("3-")[ - Income effect 💰]
#v(20pt)
#only("4-")[- Holds utility constant 📈]

#only("1")[
#voiceover("Hicks Decomposition is a method used in economics to analyze the effect of a price change on consumer behavior. It separates the total effect into two components:")
]
#only("2")[
#voiceover("The substitution effect, which shows how consumption changes when the price changes, keeping utility constant, and")
]
#only("3")[
#voiceover("The income effect, which shows how consumption changes due to a change in real income after adjusting for the substitution effect.")
]
#only("4")[
#voiceover("A key feature of Hicks Decomposition is that it holds utility constant throughout the analysis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation 📊]

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
y1 = 10 - 0.5 * x
ax.plot(x, y1, color='blue', label='Initial Budget')

# Plot the new budget constraint
y2 = 20 - 1 * x
ax.plot(x, y2, color='red', label='New Budget')

# Plot the initial indifference curve
x = np.linspace(0, 20, 100)
y = 200 / x
ax.plot(x, y, color='green', label='Initial Indifference Curve')

# Plot the new indifference curve
y_new = 200 / x
ax.plot(x, y_new, color='green', linestyle='--', label='New Indifference Curve')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.legend()

# Show the plot
plt.show()
```, width: 360pt))
]
]
#only("1")[
#voiceover("Here's a graphical representation of Hicks Decomposition. The blue line represents the initial budget constraint, and the red line is the new budget constraint after a price change. The green curves are the indifference curves, representing constant utility levels.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitution Effect 🔄]
#v(40pt)
#only("1-")[- Change in consumption due to price change]
#v(20pt)
#only("2-")[- Utility held constant]
#v(20pt)
#only("3-")[- Movement along the indifference curve]

#only("1")[
#voiceover("The substitution effect shows how consumption changes when the price changes, keeping utility constant.")
]
#only("2")[
#voiceover("In the graph, this is represented by the movement along the initial indifference curve.")
]
#only("3")[
#voiceover("The consumer substitutes away from the good that became relatively more expensive, while maintaining the same level of satisfaction.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Income Effect 💰]
#v(40pt)
#only("1-")[- Change in consumption due to change in real income]
#v(20pt)
#only("2-")[- After adjusting for substitution effect]
#v(20pt)
#only("3-")[- Movement to a new indifference curve]

#only("1")[
#voiceover("The income effect shows how consumption changes due to a change in real income, after adjusting for the substitution effect.")
]
#only("2")[
#voiceover("In the graph, this is represented by the movement from the initial indifference curve to the new indifference curve.")
]
#only("3")[
#voiceover("The change in real income allows the consumer to reach a different level of satisfaction, either higher or lower depending on whether the good is normal or inferior.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Hicks Decomposition separates price change effects]
#v(20pt)
#only("2-")[- Substitution effect: Change in consumption, utility constant]
#v(20pt)
#only("3-")[- Income effect: Change in consumption due to real income change]
#v(20pt)
#only("4-")[- Helps analyze consumer behavior 🛒]

#only("1")[
#voiceover("In summary, Hicks Decomposition is a powerful tool for separating the effects of a price change on consumer behavior.")
]
#only("2")[
#voiceover("The substitution effect shows how consumption changes while keeping utility constant,")
]
#only("3")[
#voiceover("while the income effect captures the change in consumption due to a change in real income.")
]
#only("4")[
#voiceover("By understanding these effects, economists can better analyze and predict consumer behavior in response to price changes.")
]
]