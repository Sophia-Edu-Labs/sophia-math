#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitution Effect]
#v(40pt)
#only("1-")[- Change in consumption due to change in relative prices 📈]
#only("2-")[- Holding utility constant 🧘]
#only("1")[
#voiceover("Not quite. Let's review the correct description of the substitution effect.")
]
#only("2")[
#voiceover("The key aspect of the substitution effect is that it looks at the change in consumption while holding the consumer's utility, or satisfaction, constant.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Suppose the price of apples 🍎 decreases relative to the price of oranges 🍊.]
#only("2-")[The substitution effect would capture how much more apples the consumer would buy, and how many fewer oranges, 🛒]
#only("3-")[while maintaining the same level of overall satisfaction. 😊]
#only("1")[
#voiceover("Let's consider an example. Suppose the price of apples decreases relative to the price of oranges.")
]
#only("2")[
#voiceover("The substitution effect would capture how much more apples the consumer would buy, and how many fewer oranges they would buy,")
]
#only("3")[
#voiceover("while maintaining the same level of overall satisfaction.")
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

# Plot the initial budget constraint
x = np.linspace(0, 10, 100)
y1 = 10 - x
ax.plot(x, y1, color='blue', label='Initial Budget')

# Plot the new budget constraint
y2 = 15 - 1.5*x
ax.plot(x, y2, color='red', label='New Budget')

# Plot the initial optimal choice
ax.plot(5, 5, marker='o', markersize=10, color='blue', label='Initial Choice')

# Plot the new optimal choice
ax.plot(6, 6, marker='o', markersize=10, color='red', label='New Choice')

# Plot the indifference curve
x = np.linspace(0, 10, 100)
y = 25 / x
ax.plot(x, y, color='green', label='Indifference Curve')

# Add labels and legend
ax.set_xlabel('Good 1')
ax.set_ylabel('Good 2')
ax.set_title('Substitution Effect')
ax.legend()

# Display the plot
plt.show()
```,
width: 360pt),
)
]
]
// A graphical representation of the substitution effect is shown using a plot from slide 1 onward
#only("1")[
#voiceover("Here's a graphical representation of the substitution effect. The blue line represents the initial budget constraint, and the blue dot the initial optimal choice.")
]
#only("2")[
#voiceover("When the price of Good 1 decreases, the budget constraint rotates outward to the red line. The consumer now chooses the red dot, which is on the same indifference curve (in green) as the initial choice.")
]
#only("3")[
#voiceover("The movement from the blue dot to the red dot represents the substitution effect - the change in consumption due to the change in relative prices, while maintaining the same level of utility.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Substitution effect is driven by changes in relative prices 💰]
// The first key takeaway is shown from slide 1 onward
#only("2-")[- It captures changes in consumption while holding utility constant 📊]
// The second key takeaway is shown from slide 2 onward
#only("3-")[- It's a key component in understanding how consumers respond to price changes 🤔]
// The third key takeaway is shown from slide 3 onward
#only("1")[
#voiceover("To summarize, the substitution effect is driven by changes in relative prices.")
]
#only("2")[
#voiceover("It captures changes in consumption while holding utility constant.")
]
#only("3")[
#voiceover("Understanding the substitution effect is crucial for analyzing how consumers respond to price changes.")
]
]