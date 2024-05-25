#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Price Charts]
#v(40pt)
#only("1-")[Which chart type provides information about the stock's opening, closing, high, and low prices within a specific period?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Line chart]#only("2-")[#text(fill:red)[a) Line chart]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Bar chart]#only("3-")[#text(fill:red)[b) Bar chart]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Candlestick chart]#only("4-")[#text(fill:green)[c) Candlestick chart]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Pie chart]#only("5-")[#text(fill:red)[d) Pie chart]]
#only("1")[#voiceover("Sorry, that's not correct. Let's take a look at the right solution.")]
#only("2")[#voiceover("A line chart is not the best choice here. While it can show price trends over time, it doesn't provide the level of detail needed for opening, closing, high, and low prices.")]
#only("3")[#voiceover("A bar chart is also not ideal. Bar charts are great for comparing discrete categories, but not for showing price ranges within a time period.")]
#only("4")[#voiceover("Candlestick charts are specifically designed to show opening, closing, high, and low stock prices over a given time period. This is the correct choice.")]
#only("5")[#voiceover("A pie chart is used to show parts of a whole and doesn't apply to stock price data. It's not the right choice for this question.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Candlestick Charts 📈]
#v(40pt)
#only("1-")[- Each "candlestick" represents one period (e.g., a day)]
#v(20pt)
#only("2-")[- The "body" shows the opening and closing prices]
#v(20pt)
#only("3-")[- The "wicks" show the high and low prices]
#v(20pt)
#only("4-")[- Green/white typically means the closing price was higher than the opening price (a "bullish" period)]
#v(20pt)
#only("5-")[- Red/black typically means the closing price was lower than the opening price (a "bearish" period)]

#only("1")[#voiceover("Let's dive into candlestick charts a bit more. Each candlestick represents a single time period, often a day.")]
#only("2")[#voiceover("The thick part of the candlestick is called the 'body'. It shows the opening and closing prices for that period.")]
#only("3")[#voiceover("The thin lines above and below the body are called 'wicks' or 'shadows'. They indicate the highest and lowest prices during the period.")]
#only("4")[#voiceover("If the closing price is higher than the opening price, the body is typically colored green or white, indicating a 'bullish' period where the price went up.")]
#only("5")[#voiceover("On the other hand, if the closing price is lower than the opening price, the body is usually colored red or black, indicating a 'bearish' period where the price went down.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example Candlestick Chart 🕯️]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import pandas as pd
from mplfinance.original_flavor import candlestick_ohlc
import matplotlib.dates as mpl_dates
import yfinance as yf

# Fetch stock data
stock_data = yf.download("AAPL", start="2023-01-01", end="2023-06-01")

# Reset the index to remove Date as a separate column
stock_data.reset_index(inplace=True)

# Convert the Date column to datetime
stock_data['Date'] = pd.to_datetime(stock_data['Date'])

# Create a new figure
fig, ax = plt.subplots(figsize=(10, 6))

# Convert dates to numbers for charting
dates = mpl_dates.date2num(stock_data['Date'])

# Create the candlestick chart
candlestick_ohlc(ax, zip(dates, stock_data['Open'], stock_data['High'], stock_data['Low'], stock_data['Close']), width=0.6, colorup='g', colordown='r')

# Customize the chart
ax.set_title('AAPL Stock Price')
ax.set_xlabel('Date')
ax.set_ylabel('Price ($)')
ax.xaxis.set_major_formatter(mpl_dates.DateFormatter('%Y-%m-%d'))
fig.autofmt_xdate()
ax.grid(True)

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's an example candlestick chart for Apple (AAPL) stock from January to June 2023.]

#only("1")[#voiceover("Here's an example candlestick chart showing Apple's stock price from January to June 2023.")]
#only("2")[#voiceover("Each candlestick represents one day. The green candlesticks indicate days where the stock closed higher than it opened, while the red ones show days where it closed lower.")]
#only("3")[#voiceover("The high and low prices for each day are shown by the wicks. This chart gives a detailed view of the stock's price action over this six-month period.")]
#only("4")[#voiceover("Candlestick charts are a powerful tool for visualizing stock price data and identifying trends. They provide a wealth of information in a compact, easy-to-read format.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Candlestick charts are best for showing detailed stock price data 📊]
#v(20pt)
#only("2-")[- Each candlestick represents a specific time period 🕰️]
#v(20pt)
#only("3-")[- The body shows the open and close prices, the wicks show the high and low 📈📉]
#v(20pt)
#only("4-")[- Green/white = bullish (price went up), red/black = bearish (price went down) 💹💸]
#v(20pt)
#only("5-")[- Candlestick charts are a powerful tool for analyzing stock price trends 🔍📈]

#only("1")[#voiceover("To recap, candlestick charts are the best choice for displaying detailed stock price data, including opening, closing, high, and low prices.")]
#only("2")[#voiceover("Each candlestick represents a specific time period, often one day.")]
#only("3")[#voiceover("The body of the candlestick shows the opening and closing prices, while the wicks indicate the high and low prices during that period.")]
#only("4")[#voiceover("Green or white candlesticks indicate bullish periods where the price went up, while red or black candlesticks show bearish periods where the price went down.")]
#only("5")[#voiceover("Candlestick charts are a powerful tool for analyzing stock price trends and making informed trading decisions.")]
]