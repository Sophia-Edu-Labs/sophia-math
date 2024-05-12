#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Diversification 🌈]
#v(40pt)
#only("1-")[- Spreading investments across various assets, industries, and categories 📊]
#v(20pt)
#only("2-")[- Reduces portfolio volatility 📉]
#only("1")[
#voiceover("Diversification is a strategy that involves spreading investments across various financial instruments, industries, and other categories.")
]
#only("2")[
#voiceover("By diversifying, investors can reduce the overall volatility of their portfolio.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[How Diversification Works 🔧]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate random returns for two assets
asset1_returns = np.random.normal(0.05, 0.1, 100)
asset2_returns = np.random.normal(0.07, 0.15, 100)

# Calculate portfolio returns with equal weights
portfolio_returns = 0.5 * asset1_returns + 0.5 * asset2_returns

# Plot the returns
plt.figure(figsize=(8, 6))
plt.plot(asset1_returns, label='Asset 1')
plt.plot(asset2_returns, label='Asset 2')
plt.plot(portfolio_returns, label='Diversified Portfolio')
plt.xlabel('Time')
plt.ylabel('Returns')
plt.title('Diversification Effect')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("As you can see in this graph, the returns of individual assets, represented by the blue and orange lines, are more volatile compared to the diversified portfolio, shown by the green line.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Benefits of Diversification 📈]
#v(40pt)
#only("1-")[- Reduces impact of poor performance from a single investment 🛡️]
#v(20pt)
#only("2-")[- Helps manage overall portfolio risk 🎯]
#v(20pt)
#only("3-")[- Potential for more stable returns over time 📅]
#only("1")[
#voiceover("Diversification reduces the impact of poor performance from a single investment.")
]
#only("2")[
#voiceover("By investing in a variety of assets, investors can manage the overall risk of their portfolio.")
]
#only("3")[
#voiceover("This can lead to more stable returns over time, as the ups and downs of individual investments tend to balance each other out.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Diversification is a risk management strategy 🔒]
#v(20pt)
#only("2-")[- Spreads investments across various assets, industries, and categories 🌍]
#v(20pt)
#only("3-")[- Helps reduce portfolio volatility and manage overall risk 📉🎯]
#only("1")[
#voiceover("In summary, diversification is a crucial risk management strategy for investors.")
]
#only("2")[
#voiceover("By spreading investments across various financial instruments, industries, and categories,")
]
#only("3")[
#voiceover("diversification helps reduce portfolio volatility and manage overall risk, potentially leading to more stable returns over time.")
]
]