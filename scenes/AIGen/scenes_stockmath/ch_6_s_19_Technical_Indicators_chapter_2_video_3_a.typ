#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Trading Signal]
#v(40pt)
#only("1-")[A trader observes a Moving Average crossover and an RSI reading below 30. This most likely indicates a potential:]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) Buy signal]#only("2-")[#text(fill:green)[a) Buy signal]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Sell signal]#only("3-")[#text(fill:red)[b) Sell signal]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Hold position]#only("4-")[#text(fill:red)[c) Hold position]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Price drop]#only("5-")[#text(fill:red)[d) Price drop]]
#v(40pt)

#only("1")[#voiceover("That's absolutely right! Great job identifying the correct trading signal. Let's break down why this is a buy signal.")]
#only("2")[#voiceover("a) Buy signal is correct. A Moving Average crossover, especially when the shorter-term MA crosses above the longer-term MA, is often seen as a bullish sign. Coupled with an RSI below 30, which typically indicates an oversold condition, this strongly points to a potential buy opportunity.")]
#only("3")[#voiceover("b) Sell signal is incorrect. A sell signal would typically be indicated by the opposite conditions - the shorter-term MA crossing below the longer-term MA, and an RSI above 70, signaling an overbought condition.")]
#only("4")[#voiceover("c) Hold position is also incorrect. The conditions described point to a change in the trend and momentum, suggesting an action (buy) rather than holding.")]
#only("5")[#voiceover("And d) Price drop is incorrect as well. While an RSI below 30 might occur after a price drop, the Moving Average crossover suggests a potential trend reversal and price increase.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Explanation]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

# Generate example data
data = pd.DataFrame(np.random.randint(30,80,size=(100, 1)), columns=['Price'])
data['FastMA'] = data['Price'].rolling(window=10).mean()
data['SlowMA'] = data['Price'].rolling(window=30).mean()
data['RSI'] = 100 - (100 / (1 + data['Price'].diff(1).rolling(window=14).mean() / data['Price'].diff(1).rolling(window=14).std()))

# Simulate crossover and RSI conditions
crossover_point = 60
data.loc[crossover_point, 'FastMA'] = data.loc[crossover_point, 'SlowMA'] + 1
data.loc[crossover_point, 'RSI'] = 25

# Create the plot
plt.figure(figsize=(10, 6))
plt.subplot(2, 1, 1)
plt.plot(data['Price'], label='Price')
plt.plot(data['FastMA'], label='10-period MA')
plt.plot(data['SlowMA'], label='30-period MA')
plt.scatter(crossover_point, data.loc[crossover_point, 'Price'], color='r', label='Crossover')
plt.legend(loc='upper left')
plt.title('Price and Moving Averages')

plt.subplot(2, 1, 2)
plt.plot(data['RSI'], label='RSI')
plt.axhline(30, color='r', linestyle='--', label='Oversold Threshold')
plt.legend(loc='upper left')
plt.title('RSI')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[1. Identify the Moving Average crossover 📈]
#v(20pt)
#only("2-")[   - Shorter-term MA crosses above longer-term MA]
#only("3-")[   - Indicates potential trend reversal and upward momentum]
#v(20pt)
#only("4-")[2. Check the RSI reading 📉]

#only("1")[#voiceover("First, let's identify the Moving Average crossover on the price chart.")]
#only("2")[#voiceover("We see the shorter-term, 10-period Moving Average crossing above the longer-term, 30-period Moving Average.")]
#only("3")[#voiceover("This typically indicates a potential trend reversal from bearish to bullish, and upward momentum.")]
#only("4")[#voiceover("Next, we check the RSI reading.")]
]

#slide()[
#v(20pt)  
#only("1-")[1. RSI below 30 suggests oversold condition]
#only("2-")[   - Asset may be undervalued and due for a price correction]
#v(20pt)
#only("3-")[2. Confirm buy signal 💰]
#v(20pt)
#only("4-")[   - MA crossover + oversold RSI = strong buy signal]
#only("5-")[   - Suggests a good entry point for a long position]

#only("1")[#voiceover("The RSI is below 30, which is generally considered the threshold for an oversold condition.")]  
#only("2")[#voiceover("This suggests that the asset may be undervalued at current prices and is due for a price correction upwards.")]
#only("3")[#voiceover("Combining these two signals, we can confirm a buy signal.")]
#only("4")[#voiceover("The Moving Average crossover and the oversold RSI reading together form a strong buy signal.")]
#only("5")[#voiceover("This suggests that now could be a good entry point to take a long position in anticipation of a price increase.")]
]