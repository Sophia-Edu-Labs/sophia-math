#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Trading and Math]
#v(40pt)
What role does mathematics play in stock trading?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Predicting weather]#only("2-")[#text(fill:red)[a) Predicting weather]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Designing clothes]#only("3-")[#text(fill:red)[b) Designing clothes]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Analyzing stock prices]#only("4-")[#text(fill:green)[c) Analyzing stock prices]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Cooking recipes]#only("5-")[#text(fill:red)[d) Cooking recipes]]

#only("1")[#voiceover("That's okay, let's take a look at the correct solution.")]
#only("2")[#voiceover("Predicting weather is not the primary role of mathematics in stock trading. While weather can influence certain stocks, it's not the main focus of mathematical analysis in trading.")]
#only("3")[#voiceover("Designing clothes is also not a key role of mathematics in stock trading. Fashion trends might impact some retail stocks, but it's not a central application of math in trading.")]
#only("4")[#voiceover("Analyzing stock prices is indeed the main role of mathematics in trading. Traders use various mathematical and statistical tools to analyze historical prices, identify trends, and make predictions.")]
#only("5")[#voiceover("Cooking recipes, while involving some math for measurements, is not related to the mathematical analysis used in stock trading.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Math in Stock Trading]
#v(40pt)
#only("1-")[Mathematics is crucial in stock trading for:]
#v(20pt)
#only("2-")[- Analyzing historical price data 📈]
#only("3-")[- Identifying trends and patterns 🔍]
#only("4-")[- Calculating risk and return 🎲]
#only("5-")[- Developing trading strategies 🧠]
#only("6-")[- Automating trades with algorithms 🤖]

#only("1")[#voiceover("Let's explore how mathematics is used in stock trading in more detail.")]
#only("2")[#voiceover("Traders use mathematical tools to analyze historical stock price data. This helps them understand how a stock has performed over time.")]
#only("3")[#voiceover("By applying statistical techniques, traders can identify trends and patterns in the price data. This can provide insights into potential future movements.")]
#only("4")[#voiceover("Mathematics is used to calculate key metrics like risk and potential return. This helps traders assess the potential profitability and downside of a trade.")]
#only("5")[#voiceover("Traders develop strategies based on mathematical models. These models can consider various factors and help guide trading decisions.")]
#only("6")[#voiceover("Advanced traders often use algorithms that automatically execute trades based on predefined mathematical rules. This is known as algorithmic trading.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Moving Average]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate example stock price data
np.random.seed(0)
price_data = np.random.normal(100, 5, 200).cumsum()

# Calculate 20-day moving average
window = 20
moving_average = np.convolve(price_data, np.ones(window), 'valid') / window

# Plot the data and moving average
plt.figure(figsize=(8, 6))
plt.plot(price_data, label='Price Data')
plt.plot(range(window-1, len(price_data)), moving_average, label='20-Day Moving Average')
plt.legend(loc='upper left')
plt.title('Stock Price with Moving Average')
plt.xlabel('Time')
plt.ylabel('Price')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[One common mathematical tool in trading is the #text(weight: "bold")[moving average].]
#v(20pt)
#only("2-")[- Calculates the average price over a specified period 📅]
#only("3-")[- Smooths out short-term fluctuations 📉📈]
#only("4-")[- Helps identify trends: uptrend if price > average, downtrend if price < average 📈📉]

#only("1")[#voiceover("Let's look at a specific example of how math is used in trading: the moving average.")]
#only("2")[#voiceover("A moving average calculates the average price of a stock over a specified number of days, like 20 or 50 days.")]
#only("3")[#voiceover("By averaging prices, it smooths out short-term price fluctuations, providing a clearer view of the underlying trend.")]
#only("4")[#voiceover("Traders often use moving averages to identify trends. If the current price is above the moving average, it may indicate an uptrend. If the price is below, it could signal a downtrend.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Mathematics plays a key role in analyzing stock prices 📈🔍]
#v(20pt)
#only("2-")[- Traders use math to:]
  #only("3-")[- Analyze historical data 📊]
  #only("4-")[- Identify trends 📈]
  #only("5-")[- Calculate risk and return 🎲💰]
  #only("6-")[- Develop trading strategies 🧠]
#v(20pt)
#only("7-")[- Moving averages are one example of math in action 📅📉📈]

#only("1")[#voiceover("To summarize, mathematics is essential in stock trading for analyzing prices.")]
#only("2")[#voiceover("Traders rely on various mathematical tools and techniques to:")]
#only("3")[#voiceover("analyze historical price data,")]
#only("4")[#voiceover("identify trends and patterns,")]
#only("5")[#voiceover("calculate risk and potential returns,")]
#only("6")[#voiceover("and develop trading strategies.")]
#only("7")[#voiceover("The moving average is just one example of how math is applied in the world of stock trading to make informed decisions.")]
]