#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance 🧠💰]
#v(40pt)
#only("1-")[
- Studies how psychological factors affect financial decisions and market outcomes 🌍📈
]
#only("1")[
#voiceover("Behavioral finance studies how psychological factors affect financial decisions and market outcomes.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Psychological Biases 🧩]
#v(40pt)
#only("1-")[
- Overconfidence 🙋‍♂️
- Loss aversion 📉😨
]
#only("1")[
#voiceover("Behavioral finance identifies various psychological biases that affect investor behavior, such as overconfidence and loss aversion.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias 🙋‍♂️]
#v(40pt)
#only("1-")[
- Investors overestimate their knowledge or ability to predict market movements 🔮
]
#only("2-")[
- Can lead to excessive trading 📊💸
]
#only("1")[
#voiceover("Overconfidence bias occurs when investors overestimate their knowledge or ability to predict market movements.")
]
#only("2")[
#voiceover("This can lead to excessive trading.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion 📉😨]
#v(40pt)
#only("1-")[
- Investors prefer avoiding losses over acquiring equivalent gains 💰🚫
]
#only("2-")[
- Can lead to holding on to losing investments 📉💸
]
#only("1")[
#voiceover("Loss aversion refers to the tendency of investors to prefer avoiding losses over acquiring equivalent gains.")
]
#only("2")[
#voiceover("This can lead to holding on to losing investments.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Impact on Markets 📈📉]
#v(40pt)
#only("1-")[
- Psychological biases can lead to market inefficiencies 🌍🔍
]
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Generate data
x = np.linspace(0, 10, 100)
y_efficient = x + np.random.randn(100) * 0.5
y_inefficient = x + np.sin(x) * 2 + np.random.randn(100) * 0.5

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, y_efficient, color='blue', label='Efficient Market')
plt.plot(x, y_inefficient, color='red', label='Inefficient Market')

# Add labels and legend
plt.xlabel('Time')
plt.ylabel('Price')
plt.title('Market Efficiency vs. Inefficiency')
plt.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Psychological biases can lead to market inefficiencies.")
]
#only("2")[
#voiceover("This graph shows an example of an efficient market in blue and an inefficient market in red. The inefficient market deviates from the efficient path due to psychological biases.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[
- Behavioral finance studies psychological factors in financial decisions 🧠💰
- Identifies biases like overconfidence and loss aversion 🙋‍♂️📉😨
- These biases can lead to market inefficiencies 🌍🔍
]
#only("1")[
#voiceover("To recap, behavioral finance studies how psychological factors affect financial decisions and market outcomes. It identifies biases like overconfidence and loss aversion, which can lead to market inefficiencies.")
]
]