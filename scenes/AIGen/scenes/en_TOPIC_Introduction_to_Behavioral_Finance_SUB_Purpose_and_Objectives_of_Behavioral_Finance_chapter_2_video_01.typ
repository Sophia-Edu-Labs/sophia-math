#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Objectives of Behavioral Finance]
#v(40pt)
#only("1-")[1. Identifying common biases 🧠]
#v(20pt)
#only("2-")[2. Understanding their impact on financial markets 📈]
#v(20pt)
#only("3-")[3. Developing strategies to mitigate these biases 🛡]

#only("1")[
#voiceover("The first objective of Behavioral Finance is to identify common biases that influence investor behavior. These biases can lead to irrational decision-making and cause investors to deviate from optimal investment strategies.")
]

#only("2")[
#voiceover("The second objective is to understand the impact of these biases on financial markets. Behavioral Finance aims to explain how these biases can contribute to market anomalies, such as bubbles and crashes, by influencing the collective behavior of investors.")
]

#only("3")[
#voiceover("The third objective is to develop strategies to mitigate these biases. By understanding the nature of these biases, Behavioral Finance seeks to create tools and techniques that can help investors make more rational and informed decisions, thereby reducing the negative impact of biases on their investment outcomes.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Common Biases]
#v(40pt)
#only("1-")[- Overconfidence 😎]
#v(20pt)
#only("2-")[- Loss aversion 📉]
#v(20pt)
#only("3-")[- Herd behavior 🐑]

#only("1")[
#voiceover("Some common biases identified by Behavioral Finance include overconfidence, where investors overestimate their abilities and the accuracy of their predictions.")
]

#only("2")[
#voiceover("Another bias is loss aversion, which refers to the tendency of investors to feel the pain of losses more intensely than the pleasure of gains, leading to risk-averse behavior.")
]

#only("3")[
#voiceover("Herd behavior is another common bias, where investors follow the crowd and make decisions based on the actions of others rather than their own analysis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Impact on Financial Markets]
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
y = 0.2 * np.exp(0.5 * x) + np.random.randn(100) * 0.1

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, y, color='blue', linewidth=2)
plt.axvline(x=6, color='red', linestyle='--', linewidth=2, label='Bubble Burst')
plt.annotate('Bubble', xy=(4, 1.5), xytext=(2, 2), arrowprops=dict(facecolor='black', shrink=0.05))
plt.title('Market Bubble and Crash')
plt.xlabel('Time')
plt.ylabel('Price')
plt.legend()
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Biases can lead to market anomalies, such as bubbles and crashes. In a bubble, prices rise far above their intrinsic value due to overconfidence and herd behavior. When the bubble bursts, prices crash, often leading to significant losses for investors.")
]
]


No corrections are needed.]

#slide()[
#text(size: 30pt, weight: "bold")[Mitigating Biases]
#v(40pt)
#only("1-")[- Education 📚]
#v(20pt)
#only("2-")[- Awareness 🎯]
#v(20pt)
#only("3-")[- Decision-making frameworks 🧩]

#only("1")[
#voiceover("To mitigate these biases, Behavioral Finance proposes strategies such as education, which involves teaching investors about these biases and how they can influence their decisions.")
]

#only("2")[
#voiceover("Increasing awareness of these biases is another strategy, helping investors recognize when they may be falling prey to irrational thinking.")
]

#only("3")[
#voiceover("Finally, using decision-making frameworks that incorporate checks and balances can help investors make more objective and rational choices, reducing the impact of biases on their investment outcomes.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Behavioral Finance aims to identify, understand, and mitigate common biases 🎯]
#v(20pt)
#only("2-")[- These biases can lead to irrational decisions and market anomalies 📉]
#v(20pt)
#only("3-")[- Strategies like education, awareness, and decision-making frameworks can help reduce the impact of biases 🧠]

#only("1")[
#voiceover("In summary, the objectives of Behavioral Finance are to identify common biases, understand their impact on financial markets, and develop strategies to mitigate these biases.")
]

#only("2")[
#voiceover("These biases can lead to irrational investment decisions and contribute to market anomalies, such as bubbles and crashes.")
]

#only("3")[
#voiceover("By promoting education, awareness, and the use of decision-making frameworks, Behavioral Finance aims to help investors make more rational and informed choices, ultimately improving their investment outcomes.")
]
]