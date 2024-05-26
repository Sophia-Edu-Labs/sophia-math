#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Income Effect Recap 💰]
#v(40pt)
#only("1-")[- Occurs when a price change affects consumer's real income]
#v(20pt)
#only("2-")[- Leads to a change in consumption]
#only("1")[
#voiceover("The income effect occurs when a price change affects the consumer's real income.")
]
#only("2")[
#voiceover("This change in real income leads to a change in the consumer's consumption.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example 🛒]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the initial and new prices and quantities
p0, p1 = 10, 8
q0, q1, qs = 5, 9, 7

# Create the plot
fig, ax = plt.subplots(figsize=(6, 6))

# Plot the initial and new points
ax.plot(q0, p0, 'bo', label='Initial Point')
ax.plot(q1, p1, 'ro', label='New Point')

# Plot the substitution effect point
ax.plot(qs, p1, 'go', label='Substitution Effect Point')

# Add arrows for substitution and income effects
ax.annotate('', xy=(qs, p1), xytext=(q0, p0), arrowprops=dict(arrowstyle="->", color='purple', label='Substitution Effect'))
ax.annotate('', xy=(q1, p1), xytext=(qs, p1), arrowprops=dict(arrowstyle="->", color='orange', label='Income Effect'))

# Labels and title
ax.set_xlabel('Quantity')
ax.set_ylabel('Price')
ax.set_title('Income Effect Example')

# Add grid and legend
ax.grid(True)
ax.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's look at an example. Suppose the price of a good decreases from $10 to $8, and the consumer's quantity demanded increases from 5 to 9 units.")
]
#v(20pt)
#only("2-")[- Price decreases from \$10 to \$8]
#v(10pt)
#only("3-")[- Quantity demanded increases from 5 to 9 units]
#v(10pt)
#only("4-")[- Substitution effect: quantity increases from 5 to 7 units]
#v(10pt)
#only("5-")[- Income effect: quantity increases from 7 to 9 units]
#only("2")[
#voiceover("In this case, the price decreases from $10 to $8.")
]
#only("3")[
#voiceover("As a result, the quantity demanded by the consumer increases from 5 to 9 units.")
]
#only("4")[
#voiceover("The substitution effect accounts for the increase in quantity from 5 to 7 units.")
]
#only("5")[
#voiceover("And the income effect accounts for the further increase from 7 to 9 units, as the consumer's real income has increased due to the price decrease.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Income effect is a component of price change effect]
#v(20pt)
#only("2-")[- Occurs due to change in consumer's real income]
#v(20pt)
#only("3-")[- Can lead to an increase or decrease in consumption]
#only("1")[
#voiceover("To summarize, the income effect is one of the components of the total effect of a price change, as described by the Slutsky Decomposition.")
]
#only("2")[
#voiceover("It occurs due to the change in the consumer's real income when a price changes.")
]
#only("3")[
#voiceover("Depending on whether the good is normal or inferior, the income effect can lead to an increase or decrease in the consumption of the good.")
]
]