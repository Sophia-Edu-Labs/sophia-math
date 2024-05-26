#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition]
#v(40pt)
What is the total effect of a price change the sum of?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) substitution effect and utility effect]#only("2-")[#text(fill:red)[a) substitution effect and utility effect]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) income effect and utility effect]#only("3-")[#text(fill:red)[b) income effect and utility effect]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) substitution effect and income effect]#only("4-")[#text(fill:green)[c) substitution effect and income effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) none of the above]#only("5-")[#text(fill:red)[d) none of the above]]

#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a is incorrect. The utility effect is not part of the Slutsky decomposition.")]
#only("3")[#voiceover("Option b is also incorrect for the same reason - the utility effect is not considered.")]
#only("4")[#voiceover("Option c is correct! The Slutsky decomposition separates the total effect of a price change into the substitution effect and the income effect.")]
#only("5")[#voiceover("And option d is incorrect, as one of the above options (c) is indeed correct.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- Slutsky decomposition: Total Effect = Substitution Effect + Income Effect]
#v(20pt)
#only("2-")[- Substitution Effect: Change in consumption due to change in relative prices, holding utility constant 🔄]
#v(20pt)
#only("3-")[- Income Effect: Change in consumption due to change in purchasing power, holding prices constant 💰]
#v(20pt)
#only("4-")[- Together, they sum up to the Total Effect of a price change on consumption 🎯]

#only("1")[#voiceover("The Slutsky decomposition states that the total effect of a price change is equal to the sum of the substitution effect and the income effect.")]
#only("2")[#voiceover("The substitution effect is the change in consumption that results from a change in the relative prices of goods, while holding the consumer's utility (or satisfaction) constant.")]
#only("3")[#voiceover("The income effect is the change in consumption that results from the change in the consumer's purchasing power due to the price change, while holding relative prices constant.")]
#only("4")[#voiceover("Together, the substitution effect and the income effect sum up to the total effect of a price change on the consumer's consumption of a good.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Draw arrows
ax.annotate('', xy=(4, 4), xytext=(2, 2), arrowprops=dict(facecolor='blue', shrink=0.05))
ax.annotate('', xy=(6, 6), xytext=(4, 4), arrowprops=dict(facecolor='red', shrink=0.05))
ax.annotate('', xy=(6, 6), xytext=(2, 2), arrowprops=dict(facecolor='green', shrink=0.05))

# Add labels
ax.text(1.8, 2.2, 'Substitution Effect', color='blue', fontsize=12)
ax.text(4.2, 4.2, 'Income Effect', color='red', fontsize=12)
ax.text(3, 1, 'Total Effect', color='green', fontsize=12)

# Remove ticks
ax.set_xticks([])
ax.set_yticks([])

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's a visual representation:]
#v(20pt)
#only("2-")[- #text(fill:blue)[Substitution Effect]: Holding utility constant]
#only("3-")[- #text(fill:red)[Income Effect]: Change in purchasing power]
#only("4-")[- #text(fill:green)[Total Effect]: Sum of Substitution and Income Effects]

#only("1")[#voiceover("Let's visualize the Slutsky decomposition to better understand it.")]
#only("2")[#voiceover("The blue arrow represents the substitution effect, which is the change in consumption while holding utility constant.")]
#only("3")[#voiceover("The red arrow represents the income effect, which is the change in consumption due to the change in purchasing power.")]
#only("4")[#voiceover("And the green arrow represents the total effect, which is the sum of the substitution effect and the income effect.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Slutsky decomposition separates the total effect of a price change 🔍]
#v(20pt)
#only("2-")[- It considers the substitution effect (relative prices) and income effect (purchasing power) 🔄💰]
#v(20pt)
#only("3-")[- The total effect is the sum of these two effects 🎯]
#v(20pt)
#only("4-")[- Understanding this decomposition is crucial for analyzing consumer behavior 🧠]

#only("1")[#voiceover("To recap, the Slutsky decomposition is a way to separate the total effect of a price change on consumption.")]
#only("2")[#voiceover("It takes into account the substitution effect, which deals with changes in relative prices, and the income effect, which deals with changes in purchasing power.")]
#only("3")[#voiceover("The total effect of a price change is the sum of the substitution effect and the income effect.")]
#only("4")[#voiceover("Understanding the Slutsky decomposition is crucial for analyzing how consumers respond to price changes and for making informed decisions in various economic contexts.")]
]