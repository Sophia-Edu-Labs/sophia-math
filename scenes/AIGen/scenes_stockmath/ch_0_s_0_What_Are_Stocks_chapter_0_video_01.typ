#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[What Are Stocks? 📈]
#v(40pt)
#only("1-")[- Shares of ownership in a company]
#only("1")[
#voiceover("Stocks represent shares of ownership in a company. When you buy a stock, you're buying a small piece of that company.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Ownership Benefits 🗝️]
#v(40pt)
#only("1-")[- Claim on company's assets]
#v(20pt)
#only("2-")[- Claim on company's earnings]
#only("1")[
#voiceover("As a stockholder, you have a claim on the company's assets. This means that if the company is sold or liquidated, you're entitled to a portion of the proceeds based on how many shares you own.")
]
#only("2")[
#voiceover("You also have a claim on the company's earnings. If the company makes a profit, it may choose to distribute some of that profit to shareholders in the form of dividends.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Voting Rights 🗳️]
#v(40pt)
#only("1-")[- Stockholders can vote on important company decisions]
#only("1")[
#voiceover("In addition to financial benefits, owning stock often comes with voting rights. As a shareholder, you may be able to vote on important company decisions, such as electing the board of directors.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Risk and Reward 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate example stock price data
days = np.arange(1, 31)
prices = np.random.randint(80, 121, size=30)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(days, prices, marker='o', linestyle='-', color='blue', label='Stock Price')
plt.xlabel('Day')
plt.ylabel('Price ($)')
plt.title('Example Stock Price Over 30 Days')
plt.grid(True)
plt.legend()
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(20pt)
#only("2-")[- Stock prices can go up or down 📈📉]
#only("1")[
#voiceover("It's important to remember that stock prices can fluctuate. Here's an example of how a stock's price might change over a 30-day period.")
]
#only("2")[
#voiceover("The value of your stock can go up, providing the potential for capital gains. But it can also go down, which means you could lose money. Investing in stocks carries risk, but also the potential for reward.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Stocks represent ownership in a company 🏢]
#v(20pt)
#only("2-")[- Stockholders have claims on assets and earnings 💰]
#v(20pt)
#only("3-")[- Owning stock often comes with voting rights 🗳️]
#v(20pt)
#only("4-")[- Stock prices can fluctuate, involving risk and potential reward 📈📉]
#only("1")[
#voiceover("In summary, stocks represent shares of ownership in a company.")
]
#only("2")[
#voiceover("As a stockholder, you have a claim on the company's assets and earnings.")
]
#only("3")[
#voiceover("You may also have voting rights on important company decisions.")
]
#only("4")[
#voiceover("While stock prices can go up or down, involving risk, they also offer the potential for financial rewards.")
]
]