#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap: Combining Technical Indicators]

#v(40pt)

#only("1-")[- Moving Averages 📈 for trend direction]
#v(20pt)
#only("2-")[- RSI 📊 for momentum]
#v(20pt)
#only("3-")[- Combine indicators for optimal trading decisions 🎯]

#only("1")[
#voiceover("In this chapter, we learned about using multiple technical indicators together to make more accurate trading decisions. Moving Averages are used to identify the direction of the trend.")
]

#only("2")[
#voiceover("While the Relative Strength Index, or RSI, is used to gauge the momentum of the stock price.")
]

#only("3")[
#voiceover("By combining these indicators, such as using Moving Averages to determine the trend and RSI to identify overbought or oversold conditions, traders can more precisely determine the optimal points to enter or exit trades.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Moving Average Crossover with RSI]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate example data
x = np.arange(50)
y = np.random.randint(50, 80, 50)
ma_short = np.convolve(y, np.ones(10)/10, mode='valid')
ma_long = np.convolve(y, np.ones(20)/20, mode='valid')

# Create the plot
fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(8, 6), gridspec_kw={'height_ratios': [3, 1]})

# Plot price and moving averages
ax1.plot(x, y, label='Price')
ax1.plot(x[9:], ma_short, label='10-day MA')
ax1.plot(x[19:], ma_long, label='20-day MA')
ax1.legend(loc='upper left')
ax1.set_ylabel('Price')

# Generate and plot example RSI data
rsi = np.random.randint(20, 80, 50)
ax2.plot(x, rsi)
ax2.axhline(30, color='r', linestyle='--', label='Oversold')
ax2.axhline(70, color='r', linestyle='--', label='Overbought')
ax2.set_ylabel('RSI')
ax2.set_xlabel('Time')
ax2.legend(loc='upper left')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here's an example of combining a Moving Average crossover with RSI. The top chart shows the price action with a short-term and long-term Moving Average. A crossover of these averages can signal a trend change.")
]

#only("2")[
#voiceover("The bottom chart shows the RSI. When the RSI is above 70, it suggests the stock may be overbought. When it's below 30, it suggests the stock may be oversold.")
]

#only("3")[
#voiceover("A trader might look for a buy signal when the short-term Moving Average crosses above the long-term Moving Average, and the RSI is below 30, indicating a potential trend change and an oversold condition.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]

#v(40pt)

#only("1-")[- Combine indicators for a more comprehensive view 🔍]
#v(20pt)
#only("2-")[- Moving Averages for trend, RSI for momentum 🌊]
#v(20pt)
#only("3-")[- Look for confirmations between indicators ✅]
#v(20pt)
#only("4-")[- Practice and develop your own strategies 💡]

#only("1")[
#voiceover("The key takeaway is that combining different technical indicators can provide a more comprehensive view of the market.")
]

#only("2")[
#voiceover("Moving Averages are good for identifying trends, while oscillators like RSI are good for identifying momentum.")
]

#only("3")[
#voiceover("Look for confirmations between indicators before making a trade. For example, a Moving Average crossover in the direction of the trend, confirmed by an RSI reading out of overbought or oversold territory.")
]

#only("4")[
#voiceover("And finally, practice using these indicators together and develop your own strategies that work for you. Technical analysis is as much an art as it is a science.")
]
]