#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky vs Hicks Decomposition]
#v(40pt)
#only("1-")[The main difference between Slutsky and Hicks Decomposition is that Slutsky Decomposition holds \_\_\_\_\_ constant, while Hicks Decomposition holds \_\_\_\_\_ constant.]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) utility, real income]#only("2-")[#text(fill:red)[a) utility, real income]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) real income, utility]#only("3-")[#text(fill:green)[b) real income, utility]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) nominal income, real income]#only("4-")[#text(fill:red)[c) nominal income, real income]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) real income, nominal income]#only("5-")[#text(fill:red)[d) real income, nominal income]]
#only("1")[#voiceover("Not quite, but let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a) is incorrect. Slutsky Decomposition does not hold utility constant, but real income.")]
#only("3")[#voiceover("Option b) is the correct answer. Slutsky Decomposition indeed holds real income constant, while Hicks Decomposition holds utility constant.")]
#only("4")[#voiceover("Option c) is incorrect. Neither Slutsky nor Hicks Decomposition hold nominal income constant.")]
#only("5")[#voiceover("Option d) is also incorrect. Hicks Decomposition does not hold nominal income constant, but utility.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[🔑 Key Difference:]
#v(20pt)
#only("2-")[- Slutsky Decomposition: Holds #text(weight: "bold")[real income] constant 💰]
#only("3-")[- Hicks Decomposition: Holds #text(weight: "bold")[utility] constant 😊]
#v(40pt)
#only("4-")[🤔 Why it matters:]
#v(20pt)
#only("5-")[- Different perspectives on consumer behavior]
#only("6-")[- Slutsky: How consumption changes with prices, given the same purchasing power]
#only("7-")[- Hicks: How consumption changes with prices, given the same satisfaction level]

#only("1")[#voiceover("Let's recap the key difference between Slutsky and Hicks Decomposition.")]
#only("2")[#voiceover("Slutsky Decomposition holds real income constant. This means it looks at how consumption changes when prices change, but the consumer's purchasing power remains the same.")]
#only("3")[#voiceover("On the other hand, Hicks Decomposition holds utility constant. It examines how consumption changes with prices, but the consumer's satisfaction level stays the same.")]
#only("4")[#voiceover("Why does this difference matter?")]
#only("5")[#voiceover("It's because they offer different perspectives on consumer behavior.")]
#only("6")[#voiceover("Slutsky Decomposition tells us how a consumer's choices change with prices if their real income, or purchasing power, is compensated to remain constant.")]
#only("7")[#voiceover("Hicks Decomposition, in contrast, shows how a consumer's choices change with prices if they are compensated to maintain the same level of satisfaction, or utility.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Define the budget lines
x = np.linspace(0, 10, 100)
y1 = 10 - x
y2 = 12.5 - 1.25*x

# Plot the budget lines
ax.plot(x, y1, color='blue', label='Original Budget Line')
ax.plot(x, y2, color='red', label='New Budget Line')

# Define the indifference curves
x = np.linspace(0, 10, 100)
y1 = 10 / x
y2 = 12.5 / x

# Plot the indifference curves
ax.plot(x, y1, color='green', label='Original Indifference Curve')
ax.plot(x, y2, color='purple', label='New Indifference Curve')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Slutsky vs Hicks Decomposition')
ax.legend()

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[- Blue line: Original budget line]
#only("2-")[- Red line: New budget line (price change)]
#only("3-")[- Green curve: Original indifference curve]
#only("4-")[- Purple curve: New indifference curve]
#only("5-")[- Slutsky: Movement along original indifference curve (green) to new budget line (red)]
#only("6-")[- Hicks: Shift to new indifference curve (purple) at new prices (red budget line)]

#only("1")[#voiceover("This graph illustrates the difference between Slutsky and Hicks Decomposition. The blue line represents the consumer's original budget constraint.")]
#only("2")[#voiceover("The red line is the new budget constraint after a price change.")]
#only("3")[#voiceover("The green curve is the consumer's original indifference curve, representing a constant level of utility.")]
#only("4")[#voiceover("The purple curve is a new indifference curve, also representing a constant level of utility, but at a different level.")]
#only("5")[#voiceover("In Slutsky Decomposition, we look at the movement along the original indifference curve to the new budget line. This isolates the substitution effect, holding real income constant.")]
#only("6")[#voiceover("In Hicks Decomposition, we look at the shift to a new indifference curve at the new prices. This isolates the substitution effect, holding utility constant.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Slutsky Decomposition holds real income constant 💰]
#only("2-")[- Hicks Decomposition holds utility constant 😊]
#only("3-")[- They offer different perspectives on consumer behavior]
#only("4-")[- Slutsky: Substitution effect with constant purchasing power]
#only("5-")[- Hicks: Substitution effect with constant satisfaction level]
#only("6-")[- Both are valuable tools in understanding consumer choice]

#only("1")[#voiceover("To summarize, Slutsky Decomposition holds real income constant when analyzing the effect of price changes.")]
#only("2")[#voiceover("Hicks Decomposition, on the other hand, holds utility constant.")]
#only("3")[#voiceover("These two approaches provide different insights into consumer behavior.")]
#only("4")[#voiceover("Slutsky Decomposition isolates the substitution effect by keeping the consumer's purchasing power the same.")]
#only("5")[#voiceover("Hicks Decomposition isolates the substitution effect by keeping the consumer's satisfaction level the same.")]
#only("6")[#voiceover("Both Slutsky and Hicks Decompositions are valuable tools for economists in understanding and predicting how consumers respond to changes in prices.")]
]