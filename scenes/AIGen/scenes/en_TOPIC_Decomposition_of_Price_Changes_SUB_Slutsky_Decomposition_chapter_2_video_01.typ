#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Income Effect]
#v(40pt)
#only("1-")[- Occurs when a price change affects consumer's real income 💰]
#v(20pt)
#only("2-")[- Leads to a change in consumption 🛍️]
#only("1")[
#voiceover("The income effect occurs when a change in the price of a good affects the consumer's real income.")
]
#only("2")[
#voiceover("This change in real income leads to a change in the consumer's consumption of goods.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[- Price of apples decreases from \$2 to \$1 per pound 🍎📉]
#v(20pt)
#only("2-")[- Consumer's real income increases 💰⬆️]
#v(20pt)
#only("3-")[- Consumer can now afford more goods, including apples 🛒🍎]
#only("1")[
#voiceover("Let's consider an example. Suppose the price of apples decreases from 2 dollars to 1 dollar per pound.")
]
#only("2")[
#voiceover("This price decrease effectively increases the consumer's real income.")
]
#only("3")[
#voiceover("With this increased real income, the consumer can now afford to buy more goods, including more apples.")
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

# Define the budget lines
x = np.linspace(0, 10, 100)
y1 = 10 - 2*x  # Original budget line
y2 = 10 - x    # New budget line after price decrease

# Plot the budget lines
ax.plot(x, y1, color='blue', label='Original Budget Line')
ax.plot(x, y2, color='red', label='New Budget Line')

# Add labels and legend
ax.set_xlabel('Quantity of Apples')
ax.set_ylabel('Quantity of Other Goods')
ax.set_title('Income Effect')
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
#voiceover("This graph illustrates the income effect. The blue line represents the consumer's original budget constraint. After the price of apples decreases, the budget line shifts outward to the red line. This shift represents the increase in the consumer's real income, allowing them to consume more of both apples and other goods.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Income effect: price change → real income change → consumption change]
#v(20pt)
#only("2-")[- Decrease in price → increase in real income → increase in consumption]
#v(20pt)
#only("3-")[- Graphically: outward shift of budget constraint]
#only("1")[
#voiceover("In summary, the income effect describes how a change in price leads to a change in real income, which in turn leads to a change in consumption.")
]
#only("2")[
#voiceover("Specifically, a decrease in the price of a good increases the consumer's real income, allowing them to increase their consumption of that good and other goods.")
]
#only("3")[
#voiceover("Graphically, this is represented by an outward shift of the consumer's budget constraint.")
]
]