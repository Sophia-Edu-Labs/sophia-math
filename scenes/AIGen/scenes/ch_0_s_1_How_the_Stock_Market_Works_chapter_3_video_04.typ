#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the key points about how stock prices are determined.")
]
#text(size: 30pt, weight: "bold")[Stock Price Fluctuations 📈📉]
#v(40pt)
#only("2")[
#voiceover("Stock prices are primarily determined by the laws of supply and demand in the market.")
]
#only("2-")[- Driven by supply and demand 🔍]
#v(20pt)
#only("3")[
#voiceover("When demand for a stock is high and supply is low, the price tends to increase. Conversely, when supply is high and demand is low, the price tends to decrease.")
]
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Demand curve
demand_x = np.linspace(0, 10, 100)
demand_y = 10 - demand_x

# Supply curve
supply_x = np.linspace(0, 10, 100)
supply_y = supply_x

# Equilibrium point
eq_x = 5
eq_y = 5

# Plot the curves
plt.figure(figsize=(6, 6))
plt.plot(demand_x, demand_y, label='Demand', color='blue')
plt.plot(supply_x, supply_y, label='Supply', color='red')
plt.scatter(eq_x, eq_y, color='green', s=100, label='Equilibrium')

# Labels and title
plt.xlabel('Quantity')
plt.ylabel('Price')
plt.title('Supply and Demand')
plt.legend()

# Show the plot
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
#v(20pt)
#only("4")[
#voiceover("Stock prices are influenced by various factors, including company performance, economic conditions, and investor sentiment.")
]
#only("4-")[- Influenced by 🏭 Company Performance, 💰 Economic Conditions, 😊 Investor Sentiment]
#v(20pt)
#only("5")[
#voiceover("For example, strong company earnings or positive economic news can boost investor confidence and drive up stock prices. On the other hand, weak company performance or economic downturns can lead to declining stock prices.")
]
#only("5-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Stock price data
days = np.arange(1, 31)
prices = [100, 102, 105, 103, 108, 110, 112, 115, 118, 120,
          122, 125, 127, 130, 128, 132, 135, 138, 140, 142,
          145, 143, 146, 148, 150, 152, 155, 153, 156, 158]

# Positive news
positive_news_day = 10
positive_news_price = prices[positive_news_day - 1]

# Negative news
negative_news_day = 22
negative_news_price = prices[negative_news_day - 1]

# Plot the stock price over time
plt.figure(figsize=(10, 6))
plt.plot(days, prices, marker='o', linestyle='-', color='blue')

# Highlight positive news
plt.scatter(positive_news_day, positive_news_price, color='green', s=100, label='Positive News')
plt.annotate('Positive News', xy=(positive_news_day, positive_news_price),
             xytext=(positive_news_day + 1, positive_news_price + 5),
             arrowprops=dict(facecolor='green', shrink=0.05))

# Highlight negative news
plt.scatter(negative_news_day, negative_news_price, color='red', s=100, label='Negative News')
plt.annotate('Negative News', xy=(negative_news_day, negative_news_price),
             xytext=(negative_news_day - 5, negative_news_price - 10),
             arrowprops=dict(facecolor='red', shrink=0.05))

# Labels and title
plt.xlabel('Day')
plt.ylabel('Stock Price')
plt.title('Stock Price Fluctuations')
plt.legend()

# Show the plot
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
#v(20pt)
#only("6")[
#voiceover("Understanding these factors and their impact on stock prices is crucial for investors to make informed decisions.")
]
#only("6-")[➡️ Understanding these factors is crucial for informed investing decisions 🧠💡]
]]]

#slide()[
#only("1")[
#voiceover("In summary, stock prices are determined by the interaction of supply and demand in the market.")
]
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("2")[
#voiceover("They are influenced by a range of factors, including company performance, economic conditions, and investor sentiment.")
]
#only("1-")[- Stock prices determined by supply and demand 📊]
#v(20pt)
#only("2-")[- Influenced by company performance, economic conditions, investor sentiment 🌿]
#v(20pt)
#only("3")[
#voiceover("Investors should stay informed about these factors and understand their potential impact on stock prices to make well-informed investment decisions.")
]
#only("3-")[- Stay informed to make smart investing choices 📚🧠]
]