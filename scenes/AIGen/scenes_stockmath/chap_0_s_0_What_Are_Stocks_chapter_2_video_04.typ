#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mathematics in Trading]
#v(40pt)
#only("1-")[- Crucial for analyzing data 📊]
#v(20pt)
#only("2-")[- Helps predict stock price trends 📈]
#v(20pt)
#only("3-")[- Enables informed trading decisions 🧠]
#only("1")[
#voiceover("Mathematics plays a vital role in trading. It is crucial for analyzing the vast amounts of financial data generated in the stock market.")
]
#only("2")[
#voiceover("Mathematical tools and models help traders predict stock price trends by identifying patterns and making projections based on historical data.")
]
#only("3")[
#voiceover("By leveraging mathematical insights, traders can make informed decisions about when to buy, hold, or sell stocks, optimizing their trading strategies.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Mathematical Concepts]
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
y = np.sin(x) + np.random.normal(0, 0.1, 100)

# Create the plot
plt.figure(figsize=(6, 4))
plt.plot(x, y, 'o', label='Data')
plt.plot(x, np.sin(x), label='Trend')
plt.xlabel('Time')
plt.ylabel('Price')
plt.title('Stock Price Trend')
plt.legend()
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: [Example of a stock price trend analysis using mathematics],
)
]
]
]
#v(20pt)
#only("2-")[- Probability theory 🎲]
#v(10pt)
#only("3-")[- Statistics 📊]
#v(10pt)
#only("4-")[- Calculus ∫]
#v(10pt)
#only("5-")[- Algebra 🧮]
#only("1")[
#voiceover("Several key mathematical concepts are commonly used in trading. This graph shows an example of how mathematics can be used to identify trends in stock prices over time.")
]
#only("2")[
#voiceover("Probability theory helps traders assess the likelihood of different outcomes and manage risk.")
]
#only("3")[
#voiceover("Statistics enables the analysis of large datasets to uncover meaningful patterns and insights.")
]
#only("4")[
#voiceover("Calculus is used for modeling change and optimization, such as in pricing complex financial derivatives.")
]
#only("5")[
#voiceover("Algebra provides the foundation for many financial formulas and calculations.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Importance of Mathematics]
#v(40pt)
#only("1-")[- Essential for success in trading 🎯]
#v(20pt)
#only("2-")[- Provides a competitive edge 🏆]
#v(20pt)
#only("3-")[- Helps manage risk effectively ⚠️]
#only("1")[
#voiceover("A solid understanding of mathematics is essential for success in trading.")
]
#only("2")[
#voiceover("Traders who effectively apply mathematical concepts gain a competitive edge in the market.")
]
#only("3")[
#voiceover("Mathematics helps traders manage risk effectively by quantifying potential losses and gains, enabling them to make prudent trading decisions.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Mathematics is indispensable in trading 🌟]
#v(20pt)
#only("2-")[- Analyzes data, predicts trends, informs decisions 📈]
#v(20pt)
#only("3-")[- Key concepts: probability, statistics, calculus, algebra 🔑]
#v(20pt)
#only("4-")[- Essential for success and risk management 🎯⚠️]
#only("1")[
#voiceover("To recap, mathematics is absolutely indispensable in the world of trading.")
]
#only("2")[
#voiceover("It empowers traders to analyze vast amounts of data, predict stock price trends, and make informed trading decisions.")
]
#only("3")[
#voiceover("Key mathematical concepts like probability theory, statistics, calculus, and algebra form the foundation of effective trading strategies.")
]
#only("4")[
#voiceover("A strong grasp of mathematics is essential for success in trading and effective risk management.")
]
]