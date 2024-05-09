#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Great job! You've identified some key motivations for buyers and sellers in the stock market. Let's explore these in more detail.")
]

#text(size: 30pt, weight: "bold")[Buyer Motivations 🛒]

#v(40pt)

#only("2-")[- Potential for capital appreciation 📈]
#only("3-")[- Dividend income 💰]
#only("4-")[- Diversification benefits 🌐]
#only("5-")[- Belief in the company's future prospects 🔮]

#only("2")[#voiceover("One of the primary motivations for buyers is the potential for capital appreciation. They believe the stock price will rise over time, allowing them to sell at a higher price and realize a profit.")]

#only("3")[#voiceover("Buyers may also be attracted to stocks that pay regular dividends. These provide a steady stream of income in addition to any potential capital gains.")]

#only("4")[#voiceover("Purchasing stocks can help diversify an investment portfolio. By investing in a variety of stocks across different sectors, buyers can spread their risk.")]

#only("5")[#voiceover("Buyers may have a strong belief in a company's future prospects. They may see potential for growth, innovation, or market expansion that could drive the stock price higher.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Seller Motivations 💰]

#v(40pt)

#only("1-")[- Locking in profits 🔒]
#only("2-")[- Belief that the stock is overvalued 📉]
#only("3-")[- Need for liquidity 💸]
#only("4-")[- Portfolio rebalancing 🔄]
#only("5-")[- Concerns about the company's future 😟]

#only("1")[#voiceover("Sellers may choose to sell their stocks to lock in profits. If the stock has appreciated significantly, they may want to realize those gains before the price potentially falls.")]

#only("2")[#voiceover("If a seller believes the stock is overvalued relative to the company's fundamentals, they may choose to sell to avoid potential losses if the price corrects.")]

#only("3")[#voiceover("Sellers may need liquidity, or cash, for various reasons such as emergencies, large purchases, or investment opportunities. Selling stocks provides a way to access that liquidity.")]

#only("4")[#voiceover("Over time, the performance of individual stocks can cause a portfolio to become unbalanced. Sellers may sell certain stocks to rebalance their portfolio and maintain their desired asset allocation.")]

#only("5")[#voiceover("If a seller has concerns about a company's future prospects, such as increased competition, regulatory changes, or poor management decisions, they may choose to sell to limit their potential downside risk.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Market Dynamics 🌐]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate example data
time = np.arange(0, 10, 0.1)
price = 10 + 2 * np.sin(time)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(time, price, color='blue', linewidth=2, label='Stock Price')
plt.xlabel('Time')
plt.ylabel('Price')
plt.title('Stock Price Fluctuations')
plt.grid(True)
plt.legend()
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[#voiceover("The interaction between buyers and sellers creates the dynamic of the stock market. As buyers and sellers trade based on their individual motivations, the stock price fluctuates over time.")]

#only("2-")[#text()[The balance between supply and demand determines the stock price at any given moment. 🤝]]

#only("2")[#voiceover("The balance between supply and demand, driven by the collective actions of buyers and sellers, determines the stock price at any given moment.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Buyers: Potential gains, income, diversification, belief in company 📈]
#only("2-")[- Sellers: Locking in profits, overvaluation, liquidity needs, rebalancing, concerns 💰]
#only("3-")[- Market dynamics driven by the interaction of buyers and sellers 🌐]

#only("1")[#voiceover("In summary, buyers are motivated by the potential for capital gains, dividend income, diversification benefits, and a belief in the company's future prospects.")]

#only("2")[#voiceover("Sellers, on the other hand, may be motivated to lock in profits, sell overvalued stocks, raise liquidity, rebalance their portfolios, or limit downside risk due to concerns about the company.")]

#only("3")[#voiceover("The continuous interaction between buyers and sellers, each acting on their own motivations, drives the dynamic nature of the stock market and the fluctuation of stock prices over time.")]

]