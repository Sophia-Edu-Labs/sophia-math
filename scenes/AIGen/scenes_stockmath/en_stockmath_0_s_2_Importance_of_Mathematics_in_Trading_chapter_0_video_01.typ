#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[What is Stock Trading? 📈]
#v(40pt)
#only("2-")[- Buying and selling shares of companies 🏢]
#v(20pt)
#only("3-")[- Goal: Make a profit 💰]
#only("1")[
#voiceover("Stock trading is the process of buying and selling shares of companies.")
]
#only("2")[
#voiceover("When you buy a stock, you become a part-owner of the company. When you sell a stock, you give up that ownership.")
]
#only("3")[
#voiceover("The goal of stock trading is to make a profit by buying stocks at a low price and selling them at a higher price.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[How Does it Work? 🤔]
#v(40pt)
#only("1-")[- Stock prices change based on supply and demand 📊]
#v(20pt)
#only("2-")[- If more people want to buy a stock (demand ⬆), price ⬆]
#v(20pt)
#only("3-")[- If more people want to sell a stock (supply ⬆), price ⬇]
#only("1")[
#voiceover("Stock prices change based on the law of supply and demand.")
]
#only("2")[
#voiceover("If more people want to buy a stock, meaning demand increases, the price will go up.")
]
#only("3")[
#voiceover("On the other hand, if more people want to sell a stock, meaning supply increases, the price will go down.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 📝]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.array([0, 1, 2, 3, 4, 5])
y = np.array([10, 12, 15, 18, 16, 20])

# Create the plot
plt.figure(figsize=(6, 4))
plt.plot(x, y, marker='o', linestyle='-', color='b', label='Stock Price')
plt.xlabel('Time')
plt.ylabel('Price ($)')
plt.title('Stock Price Over Time')
plt.grid(True)
plt.legend()
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's look at an example. Suppose you buy a stock at $10. Over time, more people want to buy this stock, so the price goes up.")
]
#only("2")[
#voiceover("At some point, you decide to sell the stock when it reaches $20. The difference between your selling price and your buying price is your profit.")
]
#only("3")[
#voiceover("In this case, you made a profit of $10 per share.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Risks and Rewards 🎲]
#v(40pt)
#only("1-")[- Potential for high returns, but also high risk 📈📉]
#v(20pt)
#only("2-")[- Stock prices can go down ⬇ as well as up ⬆]
#v(20pt)
#only("3-")[- Important to do research and invest wisely 🔍]
#only("1")[
#voiceover("Stock trading has the potential for high returns, but it also comes with high risk.")
]
#only("2")[
#voiceover("Just as stock prices can go up, they can also go down. If you have to sell when the price is lower than what you bought it for, you'll lose money.")
]
#only("3")[
#voiceover("That's why it's important to do your research and invest wisely. Understand the companies you're investing in and have a long-term perspective.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎬]
#v(40pt)
#only("1-")[- Stock trading: Buying and selling shares of companies 📈]
#v(20pt)
#only("2-")[- Goal: Make a profit by buying low and selling high 💰]
#v(20pt)
#only("3-")[- Prices change based on supply and demand 📊]
#v(20pt)
#only("4-")[- High potential returns, but also high risk 🎲]
#only("1")[
#voiceover("In summary, stock trading involves buying and selling shares of companies.")
]
#only("2")[
#voiceover("The goal is to make a profit by buying stocks at a low price and selling them at a higher price.")
]
#only("3")[
#voiceover("Stock prices change based on supply and demand.")
]
#only("4")[
#voiceover("While stock trading has the potential for high returns, it also comes with high risk. Always do your research and invest wisely.")
]
]