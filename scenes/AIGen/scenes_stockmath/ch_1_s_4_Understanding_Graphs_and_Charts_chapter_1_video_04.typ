#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap: Chart Types 📈]

#v(40pt)

#only("1-")[- Line charts 📈: price trends over time]
#v(20pt)
#only("2-")[- Bar charts 📊: comparing quantities]
#v(20pt)
#only("3-")[- Candlestick charts 🕯️: detailed price info within a period]

#only("1")[
#voiceover("In this chapter, we learned about different types of charts and their specific purposes in stock trading.")
]

#only("2")[
#voiceover("Line charts are best for visualizing price trends over time, allowing you to easily spot upward or downward movements in stock prices.")
]

#only("3")[
#voiceover("Bar charts are useful for comparing quantities, such as trading volumes of different stocks.")
]

#only("4")[
#voiceover("Candlestick charts provide detailed price information within a specific period, including opening, closing, high, and low prices.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example Charts]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data for line chart
x = np.linspace(0, 10, 100)
y = np.sin(x)

# Create line chart
fig, ax = plt.subplots(figsize=(6, 4))
ax.plot(x, y, color='blue', linewidth=2, label='Stock Price')
ax.set_xlabel('Time')
ax.set_ylabel('Price')
ax.set_title('Line Chart: Stock Price Over Time')
ax.legend()
ax.grid(True)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("Here's an example of a line chart showing a stock's price over time. The x-axis represents time, while the y-axis represents the price.")
]

#v(40pt)

#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data for bar chart
stocks = ['Stock A', 'Stock B', 'Stock C']
volumes = [100, 150, 75]

# Create bar chart
fig, ax = plt.subplots(figsize=(6, 4))
ax.bar(stocks, volumes, color='green', label='Trading Volume')
ax.set_xlabel('Stocks')
ax.set_ylabel('Trading Volume')
ax.set_title('Bar Chart: Trading Volumes')
ax.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]

#only("2")[
#voiceover("This bar chart compares the trading volumes of different stocks, with each bar representing a stock and its corresponding volume.")
]

#v(40pt)

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import mplfinance as mpf
import pandas as pd

# Create sample data for candlestick chart
data = pd.DataFrame({'Open': [50, 52, 48, 47, 49],
                    'High': [52, 53, 51, 49, 50],
                    'Low': [48, 50, 47, 45, 47],
                    'Close': [51, 50, 49, 46, 48]},
                    index=pd.date_range('2023-01-01', periods=5))

# Create candlestick chart
mpf.plot(data, type='candle', volume=True, figsize=(6, 4), 
        title='Candlestick Chart: Stock Price Details')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]

#only("3")[
#voiceover("Finally, this candlestick chart shows detailed price information for a stock within a 5-day period, including opening, closing, high, and low prices for each day.")
]

#only("4")[
#voiceover("Understanding the strengths and purposes of each chart type will help you effectively analyze and make decisions in stock trading.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]

#v(40pt)

#only("1-")[- Choose the right chart for the right purpose 🎯]
#v(20pt)
#only("2-")[- Line charts 📈: trend analysis]
#v(20pt)
#only("3-")[- Bar charts 📊: quantity comparison]
#v(20pt)
#only("4-")[- Candlestick charts 🕯️: detailed price info]

#only("1")[
#voiceover("The key takeaway from this chapter is to choose the right chart for the right purpose in your stock trading analysis.")
]

#only("2")[
#voiceover("Use line charts for trend analysis,")
]

#only("3")[
#voiceover("bar charts for comparing quantities,")
]

#only("4")[
#voiceover("and candlestick charts for detailed price information within a specific period.")
]

#only("5")[
#voiceover("By applying the appropriate chart type, you'll gain valuable insights to inform your trading decisions.")
]
]