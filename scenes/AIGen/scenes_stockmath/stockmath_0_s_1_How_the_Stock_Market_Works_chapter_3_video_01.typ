#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Prices 📈📉]
#v(40pt)
#only("1-")[- Determined by supply and demand 🤝]
#only("1")[
#voiceover("Stock prices are determined by the dynamics of supply and demand in the stock market.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Factors Influencing Stock Prices]
#v(40pt)
#only("1-")[- Company performance 🏢]
#v(20pt)
#only("2-")[- Economic conditions 📊]
#v(20pt)
#only("3-")[- Investor sentiment 😃😟]
#only("1")[
#voiceover("Several factors influence stock prices, such as the performance of the company.")
]
#only("2")[
#voiceover("Economic conditions also play a crucial role.")
]
#only("3")[
#voiceover("Investor sentiment, whether optimistic or pessimistic, can significantly impact stock prices.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Supply and Demand]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Demand curve
demand_x = np.linspace(0, 10, 100)
demand_y = -demand_x + 10

# Supply curve
supply_x = np.linspace(0, 10, 100)
supply_y = supply_x

# Equilibrium point
eq_x = 5
eq_y = 5

plt.figure(figsize=(6, 6))
plt.plot(demand_x, demand_y, label='Demand')
plt.plot(supply_x, supply_y, label='Supply')
plt.scatter(eq_x, eq_y, color='red', label='Equilibrium')
plt.annotate(f'Equilibrium Price: ${eq_y}', xy=(eq_x, eq_y), xytext=(6, 4), arrowprops=dict(arrowstyle='->'))
plt.xlabel('Quantity')
plt.ylabel('Price')
plt.title('Supply and Demand')
plt.legend()
plt.grid(True)
plt.show()
```, width: 360pt))
]
]
#only("1")[
#voiceover("This graph illustrates the basic concept of supply and demand. The downward-sloping line represents demand, while the upward-sloping line represents supply. The point where these lines intersect is the equilibrium, determining the stock price.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Equilibrium Price 💰]
#v(40pt)
#only("1-")[- Price at which supply equals demand]
#v(20pt)
#only("2-")[- Reflects all available information]
#only("1")[
#voiceover("The equilibrium price is the price at which the quantity supplied equals the quantity demanded.")
]
#only("2")[
#voiceover("This price reflects all available information about the stock, including company performance, economic conditions, and investor sentiment.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Stock prices determined by supply and demand 📈📉]
#v(20pt)
#only("2-")[- Influenced by company performance, economic conditions, and investor sentiment 🏢📊😃]
#v(20pt)
#only("3-")[- Equilibrium price reflects all available information 💰ℹ]
#only("1")[
#voiceover("In summary, stock prices are determined by the supply and demand dynamics in the market.")
]
#only("2")[
#voiceover("Factors such as company performance, economic conditions, and investor sentiment influence these dynamics.")
]
#only("3")[
#voiceover("The equilibrium price, where supply equals demand, reflects all available information about the stock.")
]
]