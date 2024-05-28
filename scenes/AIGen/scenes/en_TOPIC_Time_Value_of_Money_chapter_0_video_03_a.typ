#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Future Value]
#v(40pt)
#only("1-")[
- Given: 
  - Present Value (P V) = €100
  - Annual Interest Rate (r) = 5% = 0.05
  - Number of Periods (n) = 1 year
]
#only("2-")[
- Formula: $F V = P V dot (1 + r)^n$
]
#only("3-")[
- Calculation: $F V = 100 dot (1 + 0.05)^1$
]
#only("4-")[
- Result: $F V = €105$ 💰
]

#only("1")[
#voiceover("That's right, great job. Let's review the correct solution step by step. We are given the present value of €100, an annual interest rate of 5%, and we want to know the future value after 1 year.")
]
#only("2")[
#voiceover("To calculate the future value, we use the formula: Future Value equals Present Value times the quantity 1 plus interest rate, raised to the power of the number of periods.")
]
#only("3")[
#voiceover("Plugging in our values, we have: Future Value equals 100 times the quantity 1 plus 0.05, raised to the power of 1.")
]
#only("4")[
#voiceover("Calculating this, we get a future value of €105. So if you invest €100 today at an annual interest rate of 5%, it will be worth €105 in one year.")
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

# Define the data
labels = ['Present Value', 'Future Value']
values = [100, 105]

# Create the plot
fig, ax = plt.subplots(figsize=(6, 4))
ax.bar(labels, values, color=['blue', 'green'])

# Add value labels on top of bars
for i, v in enumerate(values):
    ax.text(i, v + 0.5, '€' + str(v), ha='center')

# Add title and labels
ax.set_title('Present Value vs Future Value')
ax.set_ylabel('Value (€)')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization comparing the present value and the future value. The blue bar represents the €100 you have today, and the green bar shows the €105 it will grow to in one year at a 5% interest rate.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[
- Future value depends on:
  - Present value 💰
  - Interest rate 📈
  - Time ⏳
]
#only("2-")[
- Formula: $F V = P V dot (1 + r)^n$ 🧮
]
#only("3-")[
- Compounding makes money grow over time 🌱➡🌳
]

#only("1")[
#voiceover("The key things to remember are that the future value depends on the present value, the interest rate, and the amount of time the money has to grow.")
]
#only("2")[
#voiceover("We can calculate the future value using the formula: Future Value equals Present Value times the quantity 1 plus interest rate, raised to the power of the number of periods.")
]
#only("3")[
#voiceover("Thanks to the power of compounding, even a relatively small amount of money can grow significantly over time when invested at a reasonable interest rate.")
]
]]