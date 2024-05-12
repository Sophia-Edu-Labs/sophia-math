#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the importance of mathematics in stock trading.")
]
#text(size: 30pt, weight: "bold")[Mathematics in Trading]
#v(40pt)
#only("2-")[
- 📈 Analyzing stock prices
]
#only("2")[
#voiceover("Mathematics plays a crucial role in analyzing stock prices. Traders use various mathematical tools and models to understand price movements and patterns.")
]
#v(20pt)
#only("3-")[
- 🔮 Predicting market trends  
]
#only("3")[
#voiceover("Mathematical techniques help traders predict future market trends. By analyzing historical data and applying statistical models, traders can make informed predictions about where the market might be heading.")
]
#v(20pt)
#only("4-")[
- 📊 Data-driven decisions
]
#only("4")[
#voiceover("Mathematics enables traders to make data-driven decisions. By quantifying risk, calculating potential returns, and optimizing portfolios, traders can make more objective and informed choices.")
]
#v(20pt)
#only("5-")[
- 💰 Optimizing profits
]
#only("5")[
#voiceover("Ultimately, the goal of using mathematics in trading is to optimize profits. By leveraging mathematical insights, traders can identify profitable opportunities, manage risk effectively, and maximize their returns.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[
- Mathematics is essential for analyzing stock prices, predicting market trends, and making data-driven decisions in trading.
]
#only("1")[
#voiceover("In summary, mathematics is an essential tool for traders. It allows them to analyze stock prices, predict market trends, and make data-driven decisions.")
]
#v(20pt)
#only("2-")[
- Traders use various mathematical tools, models, and techniques to gain insights and optimize their strategies.
]
#only("2")[
#voiceover("Traders rely on a wide range of mathematical tools, models, and techniques to gain insights into the market and optimize their trading strategies.")
]
#v(20pt)
#only("3-")[
- The ultimate goal is to maximize profits while managing risk effectively.
]
#only("3")[
#voiceover("The ultimate goal of using mathematics in trading is to maximize profits while effectively managing risk.")
]
#v(20pt)
#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.linspace(0, 10, 100)
y = 0.5 * x + np.random.randn(100)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, y, 'o', label='Stock Prices')
plt.plot(x, 0.5 * x, 'r-', label='Trend Line')
plt.xlabel('Time')
plt.ylabel('Price')
plt.title('Stock Price Analysis')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]
#only("4")[
#voiceover("Here's a simple example of using mathematics in trading. The scatter plot represents stock prices over time, while the red line represents the trend predicted by a mathematical model. By analyzing such trends, traders can make informed decisions about buying or selling stocks.")
]
]