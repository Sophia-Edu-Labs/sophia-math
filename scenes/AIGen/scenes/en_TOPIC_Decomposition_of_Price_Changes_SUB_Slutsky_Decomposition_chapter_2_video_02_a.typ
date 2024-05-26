#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Income Effect]
#v(40pt)
#only("1-")[The income effect occurs when a price change affects the consumer's \_\_\_\_\_.]
#v(40pt)
#only("-1")[a) nominal income]#only("2-")[#text(fill:red)[a) nominal income]]
#v(10pt)
#only("-1")[b) real income]#only("3-")[#text(fill:green)[b) real income]]
#v(10pt)
#only("-1")[c) utility]#only("4-")[#text(fill:red)[c) utility]]
#v(10pt)
#only("-1")[d) preferences]#only("5-")[#text(fill:red)[d) preferences]]

#only("1")[#voiceover("Not quite. Let's review the correct solution.")]
#only("2")[#voiceover("The income effect does not occur when a price change affects the consumer's nominal income. Nominal income is the amount of money earned before taking inflation into account.")]
#only("3")[#voiceover("The correct answer is b) real income. The income effect occurs when a price change affects the consumer's purchasing power or real income, which is nominal income adjusted for inflation.")]
#only("4")[#voiceover("The income effect is not directly related to changes in utility. Utility is a measure of satisfaction or benefit that a consumer derives from a good or service.")]
#only("5")[#voiceover("The income effect also does not occur when a price change affects the consumer's preferences. Preferences are the consumer's tastes and desires for different goods and services.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Step 1: Understand the concept of real income 💰]
#v(10pt)
#only("2-")[- Real income is purchasing power, i.e., nominal income adjusted for inflation]
#v(20pt)
#only("3-")[Step 2: Understand how price changes affect real income 📈📉]
#v(10pt)
#only("4-")[- When prices decrease, real income increases (can buy more goods)]
#only("5-")[- When prices increase, real income decreases (can buy fewer goods)]

#only("1")[#voiceover("Let's solve this step-by-step to understand why real income is the correct answer.")]
#only("2")[#voiceover("First, we need to understand what real income is. Real income is the consumer's purchasing power. It's their nominal income adjusted for inflation.")]
#only("3")[#voiceover("Next, let's see how price changes affect real income.")]
#only("4")[#voiceover("When prices decrease, the consumer's real income increases because they can buy more goods with the same nominal income.")]
#only("5")[#voiceover("On the other hand, when prices increase, the consumer's real income decreases because they can buy fewer goods with the same nominal income.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Step 3: Understand the income effect 🛒]
#v(10pt)
#only("2-")[- The income effect is the change in consumption due to the change in real income]
#only("3-")[- For normal goods, consumption increases when real income increases and vice versa]

#only("1")[#voiceover("Now, let's define the income effect.")]
#only("2")[#voiceover("The income effect is the change in consumption that results from the change in the consumer's real income due to a price change.")]
#only("3")[#voiceover("For normal goods, consumption increases when real income increases and decreases when real income decreases.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Define the budget lines
prices_1 = [2, 1]  # Prices before the change
prices_2 = [1, 1]  # Prices after the change
income = 10

# Calculate the quantities for each budget line
quantities_1 = [income / prices_1[0], income / prices_1[1]]
quantities_2 = [income / prices_2[0], income / prices_2[1]]

# Plot the budget lines
ax.plot([0, quantities_1[0]], [quantities_1[1], 0], label='Budget Line 1', linewidth=2)
ax.plot([0, quantities_2[0]], [quantities_2[1], 0], label='Budget Line 2', linewidth=2)

# Highlight the income effect
ax.annotate('Income Effect', xy=(quantities_2[0], quantities_2[1]), xytext=(quantities_2[0]+1, quantities_2[1]+1),
            arrowprops=dict(facecolor='black', width=1, headwidth=6), fontsize=12)

# Add labels and title
ax.set_xlabel('Good 1', fontsize=14)
ax.set_ylabel('Good 2', fontsize=14)
ax.set_title('Income Effect Visualization', fontsize=16)

# Add legend
ax.legend()

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization to help understand the income effect. The blue line is the original budget line. When the price of Good 1 decreases, the budget line rotates outward to the red line. The consumer can now afford more of both goods, illustrating an increase in real income. The arrow shows the income effect, the change in consumption due to this increase in real income.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Real income is purchasing power (nominal income adjusted for inflation) 💰]
#v(20pt)
#only("2-")[- Price changes affect real income (↓ prices ⇒ ↑ real income, ↑ prices ⇒ ↓ real income) 📈📉]
#v(20pt)
#only("3-")[- Income effect is the change in consumption due to the change in real income 🛒]
#v(20pt)
#only("4-")[Therefore, the income effect occurs when a price change affects the consumer's #text(fill:green)[real income].]

#only("1")[#voiceover("To summarize, real income is the consumer's purchasing power, which is their nominal income adjusted for inflation.")]
#only("2")[#voiceover("Price changes affect real income. When prices decrease, real income increases, and when prices increase, real income decreases.")]
#only("3")[#voiceover("The income effect is the change in consumption that results from the change in the consumer's real income due to a price change.")]
#only("4")[#voiceover("Therefore, the correct answer is that the income effect occurs when a price change affects the consumer's real income.")]
]