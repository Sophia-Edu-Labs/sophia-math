#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance Criticizes EMH]
#v(40pt)
#only("1-")[- EMH: Markets are efficient 📈]
#v(20pt)
#only("2-")[- Behavioral Finance: Markets can be inefficient 📉]
#v(20pt)
#only("3-")[- Reason: Psychological biases and irrational behavior 🧠]
#only("1")[
#voiceover("The Efficient Market Hypothesis, or EMH, states that financial markets are efficient, meaning that asset prices fully reflect all available information.")
]
#only("2")[
#voiceover("However, behavioral finance criticizes this view, arguing that markets can be inefficient at times.")
]
#only("3")[
#voiceover("Behavioral finance suggests that psychological biases and irrational behavior of investors can lead to market inefficiencies.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Psychological Biases]
#v(40pt)
#only("1-")[- Overconfidence bias 😎]
#v(20pt)
#only("2-")[- Loss aversion 📉]
#v(20pt)
#only("3-")[- Herd behavior 🐑]
#only("1")[
#voiceover("One example of a psychological bias is overconfidence. Investors may overestimate their ability to predict market movements, leading to excessive trading and mispricing of assets.")
]
#only("2")[
#voiceover("Another bias is loss aversion, where investors are more sensitive to losses than gains. This can cause investors to hold on to losing investments for too long, creating inefficiencies.")
]
#only("3")[
#voiceover("Herd behavior, where investors follow the actions of others, can also contribute to market bubbles and crashes.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Irrational Behavior]
#v(40pt)
#only("1-")[- Investors do not always make rational decisions 🤔]
#v(20pt)
#only("2-")[- Emotions and biases influence investment choices 😱]
#v(20pt)
#only("3-")[- Leads to mispricing of assets 💸]
#only("1")[
#voiceover("Behavioral finance also argues that investors do not always make rational decisions, contrary to the assumptions of EMH.")
]
#only("2")[
#voiceover("Emotions and biases can significantly influence investment choices, causing investors to deviate from rational behavior.")
]
#only("3")[
#voiceover("This irrational behavior can lead to the mispricing of assets, creating inefficiencies in the market.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Market Inefficiencies]
#v(40pt)
#only("1-")[
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
plt.grid(True)
plt.legend()
plt.title('Market Efficiency vs Inefficiency')
plt.xlabel('Time')
plt.ylabel('Price')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph illustrates the difference between an efficient market, shown in blue, and an inefficient market, shown in red. In an efficient market, prices closely follow the fundamental value, while in an inefficient market, prices can deviate significantly due to psychological biases and irrational behavior.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- EMH: Markets are efficient 📈]
#v(20pt)
#only("2-")[- Behavioral Finance: Markets can be inefficient 📉]
#v(20pt)
#only("3-")[- Psychological biases and irrational behavior lead to inefficiencies 🧠]
#only("1")[
#voiceover("To summarize, the Efficient Market Hypothesis suggests that markets are efficient, with prices reflecting all available information.")
]
#only("2")[
#voiceover("Behavioral finance, on the other hand, argues that markets can be inefficient at times.")
]
#only("3")[
#voiceover("Psychological biases, such as overconfidence and loss aversion, as well as irrational behavior by investors, can lead to market inefficiencies and mispricing of assets.")
]
]