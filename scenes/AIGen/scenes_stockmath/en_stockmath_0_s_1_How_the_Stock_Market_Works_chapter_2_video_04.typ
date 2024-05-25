#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Market Interactions 🤝]
#v(40pt)
#only("1-")[
- Buyers purchase stocks 💰
- Sellers sell their stocks 📉
]
#v(40pt)
#only("1")[
#voiceover("The stock market operates through the interactions between buyers and sellers. Buyers purchase stocks hoping to make profits, while sellers sell their stocks to realize gains or prevent losses.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Buyer Motivations 📈]
#v(40pt)
#only("1-")[
- Anticipate rising stock values 📶
- Aim to sell at a profit 💸
]
#v(40pt)
#only("1")[
#voiceover("Buyers are motivated by the expectation that the value of the stocks they purchase will increase over time. Their goal is to sell these stocks at a higher price than they bought them, thus making a profit.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Seller Motivations 📉]
#v(40pt)
#only("1-")[
- Realize gains from increased values 💰
- Cut losses if anticipating declines 🔻
]
#v(40pt)
#only("1")[
#voiceover("On the other hand, sellers may choose to sell their stocks for two main reasons. First, they may want to realize the gains from stocks that have increased in value. Second, if they anticipate that the stock's value will decline, they may sell to prevent further losses.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Market Dynamics 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.linspace(0, 10, 100)
y_buyers = 0.5 * x + np.random.randn(100)
y_sellers = -0.5 * x + 5 + np.random.randn(100)

# Create plot
plt.figure(figsize=(8, 6))
plt.plot(x, y_buyers, 'o', label='Buyers')
plt.plot(x, y_sellers, 'o', label='Sellers')
plt.xlabel('Time')
plt.ylabel('Stock Price')
plt.title('Buyer and Seller Interactions')
plt.grid(True)
plt.legend()

plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("The constant interaction between buyers and sellers, each acting according to their own motivations and predictions, is what drives the stock market. As you can see in this simplified graph, as buyers and sellers interact over time, the stock price fluctuates as a result of these interactions.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 🎬]
#v(40pt)
#only("1-")[
- Stock market: interaction of buyers and sellers 🤝
- Buyers: seek profits from rising values 📈
- Sellers: realize gains or prevent losses 📉
- Interactions drive market dynamics 📊
]
#only("1")[
#voiceover("To recap, the stock market operates through the constant interactions of buyers and sellers. Buyers hope to profit from rising stock values, while sellers aim to realize gains or prevent losses. These interactions, driven by each party's motivations, are what create the dynamic nature of the stock market.")
]
]