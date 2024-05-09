#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Market Recap]
#v(40pt)
#only("1-")[- Platform for trading company shares 📈]
#v(20pt)
#only("2-")[- Investors buy and sell stocks 💸]
#v(20pt)
#only("3-")[- Potential for profits through ownership 📈💰]
#only("1")[
#voiceover("The stock market is a platform where shares of publicly listed companies are traded.")
]
#only("2")[
#voiceover("Investors buy and sell these stocks, essentially trading ownership in the companies.")
]
#only("3")[
#voiceover("The main goal for investors is to potentially earn profits by buying stocks and selling them at a higher price.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Points]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.linspace(0, 10, 100)
y1 = 0.5 * x + np.random.rand(100)  # Simulate an upward trend with noise
y2 = -0.5 * x + np.random.rand(100) + 5  # Simulate a downward trend with noise

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, y1, color='green', linewidth=2, label='Stock A')
plt.plot(x, y2, color='red', linewidth=2, label='Stock B')

# Add labels and title
plt.xlabel('Time')
plt.ylabel('Price')
plt.title('Example Stock Prices')

# Add legend
plt.legend()

# Add grid
plt.grid(True)

plt.show()
```,
width: 360pt),
caption: [],
)
]
]
#only("1")[
#voiceover("Here's a simple visualization of stock prices over time. We see two stocks, A and B, with different trends.")
]
]

#v(40pt)

#only("2-")[- Supply and demand determine prices 📊]
#v(20pt)
#only("3-")[- Influenced by company performance, economy, sentiment 📜]
#v(20pt)
#only("4-")[- Indices track market and sector performance 📉📈]

#only("2")[
#voiceover("Stock prices are determined by the laws of supply and demand in the market.")
]
#only("3")[
#voiceover("Prices are influenced by factors such as company performance, economic conditions, and investor sentiment.")
]
#only("4")[
#voiceover("Market indices, like the S&P 500, track the overall performance of the market or specific sectors.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Takeaways]
#v(40pt)
#only("1-")[- The stock market enables investment in companies 🏢]
#v(20pt)
#only("2-")[- Potential for financial gains (and losses) 📈📉]
#v(20pt)
#only("3-")[- Understanding the market is key for investors 🔑]

#only("1")[
#voiceover("In essence, the stock market enables individuals to invest in companies and potentially share in their success.")
]
#only("2")[
#voiceover("While there is potential for financial gains, it's important to remember that losses are also possible.")
]
#only("3")[
#voiceover("For anyone considering investing in the stock market, understanding how it works is a key first step.")
]
]