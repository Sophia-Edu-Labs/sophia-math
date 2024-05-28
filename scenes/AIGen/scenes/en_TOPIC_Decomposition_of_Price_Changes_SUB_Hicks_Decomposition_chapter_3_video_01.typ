#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hicks Decomposition: Graphical Representation]
#v(40pt)
#only("1-")[- Uses indifference curves and budget constraints 📈]
#v(20pt)
#only("2-")[- Indifference curves: Represent levels of utility 😊]
#v(20pt)
#only("3-")[- Budget constraints: Represent affordable combinations 💰]
#only("1")[
#voiceover("To graphically represent Hicks Decomposition, we use indifference curves and budget constraints.")
]
#only("2")[
#voiceover("Indifference curves represent different levels of utility or satisfaction for the consumer.")
]
#only("3")[
#voiceover("Budget constraints show the combinations of goods that the consumer can afford given their income and the prices of the goods.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphing Hicks Decomposition]
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

# Define the initial budget constraint
x = np.linspace(0, 10, 100)
y1 = 10 - 0.5 * x

# Define the new budget constraint
y2 = 20 - 1 * x

# Define the initial indifference curve
x_ic1 = np.linspace(0, 20, 100)
y_ic1 = 200 / x_ic1

# Define the new indifference curve
x_ic2 = np.linspace(0, 20, 100)
y_ic2 = 400 / x_ic2

# Plot the initial budget constraint and indifference curve
ax.plot(x, y1, color='blue', linewidth=2, label='Initial Budget')
ax.plot(x_ic1, y_ic1, color='red', linewidth=2, label='Initial IC')

# Plot the new budget constraint and indifference curve
ax.plot(x, y2, color='green', linewidth=2, label='New Budget')
ax.plot(x_ic2, y_ic2, color='purple', linewidth=2, label='New IC')

# Find and plot the initial optimal point
opt1 = np.argmin(np.abs(y1 - y_ic1[:len(y1)]))
ax.scatter(x[opt1], y1[opt1], color='black', s=100, label='Initial Optimum')

# Find and plot the intermediate optimal point
opt2 = np.argmin(np.abs(y2 - y_ic1[:len(y2)]))
ax.scatter(x[opt2], y2[opt2], color='black', s=100, marker='s', label='Intermediate Optimum')

# Find and plot the final optimal point
opt3 = np.argmin(np.abs(y2 - y_ic2[:len(y2)]))
ax.scatter(x[opt3], y2[opt3], color='black', s=100, marker='*', label='Final Optimum')

# Annotate the substitution effect
ax.annotate('Substitution Effect', xy=(x[opt2], y2[opt2]), xytext=(x[opt2]+1, y2[opt2]+1),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Annotate the income effect
ax.annotate('Income Effect', xy=(x[opt3], y2[opt3]), xytext=(x[opt3]+1, y2[opt3]-1),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add labels and title
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Hicks Decomposition')

# Add legend
ax.legend()

# Display the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's how we graphically represent Hicks Decomposition:")
]
#only("2")[
#voiceover("We start with an initial budget constraint and an initial indifference curve. The point where they touch is the initial optimum.")
]
#only("3")[
#voiceover("When the price of good X decreases, the budget constraint rotates outward. We find the intermediate optimum on the new budget constraint, keeping the initial indifference curve. This movement represents the substitution effect.")
]
#only("4")[
#voiceover("Finally, we find the final optimum on the new budget constraint and the new, higher indifference curve. The movement from the intermediate to the final optimum represents the income effect.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Hicks Decomposition: Graphed with indifference curves and budget constraints 📊]
#v(20pt)
#only("2-")[- Substitution Effect: Movement along initial indifference curve 🔄]
#v(20pt)
#only("3-")[- Income Effect: Movement to higher indifference curve 📈]
#only("1")[
#voiceover("In summary, Hicks Decomposition is graphically represented using indifference curves and budget constraints.")
]
#only("2")[
#voiceover("The substitution effect is shown by the movement along the initial indifference curve when the budget constraint changes.")
]
#only("3")[
#voiceover("The income effect is shown by the movement to a higher indifference curve, keeping the new budget constraint.")
]
]