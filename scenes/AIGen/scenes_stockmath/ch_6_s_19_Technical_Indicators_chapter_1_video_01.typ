#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Moving Averages 📈]
#v(40pt)
#only("1-")[- Smooth out price data]
#v(20pt)
#only("2-")[- Identify trends 📉📈]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate sample price data
x = np.arange(50)
y = np.random.randint(50, 80, 50)

# Calculate moving average
window = 10
weights = np.repeat(1.0, window)/window
ma = np.convolve(y, weights, 'valid')

# Plot price data and moving average
plt.figure(figsize=(8, 4))
plt.plot(x, y, label='Price')
plt.plot(x[window-1:], ma, label=f'{window}-Day MA', linewidth=2)
plt.legend()
plt.title('Moving Average')
plt.xlabel('Time')
plt.ylabel('Price')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Moving averages are a popular technical indicator used to smooth out price data.")
]
#only("2")[
#voiceover("By creating a constantly updated average price, they help identify trends in the market.")
]
#only("3")[
#voiceover("Here's an example of a 10-day moving average plotted against the price data. The moving average line helps visualize the overall trend.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Relative Strength Index (RSI) 💪]
#v(40pt)
#only("1-")[- Momentum oscillator]
#v(20pt)
#only("2-")[- Ranges from 0 to 100]
#v(20pt)
#only("3-")[- Overbought 📈 > 70]
#v(20pt)
#only("4-")[- Oversold 📉 < 30]
#v(20pt)
#only("5-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate sample RSI data
x = np.arange(50)
rsi = np.random.randint(20, 80, 50)

# Plot RSI data with overbought/oversold lines
plt.figure(figsize=(8, 4))
plt.plot(x, rsi, label='RSI')
plt.axhline(70, color='r', linestyle='--', label='Overbought')
plt.axhline(30, color='g', linestyle='--', label='Oversold')
plt.legend()
plt.title('Relative Strength Index (RSI)')
plt.xlabel('Time')
plt.ylabel('RSI')
plt.ylim(0, 100)
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("The Relative Strength Index, or RSI, is a momentum oscillator that measures the speed and change of price movements.")
]
#only("2")[
#voiceover("RSI ranges from 0 to 100.")
]
#only("3")[
#voiceover("A reading above 70 is generally considered overbought,")
]
#only("4")[
#voiceover("while a reading below 30 is considered oversold.")
]
#only("5")[
#voiceover("In this example, you can see the RSI plotted over time, with the overbought and oversold levels marked. Traders watch for these levels and crossovers to identify potential trend reversals.")
]
]]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Moving Averages smooth price data to identify trends 📈]
#v(20pt)
#only("2-")[- RSI measures momentum, indicating overbought/oversold conditions 📊]
#v(20pt)
#only("3-")[- Both are used to make informed trading decisions 💡]
#only("1")[
#voiceover("To recap, moving averages smooth out price data to help identify the direction of the trend.")
]
#only("2")[
#voiceover("RSI, on the other hand, measures momentum and can indicate when a stock is overbought or oversold.")
]
#only("3")[
#voiceover("Traders use these and other technical indicators to make more informed decisions about when to enter or exit trades based on the current market conditions.")
]
]