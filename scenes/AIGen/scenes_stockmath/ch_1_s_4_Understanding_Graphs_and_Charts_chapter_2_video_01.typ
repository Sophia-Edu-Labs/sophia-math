#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Reading Stock Charts 📈]
#v(40pt)
#only("1-")[- Identify the axes: price (y-axis) and time (x-axis)]
#only("1")[
#voiceover("To read a stock chart, first identify the axes. The vertical y-axis represents the stock price, while the horizontal x-axis represents time.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Understanding Scales]
#v(40pt)
#only("1-")[- Check the scale of the axes (e.g., price intervals, time frame)]
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create sample data
x = np.arange(0, 10, 0.1)
y = np.sin(x)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, y, color='blue', linewidth=2)
plt.grid(True, which='both', linestyle='--', linewidth=0.5)
plt.axhline(0, color='grey', lw=1)
plt.axvline(0, color='grey', lw=1)
plt.title('Example Stock Chart')
plt.xlabel('Time')
plt.ylabel('Price')
plt.xticks(np.arange(0, 10, 1))
plt.yticks(np.arange(-1, 1.1, 0.5))
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Next, understand the scales used. Check the price intervals on the y-axis and the time frame on the x-axis to get a sense of the data being presented.")
]
#only("2")[
#voiceover("For example, in this chart, the y-axis shows price intervals of 0.5, and the x-axis shows time steps of 1.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Interpreting Patterns]
#v(40pt)
#only("1-")[- Look for trends, fluctuations, and patterns]
#only("2-")[- Upward trend 📈: generally positive performance]
#only("3-")[- Downward trend 📉: generally negative performance]
#only("4-")[- Fluctuations 〰️: volatility and risk]
#only("1")[
#voiceover("Now, interpret the patterns in the chart. Look for trends, fluctuations, and other notable patterns.")
]
#only("2")[
#voiceover("An upward trend, where the line generally slopes upwards, indicates positive stock performance over time.")
]
#only("3")[
#voiceover("Conversely, a downward trend, where the line generally slopes downwards, indicates negative stock performance.")
]
#only("4")[
#voiceover("Fluctuations, or jagged up-and-down movements, indicate volatility and risk. The more dramatic the fluctuations, the higher the potential risk.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[1. Identify axes 📈]
#only("2-")[2. Understand scales 🔍]
#only("3-")[3. Interpret patterns 🔎]
#only("1")[
#voiceover("To summarize, when reading a stock chart, first identify the price and time axes.")
]
#only("2")[
#voiceover("Then, understand the scales used for price and time.")
]
#only("3")[
#voiceover("Finally, interpret the patterns, looking for trends, fluctuations, and what they indicate about stock performance and risk. With practice, you'll be able to quickly read and interpret stock charts.")
]
]