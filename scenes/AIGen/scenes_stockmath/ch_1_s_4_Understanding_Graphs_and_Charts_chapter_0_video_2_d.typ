#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Purpose of Graphs in Trading]
#v(40pt)
What is the primary purpose of using graphs and charts in stock trading?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) To visualize data]#only("2-")[#text(fill:green)[a) To visualize data]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) To create complex reports]#only("3-")[#text(fill:red)[b) To create complex reports]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) To increase data volume]#only("4-")[#text(fill:red)[c) To increase data volume]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) To confuse traders]#only("5-")[#text(fill:red)[d) To confuse traders]]
#v(40pt)

#only("1")[#voiceover("That's not quite right, but no worries! Let's look at the correct solution. The primary purpose of using graphs and charts in stock trading is indeed...")]
#only("2")[#voiceover("a) To visualize data. Graphs and charts allow traders to visually represent and analyze stock data, making it easier to spot trends, patterns, and anomalies.")]
#only("3")[#voiceover("b) To create complex reports is incorrect. While graphs can be used in reports, their primary purpose is not to create complexity, but rather to simplify data representation.")]
#only("4")[#voiceover("c) To increase data volume is also incorrect. Graphs do not increase the amount of data, but rather provide a way to represent existing data visually.")]
#only("5")[#voiceover("And d) To confuse traders is definitely incorrect. The purpose of graphs is to clarify data, not to confuse traders.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Example Stock Chart]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate some random stock data
days = np.arange(1, 31)
prices = np.random.randint(50, 100, size=(30,))

# Create the stock chart
plt.figure(figsize=(8, 6))
plt.plot(days, prices, label='Stock Price')

# Add some annotations
plt.scatter([10], [prices[9]], color='red', label='Low Point')
plt.scatter([20], [prices[19]], color='green', label='High Point')

# Improve the chart aesthetics
plt.grid(True)
plt.legend()
plt.title('Example Stock Chart')
plt.xlabel('Day of the Month')
plt.ylabel('Stock Price ($)')

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's an example stock chart 📈:]
#v(20pt)
#only("2-")[- It #text(weight: "bold")[visualizes] the stock price over a month.]
#only("3-")[- The #text(fill:red)[low point] and #text(fill:green)[high point] are easily identifiable.]
#only("4-")[- Traders can use this to #text(weight: "bold")[spot trends] and make decisions 🎯.]

#only("1")[#voiceover("Let's look at an example to see how graphs are used in stock trading.")]
#only("2")[#voiceover("This chart visualizes the stock price over the course of a month. Each point represents the closing price on a given day.")]
#only("3")[#voiceover("Key points, such as the lowest price in red and the highest price in green, are easily identifiable on the graph.")]
#only("4")[#voiceover("Traders can use charts like this to spot trends, understand price movements, and make informed trading decisions. This is the power of data visualization in action.")]
]