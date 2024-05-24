#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Math in Trading]
#v(40pt)
How does math help in trading?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Improves guessing]#only("2-")[#text(fill:red)[a) Improves guessing]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Provides emotional support]#only("3-")[#text(fill:red)[b) Provides emotional support]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Enables precise analysis and prediction]#only("4-")[#text(fill:green)[c) Enables precise analysis and prediction]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]

#only("1")[#voiceover("Great job! You selected the correct answer.")]
#only("2")[#voiceover("Option a) Improves guessing is incorrect. Math does not improve guessing in trading, but rather provides tools for making informed decisions.")]
#only("3")[#voiceover("Option b) Provides emotional support is also incorrect. While math can provide confidence in trading decisions, it does not directly offer emotional support.")]
#only("4")[#voiceover("Option c) Enables precise analysis and prediction is the correct answer. Math allows traders to analyze market data and make predictions based on quantitative models.")]
#only("5")[#voiceover("Finally, option d) None of the above is incorrect, as math does indeed play a crucial role in trading.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Math in Trading]
#v(40pt)
#only("1-")[Math is essential in trading because it:]
#v(20pt)
#only("2-")[- Helps analyze market trends 📈]
#only("3-")[- Allows quantifying risk 🎲]
#only("4-")[- Enables developing trading strategies 🧠]
#only("5-")[- Provides tools for price prediction 🔮]

#only("1")[#voiceover("Let's dive deeper into how math helps in trading.")]
#only("2")[#voiceover("Firstly, mathematical tools like statistical analysis help traders identify and analyze market trends and patterns.")]
#only("3")[#voiceover("Secondly, mathematical concepts like probability and risk management allow traders to quantify and manage the risks associated with their trades.")]
#only("4")[#voiceover("Thirdly, math is used to develop and backtest trading strategies, optimizing them for profitability.")]
#only("5")[#voiceover("Finally, mathematical models like regression analysis can be used to predict future price movements based on historical data.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Moving Averages]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

data = pd.DataFrame(np.random.randint(50, 100, size=(100, 1)), columns=['Price'])
data['MA10'] = data['Price'].rolling(window=10).mean()
data['MA30'] = data['Price'].rolling(window=30).mean()

plt.figure(figsize=(10, 6))
plt.plot(data['Price'], label='Price')
plt.plot(data['MA10'], label='10-Day MA')
plt.plot(data['MA30'], label='30-Day MA')
plt.legend()
plt.title('Moving Averages')
plt.xlabel('Time')
plt.ylabel('Price')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("One common mathematical tool used in trading is the moving average.")]
#only("2-")[- Calculates average price over a period]
#only("2")[#voiceover("A moving average calculates the average price of a security over a specified number of periods.")]
#only("3-")[- Smooths out price fluctuations]
#only("3")[#voiceover("This helps to smooth out short-term price fluctuations and identify longer-term trends.")]
#only("4-")[- Provides trading signals 🚦]
#only("4")[#voiceover("Moving averages can also provide trading signals, such as when a short-term moving average crosses above or below a long-term moving average.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[Math in trading:]
#v(20pt)
#only("2-")[- Enables precise analysis 🔍]
#only("3-")[- Quantifies risk 📏]
#only("4-")[- Optimizes strategies 🎯]
#only("5-")[- Predicts prices 🧮]

#only("1")[#voiceover("In summary, math plays a crucial role in trading.")]
#only("2")[#voiceover("It enables precise analysis of market trends,")]
#only("3")[#voiceover("allows for quantification and management of risk,")]
#only("4")[#voiceover("is used to optimize trading strategies,")]
#only("5")[#voiceover("and provides tools for price prediction. Without math, modern trading would not be possible.")]
]