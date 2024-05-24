#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Market Recap]
// The title "Stock Market Recap" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("Let's recap what we learned about the stock market.")
]
#only("2-")[
- Platform for buying and selling stocks 📈
]
#only("2")[
#voiceover("The stock market is a platform where stocks are bought and sold.")
]
#only("3-")[
- Stock prices influenced by supply and demand 🎢
]
#only("3")[
#voiceover("Stock prices on the market are mainly influenced by the forces of supply and demand.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Supply and Demand]
// The title "Supply and Demand" is shown on this slide
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Demand curve
demand = np.array([[0, 100], [50, 0]])
# Supply curve
supply = np.array([[0, 0], [50, 100]])  

# Create the plot
fig, ax = plt.subplots(figsize=(6, 4))
ax.plot(demand[:,0], demand[:,1], label='Demand')
ax.plot(supply[:,0], supply[:,1], label='Supply')

# Intersection point
ax.plot(25, 50, 'ro', label='Equilibrium')  

# Labels and legend
ax.set_xlabel('Quantity')
ax.set_ylabel('Price')
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
]
// The figure shows a basic supply and demand graph, with the equilibrium point marked. This figure is shown from slide 1 onward.
#only("1")[
#voiceover("This graph shows the basic concept of supply and demand.")
]
#only("2")[
#voiceover("The downward-sloping line represents demand, and the upward-sloping line represents supply.")
]
#only("3")[
#voiceover("Where these two lines intersect is the equilibrium point, which determines the price in the market.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Market Dynamics]
// The title "Market Dynamics" is shown on this slide
#v(40pt)
#only("1-")[
- High demand + Low supply = Price ⬆️
]
#only("1")[
#voiceover("When there is high demand for a stock but low supply, the price of the stock will tend to increase.")
]
#only("2-")[
- Low demand + High supply = Price ⬇️
]
#only("2")[
#voiceover("On the other hand, when there is low demand for a stock and high supply, the price will usually decrease.")
]
#only("3-")[
- Prices constantly adjusting to market conditions 🔄
]
#only("3")[
#voiceover("Stock prices are constantly adjusting to reflect these changing market conditions of supply and demand.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
// The title "Key Takeaways" is shown on this slide
#v(40pt)
#only("1-")[
- Stock market: Platform for trading stocks 📈
]
#only("1")[
#voiceover("The stock market is the platform where stocks are traded.")
]
#only("2-")[
- Supply and demand drive stock prices 🎢
]
#only("2")[
#voiceover("The forces of supply and demand are the main drivers of stock prices.")
]
#only("3-")[
- Prices constantly adjust to market conditions 🔄
]
#only("3")[
#voiceover("Stock prices are always adjusting to reflect the current market conditions.")
]
]