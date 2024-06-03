#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior 🐑]
#v(40pt)
#only("1-")[
- Tendency to follow and mimic actions of a larger group
- Often ignoring individual analysis
]
#only("1")[
#voiceover("Herd behavior is the tendency to follow and mimic the actions of a larger group, often ignoring individual analysis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate data
x = np.linspace(0, 10, 100)
y1 = 0.2 * x + np.random.randn(100)  # Individual analysis
y2 = 0.6 * x + np.random.randn(100)  # Herd behavior

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, y1, color='blue', label='Individual Analysis')
plt.plot(x, y2, color='red', label='Herd Behavior')

# Add labels and legend
plt.xlabel('Time')
plt.ylabel('Price')
plt.title('Herd Behavior vs Individual Analysis')
plt.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("For example, in a financial market, if a majority of investors start buying a particular stock, others might follow suit, even if their individual analysis suggests otherwise. This can lead to a steep rise in the stock's price due to herd behavior, diverging from what individual analysis might predict.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Impact on Financial Decisions 💰]
#v(40pt)
#only("1-")[
- Can lead to bubbles and crashes in financial markets 📉
- Ignores fundamental analysis and individual risk assessment 🙈
]
#only("1")[
#voiceover("Herd behavior can have a significant impact on financial decisions. It can lead to bubbles and crashes in financial markets, as people buy or sell assets based on the actions of the crowd rather than fundamental analysis. This behavior also causes individuals to ignore their own risk assessments and investment strategies.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 🔄]
#v(40pt)
#only("1-")[
- Herd behavior: tendency to follow actions of a larger group 🐑
- Ignores individual analysis 🙅‍♂️
- Can lead to irrational financial decisions 🤪
]
#only("1")[
#voiceover("To recap, herd behavior is the tendency to follow and mimic the actions of a larger group, often ignoring individual analysis. This can lead to irrational financial decisions and contribute to instability in financial markets.")
]
]