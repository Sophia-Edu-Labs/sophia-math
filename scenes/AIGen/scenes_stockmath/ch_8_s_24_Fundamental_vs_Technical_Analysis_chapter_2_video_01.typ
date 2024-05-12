#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Technical Analysis]
#v(40pt)
#only("1-")[- Predicts future stock prices 📈]
#v(20pt)
#only("2-")[- Uses statistical tools 🧰]
#only("1")[
#voiceover("Technical Analysis is a method used to predict future stock prices.")
]
#only("2")[
#voiceover("It employs various statistical tools to analyze market data and identify trends.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Moving Averages]
#v(40pt)
#only("1-")[- Smooths out price data 📊]
#v(20pt)
#only("2-")[- Identifies trends 📉📈]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate sample price data
np.random.seed(0)
prices = np.random.randint(50, 100, 50)

# Calculate moving average
window = 10
moving_avg = np.convolve(prices, np.ones(window), 'valid') / window

# Plot the data
plt.figure(figsize=(8, 4))
plt.plot(prices, label='Price')
plt.plot(range(window-1, len(prices)), moving_avg, label=f'{window}-Day Moving Average')
plt.xlabel('Time')
plt.ylabel('Price')
plt.legend()
plt.grid(True)
plt.show()
```, width: 360pt),
)
]
]
#only("1")[
#voiceover("One commonly used tool is Moving Averages. It smooths out the price data over a certain period.")
]
#only("2")[
#voiceover("This helps to identify the underlying trend, whether the price is moving up or down.")
]
#only("3")[
#voiceover("Here's an example of a stock price with its 10-day moving average. The moving average line clearly shows the overall trend.")
]
]]

#slide()[
#text(size: 30pt, weight: "bold")[Relative Strength Index (RSI)]
#v(40pt)
#only("1-")[- Momentum indicator 📌]
#v(20pt)
#only("2-")[- Measures speed and change of price movements 🏎️]
#v(20pt)
#only("3-")[- Ranges from 0 to 100]
#v(20pt)
#only("4-")[- RSI > 70: Overbought 🔴]
#v(20pt)
#only("5-")[- RSI < 30: Oversold 🟢]
#only("1")[
#voiceover("Another popular tool is the Relative Strength Index, or RSI. It's a momentum indicator.")
]
#only("2")[
#voiceover("RSI measures the speed and change of price movements.")
]
#only("3")[
#voiceover("It ranges from 0 to 100.")
]
#only("4")[
#voiceover("An RSI above 70 suggests that a stock may be overbought and likely to fall.")
]
#only("5")[
#voiceover("While an RSI below 30 indicates that it may be oversold and likely to rise.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Technical Analysis predicts future stock prices 🔮]
#v(20pt)
#only("2-")[- Uses statistical tools like Moving Averages and RSI 📊]
#v(20pt)
#only("3-")[- Identifies trends and momentum 📈📉]
#only("1")[
#voiceover("In summary, Technical Analysis aims to predict future stock prices.")
]
#only("2")[
#voiceover("It uses statistical tools like Moving Averages and the Relative Strength Index.")
]
#only("3")[
#voiceover("These tools help to identify trends and gauge the momentum of price movements, providing insights for making trading decisions.")
]
]