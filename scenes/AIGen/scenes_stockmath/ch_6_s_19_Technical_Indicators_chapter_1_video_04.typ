#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap what we've learned about Moving Averages and the Relative Strength Index, or RSI.")
]

#text(size: 30pt, weight: "bold")[Recap: Moving Averages & RSI]

#v(40pt)

#only("2-")[- Moving Averages smooth price data 📈]
#only("2")[
#voiceover("Moving Averages are used to smooth out price data over a specific time period.")
]

#v(20pt)

#only("3-")[- Help identify trends 📉📈]
#only("3")[
#voiceover("This helps to identify the underlying trend direction, whether it's up, down, or sideways.")
]

#v(20pt)

#only("4-")[- RSI measures price momentum 🔍]
#only("4")[
#voiceover("The RSI, on the other hand, measures the speed and change of price movements, which is known as momentum.")
]

#v(20pt)

#only("5-")[- Identifies overbought 💹 or oversold 📉 conditions]
#only("5")[
#voiceover("It's used to identify when a stock is overbought or oversold, typically using levels of 70 and 30 respectively.")
]

#v(40pt)

#only("6-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate example data
x = np.arange(50)
y = np.random.randint(0, 100, 50)

# Calculate moving average
window = 10
weights = np.repeat(1.0, window)/window
ma = np.convolve(y, weights, 'valid')

# Plot price and moving average
fig, ax = plt.subplots(figsize=(8, 4))
ax.plot(x, y, color='lightgray', linewidth=2, label='Price')
ax.plot(x[window-1:], ma, color='blue', linewidth=2, label='Moving Average')
ax.set_xlabel('Time')
ax.set_ylabel('Price')
ax.legend()
ax.grid(True)

# Add overbought and oversold lines
ax.axhline(70, color='red', linestyle='--', label='Overbought')
ax.axhline(30, color='green', linestyle='--', label='Oversold')

plt.tight_layout()
plt.show()
```, 
width: 360pt),
)
]
]
#only("6")[
#voiceover("In this example chart, we can see the price data in gray and the moving average in blue, which smooths out the price action. The red and green dashed lines represent the overbought and oversold levels that the RSI would identify.")
]

]
]

#slide()[

#only("1")[
#voiceover("So in summary...")
]

#text(size: 30pt, weight: "bold")[Key Takeaways]

#v(40pt)

#only("2-")[- Moving Averages & RSI are complementary 🤝]
#only("2")[
#voiceover("Moving Averages and RSI are complementary indicators that traders often use together.")
]

#v(20pt)

#only("3-")[- Moving Averages for trend 📈]
#only("3")[
#voiceover("Moving Averages are best for identifying the overall trend direction...")
]

#v(20pt)

#only("4-")[- RSI for momentum & extremes 📊]
#only("4")[
#voiceover("While RSI excels at gauging momentum and pinpointing potential oversold or overbought extremes.")
]

#v(20pt)

#only("5-")[- Combine for informed trading decisions 🎯]
#only("5")[
#voiceover("By combining these two powerful tools, traders can make more informed decisions about when to enter or exit positions.")
]

]