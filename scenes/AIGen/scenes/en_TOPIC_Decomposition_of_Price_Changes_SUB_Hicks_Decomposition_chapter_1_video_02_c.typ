#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitution Effect]
#v(40pt)
The substitution effect shows changes in consumption due to a change in \_\_\_\_\_.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) income]#only("2-")[#text(fill:red)[a) income]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) price]#only("3-")[#text(fill:green)[b) price]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) utility]#only("4-")[#text(fill:red)[c) utility]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) quantity]#only("5-")[#text(fill:red)[d) quantity]]

#only("1")[#voiceover("That's not quite right. Let's take a look at the correct solution...")]
// Very briefly Talk about b and why it is correct
#only("2")[#voiceover("b) price. The substitution effect indeed shows changes in consumption due to a change in price, while holding utility constant.")]
// Very briefly Talk about a and why it is incorrect
#only("3")[#voiceover("a) income is incorrect. Changes in consumption due to income changes are captured by the income effect, not the substitution effect.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("c) utility is also incorrect. In fact, utility is held constant when analyzing the substitution effect.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And d) quantity is incorrect as well. Quantity demanded changes as a result of the substitution effect, but it's not the cause of the substitution effect itself.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphical Illustration]
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
y2 = 15 - 1.5*x

# Plot the budget lines
ax.plot(x, y1, color='blue', label='Original Budget Line')
ax.plot(x, y2, color='red', label='New Budget Line')

# Add indifference curves
x = np.linspace(0, 10, 100)
y1 = 10 / x
y2 = 15 / x
ax.plot(x, y1, color='gray', linestyle='--', label='Indifference Curve')
ax.plot(x, y2, color='gray', linestyle='--')

# Find and plot the optimal points
opt1 = np.argmin((x - 5)**2 + (y1 - 5)**2)
opt2 = np.argmin((x - 7.5)**2 + (y2 - 5)**2)
ax.scatter(x[opt1], y1[opt1], color='blue', label='Original Optimum')
ax.scatter(x[opt2], y2[opt2], color='red', label='New Optimum')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Substitution Effect')
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's a graphical illustration: 📈]
#v(20pt)
#only("2-")[- The #text(fill:blue)[original optimum] is where the original budget line is tangent to the indifference curve.]
#only("3-")[- When the price of Good X decreases, the budget line rotates outward to the #text(fill:red)[new budget line].]
#only("4-")[- The #text(fill:red)[new optimum] is where the new budget line is tangent to a higher indifference curve.]
#only("5-")[- The movement from the original to the new optimum, holding utility constant, is the #text(weight: "bold")[substitution effect]. 🔄]

#only("1")[#voiceover("Let's look at a graphical illustration to understand the substitution effect better.")]
#only("2")[#voiceover("The blue point shows the original optimum, which is where the original budget line is tangent to the indifference curve.")]
#only("3")[#voiceover("When the price of Good X decreases, the budget line rotates outward to the new red budget line.")]
#only("4")[#voiceover("The new optimum, shown by the red point, is where the new budget line is tangent to a higher indifference curve.")]
#only("5")[#voiceover("The movement from the original blue optimum to the new red optimum, while holding utility constant at the original indifference curve, represents the substitution effect. It shows how consumption changes due to the change in relative prices, independent of the income effect.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- The substitution effect is the change in consumption due to a change in #text(weight: "bold")[relative prices]. 💰]
#v(20pt)
#only("2-")[- It is analyzed by holding #text(weight: "bold")[utility] constant. 📊]
#v(20pt)
#only("3-")[- Graphically, it's the movement along an #text(weight: "bold")[indifference curve]. 📈]
#v(20pt)
#only("4-")[- It's a key component of the #text(weight: "bold")[Hicks Decomposition], along with the income effect. 🔍]

#only("1")[#voiceover("To summarize, the substitution effect is the change in consumption due to a change in relative prices, holding utility constant.")]
#only("2")[#voiceover("When analyzing the substitution effect, we keep the consumer on the same indifference curve, meaning their utility level doesn't change.")]
#only("3")[#voiceover("In a graph, the substitution effect is represented by a movement along an indifference curve, from one optimum to another.")]
#only("4")[#voiceover("The substitution effect is a crucial component of the Hicks Decomposition, which separates the effect of a price change into substitution and income effects. Understanding the substitution effect is key to grasping how consumers respond to price changes.")]
]