#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Types of Stock Charts 📊]
#v(40pt)
#only("2-")[- Line Charts 📈]
#v(20pt)
#only("3-")[- Bar Charts 📊]
#v(20pt)
#only("4-")[- Candlestick Charts 🕯️]
#only("1")[
#voiceover("When analyzing stocks, traders use various types of charts to visualize price movements and trading volumes. Let's explore three commonly used chart types: line charts, bar charts, and candlestick charts.")
]
#only("2")[
#voiceover("Line charts are the simplest and most straightforward. They connect the closing prices of a stock over a given period, making it easy to identify trends and patterns.")
]
#only("3")[
#voiceover("Bar charts provide more information than line charts. Each bar represents a trading period and shows the stock's opening price, closing price, high, and low. This allows traders to analyze price ranges and volatility.")
]
#only("4")[
#voiceover("Candlestick charts are similar to bar charts but offer a more visually appealing representation. Each candlestick shows the open, close, high, and low prices, with the body representing the range between the open and close. The color of the body indicates whether the stock closed higher or lower than the opening price.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Line Charts 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create sample data
x = np.arange(0, 10, 0.1)
y = np.sin(x)

# Create the line chart
plt.figure(figsize=(6, 4))
plt.plot(x, y, linewidth=2, label='Stock Price')
plt.xlabel('Time')
plt.ylabel('Price')
plt.title('Line Chart Example')
plt.legend()
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's an example of a line chart. The x-axis represents time, while the y-axis represents the stock price. The line connects the closing prices, making it easy to see the overall trend and identify any significant price movements.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Bar Charts 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create sample data
x = np.arange(5)
y_open = np.array([10, 12, 15, 14, 16])
y_close = np.array([11, 13, 14, 15, 17])
y_low = np.array([9, 11, 13, 13, 15])
y_high = np.array([12, 14, 16, 16, 18])

# Create the bar chart
plt.figure(figsize=(6, 4))
plt.bar(x, y_close - y_open, bottom=y_open, color='green', alpha=0.4, width=0.8, label='Price Range')
plt.vlines(x, y_low, y_high, color='black', linewidth=1)
plt.xlabel('Trading Period')
plt.ylabel('Price')
plt.title('Bar Chart Example')
plt.legend()
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("In this bar chart example, each bar represents a trading period. The bottom and top of the bar indicate the opening and closing prices, respectively. The vertical lines extending from the bars show the lowest and highest prices during that period.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Candlestick Charts 🕯️]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
from mplfinance.original_flavor import candlestick_ohlc
import matplotlib.dates as mdates
import numpy as np
import datetime as dt

# Create sample data
np.random.seed(0)
N = 10
date = np.arange(N)
open = np.random.uniform(50, 55, N)
close = open + np.random.uniform(-2, 2, N)
low = np.minimum(open, close) - np.random.uniform(0, 2, N)
high = np.maximum(open, close) + np.random.uniform(0, 2, N)

# Create the candlestick chart
fig, ax = plt.subplots(figsize=(6, 4))
candlestick_ohlc(ax, zip(mdates.date2num(date), open, high, low, close), width=0.6, colorup='green', colordown='red')
ax.xaxis_date()
plt.xlabel('Trading Period')
plt.ylabel('Price')
plt.title('Candlestick Chart Example')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Candlestick charts provide a wealth of information in a compact form. Each candlestick represents a trading period, with the thick body showing the opening and closing prices. The thin lines, called wicks or shadows, extend from the body to the highest and lowest prices. Green candlesticks indicate bullish periods where the close is higher than the open, while red candlesticks indicate bearish periods.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Line Charts 📈: Simple, shows trends]
#v(20pt)
#only("2-")[- Bar Charts 📊: Shows price ranges and volatility]
#v(20pt)
#only("3-")[- Candlestick Charts 🕯️: Detailed price information]
#only("1")[
#voiceover("To summarize, line charts are simple and effective for identifying trends.")
]
#only("2")[
#voiceover("Bar charts provide more information about price ranges and volatility.")
]
#only("3")[
#voiceover("Candlestick charts offer the most detailed price information in a visually appealing format. By understanding these different chart types, traders can choose the one that best suits their analysis and trading style.")
]
]