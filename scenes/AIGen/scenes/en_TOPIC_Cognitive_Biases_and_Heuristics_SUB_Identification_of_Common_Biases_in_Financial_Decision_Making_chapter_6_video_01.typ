#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recency Bias 🧠]
#v(40pt)
#only("2-")[- Tendency to weigh recent events more heavily 📈]
#v(20pt)
#only("3-")[- Affects decision-making and judgment 🤔]
#v(20pt)
#only("4-")[- Example: Stock market investing 📊]
#only("1")[
#voiceover("Recency bias is a cognitive bias that affects how we perceive and make decisions based on information.")
]
#only("2")[
#voiceover("It refers to the tendency to give more weight and importance to recent events compared to earlier ones.")
]
#only("3")[
#voiceover("This bias can significantly influence our judgment and decision-making process in various situations.")
]
#only("4")[
#voiceover("For example, in stock market investing, an investor might give more importance to a stock's recent performance, while neglecting its long-term trends and fundamentals.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Impact of Recency Bias 📉]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.arange(1, 11)
y_actual = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
y_perceived = [2, 4, 6, 8, 10, 12, 16, 20, 24, 28]

# Create plot
plt.figure(figsize=(8, 6))
plt.plot(x, y_actual, marker='o', label='Actual Trend')
plt.plot(x, y_perceived, marker='o', label='Perceived Trend (Recency Bias)')
plt.xlabel('Time')
plt.ylabel('Value')
plt.title('Impact of Recency Bias')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("2-")[- Overemphasis on recent data points 📍]
#v(20pt)
#only("3-")[- Neglect of long-term trends 📉]
#v(20pt)
#only("4-")[- Skewed perception and decision-making 🎯]
#only("1")[
#voiceover("This graph illustrates the impact of recency bias. The blue line represents the actual trend of a variable over time, while the orange line shows how the trend might be perceived under the influence of recency bias.")
]
#only("2")[
#voiceover("As you can see, recency bias leads to an overemphasis on the most recent data points, causing the perceived trend to deviate from the actual trend.")
]
#only("3")[
#voiceover("This bias can cause people to neglect the long-term trends and patterns, focusing instead on short-term fluctuations.")
]
#only("4")[
#voiceover("As a result, recency bias can lead to skewed perceptions and suboptimal decision-making, as it fails to account for the full context and historical information.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mitigating Recency Bias 🛡]
#v(40pt)
#only("1-")[- Awareness of the bias 🧠]
#v(20pt)
#only("2-")[- Considering long-term data 📊]
#v(20pt)
#only("3-")[- Seeking diverse information sources 🌐]
#v(20pt)
#only("4-")[- Deliberate and rational decision-making 🤔]
#only("1")[
#voiceover("To mitigate the effects of recency bias, the first step is to be aware of its existence and how it can influence our thinking.")
]
#only("2")[
#voiceover("When making decisions, it's crucial to consider long-term data and trends, rather than just focusing on the most recent information.")
]
#only("3")[
#voiceover("Seeking diverse information sources and perspectives can help counteract the bias by providing a more comprehensive view of the situation.")
]
#only("4")[
#voiceover("Finally, engaging in deliberate and rational decision-making processes, such as weighing evidence objectively and considering alternative viewpoints, can help reduce the impact of recency bias.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎓]
#v(40pt)
#only("1-")[- Recency bias: Overweighting recent events 🧠]
#v(20pt)
#only("2-")[- Affects decision-making and judgment 📊]
#v(20pt)
#only("3-")[- Mitigate by awareness, long-term data, diverse info 🛡]
#v(20pt)
#only("4-")[- Strive for rational decision-making 🎯]
#only("1")[
#voiceover("In summary, recency bias is the tendency to overweight recent events and information when making decisions and judgments.")
]
#only("2")[
#voiceover("This bias can lead to skewed perceptions and suboptimal choices, as it neglects long-term trends and historical context.")
]
#only("3")[
#voiceover("To mitigate the effects of recency bias, it's important to be aware of its existence, consider long-term data, and seek diverse information sources.")
]
#only("4")[
#voiceover("By striving for rational and deliberate decision-making processes, we can reduce the impact of recency bias and make more informed choices.")
]
]