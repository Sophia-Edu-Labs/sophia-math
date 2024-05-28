#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Excellent work! That's a perfect graph illustrating the substitution and income effects of a price decrease. Let's break it down step by step.")
]
#text(size: 30pt, weight: "bold")[Substitution and Income Effects]
#v(40pt)
#only("2-")[- Price decrease for good X]
#only("3-")[- Initial consumption bundle: A]
#only("4-")[- New consumption bundle: C]
#only("2")[
#voiceover("We're considering a scenario where the price of good X decreases.")
]
#only("3")[
#voiceover("The consumer's initial consumption bundle is at point A, where the original budget line is tangent to the indifference curve.")
]
#only("4")[
#voiceover("After the price decrease, the consumer's new consumption bundle is at point C, where the new budget line is tangent to a higher indifference curve.")
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
fig, ax = plt.subplots(figsize=(8, 6))

# Set the limits for x and y axes
ax.set_xlim(0, 10)
ax.set_ylim(0, 10)

# Add grid lines
ax.grid(True, linestyle='--', alpha=0.7)

# Plot the initial budget line
x = np.linspace(0, 10, 100)
y = 10 - x
ax.plot(x, y, color='blue', linestyle='-', label='Initial Budget Line')

# Plot the new budget line after price decrease
y_new = 20 - 2*x
ax.plot(x, y_new, color='red', linestyle='-', label='New Budget Line')

# Plot the initial indifference curve
x_ic = np.linspace(1, 9, 100)
y_ic = 81 / x_ic
ax.plot(x_ic, y_ic, color='green', linestyle='-', label='Initial Indifference Curve')

# Plot the new indifference curve
y_ic_new = 100 / x_ic
ax.plot(x_ic, y_ic_new, color='purple', linestyle='-', label='New Indifference Curve')

# Mark the initial optimal bundle A
ax.scatter(5, 5, color='black', marker='o', s=70, label='A')

# Mark the intermediate bundle B
ax.scatter(6.5, 5, color='black', marker='o', s=70, label='B')

# Mark the new optimal bundle C
ax.scatter(6.5, 7, color='black', marker='o', s=70, label='C')

# Add arrows for substitution and income effects
ax.annotate('Substitution Effect', xy=(5, 5), xytext=(6.5, 5), 
            arrowprops=dict(facecolor='black', shrink=0.05, width=1, headwidth=8), 
            fontsize=12, ha='center')
ax.annotate('Income Effect', xy=(6.5, 5), xytext=(6.5, 7), 
            arrowprops=dict(facecolor='black', shrink=0.05, width=1, headwidth=8), 
            fontsize=12, ha='center')

# Add labels and title
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Substitution and Income Effects')

# Add legend
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph shows the initial budget line in blue and the new budget line in red after the price of good X decreases. The initial indifference curve is in green, and the new indifference curve after the price change is in purple.")
]
#only("2")[
#voiceover("The substitution effect is shown by the movement from point A to point B along the initial indifference curve. This represents the change in consumption due to the change in relative prices, holding utility constant.")
]
#only("3")[
#voiceover("The income effect is shown by the movement from point B to point C. This represents the change in consumption due to the increase in purchasing power, moving to a higher indifference curve.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Substitution effect: A → B 🔄]
#v(20pt)
#only("2-")[  - Change in consumption due to relative prices]
#v(20pt)
#only("3-")[  - Holding utility constant]
#v(20pt)
#only("4-")[- Income effect: B → C 💰]
#v(20pt)
#only("5-")[  - Change in consumption due to increased purchasing power]
#v(20pt)
#only("6-")[  - Moving to a higher indifference curve]
#only("1")[
#voiceover("To summarize, the substitution effect is represented by the movement from point A to point B, showing the change in consumption due to the change in relative prices while holding utility constant.")
]
#only("2")[
#voiceover("The substitution effect isolates the impact of the price change on consumption, assuming the consumer's utility remains the same.")
]
#only("3")[
#voiceover("It shows how the consumer substitutes towards the relatively cheaper good X.")
]
#only("4")[
#voiceover("The income effect is represented by the movement from point B to point C, showing the change in consumption due to the increase in purchasing power.")
]
#only("5")[
#voiceover("The income effect captures the impact of the increased real income on consumption, as the price decrease makes the consumer effectively richer.")
]
#only("6")[
#voiceover("This allows the consumer to move to a higher indifference curve, increasing their overall utility.")
]
]