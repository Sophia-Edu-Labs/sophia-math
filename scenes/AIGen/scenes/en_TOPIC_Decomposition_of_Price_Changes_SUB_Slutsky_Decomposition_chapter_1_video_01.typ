#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitution Effect]
#v(40pt)
#only("1-")[- Occurs when a price change makes a good relatively cheaper or more expensive 💰]
#v(20pt)
#only("2-")[- Leads to a change in consumption 🛒]
#only("1")[
#voiceover("The substitution effect occurs when a price change makes a good relatively cheaper or more expensive compared to other goods.")
]
#only("2")[
#voiceover("This relative price change leads consumers to change their consumption of the good.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[- Consider two goods: 🍎 Apples and 🍐 Pears]
#v(20pt)
#only("2-")[- If the price of 🍎 decreases, they become relatively cheaper than 🍐]
#v(20pt)
#only("3-")[- Consumers will buy more 🍎 and fewer 🍐]
#only("1")[
#voiceover("Let's consider an example with two goods: apples and pears.")
]
#only("2")[
#voiceover("If the price of apples decreases, apples become relatively cheaper than pears.")
]
#only("3")[
#voiceover("As a result, consumers will tend to buy more apples and fewer pears.")
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
fig, ax = plt.subplots()

# Plot the initial budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='blue', label='Initial Budget Line')

# Plot the new budget line after the price change
y_new = 15 - 1.5*x
ax.plot(x, y_new, color='red', label='New Budget Line')

# Add labels and legend
ax.set_xlabel('Quantity of Apples')
ax.set_ylabel('Quantity of Pears')
ax.set_title('Substitution Effect')
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph shows the substitution effect. The blue line represents the consumer's initial budget constraint. After the price of apples decreases, the budget line rotates outward, as shown by the red line.")
]
#only("2")[
#voiceover("The consumer can now afford more apples for each pear they give up. This leads to a change in the optimal consumption bundle, with more apples and fewer pears being consumed.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Substitution effect: change in consumption due to relative price changes 📉]
#v(20pt)
#only("2-")[- Occurs when a good becomes relatively cheaper or more expensive 💸]
#v(20pt)
#only("3-")[- Leads consumers to substitute towards the relatively cheaper good 🔄]
#only("1")[
#voiceover("In summary, the substitution effect is the change in consumption that occurs due to relative price changes.")
]
#only("2")[
#voiceover("It happens when a good becomes relatively cheaper or more expensive compared to other goods.")
]
#only("3")[
#voiceover("This leads consumers to substitute towards the relatively cheaper good and away from the relatively more expensive good.")
]
]