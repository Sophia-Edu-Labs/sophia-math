#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Excellent example! You've clearly grasped how Slutsky Decomposition can be applied to real-world situations. Let's break down your answer step by step. 👍")
]

#text(size: 30pt, weight: "bold")[Real-World Example]

#v(40pt)

#only("2-")[- Analyzing the effect of a price change in public transportation on the demand for private car usage 🚌 🚗]
// The real-world example is shown from slide 2 onward

#only("2")[
#voiceover("The example you provided is analyzing how a decrease in the price of public transportation affects the demand for private car usage.")
]
]

#slide()[
#only("1")[
#voiceover("To understand this using Slutsky Decomposition, we need to separate the effects of the price change into substitution and income effects.")
]

#text(size: 30pt, weight: "bold")[Decomposition]

#v(40pt)

#only("1-")[- Separating the effects of the price change into substitution and income effects]
// The decomposition approach is shown from slide 1 onward

#v(20pt)

#only("2-")[- Substitution effect: Switching from private cars to public transportation due to the relative price change 🔄]
// The substitution effect is shown from slide 2 onward

#v(20pt)

#only("3-")[- Income effect: Increased purchasing power allowing for more travel overall 💰]
// The income effect is shown from slide 3 onward

#only("2")[
#voiceover("The substitution effect would be people switching from using private cars to public transportation because public transportation has become relatively cheaper.")
]

#only("3")[
#voiceover("The income effect would be that the decrease in the price of public transportation effectively increases people's purchasing power, allowing them to travel more overall.")
]
]

#slide()[
#only("1")[
#voiceover("We can visualize these effects on a graph.")
]

#text(size: 30pt, weight: "bold")[Visualization]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Create the plot
fig, ax = plt.subplots(figsize=(6, 6))

# Draw the initial budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='blue', label='Initial Budget Line')

# Draw the new budget line after the price decrease
y_new = 12 - x
ax.plot(x, y_new, color='red', label='New Budget Line')

# Draw the indifference curves
x = np.linspace(0, 10, 100)
y1 = 10 / x
y2 = 20 / x
ax.plot(x, y1, color='green', label='Indifference Curve 1')
ax.plot(x, y2, color='purple', label='Indifference Curve 2')

# Label the axes
ax.set_xlabel('Private Car Usage')
ax.set_ylabel('Public Transportation Usage')

# Add a legend
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]
// The graph visualizes the substitution and income effects using indifference curves and budget lines

#only("1")[
#voiceover("This graph shows the initial budget line in blue and the new budget line after the price decrease in red. The green and purple curves are indifference curves representing different levels of utility.")
]
]
]

#slide()[
#only("1")[
#voiceover("The substitution effect is shown by the movement along the initial indifference curve, while the income effect is shown by the shift to a higher indifference curve.")
]

#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Slutsky Decomposition can be applied to analyze the effect of a price change in public transportation on the demand for private car usage 🚌 🚗]

#v(20pt)

#only("2-")[- The substitution effect leads to switching from private cars to public transportation 🔄]

#v(20pt)

#only("3-")[- The income effect allows for more travel overall due to increased purchasing power 💰]

#only("1")[
#voiceover("In summary, Slutsky Decomposition can be applied to analyze how a decrease in the price of public transportation affects the demand for private car usage.")
]

#only("2")[
#voiceover("The substitution effect leads to people switching from private cars to public transportation.")
]

#only("3")[
#voiceover("The income effect allows for more travel overall due to the increased purchasing power. Great job on providing this insightful example! 🌟")
]
]