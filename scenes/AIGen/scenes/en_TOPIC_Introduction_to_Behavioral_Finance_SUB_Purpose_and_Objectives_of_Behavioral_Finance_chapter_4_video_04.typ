#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Impact of Biases on Financial Markets 📈📉]
#v(40pt)
#only("1-")[
- Biases influence investor behavior 🧠
]
#v(20pt)
#only("2-")[
- Can lead to market anomalies 🚨
]
#v(20pt)
#only("3-")[
- Examples: bubbles 🫧 and crashes 💥
]
#only("1")[
#voiceover("Biases in Behavioral Finance can have a significant impact on financial markets by influencing the way investors make decisions and behave.")
]
#only("2")[
#voiceover("These biases can lead to market anomalies, which are deviations from the expected or rational behavior of markets.")
]
#only("3")[
#voiceover("Two common examples of market anomalies caused by biases are bubbles and crashes.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Market Bubbles 🫧]
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
y = np.exp(x/5) + np.random.randn(100)*0.1

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, y, color='blue', linewidth=2, label='Asset Price')

# Highlight the bubble
bubble_start = 60
bubble_end = 80
plt.fill_between(x[bubble_start:bubble_end], y[bubble_start:bubble_end], color='red', alpha=0.3, label='Bubble')

# Add labels and title
plt.xlabel('Time')
plt.ylabel('Asset Price')
plt.title('Market Bubble')
plt.legend()
plt.grid(True)

plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("A market bubble occurs when asset prices rise rapidly and significantly above their intrinsic value, often driven by irrational exuberance and herd behavior among investors.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Market Crashes 💥]
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
y = np.exp(-x/5) + np.random.randn(100)*0.1

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, y, color='red', linewidth=2, label='Asset Price')

# Highlight the crash
crash_start = 60
crash_end = 80
plt.fill_between(x[crash_start:crash_end], y[crash_start:crash_end], color='blue', alpha=0.3, label='Crash')

# Add labels and title
plt.xlabel('Time')
plt.ylabel('Asset Price')
plt.title('Market Crash')
plt.legend()
plt.grid(True)

plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("A market crash is a sudden and sharp decline in asset prices, often triggered by a shift from irrational exuberance to excessive pessimism and panic selling among investors.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 🔄]
#v(40pt)
#only("1-")[
- Biases influence investor behavior 🧠
]
#v(20pt)
#only("2-")[
- Can lead to market anomalies like bubbles 🫧 and crashes 💥
]
#v(20pt)
#only("3-")[
- Understanding biases is crucial for investors and policymakers 🎓
]
#only("1")[
#voiceover("To recap, biases in Behavioral Finance can significantly influence investor behavior...")
]
#only("2")[
#voiceover("...leading to market anomalies such as bubbles and crashes.")
]
#only("3")[
#voiceover("Understanding these biases and their potential impact is crucial for investors to make informed decisions and for policymakers to develop effective regulations and interventions in financial markets.")
]
]