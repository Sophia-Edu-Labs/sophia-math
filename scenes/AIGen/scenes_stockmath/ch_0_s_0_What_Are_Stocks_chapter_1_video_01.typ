#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Market Basics 📈]
#v(40pt)
#only("1-")[- Platform for buying and selling stocks 💰]
#only("1")[
#voiceover("The stock market is a platform where stocks, which represent ownership in companies, are bought and sold.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Supply and Demand 🌐]
#v(40pt)
#only("1-")[- Stock prices influenced by supply and demand]
#v(20pt)
#only("2-")[- High demand + Low supply = Price ⬆]
#v(20pt)
#only("3-")[- Low demand + High supply = Price ⬇]
#only("1")[
#voiceover("Stock prices on the market are influenced by the basic economic principles of supply and demand.")
]
#only("2")[
#voiceover("When there is high demand for a stock but low supply, the price of the stock tends to increase.")
]
#only("3")[
#voiceover("Conversely, when there is low demand for a stock and high supply, the price tends to decrease.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Factors Affecting Demand 🔍]
#v(40pt)
#only("1-")[- Company performance 📊]
#v(20pt)
#only("2-")[- Market sentiment 😊😞]
#v(20pt)
#only("3-")[- Economic conditions 💸]
#only("1")[
#voiceover("Demand for a stock can be affected by various factors, such as the company's financial performance and growth prospects.")
]
#only("2")[
#voiceover("Market sentiment, which is the overall attitude of investors towards a particular stock or the market as a whole, also plays a role.")
]
#only("3")[
#voiceover("Additionally, general economic conditions, such as interest rates and inflation, can impact demand for stocks.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Supply and Demand 📉]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Demand curve
demand = np.linspace(0, 10, 100)
price_demand = 10 - 0.5 * demand

# Supply curve
supply = np.linspace(0, 10, 100)
price_supply = 0.5 * supply

# Equilibrium
eq_quantity = 6.67
eq_price = 3.33

plt.figure(figsize=(6, 4))
plt.plot(demand, price_demand, label='Demand')
plt.plot(supply, price_supply, label='Supply')
plt.plot(eq_quantity, eq_price, 'ro', label='Equilibrium')
plt.xlabel('Quantity')
plt.ylabel('Price')
plt.title('Supply and Demand')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph illustrates the relationship between supply and demand. The point where the supply and demand curves intersect represents the equilibrium price and quantity.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎓]
#v(40pt)
#only("1-")[- Stock market: Platform for trading stocks 💹]
#v(20pt)
#only("2-")[- Stock prices determined by supply and demand ⚖]
#v(20pt)
#only("3-")[- Various factors influence demand 📋]
#only("1")[
#voiceover("To recap, the stock market is a platform where stocks are traded.")
]
#only("2")[
#voiceover("Stock prices are determined by the forces of supply and demand.")
]
#only("3")[
#voiceover("Factors such as company performance, market sentiment, and economic conditions can influence the demand for a particular stock.")
]
]