#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! You correctly identified a key difference between Hicks and Slutsky Decompositions.")
]

#text(size: 30pt, weight: "bold")[Key Difference]

#v(40pt)

#only("2-")[- Hicks Decomposition holds utility constant 🎯]
// The key point about Hicks Decomposition is shown from slide 2 onward

#only("3-")[- Slutsky Decomposition holds real income constant 💰]
// The key point about Slutsky Decomposition is shown from slide 3 onward

#only("2")[
#voiceover("Hicks Decomposition holds utility constant when separating the substitution and income effects of a price change.")
]

#only("3")[
#voiceover("On the other hand, Slutsky Decomposition holds real income constant when separating these effects.")
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

# Set the limits of the plot
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)

# Draw the initial budget line
ax.plot([0, 10], [10, 0], color='blue', linewidth=2, label='Initial Budget Line')

# Draw the new budget line after price change
ax.plot([0, 20/3], [10, 0], color='red', linewidth=2, label='New Budget Line')

# Draw the indifference curves
x = np.linspace(0, 10, 100)
y1 = 10 - 0.5 * x
y2 = 20 - 2 * x
ax.plot(x, y1, color='green', linewidth=2, label='Initial Indifference Curve')
ax.plot(x, y2, color='purple', linewidth=2, label='New Indifference Curve')

# Highlight the initial and final consumption points
ax.scatter(5, 5, color='black', s=50, label='Initial Consumption')
ax.scatter(4, 6, color='black', s=50, label='Final Consumption')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.legend()

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
// The graphical representation shows the initial and new budget lines, indifference curves, and consumption points.

#only("1")[
#voiceover("Let's visualize this difference. In this graph, the blue line represents the initial budget constraint, and the red line is the new budget constraint after a price change. The green and purple curves are the indifference curves.")
]

#only("2")[
#voiceover("In Hicks Decomposition, we would analyze the change from the initial to the final consumption point, shown by the black dots, while keeping the consumer on the same indifference curve, representing constant utility.")
]

#only("3")[
#voiceover("In Slutsky Decomposition, we would analyze this change while keeping the consumer on a budget line that represents the same real income, which would be parallel to the new budget line and tangent to the initial indifference curve.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Hicks Decomposition: Constant Utility 🎯]
// The summary point about Hicks Decomposition is shown from slide 1 onward

#only("2-")[- Slutsky Decomposition: Constant Real Income 💰]
// The summary point about Slutsky Decomposition is shown from slide 2 onward

#only("3-")[- Different interpretations of substitution and income effects 🔍]
// The implication of the difference is shown from slide 3 onward

#only("1")[
#voiceover("To sum up, Hicks Decomposition holds utility constant when analyzing the substitution and income effects of a price change.")
]

#only("2")[
#voiceover("In contrast, Slutsky Decomposition holds real income constant during this analysis.")
]

#only("3")[
#voiceover("This key difference leads to different interpretations of the substitution and income effects in each decomposition.")
]
]