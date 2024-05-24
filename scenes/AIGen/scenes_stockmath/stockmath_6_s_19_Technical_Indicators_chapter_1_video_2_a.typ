#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Technical Indicators]
#v(40pt)
Which technical indicator is used to smooth out price data by creating a constantly updated average price?
#v(40pt)
#only("-1")[a) Moving Average]#only("2-")[#text(fill:green)[a) Moving Average]]
#v(10pt)
#only("-2")[b) RSI]#only("3-")[#text(fill:red)[b) RSI]]
#v(10pt)
#only("-3")[c) MACD]#only("4-")[#text(fill:red)[c) MACD]]
#v(10pt)
#only("-4")[d) Bollinger Bands]#only("5-")[#text(fill:red)[d) Bollinger Bands]]

#only("1")[#voiceover("Great job! You are absolutely correct.")]
#only("2")[#voiceover("The Moving Average is indeed the technical indicator that smooths out price data by creating a constantly updated average price.")]
#only("3")[#voiceover("The RSI, or Relative Strength Index, measures the magnitude of recent price changes to evaluate overbought or oversold conditions in the price of a stock or other asset. It does not smooth out price data.")]
#only("4")[#voiceover("The MACD, or Moving Average Convergence Divergence, is a trend-following momentum indicator that shows the relationship between two moving averages of a security's price. While it uses moving averages, its main purpose is not to smooth out price data.")]
#only("5")[#voiceover("Bollinger Bands are a technical analysis tool defined by a set of lines plotted two standard deviations away from a simple moving average of the security's price. They are used to measure market volatility, not to smooth out price data.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Moving Average]
#v(40pt)
#only("1-")[- Calculates the average price over a specific number of periods 📊]
#only("2-")[- "Smooths out" price data 📈]
#only("3-")[- Helps identify trends and potential reversals 🔍]
#only("4-")[- Types: Simple, Exponential, Weighted 🧮]

#only("1")[#voiceover("The Moving Average calculates the average price of a security over a specific number of periods.")]
#only("2")[#voiceover("By doing this, it 'smooths out' the price data, making it easier to identify the underlying trend.")]
#only("3")[#voiceover("Moving Averages help traders and analysts identify trends and potential trend reversals.")]
#only("4")[#voiceover("There are different types of Moving Averages, including Simple Moving Average, Exponential Moving Average, and Weighted Moving Average, each with its own calculation method.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

# Generate example data
data = pd.DataFrame({'Price': np.random.randint(50, 100, 30)})

# Calculate 5-day Simple Moving Average
data['SMA5'] = data['Price'].rolling(window=5).mean()

# Plot
plt.figure(figsize=(10, 6))
plt.plot(data['Price'], label='Price')
plt.plot(data['SMA5'], label='5-Day SMA', linewidth=2)
plt.legend()
plt.grid()
plt.title('Price and 5-Day Simple Moving Average')
plt.xlabel('Days')
plt.ylabel('Price')
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's an example of a 5-Day Simple Moving Average:]
#v(20pt)
#only("2-")[- The #text(fill:blue)[Price] is the actual price data.]
#only("3-")[- The #text(fill:orange)[5-Day SMA] is the average of the last 5 prices.]
#only("4-")[- Notice how the SMA "smooths out" the price fluctuations.]

#only("1")[#voiceover("Let's look at an example to see how a Moving Average smooths out price data.")]
#only("2")[#voiceover("The blue line represents the actual Price data over a period of time.")]
#only("3")[#voiceover("The orange line is the 5-Day Simple Moving Average, which is calculated by taking the average of the last 5 prices at each point.")]
#only("4")[#voiceover("As you can see, the Simple Moving Average line is much smoother than the actual Price line. It helps to identify the overall trend more clearly, even though it lags behind the actual price.")]
]