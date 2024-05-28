#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitution Effect 🔄]
#v(40pt)
#only("1-")[- Shows how consumption changes when price changes]
#v(20pt)
#only("2-")[- Holds utility constant 📊]
#only("1")[
#voiceover("The substitution effect shows how consumption changes when the price changes,")
]
#only("2")[
#voiceover("while keeping the consumer's utility level constant.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define utility function
def utility(x, y):
    return np.log(x) + np.log(y)

# Define initial budget constraint
p1_x, p1_y = 2, 1
m1 = 100

# Define new budget constraint after price change
p2_x, p2_y = 1, 1
m2 = 100

# Generate grid of points
x = np.linspace(0.1, 100, 100)
y = np.linspace(0.1, 100, 100)
X, Y = np.meshgrid(x, y)

# Compute utility for each point
U = utility(X, Y)

# Plot utility contours
plt.figure(figsize=(8, 6))
plt.contour(X, Y, U, levels=20, cmap='viridis', alpha=0.7)

# Plot initial budget constraint
x1_max = m1 / p1_x
y1_max = m1 / p1_y
plt.plot([0, x1_max], [y1_max, 0], 'k-', linewidth=2, label='Initial Budget')

# Plot new budget constraint
x2_max = m2 / p2_x
y2_max = m2 / p2_y
plt.plot([0, x2_max], [y2_max, 0], 'k--', linewidth=2, label='New Budget')

# Find initial optimal bundle
U_max = np.max(U)
idx = np.unravel_index(np.argmax(U, axis=None), U.shape)
x1_opt, y1_opt = X[idx], Y[idx]
plt.plot(x1_opt, y1_opt, 'ro', markersize=10, label='Initial Optimum')

# Find new optimal bundle after substitution effect
U_target = utility(x1_opt, y1_opt)
idx = np.argmin(np.abs(U - U_target))
x2_opt, y2_opt = X.flatten()[idx], Y.flatten()[idx]
plt.plot(x2_opt, y2_opt, 'bo', markersize=10, label='Substitution Effect')

plt.xlabel('Good X')
plt.ylabel('Good Y')
plt.title('Substitution Effect')
plt.legend()
plt.grid(True)
plt.show()
```, width: 360pt))
]
]
#only("1")[
#voiceover("This graph shows the substitution effect. The solid line represents the initial budget constraint, and the dashed line is the new budget constraint after a price change. The red dot is the initial optimal consumption bundle, and the blue dot shows the new optimal bundle after the substitution effect, holding utility constant at the initial level.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Substitution effect isolates the impact of a price change on consumption]
#v(20pt)
#only("2-")[- Keeps the consumer on the same indifference curve (utility level)]
#v(20pt)
#only("3-")[- Represents the consumer's response to relative price changes]
#only("1")[
#voiceover("The substitution effect isolates the impact of a price change on consumption,")
]
#only("2")[
#voiceover("by keeping the consumer on the same indifference curve, or utility level.")
]
#only("3")[
#voiceover("It represents how the consumer responds to relative price changes, adjusting their consumption while maintaining the same level of satisfaction.")
]
]