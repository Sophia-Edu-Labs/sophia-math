#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance vs Market Efficiency]

#v(40pt)

#only("1-")[- Behavioral Finance challenges market efficiency 🧠 vs 📈]

#v(20pt)

#only("2-")[- Markets are influenced by irrational behavior 🤔]

#only("1")[
#voiceover("Behavioral Finance challenges the concept of market efficiency by showing that markets are often influenced by irrational behavior.")
]

#only("2")[
#voiceover("This means that markets are not always efficient and rational as traditional finance theories suggest, but are influenced by the irrational behaviors and biases of investors.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Irrational Behavior in Markets]

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
y_rational = x
y_irrational = x + 2 * np.sin(x) 

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, y_rational, color='blue', linestyle='--', label='Rational Behavior')
plt.plot(x, y_irrational, color='red', label='Irrational Behavior')

# Add labels and legend
plt.xlabel('Time')
plt.ylabel('Market Behavior')
plt.title('Rational vs Irrational Market Behavior')
plt.legend()

plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("This graph illustrates the difference between rational market behavior, shown by the blue dashed line, and irrational market behavior, shown by the red line.")
]

#v(20pt)

#only("2-")[- Irrational behavior leads to market anomalies 📉]

#only("2")[
#voiceover("Irrational behavior in markets can lead to market anomalies such as bubbles and crashes, which cannot be explained by traditional finance theories that assume market efficiency.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance Insights]

#v(40pt)

#only("1-")[- Identifies common biases influencing investors 🧐]

#v(20pt)

#only("2-")[- Understands impact of biases on financial markets 🌍]

#v(20pt)

#only("3-")[- Develops strategies to mitigate biases 📚]

#only("1")[
#voiceover("Behavioral Finance identifies common biases that influence investors' decision making, such as overconfidence, loss aversion, and herd behavior.")
]

#only("2")[
#voiceover("It seeks to understand how these biases impact financial markets, leading to inefficiencies and anomalies.")
]

#only("3")[
#voiceover("Based on these insights, Behavioral Finance aims to develop strategies to mitigate the effects of these biases, such as through investor education and the use of decision-making frameworks.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]

#v(40pt)

#only("1-")[- Behavioral Finance challenges market efficiency 🧠 vs 📈]

#v(20pt)

#only("2-")[- Markets are influenced by irrational behavior 🤔]

#v(20pt)

#only("3-")[- Irrational behavior leads to market anomalies 📉]

#v(20pt)

#only("4-")[- Behavioral Finance identifies biases, understands their impact, and develops strategies to mitigate them 🧐🌍📚]

#only("1")[
#voiceover("To recap, Behavioral Finance challenges the concept of market efficiency...")
]

#only("2")[
#voiceover("...by showing that markets are often influenced by irrational behavior.")
]

#only("3")[
#voiceover("This irrational behavior can lead to market anomalies such as bubbles and crashes.")
]

#only("4")[
#voiceover("Behavioral Finance identifies common biases influencing investors, seeks to understand their impact on financial markets, and develops strategies to mitigate these biases.")
]
]