#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitution Effect]
#v(40pt)
#only("1-")[- Shows how consumption changes when price changes 💸]
#v(20pt)
#only("2-")[- Keeps utility constant 😊]
#v(20pt)
#only("3-")[- Isolates the effect of the price change on consumption]
#only("1")[
#voiceover("The substitution effect is a key concept in understanding how consumers respond to price changes. It shows how a consumer's consumption of a good changes when the price of that good changes, while keeping the consumer's utility or satisfaction level constant.")
]
#only("2")[
#voiceover("The key idea here is that we're isolating the effect of the price change by keeping utility constant. This means we're looking at how the consumer would adjust their consumption if they were compensated enough to maintain the same level of satisfaction as before the price change.")
]
#only("3")[
#voiceover("By keeping utility constant, the substitution effect allows us to see the pure effect of the price change on consumption, separate from any changes in the consumer's purchasing power or overall satisfaction.")
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

# Set the limits for x and y axes
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)

# Draw the initial budget line
x = np.linspace(0, 10, 100)
y = 10 - 0.5 * x
ax.plot(x, y, color='blue', linewidth=2, label='Initial Budget Line')

# Draw the new budget line after price change
y_new = 10 - 0.25 * x
ax.plot(x, y_new, color='red', linewidth=2, label='New Budget Line')

# Draw the initial indifference curve
x_ic = np.linspace(0, 10, 100)
y_ic = 10 / np.sqrt(x_ic)
ax.plot(x_ic, y_ic, color='green', linewidth=2, label='Indifference Curve')

# Highlight the initial optimal point
ax.scatter(4, 6, color='blue', s=100, label='Initial Optimal Point')

# Highlight the new optimal point after substitution effect
ax.scatter(6, 4, color='red', s=100, label='New Optimal Point')

# Draw an arrow to show the substitution effect
ax.annotate('', xy=(6, 4), xytext=(4, 6), 
            arrowprops=dict(facecolor='black', shrink=0.05, width=1, headwidth=8))
ax.text(4.8, 5.2, 'Substitution Effect', fontsize=12, rotation=-25)

# Add labels and legend
ax.set_xlabel('Good 1', fontsize=14)
ax.set_ylabel('Good 2', fontsize=14)
ax.legend(fontsize=12, loc='upper right')

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph illustrates the substitution effect. The blue line is the consumer's initial budget constraint, and the green curve is their indifference curve, showing combinations of goods that give the same level of satisfaction. The consumer initially chooses the blue point, where their budget line is tangent to the indifference curve.")
]
#only("2")[
#voiceover("Now, suppose the price of Good 1 decreases, rotating the budget line outward to the red line. If we wanted to keep the consumer's satisfaction level constant, we would need to shift the budget line inward until it's just tangent to the original indifference curve. This is the substitution effect - the consumer moves along the same indifference curve to the red point, substituting towards the good that has become relatively cheaper.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Substitution effect: change in consumption due to price change, keeping utility constant 📉]
#v(20pt)
#only("2-")[- Isolates the effect of price change on consumption 🔍]
#v(20pt)
#only("3-")[- Consumer substitutes towards the relatively cheaper good 🔄]
#only("1")[
#voiceover("To summarize, the substitution effect is the change in a consumer's consumption of a good when its price changes, keeping the consumer's utility level constant.")
]
#only("2")[
#voiceover("By isolating the effect of the price change, the substitution effect helps us understand how consumers respond to price changes, separate from any changes in their overall purchasing power.")
]
#only("3")[
#voiceover("When the price of a good decreases, the substitution effect leads the consumer to substitute towards that good, buying more of it and less of other goods, while maintaining the same level of satisfaction.")
]
]