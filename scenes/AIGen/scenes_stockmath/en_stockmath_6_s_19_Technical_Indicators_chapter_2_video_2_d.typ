#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Moving Average Crossover + RSI]
#v(40pt)
#only("1-")[Combining a Moving Average crossover with RSI readings can help traders identify:]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) Entry and exit points]#only("2-")[#text(fill:green)[a) Entry and exit points]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Economic conditions]#only("3-")[#text(fill:red)[b) Economic conditions]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Company performance]#only("4-")[#text(fill:red)[c) Company performance]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Interest rate impacts]#only("5-")[#text(fill:red)[d) Interest rate impacts]]
#v(40pt)

#only("1")[#voiceover("Unfortunately, that's not correct. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a) is correct. Combining a Moving Average crossover with RSI readings can indeed help traders identify good entry and exit points for trades.")]
#only("3")[#voiceover("Option b) Economic conditions is incorrect. While economic conditions are important for trading, the specific combination of MA crossover and RSI is more about timing entries and exits, not assessing the overall economy.")]
#only("4")[#voiceover("Option c) Company performance is also incorrect. MA crossover and RSI are technical indicators that look at price action, not fundamental factors like a company's financial performance.")]
#only("5")[#voiceover("And option d) Interest rate impacts is incorrect as well. Interest rates can affect markets but are not directly related to the signals given by MA crossover and RSI.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[How It Works]
#v(40pt)
#only("1-")[
- Moving Average (MA) crossover:
  - Bullish signal when short-term MA crosses above long-term MA 📈
  - Bearish signal when short-term MA crosses below long-term MA 📉
]
#v(20pt)
#only("2-")[  
- Relative Strength Index (RSI):
  - Momentum oscillator ranging from 0 to 100
  - Above 70 = overbought 🔴
  - Below 30 = oversold 🟢
]

#only("1")[#voiceover("A Moving Average crossover occurs when a short-term MA, like the 50-day, crosses above or below a long-term MA, like the 200-day. A cross above is typically a bullish signal, while a cross below is bearish.")]
#only("2")[#voiceover("The RSI is a momentum oscillator that ranges from 0 to 100. Readings above 70 suggest the asset is overbought, while readings below 30 suggest it's oversold.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[How It Works (cont.)]
#v(40pt)
#only("1-")[
- Combining MA crossover & RSI:
  - Enter long when bullish crossover & RSI < 70
  - Enter short when bearish crossover & RSI > 30
  - Exit when opposite crossover occurs or RSI hits overbought/oversold extremes
]

#only("1")[#voiceover("By combining these, traders often look to enter long positions when there's a bullish MA crossover and the RSI is below 70, showing upward momentum but not yet overbought. Conversely, they may enter short positions on bearish crossovers when RSI is above 30. Exits are typically signaled by the opposite type of crossover occurring, or by RSI reaching overbought or oversold extremes.")]
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

# Create sample data
data = pd.DataFrame({
    'Price': [50, 52, 54, 53, 55, 58, 60, 61, 63, 65, 64, 62, 63, 65, 64, 62, 60, 58, 57, 59],
    'MA50': [np.nan]*10 + [56, 57, 58, 59, 60, 61, 62, 63, 62, 61],
    'MA200': [np.nan]*10 + [54, 55, 56, 57, 58, 59, 60, 61, 62, 63],
    'RSI': [np.nan]*10 + [75, 70, 65, 70, 80, 75, 70, 60, 50, 40]
}, index=range(20))

# Plot price and moving averages
fig, ax1 = plt.subplots(figsize=(10, 6))
ax1.plot(data['Price'], label='Price')
ax1.plot(data['MA50'], label='50-day MA')
ax1.plot(data['MA200'], label='200-day MA')
ax1.set_ylabel('Price')
ax1.legend(loc='upper left')
ax1.grid()

# Plot RSI
ax2 = ax1.twinx()
ax2.plot(data['RSI'], color='purple', label='RSI')
ax2.set_ylabel('RSI')
ax2.axhline(70, color='red', linestyle='--')
ax2.axhline(30, color='green', linestyle='--')
ax2.legend(loc='upper right')

# Annotate entry and exit points
ax1.annotate('Enter Long', xy=(14, 63), xytext=(14, 67), 
             arrowprops=dict(facecolor='green', shrink=0.05))
ax1.annotate('Exit Long', xy=(18, 57), xytext=(18, 53),
             arrowprops=dict(facecolor='red', shrink=0.05))

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[
- Price crosses above 50-day MA while RSI < 70 ⏰ Enter long
]
#v(10pt)
#only("2-")[
- Price crosses below 50-day MA while RSI > 30 🚨 Exit long
]
#v(40pt)
#only("1")[#voiceover("In this example, we see the price crossing above its 50-day Moving Average while the RSI is below 70. This is a bullish signal and could be a good point to enter a long position.")]
#only("2")[#voiceover("Later, the price crosses back below the 50-day MA while the RSI is above 30. This is a bearish signal and could indicate it's time to exit the long position. This is just one example, but it illustrates how combining MA crossovers with RSI can help identify potential trade entry and exit points.")]
]