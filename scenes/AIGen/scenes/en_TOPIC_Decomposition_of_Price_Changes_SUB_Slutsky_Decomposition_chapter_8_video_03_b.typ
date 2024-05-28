#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Not quite. Let's review the correct solution step by step.")
]

#text(size: 30pt, weight: "bold")[Scenario]

#v(40pt)

#only("2-")[- Analyzing the effect of a price change on a consumer's choice]
// The scenario is introduced from slide 2 onward

#only("3-")[- Keeping the consumer's level of satisfaction (utility) constant 😊]
// The condition of keeping utility constant is added from slide 3 onward

#only("2")[
#voiceover("The scenario you described involves analyzing the effect of a price change on a consumer's choice.")
]

#only("3")[
#voiceover("And importantly, we want to keep the consumer's level of satisfaction, or utility, constant.")
]
]

#slide()[

#text(size: 30pt, weight: "bold")[Why Hicks Decomposition?]

#v(40pt)

#only("1-")[- Hicks Decomposition holds utility constant 📊]
// The key feature of Hicks Decomposition is shown from slide 1 onward

#only("2-")[- Slutsky Decomposition holds real income constant 💰]
// The contrasting feature of Slutsky Decomposition is shown from slide 2 onward

#only("1")[
#voiceover("Hicks Decomposition is particularly suitable here because it holds utility constant when analyzing the effect of a price change.")
]

#only("2")[
#voiceover("In contrast, Slutsky Decomposition holds real income constant, which doesn't align with our goal in this scenario.")
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

# Define utility function
def utility(x, y):
    return x**(0.5) * y**(0.5)

# Create a grid of points
x = np.linspace(0.1, 10, 100)
y = np.linspace(0.1, 10, 100)
X, Y = np.meshgrid(x, y)

# Compute utility for each point
Z = utility(X, Y)

# Plot utility contours
contours = ax.contour(X, Y, Z, levels=[1, 2, 3, 4], colors='black', linewidths=1)
ax.clabel(contours, inline=True, fontsize=10, fmt='%1.0f')

# Highlight a specific utility level
ax.contour(X, Y, Z, levels=[2], colors='red', linewidths=2)

# Add labels and title
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Indifference Curves (Utility Contours)')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
// The graph shows indifference curves, with a specific utility level highlighted in red

#only("1")[
#voiceover("Here's a graphical representation using indifference curves. Each curve represents a level of utility. Hicks Decomposition would analyze the effect of a price change while staying on the same indifference curve, like the one highlighted in red.")
]
]
]

#slide()[

#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Scenario: Analyzing effect of price change on consumer's choice, keeping utility constant 🎯]
// The key points of the scenario are summarized from slide 1 onward

#only("2-")[- Hicks Decomposition is more appropriate as it holds utility constant 📈]
// The suitability of Hicks Decomposition is reiterated from slide 2 onward

#only("3-")[- Graphically, this means staying on the same indifference curve 📉]
// The graphical interpretation is added from slide 3 onward

#only("1")[
#voiceover("To sum up, the scenario involves analyzing the effect of a price change on a consumer's choice while keeping their utility constant.")
]

#only("2")[
#voiceover("Hicks Decomposition is more appropriate here as it holds utility constant, in line with the scenario's goal.")
]

#only("3")[
#voiceover("Graphically, this is represented by staying on the same indifference curve when the price changes. Excellent work identifying this scenario!")
]
]