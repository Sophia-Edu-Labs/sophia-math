#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitution Effect in Hicks Decomposition]
#v(40pt)
What does the substitution effect represent in a Hicks Decomposition graph?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) Change in consumption due to a change in real income]#only("2-")[#text(fill:red)[a) Change in consumption due to a change in real income]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Change in consumption keeping utility constant]#only("3-")[#text(fill:green)[b) Change in consumption keeping utility constant]]
#v(10pt)  
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) Change in consumption due to a change in preferences]#only("4-")[#text(fill:red)[c) Change in consumption due to a change in preferences]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) Change in consumption due to a change in quantity demanded]#only("5-")[#text(fill:red)[d) Change in consumption due to a change in quantity demanded]]

#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Option a) is incorrect. The change in consumption due to a change in real income is represented by the income effect, not the substitution effect.")]
#only("3")[#voiceover("Option b) is correct. The substitution effect indeed shows the change in consumption while keeping utility constant.")]
#only("4")[#voiceover("Option c) is incorrect. Changes in preferences are not considered in Hicks Decomposition, which assumes preferences remain constant.")]
#only("5")[#voiceover("Option d) is also incorrect. The substitution effect does not directly show changes in quantity demanded, but rather changes in consumption due to price changes, holding utility constant.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Substitution Effect 📊]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a new figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Define the budget constraint lines
x = np.linspace(0, 10, 100)
y1 = 10 - 0.5 * x  # Original budget line
y2 = 20 - 1.5 * x  # New budget line

# Plot the budget constraint lines
ax.plot(x, y1, color='blue', linestyle='-', label='Original Budget Line')
ax.plot(x, y2, color='red', linestyle='-', label='New Budget Line')

# Define the indifference curves
x = np.linspace(0.1, 10, 100)
y1 = 20 / x  # Original indifference curve
y2 = 40 / x  # New indifference curve

# Plot the indifference curves
ax.plot(x, y1, color='green', linestyle='--', label='Original Indifference Curve')
ax.plot(x, y2, color='purple', linestyle='--', label='New Indifference Curve')

# Highlight the substitution effect
ax.annotate('Substitution Effect', xy=(4, 4), xytext=(5, 5),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add labels and title
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Hicks Decomposition - Substitution Effect')

# Add legend
ax.legend()

# Display the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[- The substitution effect is the movement along the indifference curve. 🚶]
#only("2-")[- It shows the change in consumption due to the change in relative prices. 💰]
#only("3-")[- Utility remains constant along the indifference curve. 😊]

#only("1")[#voiceover("Let's visualize the substitution effect in a Hicks Decomposition graph. The substitution effect is represented by the movement along the indifference curve from the original optimal bundle to the new optimal bundle.")]
#only("2")[#voiceover("This movement captures the change in consumption that occurs due to the change in relative prices, while holding utility constant.")]
#only("3")[#voiceover("Remember, along an indifference curve, the consumer is equally satisfied, meaning utility remains constant. The substitution effect isolates the impact of the price change on consumption, assuming the consumer maintains the same level of satisfaction.")]
]