#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitution Effect]
#v(40pt)
#only("1-")[- Price of good X decreases from \$10 to \$8]
#v(20pt)
#only("2-")[- Quantity demanded increases from 5 to 7 units]
#v(20pt)
#only("3-")[- Utility remains constant]
#only("1")[
#voiceover("That's not quite right. Let's review the correct solution step-by-step. We are given that the price of good X decreases from 10 dollars to 8 dollars.")
]
#only("2")[
#voiceover("As a result, the quantity demanded increases from 5 units to 7 units.")
]
#only("3")[
#voiceover("Importantly, we are told that the consumer's utility remains constant. This is the key to identifying the substitution effect.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[- Substitution effect: change in consumption due to change in relative prices, holding utility constant 🔄]
#v(20pt)
#only("2-")[- Quantity demanded increases from 5 to 7 units 📈]
#v(20pt)
#only("3-")[- Substitution effect = 7 - 5 = 2 units 🎯]
#only("1")[
#voiceover("Recall that the substitution effect is the change in consumption resulting from a change in the relative prices of goods, holding utility constant.")
]
#only("2")[
#voiceover("In this case, as the price of good X decreases, the quantity demanded increases from 5 to 7 units, while utility remains constant.")
]
#only("3")[
#voiceover("Therefore, the entire change in quantity demanded, which is an increase of 2 units from 5 to 7, is attributable to the substitution effect.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the initial and final quantity demanded
q0 = 5
q1 = 7

# Create the plot
fig, ax = plt.subplots(figsize=(8, 6))

# Plot the initial and final quantity demanded
ax.plot([q0, q0], [0, 1], color='blue', linestyle='--', linewidth=2, label='Initial Quantity')
ax.plot([q1, q1], [0, 1], color='red', linestyle='--', linewidth=2, label='Final Quantity')

# Fill the area representing the substitution effect
ax.fill_between([q0, q1], [0, 0], [1, 1], color='green', alpha=0.3, label='Substitution Effect')

# Add labels and title
ax.set_xlabel('Quantity')
ax.set_ylabel('Price')
ax.set_title('Substitution Effect')

# Remove top and right spines
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)

# Add legend
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph visualizes the substitution effect. The blue dashed line represents the initial quantity demanded at 5 units, while the red dashed line shows the final quantity demanded at 7 units. The green shaded area between these lines represents the substitution effect of 2 units.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Price decrease: \$10 to \$8 💰]
#v(20pt)
#only("2-")[- Quantity demanded increase: 5 to 7 units 📦]
#v(20pt)  
#only("3-")[- Utility constant ⚖]
#v(20pt)
#only("4-")[- Substitution effect = 2 units 🎉]
#only("1")[
#voiceover("To summarize, we started with a price decrease for good X from 10 dollars to 8 dollars.")
]
#only("2")[
#voiceover("This led to an increase in quantity demanded from 5 units to 7 units.")
]
#only("3")[
#voiceover("Crucially, utility remained constant throughout this change.")
]  
#only("4")[
#voiceover("Therefore, the entire increase in quantity demanded of 2 units is the substitution effect. Great work on solving this problem!")
]
]