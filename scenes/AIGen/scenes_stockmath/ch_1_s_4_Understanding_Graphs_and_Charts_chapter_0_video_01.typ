#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphs and Charts in Stock Trading]
#v(40pt)
#only("2-")[- Tools to visualize data 📊]
#v(20pt)
#only("3-")[- Easier to see trends 📈]
#v(20pt)
#only("4-")[- Helps in decision-making 🧠]
#only("1")[
#voiceover("Graphs and charts are essential tools in stock trading. They help traders visualize data, making it easier to identify trends and make informed decisions.")
]
#only("2")[
#voiceover("By presenting data in a visual format, graphs and charts make it simpler to process and understand large amounts of information.")
]
#only("3")[
#voiceover("Trends, patterns, and anomalies that might be difficult to spot in raw data become more apparent when presented visually.")
]
#only("4")[
#voiceover("This clarity helps traders make better-informed decisions about when to buy, sell, or hold stocks.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Line Chart]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate example data
x = np.arange(0, 10, 0.1)
y = np.sin(x)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, y, color='blue', linewidth=2, label='Stock Price')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Stock Price Over Time')
plt.xlabel('Time')
plt.ylabel('Price')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("For example, a line chart is commonly used to show a stock's price movement over time.")
]
#only("2")[
#voiceover("The x-axis represents time, while the y-axis represents the stock price.")
]
#only("3")[
#voiceover("Upward trends indicate the stock is gaining value, while downward trends suggest a decline.")
]
#only("4")[
#voiceover("Traders can use this information to decide whether to buy, sell, or hold the stock.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Graphs and charts are visual tools 📊]
#v(20pt)
#only("2-")[- Help identify trends and patterns 📈]
#v(20pt)
#only("3-")[- Essential for decision-making in stock trading 🧠💹]
#only("1")[
#voiceover("In summary, graphs and charts are indispensable visual tools in stock trading.")
]
#only("2")[
#voiceover("They help traders identify trends and patterns that might be difficult to discern from raw data.")
]
#only("3")[
#voiceover("By providing a clear, visual representation of market behavior, graphs and charts are essential for making informed decisions in stock trading.")
]
]