#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
#align(center)[
If the price of good X decreases, what happens to the real income of the consumer?
]
#v(20pt)
#align(center)[
a) Increases
]
#v(10pt)
#align(center)[  
b) Decreases
]
#only("1")[
#voiceover("That's not quite right. Let's look at the correct solution.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Understand Real Income]
#v(40pt)
#only("1-")[- Real income is the purchasing power of nominal income 💰]
#v(20pt)
#only("2-")[- It depends on both income and prices 📈📉]
#only("1")[
#voiceover("First, let's understand what real income is. Real income refers to the purchasing power of a consumer's nominal income.")
]
#only("2")[
#voiceover("It depends on both the consumer's income and the prices of goods they buy.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Analyze Price Change]
#v(40pt)
#only("1-")[- Price of good X decreases ⬇]
#v(20pt)
#only("2-")[- Consumer can buy more of good X with the same income 🛒]
#only("1")[
#voiceover("Now, let's analyze the given scenario. The price of good X decreases.")
]
#only("2")[
#voiceover("This means that the consumer can now buy more of good X with the same amount of income.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Conclude]
#v(40pt)
#only("1-")[- Purchasing power (real income) increases ⬆]
#v(20pt)
#only("2-")[- The correct answer is a) Increases ✅]
#only("1")[
#voiceover("As a result, the consumer's purchasing power, or real income, increases.")
]
#only("2")[
#voiceover("Therefore, the correct answer is a) Increases.")
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

# Set up the figure
fig, ax = plt.subplots(figsize=(6, 6))

# Define the budget line before price decrease
income = 100
price_x_before = 10
price_y = 5
x_max_before = income / price_x_before
y_max = income / price_y
x_before = np.linspace(0, x_max_before, 100)
y_before = (income - price_x_before * x_before) / price_y

# Define the budget line after price decrease
price_x_after = 5
x_max_after = income / price_x_after
x_after = np.linspace(0, x_max_after, 100)
y_after = (income - price_x_after * x_after) / price_y

# Plot the budget lines
ax.plot(x_before, y_before, color='blue', label='Before price decrease')
ax.plot(x_after, y_after, color='green', label='After price decrease')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Budget Line: Price Decrease of Good X')
ax.legend()

# Show the plot
plt.show()
```, width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph shows the consumer's budget lines before and after the price decrease of good X. The green line, representing the budget after the price decrease, allows the consumer to buy more of both goods, reflecting an increase in real income.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Real income is about purchasing power 🛍]
#v(20pt)
#only("2-")[- Lower prices mean higher real income 📉⬆]
#v(20pt)
#only("3-")[- Prices matter, not just nominal income 💲]
#only("1")[
#voiceover("Remember, real income is about the purchasing power of your money.")
]
#only("2")[
#voiceover("When prices go down, your real income goes up, even if your nominal income stays the same.")
]
#only("3")[
#voiceover("So always consider prices, not just the number on your paycheck, when thinking about your economic well-being.")
]
]