#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition Recap]

#only("1")[
#voiceover("Let's recap the key points about Slutsky Decomposition and how it breaks down the total effect of a price change.")
]

#v(40pt)

#only("2-")[- Total Effect = Substitution Effect + Income Effect]

#only("2")[
#voiceover("The total effect of a price change is the sum of the substitution effect and the income effect.")
]

#v(20pt)

#only("3-")[- Substitution Effect: Change in consumption due to relative price changes 📈]

#only("3")[
#voiceover("The substitution effect is the change in consumption resulting from a change in the relative prices of goods, holding utility constant.")
]

#v(20pt)

#only("4-")[- Income Effect: Change in consumption due to change in real income 💰]

#only("4")[
#voiceover("The income effect is the change in consumption due to the change in the consumer's real income caused by the price change.")
]

#v(40pt)

#only("5-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Set the limits of the plot
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)

# Add labels and title
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Slutsky Decomposition')

# Plot the initial budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='blue', label='Initial Budget Line')

# Plot the new budget line after price change
y_new = 12.5 - 1.25 * x
ax.plot(x, y_new, color='red', label='New Budget Line')

# Plot the initial optimal bundle
ax.scatter(5, 5, color='blue', label='Initial Bundle')

# Plot the substitution effect
ax.scatter(6, 4, color='green', label='Substitution Effect')

# Plot the income effect
ax.scatter(7, 5, color='orange', label='Income Effect')

# Plot the new optimal bundle
ax.scatter(7, 5, color='red', label='New Bundle')

# Add arrows for substitution and income effects
ax.annotate('', xy=(6, 4), xytext=(5, 5), arrowprops=dict(facecolor='green', shrink=0.05))
ax.annotate('', xy=(7, 5), xytext=(6, 4), arrowprops=dict(facecolor='orange', shrink=0.05))

# Add a legend
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]

#only("5")[
#voiceover("This graph illustrates Slutsky Decomposition. The blue dot represents the initial bundle. When the price changes, the budget line shifts from blue to red. The green dot shows the substitution effect, moving along the same indifference curve. The orange dot represents the income effect, moving to a new indifference curve. The red dot is the new optimal bundle after the price change.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]

#only("1-")[- Slutsky Decomposition separates the effect of a price change into substitution and income effects 🔍]

#only("1")[
#voiceover("Remember, Slutsky Decomposition separates the effect of a price change into substitution and income effects.")
]

#v(20pt)

#only("2-")[- Substitution Effect: Change in relative prices, holding utility constant 📈]

#only("2")[
#voiceover("The substitution effect captures the change in consumption due to the change in relative prices, holding utility constant.")
]

#v(20pt)

#only("3-")[- Income Effect: Change in real income 💰]

#only("3")[
#voiceover("The income effect captures the change in consumption due to the change in the consumer's real income.")
]

#v(20pt)

#only("4-")[- Total Effect = Substitution Effect + Income Effect ➕]

#only("4")[
#voiceover("And finally, the total effect of the price change is the sum of the substitution effect and the income effect.")
]

#v(40pt)

#only("5-")[
#text(size: 24pt)[Understanding Slutsky Decomposition is crucial for analyzing consumer behavior in response to price changes. 📊👥]]

#only("5")[
#voiceover("Understanding Slutsky Decomposition is crucial for analyzing consumer behavior in response to price changes.")
]
]