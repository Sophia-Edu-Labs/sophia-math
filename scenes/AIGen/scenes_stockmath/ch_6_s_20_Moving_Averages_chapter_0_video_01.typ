#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Moving Averages 📈]
#v(40pt)
#only("1-")[- Smooth out price data 🌊]
#v(20pt)
#only("2-")[- Create a single flowing line 📉]
#v(20pt)
#only("3-")[- Easier to identify trend direction 🧭]
#only("1")[
#voiceover("Moving averages are a popular tool used in financial analysis to smooth out price data over a specific time period.")
]
#only("2")[
#voiceover("By calculating the average price over a set number of periods, moving averages create a single flowing line that represents the average price movement.")
]
#only("3")[
#voiceover("This smoothing effect makes it easier for traders and analysts to identify the overall trend direction of the stock price, whether it's moving upwards, downwards, or sideways.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: 5-Day Moving Average]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate sample price data
np.random.seed(0)
prices = np.random.randint(50, 70, 30)

# Calculate 5-day moving average
ma_5 = np.convolve(prices, np.ones(5), 'valid') / 5

# Plot the data
plt.figure(figsize=(8, 5))
plt.plot(prices, label='Price Data', alpha=0.7)
plt.plot(np.arange(2, len(ma_5) + 2), ma_5, label='5-Day Moving Average', linewidth=2)
plt.legend()
plt.title('5-Day Moving Average Example')
plt.xlabel('Time')
plt.ylabel('Price')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's look at an example. Here we have a chart showing a stock's price data over a period of time. The blue line represents the actual price data, which is quite volatile and noisy.")
]
#only("2")[
#voiceover("Now, let's add a 5-day moving average to this chart. To calculate this, we take the average of the stock's closing price over the past 5 trading days.")
]
#only("3")[
#voiceover("As you can see, the red line representing the 5-day moving average is much smoother than the actual price data. It provides a clearer picture of the stock's price trend over time, making it easier to determine if the stock is trending upwards, downwards, or sideways.")
]
]]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Moving averages smooth price data 🌊]
#v(20pt)
#only("2-")[- Easier to identify trend direction 🧭]
#v(20pt)
#only("3-")[- Commonly used in financial analysis 📊]
#only("1")[
#voiceover("To recap, moving averages are a powerful tool for smoothing out price data and creating a clearer picture of a stock's trend.")
]
#only("2")[
#voiceover("By making it easier to identify the overall trend direction, moving averages help traders and analysts make more informed decisions about when to buy, hold, or sell a stock.")
]
#only("3")[
#voiceover("This is why moving averages are commonly used in financial analysis and are an important concept for any investor or trader to understand.")
]
]