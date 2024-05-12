#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("In this recap, we'll go over the key points of reading and interpreting charts in stock trading.")
]
#text(size: 30pt, weight: "bold")[Reading Charts 📈]
#v(40pt)
#only("2")[
#voiceover("When reading charts, it's crucial to understand the axes and scales. The x-axis typically represents time, while the y-axis represents price or another relevant variable.")
]
#only("2-")[
- Understand axes and scales 📐
]
#v(20pt)
#only("3")[
#voiceover("Interpreting patterns in the chart can help assess stock behavior. For example, a downward trend in a line chart indicates a decreasing stock price over time.")
]
#only("3-")[
- Interpret patterns to assess stock behavior 🔍
]
]

#slide()[
#only("1")[
#voiceover("Let's look at an example of a line chart.")
]
#text(size: 30pt, weight: "bold")[Line Chart Example]
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create example data
x = np.arange(0, 10, 0.1)
y = np.sin(x) + np.random.normal(0, 0.2, len(x))

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, y, color='blue', linewidth=2, label='Stock Price')
plt.grid(True, which='both', linestyle='--', linewidth=0.5)
plt.axhline(0, color='grey', lw=1)
plt.legend()
plt.title('Example Line Chart')
plt.xlabel('Time')
plt.ylabel('Price')

plt.show()
```,
width: 360pt),
)
]
]
]
#only("2")[
#voiceover("In this line chart, we can see the stock price fluctuating over time. The downward sloping segments indicate periods of decreasing stock price.")
]
]

#slide()[
#only("1")[
#voiceover("Now, let's consider a candlestick chart.")
]
#text(size: 30pt, weight: "bold")[Candlestick Chart 🕯]
#v(40pt)
#only("2")[
#voiceover("Candlestick charts provide detailed price information within each time period. The candlestick shadows can indicate market sentiment.")
]
#only("2-")[
- Shows open, close, high, and low prices 💰
]
#v(20pt)
#only("3")[
#voiceover("For example, a candlestick with a long upper shadow and short lower shadow generally indicates bullish market sentiment.")
]
#only("3-")[
- Shadows indicate market sentiment 📊
  - Long upper shadow + short lower shadow = bullish 📈
]
]

#slide()[
#only("1")[
#voiceover("To summarize:")
]
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("2")[
#voiceover("Reading charts involves understanding axes and scales.")
]
#only("2-")[
- Understand axes and scales 📐
]
#v(20pt)
#only("3")[
#voiceover("Interpreting patterns helps assess stock behavior.")
]
#only("3-")[
- Interpret patterns to assess stock behavior 🔍
]
#v(20pt)
#only("4")[
#voiceover("Line charts are useful for identifying trends.")
]
#only("4-")[
- Line charts: identify trends 📈
]
#v(20pt)
#only("5")[
#voiceover("Candlestick shadows can indicate market sentiment.")
]
#only("5-")[
- Candlestick shadows: market sentiment 🕯
]
]