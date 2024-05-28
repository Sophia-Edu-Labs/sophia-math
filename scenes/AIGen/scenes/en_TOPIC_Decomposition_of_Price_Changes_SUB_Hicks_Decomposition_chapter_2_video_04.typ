#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Income Effect 💰]
#v(40pt)
#only("1-")[- Shows consumption changes due to real income change]
#v(20pt)
#only("2-")[- Occurs after adjusting for substitution effect]
#only("1")[
#voiceover("The income effect shows how consumption changes due to a change in real income.")
]
#only("2")[
#voiceover("This effect occurs after adjusting for the substitution effect.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Real Income Change 📈]
#v(40pt)
#only("1-")[- Price change affects consumer's purchasing power]
#v(20pt)
#only("2-")[- Example: Price decrease $arrow$ Real income increase]
#only("1")[
#voiceover("A change in price affects the consumer's real income or purchasing power.")
]
#only("2")[
#voiceover("For example, when the price of a good decreases, the consumer's real income effectively increases.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Define the initial budget constraint
p1, p2 = 2, 1
m = 100
x1 = np.linspace(0, m/p1, 100)
x2 = m/p2 - p1/p2 * x1

# Define the new budget constraint (price decrease)
p1_new = 1.5
x1_new = np.linspace(0, m/p1_new, 100)
x2_new = m/p2 - p1_new/p2 * x1_new

# Define the indifference curves
def U(x1, x2):
    return x1**0.5 * x2**0.5

x1_mesh, x2_mesh = np.meshgrid(np.linspace(0, m/p1, 100), np.linspace(0, m/p2, 100))
U_values = U(x1_mesh, x2_mesh)

# Plot the graph
plt.figure(figsize=(8, 6))
plt.plot(x1, x2, label='Initial Budget Constraint')
plt.plot(x1_new, x2_new, label='New Budget Constraint')
plt.contour(x1_mesh, x2_mesh, U_values, levels=[U(m/(2*p1), m/(2*p2)), U(m/(2*p1_new), m/(2*p2))], colors='black', linestyles='--', labels=['Initial Indifference Curve', 'New Indifference Curve'])
plt.xlabel('Good 1')
plt.ylabel('Good 2')
plt.title('Income Effect')
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a graphical representation of the income effect. The initial budget constraint and indifference curve are shown in blue and black, respectively. After the price decrease, the budget constraint shifts outward, and the consumer reaches a higher indifference curve, representing the income effect.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎬]
#v(40pt)
#only("1-")[- Income effect: Consumption changes due to real income change 💰]
#v(20pt)
#only("2-")[- Occurs after adjusting for substitution effect 🔄]
#v(20pt)
#only("3-")[- Price change affects consumer's purchasing power 📈]
#v(20pt)
#only("4-")[- Graphically represented by budget constraint shift and higher indifference curve 📊]
#only("1")[
#voiceover("To summarize, the income effect shows how consumption changes due to a change in real income.")
]
#only("2")[
#voiceover("This effect occurs after adjusting for the substitution effect.")
]
#only("3")[
#voiceover("A change in price affects the consumer's purchasing power.")
]
#only("4")[
#voiceover("The income effect is graphically represented by a shift in the budget constraint and the consumer reaching a higher indifference curve.")
]
]