#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[The Stock Market 📈]
#v(40pt)
#only("1-")[- Platform for buying and selling company shares 🏦]
#only("1")[
#voiceover("The stock market is a platform where investors can buy and sell shares of companies.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Shares 🧩]
#v(40pt)
#only("1-")[- Represent ownership in a company]
#v(20pt)
#only("2-")[- Allows investors to participate in company's success 📈]
#only("1")[
#voiceover("Shares represent a piece of ownership in a company.")
]
#only("2")[
#voiceover("By owning shares, investors can participate in the company's success.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Buying and Selling 💰]
#v(40pt)
#only("1-")[- Investors buy shares hoping for price increase]
#v(20pt)
#only("2-")[- Sell shares to realize profits or limit losses]
#only("1")[
#voiceover("Investors buy shares with the hope that the price will increase over time.")
]
#only("2")[
#voiceover("They sell shares to realize profits if the price has gone up, or to limit losses if the price has decreased.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Potential Profits 💸]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create example data
x = np.arange(0, 10, 0.1)
y = np.sin(x) + x/3

# Create the plot
plt.figure(figsize=(6, 4))
plt.plot(x, y, color='green', linewidth=2, label='Stock Price')
plt.fill_between(x, 0, y, where=(x > 3) & (x < 7), alpha=0.3, color='green', label='Profit')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.legend()
plt.title('Potential Profit from Stock Investment')
plt.xlabel('Time')
plt.ylabel('Stock Price')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("If the stock price increases, investors can sell their shares for a profit, which is the difference between the buying and selling price.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Stock market: Platform for buying and selling company shares 📈]
#v(20pt)
#only("2-")[- Shares represent ownership, allow participation in company success 🧩]
#v(20pt)
#only("3-")[- Investors buy low, sell high for profit 💰📈]
#only("1")[
#voiceover("In summary, the stock market is a platform for buying and selling company shares.")
]
#only("2")[
#voiceover("Shares represent ownership in a company and allow investors to participate in its success.")
]
#only("3")[
#voiceover("Investors aim to buy shares at a low price and sell them at a higher price to earn a profit.")
]
]