#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Price Tracking]
#v(40pt)
Which type of chart would you use to track the change in stock prices over time?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Pie chart]#only("2-")[#text(fill:red)[a) Pie chart]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Line chart]#only("3-")[#text(fill:green)[b) Line chart]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Bar chart]#only("4-")[#text(fill:red)[c) Bar chart]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Table]#only("5-")[#text(fill:red)[d) Table]]

#only("1")[#voiceover("A pie chart is not suitable for tracking changes over time. It's used to show parts of a whole at a single point in time.")]
#only("2")[#voiceover("That's right, great job! You've selected the correct chart type.")]
#only("3")[#voiceover("A line chart is the best choice to track changes in stock prices over time. It clearly shows the ups and downs of the price as it progresses.")]
#only("4")[#voiceover("A bar chart is better for comparing discrete categories rather than showing continuous changes over time.")]  
#only("5")[#voiceover("While a table can contain the raw data of stock prices over time, it doesn't provide a visual representation of the change like a line chart does.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why a Line Chart? 📈]
#v(40pt)
#only("1-")[- Shows continuous data over a period of time]
#v(20pt)
#only("2-")[- Clearly displays trends, patterns, and fluctuations]
#v(20pt) 
#only("3-")[- Connects data points with lines to emphasize continuity]
#v(20pt)
#only("4-")[- Commonly used for stock prices, temperature, etc.]

#only("1")[#voiceover("A line chart is ideal for tracking stock prices over time because it shows continuous data over a period of time.")]
#only("2")[#voiceover("It clearly displays trends, patterns, and fluctuations in the data, which is crucial for analyzing stock performance.")]
#only("3")[#voiceover("The line chart connects the individual data points with lines, emphasizing the continuity of the data.")]
#only("4")[#voiceover("Line charts are commonly used for data that changes continuously over time, such as stock prices, temperature, etc.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example Line Chart]  
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate example stock price data
days = np.arange(1, 31)  
prices = np.random.randint(100, 150, size=(30,))

plt.figure(figsize=(8, 6))
plt.plot(days, prices)
plt.title('Stock Price over Time')
plt.xlabel('Day')
plt.ylabel('Price ($)')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[#voiceover("Here's an example of what a line chart tracking stock prices might look like.")]
#only("2")[#voiceover("The x-axis represents the time period, in this case days, and the y-axis represents the stock price.")]
#only("3")[#voiceover("As you can see, the line connecting the data points clearly shows how the stock price has changed over the 30-day period.")]
#only("4")[#voiceover("This makes it easy to identify overall trends, like if the price is generally increasing or decreasing, as well as any significant ups and downs.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)  
#only("1-")[- Line charts are best for tracking changes over time 🕰️]
#v(20pt)
#only("2-")[- They show trends, patterns, and fluctuations clearly 📊]
#v(20pt)
#only("3-")[- Commonly used for continuous data like stock prices 💹]
#v(20pt)
#only("4-")[- Other charts like pie, bar, or tables are less suitable 🙅]

#only("1")[#voiceover("To summarize, line charts are the best choice for tracking changes over time, like stock prices.")]
#only("2")[#voiceover("They clearly show trends, patterns, and fluctuations in the data.")]
#only("3")[#voiceover("Line charts are commonly used for continuous data that changes over time, such as stock prices.")]
#only("4")[#voiceover("Other chart types like pie charts, bar charts, or tables are less suitable for representing this kind of time-series data.")]
]