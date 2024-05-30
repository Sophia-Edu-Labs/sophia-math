#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Present Value]
#v(40pt)
#only("1-")[- Given: Future Value = €100, Discount Rate = 5%, Time = 1 year]
#v(20pt)
#only("2-")[- Formula: $P V = F V / (1 + r)^n$]
#v(20pt)
#only("3-")[- Calculation: $P V = 100 / (1 + 0.05)^1$]
#v(20pt)
#only("4-")[- Result: $P V = €95.24$]

#only("1")[
#voiceover("Great job! That's the correct answer. Let's walk through the solution step by step. We are given that the future value is 100 euros, the discount rate is 5%, and the time is 1 year.")
]
#only("2")[
#voiceover("To find the present value, we use the formula: Present Value equals Future Value divided by quantity 1 plus discount rate raised to the power of number of periods.")
]
#only("3")[
#voiceover("Plugging in our values, we have: Present Value equals 100 euros divided by quantity 1 plus 0.05 raised to the power of 1.")
]
#only("4")[
#voiceover("Calculating this, we get a Present Value of 95.24 euros. This means that receiving 100 euros in one year at a 5% discount rate is equivalent to having 95.24 euros today. Well done!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the data
present_value = 95.24
future_value = 100
discount_rate = 0.05
year = 1

# Create the plot
fig, ax = plt.subplots(figsize=(8, 4))

# Plot the Present Value
ax.bar(0, present_value, width=0.5, color='b', alpha=0.7, label='Present Value')
ax.text(0, present_value + 1, f'€{present_value:.2f}', ha='center', va='bottom')

# Plot the Future Value
ax.bar(year, future_value, width=0.5, color='g', alpha=0.7, label='Future Value')
ax.text(year, future_value + 1, f'€{future_value:.2f}', ha='center', va='bottom')

# Connect P V and F V with an arrow
ax.annotate('', xy=(year, future_value), xytext=(0, present_value),
            arrowprops=dict(facecolor='black', shrink=0.05))

# Add discount rate text
ax.text(0.5, (present_value + future_value) / 2, f'Discount Rate: {discount_rate:.0%}',
        ha='center', va='center', rotation=90, color='red')

# Improve the layout
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.set_xticks([0, year])
ax.set_xticklabels(['Today', f'{year} year later'])
ax.set_ylabel('Value (€)')
ax.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visual representation of the present value and future value. The blue bar represents the present value of 95.24 euros today, while the green bar represents the future value of 100 euros after 1 year. The black arrow connecting them represents the 5% discount rate used to calculate the present value from the future value.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Present Value is the current worth of a future sum of money 💰]
#v(20pt)
#only("2-")[- It's calculated using the formula: $P V = F V / (1 + r)^n$ 📝]
#v(20pt)
#only("3-")[- Higher discount rates and longer time periods lead to lower Present Values ⏳]
#only("1")[
#voiceover("The key takeaways are: Present Value represents the current worth of a future sum of money.")
]
#only("2")[
#voiceover("It's calculated using the formula: Present Value equals Future Value divided by quantity 1 plus discount rate raised to the power of number of periods.")
]
#only("3")[
#voiceover("Higher discount rates and longer time periods will result in lower Present Values. This is because the opportunity cost of waiting for the money increases with time and interest rates.")
]
]]