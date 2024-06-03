#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance vs Market Efficiency]
#v(40pt)
#only("1-")[- Traditional finance assumes markets are efficient 📈]
#v(20pt)
#only("2-")[- Efficient Market Hypothesis (EMH): Prices reflect all available information 🧠]
#v(20pt)
#only("3-")[- Behavioral finance challenges EMH 🤔]
#v(20pt)
#only("4-")[- Argues that investors are often irrational 🙍‍♂️🙍‍♀️]
#only("1")[
#voiceover("Traditional finance theories, such as the Efficient Market Hypothesis, assume that financial markets are efficient.")
]
#only("2")[
#voiceover("The Efficient Market Hypothesis states that market prices fully reflect all available information.")
]
#only("3")[
#voiceover("However, behavioral finance challenges this notion.")
]
#only("4")[
#voiceover("Behavioral finance argues that investors are often irrational and subject to psychological biases.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Irrational Behavior in Markets]
#v(40pt)
#only("1-")[- Investors are influenced by emotions and biases 😨]
#v(20pt)
#only("2-")[- Examples: Overconfidence, loss aversion, herd behavior 🐑]
#v(20pt)
#only("3-")[- These biases can lead to market anomalies 📉]
#v(20pt)
#only("4-")[- Bubbles, crashes, and mispricing 💥]
#only("1")[
#voiceover("According to behavioral finance, investors are influenced by emotions and psychological biases.")
]
#only("2")[
#voiceover("Some examples of these biases include overconfidence, loss aversion, and herd behavior.")
]
#only("3")[
#voiceover("These biases can lead to market anomalies that cannot be explained by traditional finance theories.")
]
#only("4")[
#voiceover("Such anomalies include market bubbles, crashes, and mispricing of assets.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Evidence from Behavioral Finance]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Simulate stock prices
np.random.seed(0)
prices = np.cumprod(1 + np.random.normal(0, 0.02, size=(100, 1)))

# Simulate irrational exuberance
exuberance_start = 50
exuberance_end = 80
prices[exuberance_start:exuberance_end] *= 1.5

# Simulate crash
crash_point = 80
prices[crash_point:] *= 0.6

plt.figure(figsize=(8, 6))
plt.plot(prices)
plt.axvspan(exuberance_start, exuberance_end, alpha=0.2, color='green', label='Irrational Exuberance')
plt.axvline(crash_point, color='red', linestyle='--', label='Crash')
plt.xlabel('Time')
plt.ylabel('Price')
plt.title('Simulated Stock Prices with Irrational Behavior')
plt.legend()
plt.tight_layout()
plt.show()
```, width: 360pt))
]
]
#v(20pt)
#only("2-")[- Studies show investors are not always rational 📚]
#v(20pt)
#only("3-")[- Behavioral biases can explain market anomalies 🔍]
#v(20pt)
#only("4-")[- Traditional finance models often fail to capture these 📉]
#only("1")[
#voiceover("This graph simulates stock prices and illustrates irrational behavior. The green area represents a period of irrational exuberance, where prices rise dramatically. The red line indicates a crash, where prices drop suddenly.")
]
#only("2")[
#voiceover("Numerous studies in behavioral finance provide evidence that investors are not always rational.")
]
#only("3")[
#voiceover("Behavioral biases, such as those mentioned earlier, can explain many market anomalies that traditional finance struggles with.")
]
#only("4")[
#voiceover("Traditional finance models, which assume rationality, often fail to capture these irrational behaviors and their impact on markets.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Implications and Conclusion]
#v(40pt)
#only("1-")[- Behavioral finance offers a more realistic view of markets 🌍]
#v(20pt)
#only("2-")[- Incorporates psychological factors into financial models 🧠💰]
#v(20pt)
#only("3-")[- Helps explain market inefficiencies and anomalies 📊]
#v(20pt)
#only("4-")[- Complements traditional finance theories 🤝]
#only("1")[
#voiceover("Behavioral finance offers a more realistic view of financial markets by acknowledging the role of human psychology.")
]
#only("2")[
#voiceover("It incorporates psychological factors into financial models, providing a more comprehensive understanding of market behavior.")
]
#only("3")[
#voiceover("Behavioral finance helps explain market inefficiencies and anomalies that traditional finance theories struggle to account for.")
]
#only("4")[
#voiceover("Rather than replacing traditional finance, behavioral finance complements it, offering insights into the complex reality of financial markets.")
]
]