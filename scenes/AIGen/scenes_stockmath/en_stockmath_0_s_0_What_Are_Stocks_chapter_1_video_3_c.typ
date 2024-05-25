#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Prices]
#v(40pt)
#only("1-")[What primarily influences stock prices on the stock market?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) CEO decisions]#only("2-")[#text(fill:red)[a) CEO decisions]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Supply and demand]#only("3-")[#text(fill:green)[b) Supply and demand]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Interest rates]#only("4-")[#text(fill:red)[c) Interest rates]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Economic policies]#only("5-")[#text(fill:red)[d) Economic policies]]
#v(40pt)

#only("1")[#voiceover("That's not quite right. Let's review the correct solution and see why supply and demand is the primary influence on stock prices.")]
#only("2")[#voiceover("a) CEO decisions can certainly impact a company's stock price, but they are not the primary driver. The market's reaction to those decisions is more important.")]
#only("3")[#voiceover("b) Supply and demand is indeed the primary influencer. If more people want to buy a stock (demand) than sell it (supply), then the price will rise. Conversely, if more people wanted to sell a stock than buy it, there would be greater supply than demand, and the price would fall.")]
#only("4")[#voiceover("c) Interest rates can affect stock prices, especially for companies that rely on borrowing, but they are not the primary factor. The demand for a company's products or services is more influential.")]
#only("5")[#voiceover("d) Economic policies can also impact stock prices by affecting a company's profitability and growth prospects. However, these effects are usually seen through changes in supply and demand for the company's stock.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Supply and Demand 📈📉]
#v(40pt)
#only("1-")[- Stock prices are determined in the marketplace, where seller supply meets buyer demand.]
#v(20pt)
#only("2-")[- If there is more demand for a stock than supply, the price will rise. 📈]
#v(20pt)
#only("3-")[- Conversely, if there is more supply than demand, the price will fall. 📉]
#v(20pt)
#only("4-")[- Factors that influence demand include the company's performance, industry trends, and investor sentiment.]
#v(20pt)
#only("5-")[- Factors influencing supply include the number of shares available and the willingness of existing shareholders to sell.]

#only("1")[#voiceover("Stock prices are determined in the stock market, which functions like an auction. Buyers indicate the price they're willing to pay, and sellers indicate the price they're willing to accept.")]
#only("2")[#voiceover("If there are more buyers than sellers, meaning more demand than supply, the buyers will bid the price up to entice sellers.")]
#only("3")[#voiceover("On the other hand, if there are more sellers than buyers, meaning more supply than demand, the sellers will lower their asking price to attract buyers.")]
#only("4")[#voiceover("Factors that can influence demand include the company's financial performance, industry trends, market sentiment, and investors' expectations for the company's future growth.")]
#only("5")[#voiceover("Supply is influenced by factors such as the total number of shares the company has issued and the willingness of existing shareholders to sell their shares.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Equilibrium Price 🎯]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Demand curve
demand_price = np.linspace(5, 30, 100)
demand_quantity = 1000 / demand_price

# Supply curve
supply_price = np.linspace(5, 30, 100)
supply_quantity = 0.25 * supply_price**2 - 5

# Equilibrium
eq_price = 20
eq_quantity = 1000 / eq_price

plt.figure(figsize=(8, 6))
plt.plot(demand_quantity, demand_price, label='Demand')
plt.plot(supply_quantity, supply_price, label='Supply')
plt.scatter(eq_quantity, eq_price, color='red', label='Equilibrium')
plt.xlabel('Quantity')
plt.ylabel('Price')
plt.title('Supply and Demand')
plt.grid(True)
plt.legend()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[The price at which the supply and demand for a stock are equal is called the equilibrium price.]
#v(20pt)
#only("2-")[At this price, the number of shares that buyers want to buy is equal to the number of shares that sellers want to sell.]
#v(20pt)
#only("3-")[The equilibrium price can change over time as supply and demand shift.]

#only("1")[#voiceover("The price at which the quantity of a stock that buyers want to buy and the quantity that sellers want to sell are equal is known as the equilibrium price.")]
#only("2")[#voiceover("At the equilibrium price, there is no surplus or shortage of the stock, and the market is in balance.")]
#only("3")[#voiceover("However, the equilibrium price is not static. It can change over time as the factors influencing supply and demand shift, leading to a new equilibrium price.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Supply and demand is the primary driver of stock prices 📊]
#v(20pt)
#only("2-")[- If demand > supply, price rises 📈]
#v(20pt)
#only("3-")[- If supply > demand, price falls 📉]
#v(20pt)
#only("4-")[- The price where supply = demand is the equilibrium price 🎯]
#v(20pt)
#only("5-")[- The equilibrium price can change as supply and demand shift over time ⏳]

#only("1")[#voiceover("In summary, supply and demand is the primary force that determines stock prices in the market.")]
#only("2")[#voiceover("When there is more demand than supply, prices will rise.")]
#only("3")[#voiceover("Conversely, when there is more supply than demand, prices will fall.")]
#only("4")[#voiceover("The price at which the quantity supplied equals the quantity demanded is known as the equilibrium price.")]
#only("5")[#voiceover("This equilibrium price can shift over time as the factors influencing supply and demand change, leading to changes in stock prices.")]
]