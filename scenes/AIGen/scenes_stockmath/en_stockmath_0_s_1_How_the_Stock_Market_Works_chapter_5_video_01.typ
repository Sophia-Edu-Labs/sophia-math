#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brokers in the Stock Market]
#v(40pt)
#only("1-")[- Act as intermediaries 🤝]
#v(20pt)
#only("2-")[- Connect buyers and sellers 🛒💰]
#v(20pt)
#only("3-")[- Facilitate transactions 💸]
#only("1")[
#voiceover("In the stock market, brokers play a crucial role as intermediaries between buyers and sellers.")
]
#only("2")[
#voiceover("They connect individuals or institutions looking to buy stocks with those who want to sell their shares.")
]
#only("3")[
#voiceover("Brokers facilitate these transactions, ensuring a smooth exchange of stocks and money.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Trading Platforms]
#v(40pt)
#only("1-")[- Online tools for trading 💻📈]
#v(20pt)
#only("2-")[- Provided by brokers 🏢]
#v(20pt)
#only("3-")[- Execute buy and sell orders 🛒💰]
#only("1")[
#voiceover("To enable efficient trading, brokers provide their clients with access to trading platforms.")
]
#only("2")[
#voiceover("These platforms are typically online tools or software applications that allow investors to view market data, analyze trends, and place trade orders.")
]
#only("3")[
#voiceover("When an investor decides to buy or sell a stock, they submit an order through the trading platform, which the broker then executes on their behalf.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[The Trading Process]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(6, 4))

ax.set_xlim(0, 10)
ax.set_ylim(0, 10)
ax.set_axis_off()

ax.text(3, 9, 'Buyer', fontsize=14, ha='center')
ax.text(7, 9, 'Seller', fontsize=14, ha='center')
ax.text(5, 5, 'Broker', fontsize=14, ha='center')

ax.annotate('', xy=(5, 7), xytext=(3, 8), arrowprops=dict(facecolor='black', width=1, headwidth=10, headlength=10))
ax.annotate('', xy=(5, 7), xytext=(7, 8), arrowprops=dict(facecolor='black', width=1, headwidth=10, headlength=10))
ax.annotate('', xy=(3, 4), xytext=(5, 3), arrowprops=dict(facecolor='black', width=1, headwidth=10, headlength=10))
ax.annotate('', xy=(7, 4), xytext=(5, 3), arrowprops=dict(facecolor='black', width=1, headwidth=10, headlength=10))

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a simplified visualization of the trading process. The buyer and seller communicate their orders to the broker, who matches these orders and executes the trade.")
]
#v(20pt)
#only("2-")[1. Buyer places buy order 🛒]
#v(10pt)
#only("3-")[2. Seller places sell order 💰]
#v(10pt)
#only("4-")[3. Broker matches orders 🤝]
#v(10pt)
#only("5-")[4. Trade executed on platform 💸]
#only("2")[
#voiceover("First, the buyer places a buy order, specifying the stock they want to purchase and the price they're willing to pay.")
]
#only("3")[
#voiceover("Similarly, the seller places a sell order, indicating the stock they want to sell and the price they're asking for.")
]
#only("4")[
#voiceover("The broker then matches these buy and sell orders based on price and quantity.")
]
#only("5")[
#voiceover("Once a match is found, the trade is executed on the trading platform, transferring the stock ownership from the seller to the buyer and the funds from the buyer to the seller.")
]
]]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Brokers: intermediaries in the stock market 🤝]
#v(20pt)
#only("2-")[- Trading platforms: online tools for trading 💻📈]
#v(20pt)
#only("3-")[- Brokers match buy and sell orders, execute trades 💸]
#only("1")[
#voiceover("To recap, brokers serve as intermediaries in the stock market, connecting buyers and sellers.")
]
#only("2")[
#voiceover("They provide trading platforms, which are online tools that allow investors to place orders and view market data.")
]
#only("3")[
#voiceover("Brokers match buy and sell orders and execute trades on behalf of their clients, facilitating transactions in the stock market.")
]
]