#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[What is Stock Trading? 📈]

#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Buying only]#only("2-")[#text(fill:red)[a) Buying only]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Selling only]#only("3-")[#text(fill:red)[b) Selling only]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Buying and selling shares of companies]#only("4-")[#text(fill:green)[c) Buying and selling shares of companies]]
#v(10pt) 
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Exchanging goods]#only("5-")[#text(fill:red)[d) Exchanging goods]]

#only("1")[#voiceover("That's not quite right. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a), buying only, is incorrect. Stock trading involves more than just buying.")]
#only("3")[#voiceover("Similarly, option b), selling only, is also incorrect. Stock trading is not limited to selling.")]
#only("4")[#voiceover("Option c), buying and selling shares of companies, is the correct answer. Stock trading involves both buying and selling shares of publicly traded companies on stock exchanges.")]  
#only("5")[#voiceover("Lastly, option d), exchanging goods, is incorrect. Stock trading specifically involves financial instruments, not physical goods.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Stock Trading Explained 🤔]

#v(40pt)
#only("1-")[Stock trading involves:]
#v(20pt)
#only("2-")[- Buying shares (pieces of ownership in a company) 🛒]
#only("3-")[- Selling those shares at a later time 💰]
#only("4-")[- Aiming to profit from changes in the stock's price 📈]

#only("1")[#voiceover("Let's break down what stock trading entails.")]
#only("2")[#voiceover("First, it involves buying shares, which represent pieces of ownership in a publicly traded company.")]
#only("3")[#voiceover("Later, the trader will sell those shares, hopefully at a higher price than what they bought them for.")] 
#only("4")[#voiceover("The goal is to profit from the changes in the stock's price over time. Buy low, sell high, as they say!")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Stock Market Visualization 📊]

#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create sample stock data
days = np.arange(1, 31)  # Assuming a month with 30 days
prices = np.random.randint(50, 100, size=(30,))  # Random prices between 50 and 100

# Plotting the stock price over time
plt.figure(figsize=(8, 6))
plt.plot(days, prices, marker='o', linestyle='-', color='blue', label='Stock Price')

# Adding buy and sell points
buy_day = 5
sell_day = 25
plt.scatter(buy_day, prices[buy_day-1], marker='^', color='green', s=100, label='Buy')
plt.scatter(sell_day, prices[sell_day-1], marker='v', color='red', s=100, label='Sell')

plt.title('Stock Price Over Time')
plt.xlabel('Day')
plt.ylabel('Price ($)')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's a visualization of how stock trading works. The blue line represents the stock's price over time.")]
#only("2")[#voiceover("The green triangle indicates a point where the trader might choose to buy the stock.")]
#only("3")[#voiceover("Later, when the price has increased, the red inverted triangle shows a point where the trader might sell the stock.")]
#only("4")[#voiceover("The difference between the selling price and the buying price would be the trader's profit.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]

#v(40pt)
#only("1-")[- Stock trading involves both buying and selling shares 💸]
#only("2-")[- Traders aim to profit from changes in stock prices 📈]  
#only("3-")[- It's a key activity in financial markets worldwide 🌍]

#only("1")[#voiceover("To summarize, remember that stock trading always involves both buying and selling shares of companies.")]
#only("2")[#voiceover("Traders aim to buy at a low price and sell at a higher price, profiting from the difference.")] 
#only("3")[#voiceover("Stock trading is a fundamental activity in financial markets all around the globe.")]
]