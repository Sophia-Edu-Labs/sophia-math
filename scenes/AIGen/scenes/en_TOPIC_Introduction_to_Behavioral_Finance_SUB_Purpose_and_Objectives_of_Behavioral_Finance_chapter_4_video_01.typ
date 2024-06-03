#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Biases and Market Anomalies 🧠📈]
#v(40pt)
#only("1-")[- Biases influence investor behavior 👥]
#v(20pt)
#only("2-")[- Can lead to market anomalies 📊]
#v(20pt)
#only("3-")[- Examples: bubbles 🫧 and crashes 📉]
#only("1")[
#voiceover("Behavioral biases can significantly influence investor behavior in financial markets.")
]
#only("2")[
#voiceover("These biases can lead to various market anomalies, which are deviations from the expected efficient market behavior.")
]
#only("3")[
#voiceover("Two common examples of market anomalies caused by biases are bubbles and crashes.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Bubbles 🫧]
#v(40pt)
#only("1-")[- Overconfidence and herd behavior 🐑]
#v(20pt)
#only("2-")[- Investors drive prices above fundamentals 📈]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)
y = np.exp(x/5) + np.random.normal(0, 0.5, 100)

plt.figure(figsize=(8, 6))
plt.plot(x, y, color='blue', linewidth=2)
plt.fill_between(x, y, color='lightblue', alpha=0.5)
plt.xlabel('Time', fontsize=14)
plt.ylabel('Price', fontsize=14)
plt.title('Market Bubble', fontsize=16)
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Bubbles can form when investors become overconfident and engage in herd behavior, following the crowd without proper due diligence.")
]
#only("2")[
#voiceover("This irrational exuberance can drive asset prices significantly above their fundamental values.")
]
#only("3")[
#voiceover("The graph shows a typical bubble formation, where prices rise exponentially, deviating from the asset's intrinsic value.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Crashes 📉]
#v(40pt)
#only("1-")[- Loss aversion and panic selling 😨]
#v(20pt)
#only("2-")[- Investors sell at irrational lows 📉]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)
y = 10 - np.exp(x/5) + np.random.normal(0, 0.5, 100)

plt.figure(figsize=(8, 6))
plt.plot(x, y, color='red', linewidth=2)
plt.fill_between(x, y, color='lightcoral', alpha=0.5)
plt.xlabel('Time', fontsize=14)
plt.ylabel('Price', fontsize=14)
plt.title('Market Crash', fontsize=16)
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("On the other hand, crashes can occur when investors, driven by loss aversion, engage in panic selling during market downturns.")
]
#only("2")[
#voiceover("This can lead to a rapid decline in asset prices, often below their fundamental values, as investors rush to sell at irrational lows.")
]
#only("3")[
#voiceover("The graph illustrates a typical market crash, where prices plummet sharply, often triggered by fear and irrational behavior.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Biases influence investor behavior 🧠👥]
#v(20pt)
#only("2-")[- Can lead to market anomalies 📊]
#v(20pt)
#only("3-")[- Bubbles 🫧: overconfidence and herd behavior]
#v(20pt)
#only("4-")[- Crashes 📉: loss aversion and panic selling]
#only("1")[
#voiceover("In summary, behavioral biases can significantly influence investor behavior in financial markets.")
]
#only("2")[
#voiceover("These biases can lead to market anomalies, which are deviations from the expected efficient market behavior.")
]
#only("3")[
#voiceover("Bubbles can form when investors become overconfident and engage in herd behavior, driving prices above fundamentals.")
]
#only("4")[
#voiceover("Crashes can occur when investors, driven by loss aversion, engage in panic selling, leading to rapid price declines.")
]
]