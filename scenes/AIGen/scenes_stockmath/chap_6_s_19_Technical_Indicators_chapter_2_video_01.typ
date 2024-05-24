#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Combining Technical Indicators]
#v(40pt)
#only("1-")[- Moving Averages (MA) 📈 identify trends]
#v(20pt)
#only("2-")[- Relative Strength Index (RSI) 💪 measures momentum]
#v(20pt)
#only("3-")[- Use together for more accurate signals 🎯]
#only("1")[
#voiceover("To make informed trading decisions, you can combine different technical indicators like Moving Averages, which help identify trends, and the Relative Strength Index, which measures momentum.")
]
#only("2")[
#voiceover("Moving Averages smooth out price data by creating a constantly updated average price over a specific time period. This helps to determine the direction of the trend.")
]
#only("3")[
#voiceover("The Relative Strength Index, on the other hand, measures the magnitude of recent price changes to evaluate overbought or oversold conditions in the price of a stock or other asset.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Moving Average Crossover]
#v(40pt)
#only("1-")[- Bullish crossover: Short-term MA crosses above long-term MA 📈]
#v(20pt)
#only("2-")[- Bearish crossover: Short-term MA crosses below long-term MA 📉]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate example data
x = np.arange(50)
y = np.random.randint(50, 80, 50)

# Calculate moving averages
ma_short = np.convolve(y, np.ones(10)/10, mode='valid')
ma_long = np.convolve(y, np.ones(20)/20, mode='valid')

# Create the plot
plt.figure(figsize=(6, 4))
plt.plot(y, label='Price')
plt.plot(ma_short, label='10-day MA')
plt.plot(ma_long, label='20-day MA')
plt.legend()
plt.title('Moving Average Crossover')
plt.xlabel('Time')
plt.ylabel('Price')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("A key signal is the Moving Average crossover. A bullish crossover occurs when the short-term Moving Average crosses above the long-term Moving Average, indicating a potential uptrend.")
]
#only("2")[
#voiceover("Conversely, a bearish crossover happens when the short-term Moving Average crosses below the long-term Moving Average, signaling a potential downtrend.")
]
#only("3")[
#voiceover("Here's an example of a Moving Average crossover. The blue line represents the price, the orange line is the short-term 10-day Moving Average, and the green line is the long-term 20-day Moving Average.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[RSI Overbought/Oversold]
#v(40pt)
#only("1-")[- RSI ranges from 0 to 100]
#v(20pt)
#only("2-")[- RSI > 70: Overbought 🔥]
#v(20pt)
#only("3-")[- RSI < 30: Oversold 🧊]
#only("1")[
#voiceover("The RSI oscillates between zero and 100.")
]
#only("2")[
#voiceover("Traditionally, an RSI reading above 70 is considered overbought, meaning the asset may be overvalued and is a good candidate for a pullback.")
]
#only("3")[
#voiceover("Likewise, an RSI below 30 is considered oversold, indicating the asset may be undervalued and potentially poised for a rally.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Combining MA and RSI]
#v(40pt)
#only("1-")[- Bullish signal 📈: Bullish MA crossover + RSI < 30]
#v(20pt)
#only("2-")[- Bearish signal 📉: Bearish MA crossover + RSI > 70]
#v(20pt)
#only("3-")[- Confirmation 🔍: MA and RSI align]
#only("1")[
#voiceover("By combining Moving Averages and RSI, you can generate more reliable trading signals. For example, a bullish signal could be a bullish Moving Average crossover that occurs when the RSI is below 30, indicating a potentially oversold condition.")
]
#only("2")[
#voiceover("On the flip side, a bearish signal might be a bearish Moving Average crossover that happens when the RSI is above 70, suggesting an overbought condition.")
]
#only("3")[
#voiceover("When the Moving Averages and RSI align, it provides a stronger confirmation of the potential trend reversal. However, it's important to remember that no indicator is perfect, and traders should always consider risk management and other market factors.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Moving Averages identify trends 📈]
#v(20pt)
#only("2-")[- RSI measures momentum 💪]
#v(20pt)
#only("3-")[- Combine for more accurate signals 🎯]
#v(20pt)
#only("4-")[- Consider risk management and other factors 📊]
#only("1")[
#voiceover("To recap, Moving Averages help identify trends by smoothing out price data and creating a constantly updated average price.")
]
#only("2")[
#voiceover("The Relative Strength Index measures the magnitude of recent price changes to determine overbought or oversold conditions.")
]
#only("3")[
#voiceover("By combining these two indicators, traders can generate more accurate and reliable trading signals.")
]
#only("4")[
#voiceover("However, it's crucial to always consider risk management and other market factors when making trading decisions.")
]
]