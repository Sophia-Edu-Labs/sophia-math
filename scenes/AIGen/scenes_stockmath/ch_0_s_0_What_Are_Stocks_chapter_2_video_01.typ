#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mathematics in Stock Trading 📈]
#v(40pt)
#only("1-")[- Analyzing stock prices 📊]
#v(20pt)
#only("2-")[- Predicting trends 🔮]
#v(20pt)
#only("3-")[- Making informed decisions 🧠]
#only("1")[
#voiceover("Mathematics plays a crucial role in stock trading. It helps traders analyze stock prices by providing tools to understand patterns and relationships in the data.")
]
#only("2")[
#voiceover("Mathematical models and techniques also enable traders to predict future trends in stock prices based on historical data and various factors influencing the market.")
]
#only("3")[
#voiceover("By leveraging mathematical insights, traders can make more informed decisions about when to buy, hold, or sell stocks.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mathematical Tools 🧰]
#v(40pt)
#only("1-")[- Statistical analysis 📋]
#v(20pt)
#only("2-")[- Technical indicators 📉]
#v(20pt)
#only("3-")[- Algorithmic trading 🤖]
#only("1")[
#voiceover("Traders use various mathematical tools to analyze stock data. Statistical analysis helps them understand the distribution and volatility of stock prices.")
]
#only("2")[
#voiceover("Technical indicators, such as moving averages and relative strength index, provide mathematical formulas to identify trends and potential buy or sell signals.")
]
#only("3")[
#voiceover("Algorithmic trading involves using mathematical models to automate trading decisions based on predefined rules and market conditions.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Moving Average 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate example stock price data
x = np.arange(30)
prices = np.random.randint(50, 100, 30)

# Calculate moving average
window = 5
moving_avg = np.convolve(prices, np.ones(window), 'valid') / window

# Create the plot
plt.figure(figsize=(8, 5))
plt.plot(x, prices, label='Stock Price')
plt.plot(x[window-1:], moving_avg, label=f'{window}-Day Moving Average', linewidth=2)
plt.xlabel('Time')
plt.ylabel('Price')
plt.title('Stock Price with Moving Average')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("One common mathematical tool used by traders is the moving average. It smooths out price fluctuations and helps identify trends.")
]
#only("2")[
#voiceover("The moving average is calculated by taking the average price over a specific number of periods, such as 5 days or 20 days.")
]
#only("3")[
#voiceover("When the stock price is above the moving average, it may indicate an upward trend, while a price below the moving average may suggest a downward trend.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Mathematics is essential for stock trading 💡]
#v(20pt)
#only("2-")[- Traders use mathematical tools to analyze data and predict trends 📊]
#v(20pt)
#only("3-")[- Mathematical insights inform trading decisions 💰]
#only("1")[
#voiceover("In summary, mathematics is an essential tool for stock traders.")
]
#only("2")[
#voiceover("By utilizing mathematical tools and techniques, traders can analyze stock data, identify patterns, and predict future trends.")
]
#only("3")[
#voiceover("These mathematical insights enable traders to make more informed decisions and potentially improve their trading performance.")
]
]