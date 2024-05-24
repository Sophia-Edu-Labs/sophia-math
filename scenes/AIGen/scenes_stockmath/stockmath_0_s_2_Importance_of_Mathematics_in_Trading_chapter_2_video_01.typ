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
#only("1")[
#voiceover("Mathematics plays a crucial role in stock trading. It helps traders analyze stock prices by providing tools to identify patterns, trends, and potential opportunities.")
]
#v(20pt)
#only("2-")[- Predicting market trends 🔮]
#only("2")[
#voiceover("Mathematical models and statistical analysis enable traders to predict market trends. By studying historical data and applying mathematical techniques, traders can make informed guesses about future price movements.")
]
#v(20pt)
#only("3-")[- Making informed decisions 🧠]
#only("3")[
#voiceover("Ultimately, mathematics empowers traders to make informed decisions. By quantifying risk, calculating potential returns, and optimizing portfolios, traders can devise strategies to maximize profits and minimize losses.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Mathematical Concepts]
#v(40pt)
#only("1-")[- Statistical analysis 📉]
#only("1")[
#voiceover("Some key mathematical concepts used in stock trading include statistical analysis, which involves studying historical price data to identify patterns and trends.")
]
#v(20pt)
#only("2-")[- Probability theory 🎲]
#only("2")[
#voiceover("Probability theory helps traders assess the likelihood of certain events occurring, such as a stock price reaching a specific target.")
]
#v(20pt)
#only("3-")[- Optimization techniques 🎯]
#only("3")[
#voiceover("Optimization techniques are used to determine the best trading strategies and portfolio allocations based on various constraints and objectives.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Moving Averages]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate sample stock price data
days = np.arange(1, 31)
prices = np.random.normal(100, 5, 30)

# Calculate moving averages
ma_5 = np.convolve(prices, np.ones(5), 'valid') / 5
ma_10 = np.convolve(prices, np.ones(10), 'valid') / 10

# Create the plot
plt.figure(figsize=(8, 5))
plt.plot(days, prices, label='Stock Price')
plt.plot(days[4:], ma_5, label='5-Day Moving Average')
plt.plot(days[9:], ma_10, label='10-Day Moving Average')
plt.xlabel('Day')
plt.ylabel('Price')
plt.title('Stock Price and Moving Averages')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("One common mathematical technique used in stock trading is moving averages. Moving averages smooth out price data and help identify trends. For example, a 5-day moving average calculates the average price over the past 5 days, while a 10-day moving average considers the past 10 days.")
]
#v(20pt)
#only("2-")[- Identify trends 📈]
#only("2")[
#voiceover("When the shorter-term moving average crosses above the longer-term moving average, it may indicate an upward trend, signaling a potential buying opportunity. Conversely, when the shorter-term moving average falls below the longer-term moving average, it may suggest a downward trend, indicating a potential selling opportunity.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- Mathematics is essential in stock trading 🔑]
#only("1")[
#voiceover("In conclusion, mathematics is an essential tool in stock trading.")
]
#v(20pt)
#only("2-")[- Helps analyze prices, predict trends, and make decisions 📊🔮🧠]
#only("2")[
#voiceover("It helps traders analyze stock prices, predict market trends, and make informed decisions.")
]
#v(20pt)
#only("3-")[- Empowers traders to optimize strategies and maximize profits 💰]
#only("3")[
#voiceover("By leveraging mathematical concepts and techniques, traders can optimize their strategies, manage risk, and maximize their potential profits in the dynamic world of stock trading.")
]
]