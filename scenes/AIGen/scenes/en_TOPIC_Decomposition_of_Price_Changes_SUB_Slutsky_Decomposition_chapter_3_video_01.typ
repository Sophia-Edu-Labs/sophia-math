#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Total Effect of a Price Change]
#v(40pt)
#only("1-")[- Decomposed into two parts 🔍]
#v(20pt)
#only("2-")[1. Substitution Effect 🔄]
#v(10pt)
#only("3-")[2. Income Effect 💰]
#only("1")[
#voiceover("The total effect of a price change on the quantity demanded of a good can be decomposed into two parts:")
]
#only("2")[
#voiceover("The substitution effect, which represents the change in consumption due to a change in the relative prices of goods, holding utility constant.")
]
#only("3")[
#voiceover("And the income effect, which represents the change in consumption due to a change in the consumer's purchasing power, or real income.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Mathematical Representation]
#v(40pt)
#only("1-")[Total Effect $=$ Substitution Effect $+$ Income Effect]
#v(20pt)
#only("2-")[$ Δ Q = Δ Q_s + Δ Q_i $]
#only("1")[
#voiceover("Mathematically, the total effect of a price change is equal to the sum of the substitution effect and the income effect.")
]
#only("2")[
#voiceover("We can express this as delta Q equals delta Q sub s plus delta Q sub i, where delta Q represents the total change in quantity demanded, delta Q sub s represents the change due to the substitution effect, and delta Q sub i represents the change due to the income effect.")
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

# Create a plot
fig, ax = plt.subplots(figsize=(6, 6))

# Plot the initial budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='blue', label='Initial Budget Line')

# Plot the new budget line after the price change
y_new = 12 - 1.2 * x
ax.plot(x, y_new, color='red', label='New Budget Line')

# Plot the indifference curves
x = np.linspace(0, 10, 100)
y1 = 10 / x
y2 = 20 / x
ax.plot(x, y1, color='green', linestyle='--', label='Initial Indifference Curve')
ax.plot(x, y2, color='purple', linestyle='--', label='New Indifference Curve')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Slutsky Decomposition')
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("We can also represent the Slutsky decomposition graphically using indifference curves and budget constraints. In this graph, the blue line represents the initial budget constraint, and the red line represents the new budget constraint after a price change. The green and purple dashed lines represent the consumer's indifference curves.")
]
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Total effect = Substitution effect + Income effect 🎯]
#v(20pt)
#only("2-")[- Substitution effect: Change in relative prices 🔄]
#v(10pt)
#only("3-")[- Income effect: Change in purchasing power 💰]
#v(20pt)
#only("4-")[- Mathematically: $ Δ Q = Δ Q_s + Δ Q_i $ 📏]
#v(10pt)
#only("5-")[- Graphically: Indifference curves & budget constraints 📈]
#only("1")[
#voiceover("In summary, the total effect of a price change is the sum of the substitution effect and the income effect.")
]
#only("2")[
#voiceover("The substitution effect represents the change in consumption due to a change in relative prices,")
]
#only("3")[
#voiceover("while the income effect represents the change in consumption due to a change in the consumer's purchasing power.")
]
#only("4")[
#voiceover("This can be expressed mathematically as delta Q equals delta Q sub s plus delta Q sub i,")
]
#only("5")[
#voiceover("and graphically using indifference curves and budget constraints.")
]
]