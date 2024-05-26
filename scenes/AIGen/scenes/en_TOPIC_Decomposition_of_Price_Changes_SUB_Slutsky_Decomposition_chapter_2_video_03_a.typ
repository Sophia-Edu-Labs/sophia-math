#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Income Effect]
#v(40pt)
#align(center)[
#only("1-")[Price of good X decreases from \$10 to \$8]
#v(20pt)
#only("2-")[Consumer's real income increases]
#v(20pt)
#only("3-")[Quantity demanded of good X increases from 7 to 9 units]
]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's break down the solution step by step. We are given that the price of good X decreases from 10 dollars to 8 dollars.")
]
#only("2")[
#voiceover("This decrease in price leads to an increase in the consumer's real income, allowing them to buy more of all goods.")
]
#only("3")[
#voiceover("As a result, the quantity demanded of good X increases from 7 units to 9 units.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- Income effect is the change in quantity demanded due to the change in real income 💰]
#v(20pt)
#only("2-")[- Initial quantity demanded at price \$10: 7 units]
#v(20pt)
#only("3-")[- Final quantity demanded at price \$8: 9 units]
#v(20pt)
#only("4-")[- Income effect = Final quantity - Initial quantity]
#v(20pt)
#only("5-")[- Income effect = 9 - 7 = 2 units 📈]
#only("1")[
#voiceover("The income effect is the change in quantity demanded that is due to the change in the consumer's real income.")
]
#only("2")[
#voiceover("We know that the initial quantity demanded at the price of 10 dollars is 7 units.")
]
#only("3")[
#voiceover("And the final quantity demanded at the price of 8 dollars is 9 units.")
]
#only("4")[
#voiceover("To find the income effect, we subtract the initial quantity from the final quantity.")
]
#only("5")[
#voiceover("So the income effect is equal to 9 minus 7, which gives us 2 units. This means that the increase in the consumer's real income led to an increase in the quantity demanded of good X by 2 units.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Set up the figure
fig, ax = plt.subplots(figsize=(8, 6))

# Define the data
price = [10, 8]
quantity = [7, 9]

# Create the bar chart
ax.bar(price, quantity, width=1.5, align='center', color=['blue', 'green'], alpha=0.7)

# Add labels and title
ax.set_xlabel('Price (\$)', fontsize=14)
ax.set_ylabel('Quantity Demanded', fontsize=14)
ax.set_title('Income Effect on Quantity Demanded', fontsize=16)
ax.set_xticks(price)
ax.set_xticklabels(['Initial (\$10)', 'Final (\$8)'])

# Add value labels on top of the bars
for i, v in enumerate(quantity):
    ax.text(price[i], v + 0.1, str(v), color='black', fontweight='bold', ha='center', fontsize=12)

# Highlight the income effect
ax.annotate('Income Effect = 2 units', xy=(9, 8), xytext=(9, 8.5),
            arrowprops=dict(facecolor='black', shrink=0.05), fontsize=12, ha='center')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visual representation of the income effect. The blue bar shows the initial quantity demanded at the price of 10 dollars, which is 7 units. The green bar shows the final quantity demanded at the price of 8 dollars, which is 9 units. The difference between these two quantities, indicated by the arrow, is the income effect of 2 units.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Income effect is the change in quantity demanded due to a change in real income 🗝️]
#v(20pt)
#only("2-")[- Calculated as the difference between final and initial quantities 🧮]
#v(20pt) 
#only("3-")[- In this example, the income effect is an increase of 2 units 📈]
#only("1")[
#voiceover("Remember, the income effect is the change in quantity demanded that is due to a change in the consumer's real income.")
]
#only("2")[
#voiceover("It is calculated as the difference between the final quantity and the initial quantity.")
]  
#only("3")[
#voiceover("In this specific example, the decrease in price led to an increase in real income, which resulted in an income effect of an increase in quantity demanded by 2 units.")
]
]