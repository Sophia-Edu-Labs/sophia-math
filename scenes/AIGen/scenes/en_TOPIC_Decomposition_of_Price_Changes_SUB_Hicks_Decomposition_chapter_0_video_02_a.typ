#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise 1]
#v(40pt)
What does Hicks Decomposition hold constant?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) Income]#only("2-")[#text(fill:red)[a) Income]]
#v(10pt)
// From the start, the option is green, because it is correct.
#text(fill:green)[b) Utility]
#v(10pt) 
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is incorrect.
#only("-2")[c) Price]#only("3-")[#text(fill:red)[c) Price]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[d) Quantity]#only("4-")[#text(fill:red)[d) Quantity]]
#v(40pt)

#only("1")[#voiceover("That's not quite right. Let me show you the correct solution.")]
// Very briefly explain why a is incorrect
#only("2")[#voiceover("Option a, Income, is incorrect because Hicks Decomposition does not hold income constant.")]
// Very briefly explain why c is incorrect  
#only("3")[#voiceover("Option c, Price, is also incorrect. Hicks Decomposition considers price changes, so it does not hold prices constant.")]
// Very briefly explain why d is incorrect
#only("4")[#voiceover("And option d, Quantity, is incorrect as well. Hicks Decomposition looks at how quantities change in response to price changes, so quantities are not held constant either.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[Hicks Decomposition holds #text(weight: "bold", fill:green)[utility] constant. 🎯]
#v(20pt)
#only("2-")[It separates the effect of a price change into:]
#v(20pt)
#only("3-")[1. #text(weight: "bold")[Substitution Effect]: Change in consumption due to change in relative prices, holding utility constant 🔄]
#v(20pt)  
#only("4-")[2. #text(weight: "bold")[Income Effect]: Change in consumption due to change in purchasing power, after adjusting for substitution effect 💰]

#only("1")[#voiceover("The correct answer is b) Utility. Hicks Decomposition holds utility constant when analyzing the effects of price changes.")]
#only("2")[#voiceover("It breaks down the effect of a price change into two components:")]  
#only("3")[#voiceover("First, the substitution effect, which is the change in consumption due to the change in relative prices, while holding utility constant.")]
#only("4")[#voiceover("And second, the income effect, which is the change in consumption due to the change in purchasing power, after adjusting for the substitution effect.")]
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

# Plot the initial budget constraint
x = np.linspace(0, 10, 100)
y1 = 10 - x
ax.plot(x, y1, color='blue', label='Initial Budget')

# Plot the new budget constraint after price change
y2 = 20 - 2*x
ax.plot(x, y2, color='red', label='New Budget')

# Plot the initial optimal bundle
ax.scatter(4, 6, color='blue', s=100, label='Initial Bundle')

# Plot the intermediate bundle after substitution effect
ax.scatter(6, 4, color='green', s=100, label='Intermediate Bundle')

# Plot the final bundle after income effect 
ax.scatter(8, 2, color='red', s=100, label='Final Bundle')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y') 
ax.set_title('Hicks Decomposition')
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[#text(weight: "bold")[Blue]: Initial equilibrium]
#only("2-")[#text(weight: "bold")[Green]: After substitution effect (utility constant)]  
#only("3-")[#text(weight: "bold")[Red]: Final equilibrium after income effect]

#only("1")[#voiceover("This graph illustrates Hicks Decomposition. The blue dot represents the initial equilibrium bundle.")]
#only("2")[#voiceover("The green dot shows the intermediate bundle after the substitution effect, where utility is held constant.")]
#only("3")[#voiceover("Finally, the red dot represents the new equilibrium after the income effect is also taken into account. The movement from blue to green is the substitution effect, and from green to red is the income effect.")] 
]