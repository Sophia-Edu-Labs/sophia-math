#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hicks Decomposition]
#v(40pt)
#only("1-")[- Separates effect of price change into:]
#v(20pt)
#only("2-")[  - Substitution effect]
#v(20pt)
#only("3-")[  - Income effect]
#only("1")[
#voiceover("Not quite. Let's review the correct solution. Hicks Decomposition separates the effect of a price change into two components:")
]
#only("2")[
#voiceover("The substitution effect, and")
]
#only("3")[
#voiceover("the income effect.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitution Effect]
#v(40pt)
#only("1-")[- Change in consumption due to change in relative prices 🔄]
#v(20pt)
#only("2-")[- Holds utility constant 📈]
#v(20pt)
#only("3-")[- Isolated first in Hicks Decomposition ✅]
#only("1")[
#voiceover("The substitution effect captures the change in consumption due to the change in relative prices, while holding utility constant.")
]
#only("2")[
#voiceover("This means we look at how the consumer would adjust their consumption bundle in response to the price change if they were compensated to maintain the same level of satisfaction or utility.")
]
#only("3")[
#voiceover("In Hicks Decomposition, the substitution effect is isolated first. So when the price of good X increases,")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Isolating Substitution Effect]
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

# Define the budget lines
x = np.linspace(0, 10, 100)
y1 = 10 - x
y2 = 5 - 0.5*x

# Plot the budget lines
ax.plot(x, y1, color='blue', label='Original Budget Line')
ax.plot(x, y2, color='red', label='New Budget Line')

# Define the indifference curve
x_ic = np.linspace(0, 10, 100)
y_ic = 10 / x_ic

# Plot the indifference curve
ax.plot(x_ic, y_ic, color='green', label='Indifference Curve')

# Find and plot the original optimal point
x_opt1 = 5
y_opt1 = 5
ax.scatter(x_opt1, y_opt1, color='blue', label='Original Optimal Point')

# Find and plot the new optimal point after substitution effect
x_opt2 = 10/3
y_opt2 = 10/3
ax.scatter(x_opt2, y_opt2, color='purple', label='New Optimal Point (Substitution Effect)')

# Annotate the substitution effect arrow
ax.annotate('Substitution Effect', xy=(x_opt2, y_opt2), xytext=(x_opt2+1, y_opt2-1),
            arrowprops=dict(facecolor='purple', shrink=0.05))

# Add labels and title
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Hicks Decomposition - Substitution Effect')

# Add legend
ax.legend()

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("we first isolate the substitution effect by finding the new optimal consumption bundle on the same indifference curve. This is shown by the purple point and arrow in the graph.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Income Effect]
#v(40pt)
#only("1-")[- Change in consumption due to change in purchasing power 💰]
#v(20pt)
#only("2-")[- Occurs after substitution effect 🕒]
#only("1")[
#voiceover("After isolating the substitution effect, we then look at the income effect. The income effect captures the change in consumption due to the change in purchasing power.")
]
#only("2")[
#voiceover("In Hicks Decomposition, the income effect is considered after the substitution effect has been isolated.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Hicks Decomposition separates price change effect into substitution and income effects]
#v(20pt)
#only("2-")[- Substitution effect isolated first, holding utility constant]
#v(20pt) 
#only("3-")[- Income effect occurs after substitution effect]
#only("1")[
#voiceover("To summarize, Hicks Decomposition separates the effect of a price change into substitution and income effects.")
]
#only("2")[
#voiceover("The substitution effect is isolated first, by finding the new optimal consumption bundle on the same indifference curve, holding utility constant.")
]
#only("3")[
#voiceover("The income effect is then considered, which captures the change in consumption due to the change in purchasing power.")
]
]