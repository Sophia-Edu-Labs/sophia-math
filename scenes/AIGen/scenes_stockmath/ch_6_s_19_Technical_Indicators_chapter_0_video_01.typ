#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Technical Indicators 📈]
#v(40pt)
#only("1-")[- Mathematical calculations 🧮]
#v(20pt)
#only("2-")[- Based on historical stock prices 💰 and volume 📊]
#v(20pt)
#only("3-")[- Used to forecast future price movements 🔮]
#only("1")[
#voiceover("Technical indicators are mathematical calculations")
]
#only("2")[
#voiceover("based on historical stock prices and trading volume.")
]
#only("3")[
#voiceover("They are used by traders and analysts to forecast future price movements of stocks.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[How They Work 🛠]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Simulate stock prices
prices = np.random.randint(50, 100, 30)

# Calculate a simple moving average
window = 5
weights = np.repeat(1.0, window) / window
sma = np.convolve(prices, weights, 'valid')

# Plot the data
plt.figure(figsize=(8, 6))
plt.plot(prices, label='Stock Price')
plt.plot(np.arange(window-1, len(prices)), sma, label='SMA')
plt.xlabel('Time')
plt.ylabel('Price')
plt.title('Stock Price and Simple Moving Average')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's take a simple moving average as an example. It smooths out price data by calculating the average price over a specific number of periods.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Insights Provided 💡]
#v(40pt)
#only("1-")[- Identify trends 📈📉]
#v(20pt)
#only("2-")[- Recognize support and resistance levels 🎯]
#v(20pt)
#only("3-")[- Generate trading signals 🚦]
#only("1")[
#voiceover("Technical indicators can help identify trends, whether prices are moving up, down, or sideways.")
]
#only("2")[
#voiceover("They can also help recognize important price levels where the stock may find support or resistance.")
]
#only("3")[
#voiceover("Some indicators even generate trading signals, suggesting when to buy or sell a stock.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Limitations ⚠]
#v(40pt)
#only("1-")[- Based on past data, not future 🕰]
#v(20pt)
#only("2-")[- Do not consider fundamental factors 📜]
#v(20pt)
#only("3-")[- Should be used with other forms of analysis 🔍]
#only("1")[
#voiceover("However, it's important to remember that technical indicators are based on past data and do not guarantee future results.")
]
#only("2")[
#voiceover("They also do not consider fundamental factors like the company's financial health or economic conditions.")
]
#only("3")[
#voiceover("Therefore, technical indicators should be used in conjunction with other forms of analysis for making informed trading decisions.")
]
]