#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the key points about standard deviation and variance in stock market analysis.")
]

#text(size: 30pt, weight: "bold")[Standard Deviation & Variance in Stocks 📈]

#v(40pt)

#only("2")[
#voiceover("Standard deviation and variance are essential tools for assessing risk in stock investments.")
]
#only("2-")[- Assess risk 🎯]

#v(20pt)

#only("3")[
#voiceover("They measure the volatility of stock prices, which is the spread of prices around the mean.")
]
#only("3-")[- Measure volatility 📊]

#v(20pt)

#only("4")[
#voiceover("Higher values of standard deviation and variance indicate greater price fluctuations and thus, more risk.")
]
#only("4-")[- Higher values $⇒$ more risk ⚠]

#v(40pt)

#only("5")[
#voiceover("Let's visualize this with a quick example. Suppose we have two stocks, A and B.")
]

#only("5-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate stock prices
stock_A = np.random.normal(50, 2, 30)
stock_B = np.random.normal(50, 10, 30)

# Plot stock prices
plt.figure(figsize=(8, 6))
plt.plot(stock_A, label='Stock A', linewidth=2)
plt.plot(stock_B, label='Stock B', linewidth=2)
plt.xlabel('Time', fontsize=14)
plt.ylabel('Price', fontsize=14)
plt.title('Stock Price Comparison', fontsize=16)
plt.legend(fontsize=12)
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]

#only("6")[
#voiceover("Stock B, with the more volatile price movement, has a higher standard deviation and thus, more risk compared to Stock A.")
]

#v(40pt)

#only("7")[
#voiceover("Therefore, standard deviation and variance are key metrics in stock analysis for understanding and comparing the risk profiles of different investments.")
]
#only("7-")[- Key metrics for risk comparison 🔑]

]]